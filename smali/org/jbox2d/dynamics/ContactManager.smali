###### Class org.jbox2d.dynamics.ContactManager (org.jbox2d.dynamics.ContactManager)
.class public Lorg/jbox2d/dynamics/ContactManager;
.super Ljava/lang/Object;
.source "ContactManager.java"

# interfaces
.implements Lorg/jbox2d/callbacks/PairCallback;


# instance fields
.field public m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

.field public m_contactCount:I

.field public m_contactFilter:Lorg/jbox2d/callbacks/ContactFilter;

.field public m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

.field public m_contactListener:Lorg/jbox2d/callbacks/ContactListener;

.field private final pool:Lorg/jbox2d/dynamics/World;


# direct methods
.method public constructor <init>(Lorg/jbox2d/dynamics/World;Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;)V
    .registers 5
    .param p1, "argPool"    # Lorg/jbox2d/dynamics/World;
    .param p2, "strategy"    # Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lorg/jbox2d/dynamics/ContactManager;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/dynamics/ContactManager;->m_contactCount:I

    .line 52
    new-instance v0, Lorg/jbox2d/callbacks/ContactFilter;

    invoke-direct {v0}, Lorg/jbox2d/callbacks/ContactFilter;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/ContactManager;->m_contactFilter:Lorg/jbox2d/callbacks/ContactFilter;

    .line 53
    iput-object v1, p0, Lorg/jbox2d/dynamics/ContactManager;->m_contactListener:Lorg/jbox2d/callbacks/ContactListener;

    .line 54
    new-instance v0, Lorg/jbox2d/collision/broadphase/BroadPhase;

    invoke-direct {v0, p2}, Lorg/jbox2d/collision/broadphase/BroadPhase;-><init>(Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    .line 55
    iput-object p1, p0, Lorg/jbox2d/dynamics/ContactManager;->pool:Lorg/jbox2d/dynamics/World;

    .line 56
    return-void
.end method


# virtual methods
.method public addPair(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 20
    .param p1, "proxyUserDataA"    # Ljava/lang/Object;
    .param p2, "proxyUserDataB"    # Ljava/lang/Object;

    .prologue
    .line 65
    move-object/from16 v13, p1

    check-cast v13, Lorg/jbox2d/dynamics/FixtureProxy;

    .local v13, "proxyA":Lorg/jbox2d/dynamics/FixtureProxy;
    move-object/from16 v14, p2

    .line 66
    check-cast v14, Lorg/jbox2d/dynamics/FixtureProxy;

    .line 68
    .local v14, "proxyB":Lorg/jbox2d/dynamics/FixtureProxy;
    iget-object v7, v13, Lorg/jbox2d/dynamics/FixtureProxy;->fixture:Lorg/jbox2d/dynamics/Fixture;

    .line 69
    .local v7, "fixtureA":Lorg/jbox2d/dynamics/Fixture;
    iget-object v8, v14, Lorg/jbox2d/dynamics/FixtureProxy;->fixture:Lorg/jbox2d/dynamics/Fixture;

    .line 71
    .local v8, "fixtureB":Lorg/jbox2d/dynamics/Fixture;
    iget v11, v13, Lorg/jbox2d/dynamics/FixtureProxy;->childIndex:I

    .line 72
    .local v11, "indexA":I
    iget v12, v14, Lorg/jbox2d/dynamics/FixtureProxy;->childIndex:I

    .line 74
    .local v12, "indexB":I
    invoke-virtual {v7}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    .line 75
    .local v1, "bodyA":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v8}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v2

    .line 78
    .local v2, "bodyB":Lorg/jbox2d/dynamics/Body;
    if-ne v1, v2, :cond_1b

    .line 170
    :cond_1a
    :goto_1a
    return-void

    .line 85
    :cond_1b
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Body;->getContactList()Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-result-object v4

    .line 86
    .local v4, "edge":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :goto_1f
    if-eqz v4, :cond_50

    .line 87
    iget-object v15, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    if-ne v15, v1, :cond_4d

    .line 88
    iget-object v15, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    invoke-virtual {v15}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureA()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v5

    .line 89
    .local v5, "fA":Lorg/jbox2d/dynamics/Fixture;
    iget-object v15, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    invoke-virtual {v15}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureB()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v6

    .line 90
    .local v6, "fB":Lorg/jbox2d/dynamics/Fixture;
    iget-object v15, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    invoke-virtual {v15}, Lorg/jbox2d/dynamics/contacts/Contact;->getChildIndexA()I

    move-result v9

    .line 91
    .local v9, "iA":I
    iget-object v15, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    invoke-virtual {v15}, Lorg/jbox2d/dynamics/contacts/Contact;->getChildIndexB()I

    move-result v10

    .line 93
    .local v10, "iB":I
    if-ne v5, v7, :cond_45

    if-ne v9, v11, :cond_45

    if-ne v6, v8, :cond_45

    if-eq v10, v12, :cond_1a

    .line 98
    :cond_45
    if-ne v5, v8, :cond_4d

    if-ne v9, v12, :cond_4d

    if-ne v6, v7, :cond_4d

    if-eq v10, v11, :cond_1a

    .line 104
    .end local v5    # "fA":Lorg/jbox2d/dynamics/Fixture;
    .end local v6    # "fB":Lorg/jbox2d/dynamics/Fixture;
    .end local v9    # "iA":I
    .end local v10    # "iB":I
    :cond_4d
    iget-object v4, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    goto :goto_1f

    .line 108
    :cond_50
    invoke-virtual {v2, v1}, Lorg/jbox2d/dynamics/Body;->shouldCollide(Lorg/jbox2d/dynamics/Body;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 113
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactFilter:Lorg/jbox2d/callbacks/ContactFilter;

    if-eqz v15, :cond_66

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactFilter:Lorg/jbox2d/callbacks/ContactFilter;

    invoke-virtual {v15, v7, v8}, Lorg/jbox2d/callbacks/ContactFilter;->shouldCollide(Lorg/jbox2d/dynamics/Fixture;Lorg/jbox2d/dynamics/Fixture;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 118
    :cond_66
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/ContactManager;->pool:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v15, v7, v11, v8, v12}, Lorg/jbox2d/dynamics/World;->popContact(Lorg/jbox2d/dynamics/Fixture;ILorg/jbox2d/dynamics/Fixture;I)Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v3

    .line 119
    .local v3, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    if-eqz v3, :cond_1a

    .line 124
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureA()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v7

    .line 125
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureB()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v8

    .line 126
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/contacts/Contact;->getChildIndexA()I

    move-result v11

    .line 127
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/contacts/Contact;->getChildIndexB()I

    move-result v12

    .line 128
    invoke-virtual {v7}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    .line 129
    invoke-virtual {v8}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v2

    .line 132
    const/4 v15, 0x0

    iput-object v15, v3, Lorg/jbox2d/dynamics/contacts/Contact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 133
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    iput-object v15, v3, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 134
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    if-eqz v15, :cond_9d

    .line 135
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    iput-object v3, v15, Lorg/jbox2d/dynamics/contacts/Contact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 137
    :cond_9d
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 142
    iget-object v15, v3, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v3, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 143
    iget-object v15, v3, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v2, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 145
    iget-object v15, v3, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 146
    iget-object v15, v3, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v0, v1, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 147
    iget-object v15, v1, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    if-eqz v15, :cond_c9

    .line 148
    iget-object v15, v1, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v0, v3, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 150
    :cond_c9
    iget-object v15, v3, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v15, v1, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 153
    iget-object v15, v3, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v3, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 154
    iget-object v15, v3, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v1, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 156
    iget-object v15, v3, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 157
    iget-object v15, v3, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v0, v2, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 158
    iget-object v15, v2, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    if-eqz v15, :cond_f5

    .line 159
    iget-object v15, v2, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v0, v3, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 161
    :cond_f5
    iget-object v15, v3, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v15, v2, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 164
    invoke-virtual {v7}, Lorg/jbox2d/dynamics/Fixture;->isSensor()Z

    move-result v15

    if-nez v15, :cond_10d

    invoke-virtual {v8}, Lorg/jbox2d/dynamics/Fixture;->isSensor()Z

    move-result v15

    if-nez v15, :cond_10d

    .line 165
    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 166
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 169
    :cond_10d
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactCount:I

    goto/16 :goto_1a
.end method

.method public collide()V
    .registers 16

    .prologue
    .line 236
    iget-object v4, p0, Lorg/jbox2d/dynamics/ContactManager;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 237
    .local v4, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    :goto_2
    if-eqz v4, :cond_9e

    .line 238
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureA()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v6

    .line 239
    .local v6, "fixtureA":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureB()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v7

    .line 240
    .local v7, "fixtureB":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/contacts/Contact;->getChildIndexA()I

    move-result v8

    .line 241
    .local v8, "indexA":I
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/contacts/Contact;->getChildIndexB()I

    move-result v9

    .line 242
    .local v9, "indexB":I
    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v2

    .line 243
    .local v2, "bodyA":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v7}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v3

    .line 246
    .local v3, "bodyB":Lorg/jbox2d/dynamics/Body;
    iget v13, v4, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    and-int/lit8 v13, v13, 0x8

    const/16 v14, 0x8

    if-ne v13, v14, :cond_4e

    .line 248
    invoke-virtual {v3, v2}, Lorg/jbox2d/dynamics/Body;->shouldCollide(Lorg/jbox2d/dynamics/Body;)Z

    move-result v13

    if-nez v13, :cond_33

    .line 249
    move-object v5, v4

    .line 250
    .local v5, "cNuke":Lorg/jbox2d/dynamics/contacts/Contact;
    invoke-virtual {v5}, Lorg/jbox2d/dynamics/contacts/Contact;->getNext()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v4

    .line 251
    invoke-virtual {p0, v5}, Lorg/jbox2d/dynamics/ContactManager;->destroy(Lorg/jbox2d/dynamics/contacts/Contact;)V

    goto :goto_2

    .line 256
    .end local v5    # "cNuke":Lorg/jbox2d/dynamics/contacts/Contact;
    :cond_33
    iget-object v13, p0, Lorg/jbox2d/dynamics/ContactManager;->m_contactFilter:Lorg/jbox2d/callbacks/ContactFilter;

    if-eqz v13, :cond_48

    iget-object v13, p0, Lorg/jbox2d/dynamics/ContactManager;->m_contactFilter:Lorg/jbox2d/callbacks/ContactFilter;

    invoke-virtual {v13, v6, v7}, Lorg/jbox2d/callbacks/ContactFilter;->shouldCollide(Lorg/jbox2d/dynamics/Fixture;Lorg/jbox2d/dynamics/Fixture;)Z

    move-result v13

    if-nez v13, :cond_48

    .line 257
    move-object v5, v4

    .line 258
    .restart local v5    # "cNuke":Lorg/jbox2d/dynamics/contacts/Contact;
    invoke-virtual {v5}, Lorg/jbox2d/dynamics/contacts/Contact;->getNext()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v4

    .line 259
    invoke-virtual {p0, v5}, Lorg/jbox2d/dynamics/ContactManager;->destroy(Lorg/jbox2d/dynamics/contacts/Contact;)V

    goto :goto_2

    .line 264
    .end local v5    # "cNuke":Lorg/jbox2d/dynamics/contacts/Contact;
    :cond_48
    iget v13, v4, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    and-int/lit8 v13, v13, -0x9

    iput v13, v4, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 267
    :cond_4e
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Body;->isAwake()Z

    move-result v13

    if-eqz v13, :cond_71

    iget-object v13, v2, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v14, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    if-eq v13, v14, :cond_71

    const/4 v0, 0x1

    .line 268
    .local v0, "activeA":Z
    :goto_5b
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->isAwake()Z

    move-result v13

    if-eqz v13, :cond_73

    iget-object v13, v3, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v14, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    if-eq v13, v14, :cond_73

    const/4 v1, 0x1

    .line 271
    .local v1, "activeB":Z
    :goto_68
    if-nez v0, :cond_75

    if-nez v1, :cond_75

    .line 272
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/contacts/Contact;->getNext()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v4

    .line 273
    goto :goto_2

    .line 267
    .end local v0    # "activeA":Z
    .end local v1    # "activeB":Z
    :cond_71
    const/4 v0, 0x0

    goto :goto_5b

    .line 268
    .restart local v0    # "activeA":Z
    :cond_73
    const/4 v1, 0x0

    goto :goto_68

    .line 276
    .restart local v1    # "activeB":Z
    :cond_75
    iget-object v13, v6, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    aget-object v13, v13, v8

    iget v11, v13, Lorg/jbox2d/dynamics/FixtureProxy;->proxyId:I

    .line 277
    .local v11, "proxyIdA":I
    iget-object v13, v7, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    aget-object v13, v13, v9

    iget v12, v13, Lorg/jbox2d/dynamics/FixtureProxy;->proxyId:I

    .line 278
    .local v12, "proxyIdB":I
    iget-object v13, p0, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    invoke-virtual {v13, v11, v12}, Lorg/jbox2d/collision/broadphase/BroadPhase;->testOverlap(II)Z

    move-result v10

    .line 281
    .local v10, "overlap":Z
    if-nez v10, :cond_93

    .line 282
    move-object v5, v4

    .line 283
    .restart local v5    # "cNuke":Lorg/jbox2d/dynamics/contacts/Contact;
    invoke-virtual {v5}, Lorg/jbox2d/dynamics/contacts/Contact;->getNext()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v4

    .line 284
    invoke-virtual {p0, v5}, Lorg/jbox2d/dynamics/ContactManager;->destroy(Lorg/jbox2d/dynamics/contacts/Contact;)V

    goto/16 :goto_2

    .line 289
    .end local v5    # "cNuke":Lorg/jbox2d/dynamics/contacts/Contact;
    :cond_93
    iget-object v13, p0, Lorg/jbox2d/dynamics/ContactManager;->m_contactListener:Lorg/jbox2d/callbacks/ContactListener;

    invoke-virtual {v4, v13}, Lorg/jbox2d/dynamics/contacts/Contact;->update(Lorg/jbox2d/callbacks/ContactListener;)V

    .line 290
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/contacts/Contact;->getNext()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v4

    .line 291
    goto/16 :goto_2

    .line 292
    .end local v0    # "activeA":Z
    .end local v1    # "activeB":Z
    .end local v2    # "bodyA":Lorg/jbox2d/dynamics/Body;
    .end local v3    # "bodyB":Lorg/jbox2d/dynamics/Body;
    .end local v6    # "fixtureA":Lorg/jbox2d/dynamics/Fixture;
    .end local v7    # "fixtureB":Lorg/jbox2d/dynamics/Fixture;
    .end local v8    # "indexA":I
    .end local v9    # "indexB":I
    .end local v10    # "overlap":Z
    .end local v11    # "proxyIdA":I
    .end local v12    # "proxyIdB":I
    :cond_9e
    return-void
.end method

.method public destroy(Lorg/jbox2d/dynamics/contacts/Contact;)V
    .registers 8
    .param p1, "c"    # Lorg/jbox2d/dynamics/contacts/Contact;

    .prologue
    .line 177
    invoke-virtual {p1}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureA()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v2

    .line 178
    .local v2, "fixtureA":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual {p1}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureB()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v3

    .line 179
    .local v3, "fixtureB":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    .line 180
    .local v0, "bodyA":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    .line 182
    .local v1, "bodyB":Lorg/jbox2d/dynamics/Body;
    iget-object v4, p0, Lorg/jbox2d/dynamics/ContactManager;->m_contactListener:Lorg/jbox2d/callbacks/ContactListener;

    if-eqz v4, :cond_1f

    invoke-virtual {p1}, Lorg/jbox2d/dynamics/contacts/Contact;->isTouching()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 183
    iget-object v4, p0, Lorg/jbox2d/dynamics/ContactManager;->m_contactListener:Lorg/jbox2d/callbacks/ContactListener;

    invoke-interface {v4, p1}, Lorg/jbox2d/callbacks/ContactListener;->endContact(Lorg/jbox2d/dynamics/contacts/Contact;)V

    .line 187
    :cond_1f
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    if-eqz v4, :cond_29

    .line 188
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    iget-object v5, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    iput-object v5, v4, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 191
    :cond_29
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    if-eqz v4, :cond_33

    .line 192
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    iget-object v5, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    iput-object v5, v4, Lorg/jbox2d/dynamics/contacts/Contact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 195
    :cond_33
    iget-object v4, p0, Lorg/jbox2d/dynamics/ContactManager;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    if-ne p1, v4, :cond_3b

    .line 196
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    iput-object v4, p0, Lorg/jbox2d/dynamics/ContactManager;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 200
    :cond_3b
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    if-eqz v4, :cond_4b

    .line 201
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v5, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v5, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 204
    :cond_4b
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    if-eqz v4, :cond_5b

    .line 205
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v5, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v5, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 208
    :cond_5b
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v5, v0, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    if-ne v4, v5, :cond_67

    .line 209
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v4, v0, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 213
    :cond_67
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    if-eqz v4, :cond_77

    .line 214
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v5, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v5, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 217
    :cond_77
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    if-eqz v4, :cond_87

    .line 218
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v5, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v5, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 221
    :cond_87
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v5, v1, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    if-ne v4, v5, :cond_93

    .line 222
    iget-object v4, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v4, v1, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 226
    :cond_93
    iget-object v4, p0, Lorg/jbox2d/dynamics/ContactManager;->pool:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v4, p1}, Lorg/jbox2d/dynamics/World;->pushContact(Lorg/jbox2d/dynamics/contacts/Contact;)V

    .line 227
    iget v4, p0, Lorg/jbox2d/dynamics/ContactManager;->m_contactCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jbox2d/dynamics/ContactManager;->m_contactCount:I

    .line 228
    return-void
.end method

.method public findNewContacts()V
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    invoke-virtual {v0, p0}, Lorg/jbox2d/collision/broadphase/BroadPhase;->updatePairs(Lorg/jbox2d/callbacks/PairCallback;)V

    .line 174
    return-void
.end method
