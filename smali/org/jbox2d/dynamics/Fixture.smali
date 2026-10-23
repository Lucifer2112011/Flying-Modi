###### Class org.jbox2d.dynamics.Fixture (org.jbox2d.dynamics.Fixture)
.class public Lorg/jbox2d/dynamics/Fixture;
.super Ljava/lang/Object;
.source "Fixture.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final displacement:Lorg/jbox2d/common/Vec2;

.field public m_body:Lorg/jbox2d/dynamics/Body;

.field public m_density:F

.field public final m_filter:Lorg/jbox2d/dynamics/Filter;

.field public m_friction:F

.field public m_isSensor:Z

.field public m_next:Lorg/jbox2d/dynamics/Fixture;

.field public m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

.field public m_proxyCount:I

.field public m_restitution:F

.field public m_shape:Lorg/jbox2d/collision/shapes/Shape;

.field public m_userData:Ljava/lang/Object;

.field private final pool1:Lorg/jbox2d/collision/AABB;

.field private final pool2:Lorg/jbox2d/collision/AABB;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/Fixture;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Lorg/jbox2d/collision/AABB;

    invoke-direct {v0}, Lorg/jbox2d/collision/AABB;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->pool1:Lorg/jbox2d/collision/AABB;

    .line 407
    new-instance v0, Lorg/jbox2d/collision/AABB;

    invoke-direct {v0}, Lorg/jbox2d/collision/AABB;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->pool2:Lorg/jbox2d/collision/AABB;

    .line 408
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->displacement:Lorg/jbox2d/common/Vec2;

    .line 70
    iput-object v1, p0, Lorg/jbox2d/dynamics/Fixture;->m_userData:Ljava/lang/Object;

    .line 71
    iput-object v1, p0, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    .line 72
    iput-object v1, p0, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    .line 73
    iput-object v1, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxyCount:I

    .line 75
    iput-object v1, p0, Lorg/jbox2d/dynamics/Fixture;->m_shape:Lorg/jbox2d/collision/shapes/Shape;

    .line 76
    new-instance v0, Lorg/jbox2d/dynamics/Filter;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/Filter;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_filter:Lorg/jbox2d/dynamics/Filter;

    .line 77
    return-void
.end method


# virtual methods
.method public create(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/FixtureDef;)V
    .registers 12
    .param p1, "body"    # Lorg/jbox2d/dynamics/Body;
    .param p2, "def"    # Lorg/jbox2d/dynamics/FixtureDef;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 318
    iget-object v4, p2, Lorg/jbox2d/dynamics/FixtureDef;->userData:Ljava/lang/Object;

    iput-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_userData:Ljava/lang/Object;

    .line 319
    iget v4, p2, Lorg/jbox2d/dynamics/FixtureDef;->friction:F

    iput v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_friction:F

    .line 320
    iget v4, p2, Lorg/jbox2d/dynamics/FixtureDef;->restitution:F

    iput v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_restitution:F

    .line 322
    iput-object p1, p0, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    .line 323
    iput-object v7, p0, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    .line 326
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_filter:Lorg/jbox2d/dynamics/Filter;

    iget-object v5, p2, Lorg/jbox2d/dynamics/FixtureDef;->filter:Lorg/jbox2d/dynamics/Filter;

    invoke-virtual {v4, v5}, Lorg/jbox2d/dynamics/Filter;->set(Lorg/jbox2d/dynamics/Filter;)V

    .line 328
    iget-boolean v4, p2, Lorg/jbox2d/dynamics/FixtureDef;->isSensor:Z

    iput-boolean v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_isSensor:Z

    .line 330
    iget-object v4, p2, Lorg/jbox2d/dynamics/FixtureDef;->shape:Lorg/jbox2d/collision/shapes/Shape;

    invoke-virtual {v4}, Lorg/jbox2d/collision/shapes/Shape;->clone()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v4

    iput-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_shape:Lorg/jbox2d/collision/shapes/Shape;

    .line 333
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_shape:Lorg/jbox2d/collision/shapes/Shape;

    invoke-virtual {v4}, Lorg/jbox2d/collision/shapes/Shape;->getChildCount()I

    move-result v0

    .line 334
    .local v0, "childCount":I
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    if-nez v4, :cond_4f

    .line 335
    new-array v4, v0, [Lorg/jbox2d/dynamics/FixtureProxy;

    iput-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    .line 336
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_35
    if-ge v1, v0, :cond_4f

    .line 337
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    new-instance v5, Lorg/jbox2d/dynamics/FixtureProxy;

    invoke-direct {v5}, Lorg/jbox2d/dynamics/FixtureProxy;-><init>()V

    aput-object v5, v4, v1

    .line 338
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    aget-object v4, v4, v1

    iput-object v7, v4, Lorg/jbox2d/dynamics/FixtureProxy;->fixture:Lorg/jbox2d/dynamics/Fixture;

    .line 339
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    aget-object v4, v4, v1

    iput v8, v4, Lorg/jbox2d/dynamics/FixtureProxy;->proxyId:I

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 343
    .end local v1    # "i":I
    :cond_4f
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    array-length v4, v4

    if-ge v4, v0, :cond_85

    .line 344
    iget-object v3, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    .line 345
    .local v3, "old":[Lorg/jbox2d/dynamics/FixtureProxy;
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4, v0}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v2

    .line 346
    .local v2, "newLen":I
    new-array v4, v2, [Lorg/jbox2d/dynamics/FixtureProxy;

    iput-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    .line 347
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    array-length v5, v3

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_68
    if-ge v1, v2, :cond_85

    .line 349
    array-length v4, v3

    if-lt v1, v4, :cond_76

    .line 350
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    new-instance v5, Lorg/jbox2d/dynamics/FixtureProxy;

    invoke-direct {v5}, Lorg/jbox2d/dynamics/FixtureProxy;-><init>()V

    aput-object v5, v4, v1

    .line 352
    :cond_76
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    aget-object v4, v4, v1

    iput-object v7, v4, Lorg/jbox2d/dynamics/FixtureProxy;->fixture:Lorg/jbox2d/dynamics/Fixture;

    .line 353
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    aget-object v4, v4, v1

    iput v8, v4, Lorg/jbox2d/dynamics/FixtureProxy;->proxyId:I

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 356
    .end local v1    # "i":I
    .end local v2    # "newLen":I
    .end local v3    # "old":[Lorg/jbox2d/dynamics/FixtureProxy;
    :cond_85
    iput v6, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxyCount:I

    .line 358
    iget v4, p2, Lorg/jbox2d/dynamics/FixtureDef;->density:F

    iput v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_density:F

    .line 359
    return-void
.end method

.method public createProxies(Lorg/jbox2d/collision/broadphase/BroadPhase;Lorg/jbox2d/common/Transform;)V
    .registers 7
    .param p1, "broadPhase"    # Lorg/jbox2d/collision/broadphase/BroadPhase;
    .param p2, "xf"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 376
    sget-boolean v2, Lorg/jbox2d/dynamics/Fixture;->$assertionsDisabled:Z

    if-nez v2, :cond_e

    iget v2, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxyCount:I

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 379
    :cond_e
    iget-object v2, p0, Lorg/jbox2d/dynamics/Fixture;->m_shape:Lorg/jbox2d/collision/shapes/Shape;

    invoke-virtual {v2}, Lorg/jbox2d/collision/shapes/Shape;->getChildCount()I

    move-result v2

    iput v2, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxyCount:I

    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget v2, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxyCount:I

    if-ge v0, v2, :cond_35

    .line 382
    iget-object v2, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    aget-object v1, v2, v0

    .line 383
    .local v1, "proxy":Lorg/jbox2d/dynamics/FixtureProxy;
    iget-object v2, p0, Lorg/jbox2d/dynamics/Fixture;->m_shape:Lorg/jbox2d/collision/shapes/Shape;

    iget-object v3, v1, Lorg/jbox2d/dynamics/FixtureProxy;->aabb:Lorg/jbox2d/collision/AABB;

    invoke-virtual {v2, v3, p2, v0}, Lorg/jbox2d/collision/shapes/Shape;->computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Transform;I)V

    .line 384
    iget-object v2, v1, Lorg/jbox2d/dynamics/FixtureProxy;->aabb:Lorg/jbox2d/collision/AABB;

    invoke-virtual {p1, v2, v1}, Lorg/jbox2d/collision/broadphase/BroadPhase;->createProxy(Lorg/jbox2d/collision/AABB;Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Lorg/jbox2d/dynamics/FixtureProxy;->proxyId:I

    .line 385
    iput-object p0, v1, Lorg/jbox2d/dynamics/FixtureProxy;->fixture:Lorg/jbox2d/dynamics/Fixture;

    .line 386
    iput v0, v1, Lorg/jbox2d/dynamics/FixtureProxy;->childIndex:I

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 388
    .end local v1    # "proxy":Lorg/jbox2d/dynamics/FixtureProxy;
    :cond_35
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 363
    sget-boolean v0, Lorg/jbox2d/dynamics/Fixture;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    iget v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxyCount:I

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 366
    :cond_f
    iput-object v1, p0, Lorg/jbox2d/dynamics/Fixture;->m_shape:Lorg/jbox2d/collision/shapes/Shape;

    .line 367
    iput-object v1, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    .line 368
    iput-object v1, p0, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    .line 372
    return-void
.end method

.method public destroyProxies(Lorg/jbox2d/collision/broadphase/BroadPhase;)V
    .registers 5
    .param p1, "broadPhase"    # Lorg/jbox2d/collision/broadphase/BroadPhase;

    .prologue
    .line 397
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxyCount:I

    if-ge v0, v2, :cond_14

    .line 398
    iget-object v2, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    aget-object v1, v2, v0

    .line 399
    .local v1, "proxy":Lorg/jbox2d/dynamics/FixtureProxy;
    iget v2, v1, Lorg/jbox2d/dynamics/FixtureProxy;->proxyId:I

    invoke-virtual {p1, v2}, Lorg/jbox2d/collision/broadphase/BroadPhase;->destroyProxy(I)V

    .line 400
    const/4 v2, -0x1

    iput v2, v1, Lorg/jbox2d/dynamics/FixtureProxy;->proxyId:I

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 403
    .end local v1    # "proxy":Lorg/jbox2d/dynamics/FixtureProxy;
    :cond_14
    const/4 v2, 0x0

    iput v2, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxyCount:I

    .line 404
    return-void
.end method

.method public dump(I)V
    .registers 2
    .param p1, "bodyIndex"    # I

    .prologue
    .line 311
    return-void
.end method

.method public getAABB(I)Lorg/jbox2d/collision/AABB;
    .registers 3
    .param p1, "childIndex"    # I

    .prologue
    .line 300
    sget-boolean v0, Lorg/jbox2d/dynamics/Fixture;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    if-ltz p1, :cond_a

    iget v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxyCount:I

    if-lt p1, v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 301
    :cond_10
    iget-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/FixtureProxy;->aabb:Lorg/jbox2d/collision/AABB;

    return-object v0
.end method

.method public getBody()Lorg/jbox2d/dynamics/Body;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    return-object v0
.end method

.method public getDensity()F
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_density:F

    return v0
.end method

.method public getFilterData()Lorg/jbox2d/dynamics/Filter;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_filter:Lorg/jbox2d/dynamics/Filter;

    return-object v0
.end method

.method public getFriction()F
    .registers 2

    .prologue
    .line 262
    iget v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_friction:F

    return v0
.end method

.method public getMassData(Lorg/jbox2d/collision/shapes/MassData;)V
    .registers 4
    .param p1, "massData"    # Lorg/jbox2d/collision/shapes/MassData;

    .prologue
    .line 253
    iget-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_shape:Lorg/jbox2d/collision/shapes/Shape;

    iget v1, p0, Lorg/jbox2d/dynamics/Fixture;->m_density:F

    invoke-virtual {v0, p1, v1}, Lorg/jbox2d/collision/shapes/Shape;->computeMass(Lorg/jbox2d/collision/shapes/MassData;F)V

    .line 254
    return-void
.end method

.method public getNext()Lorg/jbox2d/dynamics/Fixture;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    return-object v0
.end method

.method public getRestitution()F
    .registers 2

    .prologue
    .line 280
    iget v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_restitution:F

    return v0
.end method

.method public getShape()Lorg/jbox2d/collision/shapes/Shape;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_shape:Lorg/jbox2d/collision/shapes/Shape;

    return-object v0
.end method

.method public getType()Lorg/jbox2d/collision/shapes/ShapeType;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_shape:Lorg/jbox2d/collision/shapes/Shape;

    invoke-virtual {v0}, Lorg/jbox2d/collision/shapes/Shape;->getType()Lorg/jbox2d/collision/shapes/ShapeType;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isSensor()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_isSensor:Z

    return v0
.end method

.method public raycast(Lorg/jbox2d/collision/RayCastOutput;Lorg/jbox2d/collision/RayCastInput;I)Z
    .registers 6
    .param p1, "output"    # Lorg/jbox2d/collision/RayCastOutput;
    .param p2, "input"    # Lorg/jbox2d/collision/RayCastInput;
    .param p3, "childIndex"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_shape:Lorg/jbox2d/collision/shapes/Shape;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    iget-object v1, v1, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/jbox2d/collision/shapes/Shape;->raycast(Lorg/jbox2d/collision/RayCastOutput;Lorg/jbox2d/collision/RayCastInput;Lorg/jbox2d/common/Transform;I)Z

    move-result v0

    return v0
.end method

.method public refilter()V
    .registers 9

    .prologue
    .line 147
    iget-object v7, p0, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    if-nez v7, :cond_5

    .line 174
    :cond_4
    return-void

    .line 152
    :cond_5
    iget-object v7, p0, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v7}, Lorg/jbox2d/dynamics/Body;->getContactList()Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-result-object v2

    .line 153
    .local v2, "edge":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :goto_b
    if-eqz v2, :cond_21

    .line 154
    iget-object v1, v2, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 155
    .local v1, "contact":Lorg/jbox2d/dynamics/contacts/Contact;
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureA()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v3

    .line 156
    .local v3, "fixtureA":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureB()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v4

    .line 157
    .local v4, "fixtureB":Lorg/jbox2d/dynamics/Fixture;
    if-eq v3, p0, :cond_1b

    if-ne v4, p0, :cond_1e

    .line 158
    :cond_1b
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/contacts/Contact;->flagForFiltering()V

    .line 160
    :cond_1e
    iget-object v2, v2, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 161
    goto :goto_b

    .line 163
    .end local v1    # "contact":Lorg/jbox2d/dynamics/contacts/Contact;
    .end local v3    # "fixtureA":Lorg/jbox2d/dynamics/Fixture;
    .end local v4    # "fixtureB":Lorg/jbox2d/dynamics/Fixture;
    :cond_21
    iget-object v7, p0, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v7}, Lorg/jbox2d/dynamics/Body;->getWorld()Lorg/jbox2d/dynamics/World;

    move-result-object v6

    .line 165
    .local v6, "world":Lorg/jbox2d/dynamics/World;
    if-eqz v6, :cond_4

    .line 170
    iget-object v7, v6, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v0, v7, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    .line 171
    .local v0, "broadPhase":Lorg/jbox2d/collision/broadphase/BroadPhase;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2e
    iget v7, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxyCount:I

    if-ge v5, v7, :cond_4

    .line 172
    iget-object v7, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    aget-object v7, v7, v5

    iget v7, v7, Lorg/jbox2d/dynamics/FixtureProxy;->proxyId:I

    invoke-virtual {v0, v7}, Lorg/jbox2d/collision/broadphase/BroadPhase;->touchProxy(I)V

    .line 171
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e
.end method

.method public setDensity(F)V
    .registers 3
    .param p1, "density"    # F

    .prologue
    .line 197
    sget-boolean v0, Lorg/jbox2d/dynamics/Fixture;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gez v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 198
    :cond_f
    iput p1, p0, Lorg/jbox2d/dynamics/Fixture;->m_density:F

    .line 199
    return-void
.end method

.method public setFilterData(Lorg/jbox2d/dynamics/Filter;)V
    .registers 3
    .param p1, "filter"    # Lorg/jbox2d/dynamics/Filter;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_filter:Lorg/jbox2d/dynamics/Filter;

    invoke-virtual {v0, p1}, Lorg/jbox2d/dynamics/Filter;->set(Lorg/jbox2d/dynamics/Filter;)V

    .line 130
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Fixture;->refilter()V

    .line 131
    return-void
.end method

.method public setFriction(F)V
    .registers 2
    .param p1, "friction"    # F

    .prologue
    .line 271
    iput p1, p0, Lorg/jbox2d/dynamics/Fixture;->m_friction:F

    .line 272
    return-void
.end method

.method public setRestitution(F)V
    .registers 2
    .param p1, "restitution"    # F

    .prologue
    .line 290
    iput p1, p0, Lorg/jbox2d/dynamics/Fixture;->m_restitution:F

    .line 291
    return-void
.end method

.method public setSensor(Z)V
    .registers 4
    .param p1, "sensor"    # Z

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_isSensor:Z

    if-eq p1, v0, :cond_c

    .line 115
    iget-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 116
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/Fixture;->m_isSensor:Z

    .line 118
    :cond_c
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 221
    iput-object p1, p0, Lorg/jbox2d/dynamics/Fixture;->m_userData:Ljava/lang/Object;

    .line 222
    return-void
.end method

.method protected synchronize(Lorg/jbox2d/collision/broadphase/BroadPhase;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)V
    .registers 11
    .param p1, "broadPhase"    # Lorg/jbox2d/collision/broadphase/BroadPhase;
    .param p2, "transform1"    # Lorg/jbox2d/common/Transform;
    .param p3, "transform2"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 419
    iget v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxyCount:I

    if-nez v4, :cond_5

    .line 441
    :cond_4
    return-void

    .line 423
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxyCount:I

    if-ge v2, v4, :cond_4

    .line 424
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    aget-object v3, v4, v2

    .line 427
    .local v3, "proxy":Lorg/jbox2d/dynamics/FixtureProxy;
    iget-object v1, p0, Lorg/jbox2d/dynamics/Fixture;->pool1:Lorg/jbox2d/collision/AABB;

    .line 428
    .local v1, "aabb1":Lorg/jbox2d/collision/AABB;
    iget-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->pool2:Lorg/jbox2d/collision/AABB;

    .line 429
    .local v0, "aab":Lorg/jbox2d/collision/AABB;
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_shape:Lorg/jbox2d/collision/shapes/Shape;

    iget v5, v3, Lorg/jbox2d/dynamics/FixtureProxy;->childIndex:I

    invoke-virtual {v4, v1, p2, v5}, Lorg/jbox2d/collision/shapes/Shape;->computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Transform;I)V

    .line 430
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->m_shape:Lorg/jbox2d/collision/shapes/Shape;

    iget v5, v3, Lorg/jbox2d/dynamics/FixtureProxy;->childIndex:I

    invoke-virtual {v4, v0, p3, v5}, Lorg/jbox2d/collision/shapes/Shape;->computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Transform;I)V

    .line 432
    iget-object v4, v3, Lorg/jbox2d/dynamics/FixtureProxy;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v5, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v4, v1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v6, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->x:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_9f

    iget-object v4, v1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    :goto_34
    iput v4, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 433
    iget-object v4, v3, Lorg/jbox2d/dynamics/FixtureProxy;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v5, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v4, v1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_a4

    iget-object v4, v1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    :goto_4a
    iput v4, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 434
    iget-object v4, v3, Lorg/jbox2d/dynamics/FixtureProxy;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v5, v4, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget-object v4, v1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v6, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_a9

    iget-object v4, v1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    :goto_60
    iput v4, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 435
    iget-object v4, v3, Lorg/jbox2d/dynamics/FixtureProxy;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v5, v4, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget-object v4, v1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_ae

    iget-object v4, v1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    :goto_76
    iput v4, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 436
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->displacement:Lorg/jbox2d/common/Vec2;

    iget-object v5, p3, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v6, p2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v5, v6

    iput v5, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 437
    iget-object v4, p0, Lorg/jbox2d/dynamics/Fixture;->displacement:Lorg/jbox2d/common/Vec2;

    iget-object v5, p3, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, p2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v5, v6

    iput v5, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 439
    iget v4, v3, Lorg/jbox2d/dynamics/FixtureProxy;->proxyId:I

    iget-object v5, v3, Lorg/jbox2d/dynamics/FixtureProxy;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v6, p0, Lorg/jbox2d/dynamics/Fixture;->displacement:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p1, v4, v5, v6}, Lorg/jbox2d/collision/broadphase/BroadPhase;->moveProxy(ILorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Vec2;)V

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 432
    :cond_9f
    iget-object v4, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_34

    .line 433
    :cond_a4
    iget-object v4, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_4a

    .line 434
    :cond_a9
    iget-object v4, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_60

    .line 435
    :cond_ae
    iget-object v4, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_76
.end method

.method public testPoint(Lorg/jbox2d/common/Vec2;)Z
    .registers 4
    .param p1, "p"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 231
    iget-object v0, p0, Lorg/jbox2d/dynamics/Fixture;->m_shape:Lorg/jbox2d/collision/shapes/Shape;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    iget-object v1, v1, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/collision/shapes/Shape;->testPoint(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;)Z

    move-result v0

    return v0
.end method
