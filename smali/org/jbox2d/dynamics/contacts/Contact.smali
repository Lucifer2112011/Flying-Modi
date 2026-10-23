###### Class org.jbox2d.dynamics.contacts.Contact (org.jbox2d.dynamics.contacts.Contact)
.class public abstract Lorg/jbox2d/dynamics/contacts/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# static fields
.field public static final BULLET_HIT_FLAG:I = 0x10

.field public static final ENABLED_FLAG:I = 0x4

.field public static final FILTER_FLAG:I = 0x8

.field public static final ISLAND_FLAG:I = 0x1

.field public static final TOI_FLAG:I = 0x20

.field public static final TOUCHING_FLAG:I = 0x2


# instance fields
.field public m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

.field public m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

.field public m_flags:I

.field public m_friction:F

.field public m_indexA:I

.field public m_indexB:I

.field public final m_manifold:Lorg/jbox2d/collision/Manifold;

.field public m_next:Lorg/jbox2d/dynamics/contacts/Contact;

.field public m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

.field public m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

.field public m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

.field public m_restitution:F

.field public m_tangentSpeed:F

.field public m_toi:F

.field public m_toiCount:F

.field private final oldManifold:Lorg/jbox2d/collision/Manifold;

.field protected final pool:Lorg/jbox2d/pooling/IWorldPool;


# direct methods
.method protected constructor <init>(Lorg/jbox2d/pooling/IWorldPool;)V
    .registers 4
    .param p1, "argPool"    # Lorg/jbox2d/pooling/IWorldPool;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 70
    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 260
    new-instance v0, Lorg/jbox2d/collision/Manifold;

    invoke-direct {v0}, Lorg/jbox2d/collision/Manifold;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->oldManifold:Lorg/jbox2d/collision/Manifold;

    .line 91
    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    .line 92
    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    .line 93
    new-instance v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/ContactEdge;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 94
    new-instance v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/ContactEdge;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 95
    new-instance v0, Lorg/jbox2d/collision/Manifold;

    invoke-direct {v0}, Lorg/jbox2d/collision/Manifold;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    .line 96
    iput-object p1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->pool:Lorg/jbox2d/pooling/IWorldPool;

    .line 97
    return-void
.end method

.method public static final mixFriction(FF)F
    .registers 3
    .param p0, "friction1"    # F
    .param p1, "friction2"    # F

    .prologue
    .line 351
    mul-float v0, p0, p1

    invoke-static {v0}, Lorg/jbox2d/common/MathUtils;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public static final mixRestitution(FF)F
    .registers 3
    .param p0, "restitution1"    # F
    .param p1, "restitution2"    # F

    .prologue
    .line 363
    cmpl-float v0, p0, p1

    if-lez v0, :cond_5

    .end local p0    # "restitution1":F
    :goto_4
    return p0

    .restart local p0    # "restitution1":F
    :cond_5
    move p0, p1

    goto :goto_4
.end method


# virtual methods
.method public abstract evaluate(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)V
.end method

.method public flagForFiltering()V
    .registers 2

    .prologue
    .line 256
    iget v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 257
    return-void
.end method

.method public getChildIndexA()I
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_indexA:I

    return v0
.end method

.method public getChildIndexB()I
    .registers 2

    .prologue
    .line 215
    iget v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_indexB:I

    return v0
.end method

.method public getFixtureA()Lorg/jbox2d/dynamics/Fixture;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    return-object v0
.end method

.method public getFixtureB()Lorg/jbox2d/dynamics/Fixture;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    return-object v0
.end method

.method public getFriction()F
    .registers 2

    .prologue
    .line 223
    iget v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_friction:F

    return v0
.end method

.method public getManifold()Lorg/jbox2d/collision/Manifold;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    return-object v0
.end method

.method public getNext()Lorg/jbox2d/dynamics/contacts/Contact;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    return-object v0
.end method

.method public getRestitution()F
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_restitution:F

    return v0
.end method

.method public getTangentSpeed()F
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_tangentSpeed:F

    return v0
.end method

.method public getWorldManifold(Lorg/jbox2d/collision/WorldManifold;)V
    .registers 12
    .param p1, "worldManifold"    # Lorg/jbox2d/collision/WorldManifold;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v6

    .line 143
    .local v6, "bodyA":Lorg/jbox2d/dynamics/Body;
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v7

    .line 144
    .local v7, "bodyB":Lorg/jbox2d/dynamics/Body;
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Fixture;->getShape()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v8

    .line 145
    .local v8, "shapeA":Lorg/jbox2d/collision/shapes/Shape;
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Fixture;->getShape()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v9

    .line 147
    .local v9, "shapeB":Lorg/jbox2d/collision/shapes/Shape;
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->getTransform()Lorg/jbox2d/common/Transform;

    move-result-object v2

    iget v3, v8, Lorg/jbox2d/collision/shapes/Shape;->m_radius:F

    invoke-virtual {v7}, Lorg/jbox2d/dynamics/Body;->getTransform()Lorg/jbox2d/common/Transform;

    move-result-object v4

    iget v5, v9, Lorg/jbox2d/collision/shapes/Shape;->m_radius:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jbox2d/collision/WorldManifold;->initialize(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/common/Transform;FLorg/jbox2d/common/Transform;F)V

    .line 149
    return-void
.end method

.method public init(Lorg/jbox2d/dynamics/Fixture;ILorg/jbox2d/dynamics/Fixture;I)V
    .registers 9
    .param p1, "fA"    # Lorg/jbox2d/dynamics/Fixture;
    .param p2, "indexA"    # I
    .param p3, "fB"    # Lorg/jbox2d/dynamics/Fixture;
    .param p4, "indexB"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    iput v3, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 103
    iput-object p1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    .line 104
    iput-object p3, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    .line 106
    iput p2, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_indexA:I

    .line 107
    iput p4, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_indexB:I

    .line 109
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iput v3, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 111
    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 112
    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 114
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 115
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 116
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 117
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeA:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 119
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 120
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 121
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 122
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_nodeB:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 124
    iput v2, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_toiCount:F

    .line 125
    iget v0, p1, Lorg/jbox2d/dynamics/Fixture;->m_friction:F

    iget v1, p3, Lorg/jbox2d/dynamics/Fixture;->m_friction:F

    invoke-static {v0, v1}, Lorg/jbox2d/dynamics/contacts/Contact;->mixFriction(FF)F

    move-result v0

    iput v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_friction:F

    .line 126
    iget v0, p1, Lorg/jbox2d/dynamics/Fixture;->m_restitution:F

    iget v1, p3, Lorg/jbox2d/dynamics/Fixture;->m_restitution:F

    invoke-static {v0, v1}, Lorg/jbox2d/dynamics/contacts/Contact;->mixRestitution(FF)F

    move-result v0

    iput v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_restitution:F

    .line 128
    iput v2, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_tangentSpeed:F

    .line 129
    return-void
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 180
    iget v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isTouching()Z
    .registers 3

    .prologue
    .line 157
    iget v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public resetFriction()V
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    iget v0, v0, Lorg/jbox2d/dynamics/Fixture;->m_friction:F

    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    iget v1, v1, Lorg/jbox2d/dynamics/Fixture;->m_friction:F

    invoke-static {v0, v1}, Lorg/jbox2d/dynamics/contacts/Contact;->mixFriction(FF)F

    move-result v0

    iput v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_friction:F

    .line 228
    return-void
.end method

.method public resetRestitution()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    iget v0, v0, Lorg/jbox2d/dynamics/Fixture;->m_restitution:F

    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    iget v1, v1, Lorg/jbox2d/dynamics/Fixture;->m_restitution:F

    invoke-static {v0, v1}, Lorg/jbox2d/dynamics/contacts/Contact;->mixRestitution(FF)F

    move-result v0

    iput v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_restitution:F

    .line 240
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 167
    if-eqz p1, :cond_9

    .line 168
    iget v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 172
    :goto_8
    return-void

    .line 170
    :cond_9
    iget v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    goto :goto_8
.end method

.method public setFriction(F)V
    .registers 2
    .param p1, "friction"    # F

    .prologue
    .line 219
    iput p1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_friction:F

    .line 220
    return-void
.end method

.method public setRestitution(F)V
    .registers 2
    .param p1, "restitution"    # F

    .prologue
    .line 231
    iput p1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_restitution:F

    .line 232
    return-void
.end method

.method public setTangentSpeed(F)V
    .registers 2
    .param p1, "speed"    # F

    .prologue
    .line 243
    iput p1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_tangentSpeed:F

    .line 244
    return-void
.end method

.method public update(Lorg/jbox2d/callbacks/ContactListener;)V
    .registers 23
    .param p1, "listener"    # Lorg/jbox2d/callbacks/ContactListener;

    .prologue
    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->oldManifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    invoke-virtual {v2, v4}, Lorg/jbox2d/collision/Manifold;->set(Lorg/jbox2d/collision/Manifold;)V

    .line 267
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 269
    const/16 v19, 0x0

    .line 270
    .local v19, "touching":Z
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_8c

    const/16 v20, 0x1

    .line 272
    .local v20, "wasTouching":Z
    :goto_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Fixture;->isSensor()Z

    move-result v17

    .line 273
    .local v17, "sensorA":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Fixture;->isSensor()Z

    move-result v18

    .line 274
    .local v18, "sensorB":Z
    if-nez v17, :cond_36

    if-eqz v18, :cond_8f

    :cond_36
    const/16 v16, 0x1

    .line 276
    .local v16, "sensor":Z
    :goto_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v9

    .line 277
    .local v9, "bodyA":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v10

    .line 278
    .local v10, "bodyB":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v9}, Lorg/jbox2d/dynamics/Body;->getTransform()Lorg/jbox2d/common/Transform;

    move-result-object v7

    .line 279
    .local v7, "xfA":Lorg/jbox2d/common/Transform;
    invoke-virtual {v10}, Lorg/jbox2d/dynamics/Body;->getTransform()Lorg/jbox2d/common/Transform;

    move-result-object v8

    .line 283
    .local v8, "xfB":Lorg/jbox2d/common/Transform;
    if-eqz v16, :cond_92

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Fixture;->getShape()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v3

    .line 285
    .local v3, "shapeA":Lorg/jbox2d/collision/shapes/Shape;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Fixture;->getShape()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v5

    .line 286
    .local v5, "shapeB":Lorg/jbox2d/collision/shapes/Shape;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v2}, Lorg/jbox2d/pooling/IWorldPool;->getCollision()Lorg/jbox2d/collision/Collision;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_indexA:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_indexB:I

    invoke-virtual/range {v2 .. v8}, Lorg/jbox2d/collision/Collision;->testOverlap(Lorg/jbox2d/collision/shapes/Shape;ILorg/jbox2d/collision/shapes/Shape;ILorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)Z

    move-result v19

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    const/4 v4, 0x0

    iput v4, v2, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 319
    .end local v3    # "shapeA":Lorg/jbox2d/collision/shapes/Shape;
    .end local v5    # "shapeB":Lorg/jbox2d/collision/shapes/Shape;
    :cond_7d
    :goto_7d
    if-eqz v19, :cond_f7

    .line 320
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 325
    :goto_89
    if-nez p1, :cond_102

    .line 340
    :cond_8b
    :goto_8b
    return-void

    .line 270
    .end local v7    # "xfA":Lorg/jbox2d/common/Transform;
    .end local v8    # "xfB":Lorg/jbox2d/common/Transform;
    .end local v9    # "bodyA":Lorg/jbox2d/dynamics/Body;
    .end local v10    # "bodyB":Lorg/jbox2d/dynamics/Body;
    .end local v16    # "sensor":Z
    .end local v17    # "sensorA":Z
    .end local v18    # "sensorB":Z
    .end local v20    # "wasTouching":Z
    :cond_8c
    const/16 v20, 0x0

    goto :goto_22

    .line 274
    .restart local v17    # "sensorA":Z
    .restart local v18    # "sensorB":Z
    .restart local v20    # "wasTouching":Z
    :cond_8f
    const/16 v16, 0x0

    goto :goto_38

    .line 291
    .restart local v7    # "xfA":Lorg/jbox2d/common/Transform;
    .restart local v8    # "xfB":Lorg/jbox2d/common/Transform;
    .restart local v9    # "bodyA":Lorg/jbox2d/dynamics/Body;
    .restart local v10    # "bodyB":Lorg/jbox2d/dynamics/Body;
    .restart local v16    # "sensor":Z
    :cond_92
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v8}, Lorg/jbox2d/dynamics/contacts/Contact;->evaluate(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget v2, v2, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-lez v2, :cond_e2

    const/16 v19, 0x1

    .line 296
    :goto_a5
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget v2, v2, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-ge v11, v2, :cond_e8

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v2, v2, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v15, v2, v11

    .line 298
    .local v15, "mp2":Lorg/jbox2d/collision/ManifoldPoint;
    const/4 v2, 0x0

    iput v2, v15, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 299
    const/4 v2, 0x0

    iput v2, v15, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 300
    iget-object v12, v15, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 302
    .local v12, "id2":Lorg/jbox2d/collision/ContactID;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->oldManifold:Lorg/jbox2d/collision/Manifold;

    iget v2, v2, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-ge v13, v2, :cond_df

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->oldManifold:Lorg/jbox2d/collision/Manifold;

    iget-object v2, v2, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v14, v2, v13

    .line 305
    .local v14, "mp1":Lorg/jbox2d/collision/ManifoldPoint;
    iget-object v2, v14, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    invoke-virtual {v2, v12}, Lorg/jbox2d/collision/ContactID;->isEqual(Lorg/jbox2d/collision/ContactID;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 306
    iget v2, v14, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    iput v2, v15, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 307
    iget v2, v14, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    iput v2, v15, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 296
    .end local v14    # "mp1":Lorg/jbox2d/collision/ManifoldPoint;
    :cond_df
    add-int/lit8 v11, v11, 0x1

    goto :goto_a6

    .line 292
    .end local v11    # "i":I
    .end local v12    # "id2":Lorg/jbox2d/collision/ContactID;
    .end local v13    # "j":I
    .end local v15    # "mp2":Lorg/jbox2d/collision/ManifoldPoint;
    :cond_e2
    const/16 v19, 0x0

    goto :goto_a5

    .line 302
    .restart local v11    # "i":I
    .restart local v12    # "id2":Lorg/jbox2d/collision/ContactID;
    .restart local v13    # "j":I
    .restart local v14    # "mp1":Lorg/jbox2d/collision/ManifoldPoint;
    .restart local v15    # "mp2":Lorg/jbox2d/collision/ManifoldPoint;
    :cond_e5
    add-int/lit8 v13, v13, 0x1

    goto :goto_bf

    .line 313
    .end local v12    # "id2":Lorg/jbox2d/collision/ContactID;
    .end local v13    # "j":I
    .end local v14    # "mp1":Lorg/jbox2d/collision/ManifoldPoint;
    .end local v15    # "mp2":Lorg/jbox2d/collision/ManifoldPoint;
    :cond_e8
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7d

    .line 314
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 315
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    goto :goto_7d

    .line 322
    .end local v11    # "i":I
    :cond_f7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    and-int/lit8 v2, v2, -0x3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    goto :goto_89

    .line 329
    :cond_102
    if-nez v20, :cond_110

    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_110

    .line 330
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/jbox2d/callbacks/ContactListener;->beginContact(Lorg/jbox2d/dynamics/contacts/Contact;)V

    .line 333
    :cond_110
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_11e

    if-nez v19, :cond_11e

    .line 334
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/jbox2d/callbacks/ContactListener;->endContact(Lorg/jbox2d/dynamics/contacts/Contact;)V

    .line 337
    :cond_11e
    if-nez v16, :cond_8b

    if-eqz v19, :cond_8b

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/Contact;->oldManifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v2}, Lorg/jbox2d/callbacks/ContactListener;->preSolve(Lorg/jbox2d/dynamics/contacts/Contact;Lorg/jbox2d/collision/Manifold;)V

    goto/16 :goto_8b
.end method
