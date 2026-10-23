###### Class org.jbox2d.callbacks.ContactListener (org.jbox2d.callbacks.ContactListener)
.class public interface abstract Lorg/jbox2d/callbacks/ContactListener;
.super Ljava/lang/Object;
.source "ContactListener.java"


# virtual methods
.method public abstract beginContact(Lorg/jbox2d/dynamics/contacts/Contact;)V
.end method

.method public abstract endContact(Lorg/jbox2d/dynamics/contacts/Contact;)V
.end method

.method public abstract postSolve(Lorg/jbox2d/dynamics/contacts/Contact;Lorg/jbox2d/callbacks/ContactImpulse;)V
.end method

.method public abstract preSolve(Lorg/jbox2d/dynamics/contacts/Contact;Lorg/jbox2d/collision/Manifold;)V
.end method
