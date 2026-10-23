package org.jbox2d.dynamics;

import org.jbox2d.callbacks.ContactFilter;
import org.jbox2d.callbacks.ContactListener;
import org.jbox2d.callbacks.PairCallback;
import org.jbox2d.collision.broadphase.BroadPhase;
import org.jbox2d.collision.broadphase.BroadPhaseStrategy;
import org.jbox2d.dynamics.contacts.Contact;
import org.jbox2d.dynamics.contacts.ContactEdge;

/* JADX INFO: loaded from: classes2.dex */
public class ContactManager implements PairCallback {
    public BroadPhase m_broadPhase;
    private final World pool;
    public Contact m_contactList = null;
    public int m_contactCount = 0;
    public ContactFilter m_contactFilter = new ContactFilter();
    public ContactListener m_contactListener = null;

    public ContactManager(World argPool, BroadPhaseStrategy strategy) {
        this.m_broadPhase = new BroadPhase(strategy);
        this.pool = argPool;
    }

    @Override // org.jbox2d.callbacks.PairCallback
    public void addPair(Object proxyUserDataA, Object proxyUserDataB) {
        Contact c;
        FixtureProxy proxyA = (FixtureProxy) proxyUserDataA;
        FixtureProxy proxyB = (FixtureProxy) proxyUserDataB;
        Fixture fixtureA = proxyA.fixture;
        Fixture fixtureB = proxyB.fixture;
        int indexA = proxyA.childIndex;
        int indexB = proxyB.childIndex;
        Body bodyA = fixtureA.getBody();
        Body bodyB = fixtureB.getBody();
        if (bodyA != bodyB) {
            for (ContactEdge edge = bodyB.getContactList(); edge != null; edge = edge.next) {
                if (edge.other == bodyA) {
                    Fixture fA = edge.contact.getFixtureA();
                    Fixture fB = edge.contact.getFixtureB();
                    int iA = edge.contact.getChildIndexA();
                    int iB = edge.contact.getChildIndexB();
                    if (fA != fixtureA || iA != indexA || fB != fixtureB || iB != indexB) {
                        if (fA == fixtureB && iA == indexB && fB == fixtureA && iB == indexA) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
            if (bodyB.shouldCollide(bodyA)) {
                if ((this.m_contactFilter == null || this.m_contactFilter.shouldCollide(fixtureA, fixtureB)) && (c = this.pool.popContact(fixtureA, indexA, fixtureB, indexB)) != null) {
                    Fixture fixtureA2 = c.getFixtureA();
                    Fixture fixtureB2 = c.getFixtureB();
                    c.getChildIndexA();
                    c.getChildIndexB();
                    Body bodyA2 = fixtureA2.getBody();
                    Body bodyB2 = fixtureB2.getBody();
                    c.m_prev = null;
                    c.m_next = this.m_contactList;
                    if (this.m_contactList != null) {
                        this.m_contactList.m_prev = c;
                    }
                    this.m_contactList = c;
                    c.m_nodeA.contact = c;
                    c.m_nodeA.other = bodyB2;
                    c.m_nodeA.prev = null;
                    c.m_nodeA.next = bodyA2.m_contactList;
                    if (bodyA2.m_contactList != null) {
                        bodyA2.m_contactList.prev = c.m_nodeA;
                    }
                    bodyA2.m_contactList = c.m_nodeA;
                    c.m_nodeB.contact = c;
                    c.m_nodeB.other = bodyA2;
                    c.m_nodeB.prev = null;
                    c.m_nodeB.next = bodyB2.m_contactList;
                    if (bodyB2.m_contactList != null) {
                        bodyB2.m_contactList.prev = c.m_nodeB;
                    }
                    bodyB2.m_contactList = c.m_nodeB;
                    if (!fixtureA2.isSensor() && !fixtureB2.isSensor()) {
                        bodyA2.setAwake(true);
                        bodyB2.setAwake(true);
                    }
                    this.m_contactCount++;
                }
            }
        }
    }

    public void findNewContacts() {
        this.m_broadPhase.updatePairs(this);
    }

    public void destroy(Contact c) {
        Fixture fixtureA = c.getFixtureA();
        Fixture fixtureB = c.getFixtureB();
        Body bodyA = fixtureA.getBody();
        Body bodyB = fixtureB.getBody();
        if (this.m_contactListener != null && c.isTouching()) {
            this.m_contactListener.endContact(c);
        }
        if (c.m_prev != null) {
            c.m_prev.m_next = c.m_next;
        }
        if (c.m_next != null) {
            c.m_next.m_prev = c.m_prev;
        }
        if (c == this.m_contactList) {
            this.m_contactList = c.m_next;
        }
        if (c.m_nodeA.prev != null) {
            c.m_nodeA.prev.next = c.m_nodeA.next;
        }
        if (c.m_nodeA.next != null) {
            c.m_nodeA.next.prev = c.m_nodeA.prev;
        }
        if (c.m_nodeA == bodyA.m_contactList) {
            bodyA.m_contactList = c.m_nodeA.next;
        }
        if (c.m_nodeB.prev != null) {
            c.m_nodeB.prev.next = c.m_nodeB.next;
        }
        if (c.m_nodeB.next != null) {
            c.m_nodeB.next.prev = c.m_nodeB.prev;
        }
        if (c.m_nodeB == bodyB.m_contactList) {
            bodyB.m_contactList = c.m_nodeB.next;
        }
        this.pool.pushContact(c);
        this.m_contactCount--;
    }

    public void collide() {
        Contact c = this.m_contactList;
        while (c != null) {
            Fixture fixtureA = c.getFixtureA();
            Fixture fixtureB = c.getFixtureB();
            int indexA = c.getChildIndexA();
            int indexB = c.getChildIndexB();
            Body bodyA = fixtureA.getBody();
            Body bodyB = fixtureB.getBody();
            if ((c.m_flags & 8) == 8) {
                if (!bodyB.shouldCollide(bodyA)) {
                    Contact cNuke = c;
                    c = cNuke.getNext();
                    destroy(cNuke);
                } else if (this.m_contactFilter != null && !this.m_contactFilter.shouldCollide(fixtureA, fixtureB)) {
                    Contact cNuke2 = c;
                    c = cNuke2.getNext();
                    destroy(cNuke2);
                } else {
                    c.m_flags &= -9;
                }
            }
            boolean activeA = bodyA.isAwake() && bodyA.m_type != BodyType.STATIC;
            boolean activeB = bodyB.isAwake() && bodyB.m_type != BodyType.STATIC;
            if (!activeA && !activeB) {
                c = c.getNext();
            } else {
                int proxyIdA = fixtureA.m_proxies[indexA].proxyId;
                int proxyIdB = fixtureB.m_proxies[indexB].proxyId;
                boolean overlap = this.m_broadPhase.testOverlap(proxyIdA, proxyIdB);
                if (!overlap) {
                    Contact cNuke3 = c;
                    c = cNuke3.getNext();
                    destroy(cNuke3);
                } else {
                    c.update(this.m_contactListener);
                    c = c.getNext();
                }
            }
        }
    }
}
