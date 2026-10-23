###### Class org.jbox2d.dynamics.contacts.ChainAndPolygonContact (org.jbox2d.dynamics.contacts.ChainAndPolygonContact)
.class public Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;
.super Lorg/jbox2d/dynamics/contacts/Contact;
.source "ChainAndPolygonContact.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final edge:Lorg/jbox2d/collision/shapes/EdgeShape;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lorg/jbox2d/pooling/IWorldPool;)V
    .registers 3
    .param p1, "argPool"    # Lorg/jbox2d/pooling/IWorldPool;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/jbox2d/dynamics/contacts/Contact;-><init>(Lorg/jbox2d/pooling/IWorldPool;)V

    .line 48
    new-instance v0, Lorg/jbox2d/collision/shapes/EdgeShape;

    invoke-direct {v0}, Lorg/jbox2d/collision/shapes/EdgeShape;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;->edge:Lorg/jbox2d/collision/shapes/EdgeShape;

    .line 39
    return-void
.end method


# virtual methods
.method public evaluate(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)V
    .registers 11
    .param p1, "manifold"    # Lorg/jbox2d/collision/Manifold;
    .param p2, "xfA"    # Lorg/jbox2d/common/Transform;
    .param p3, "xfB"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Fixture;->getShape()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v6

    check-cast v6, Lorg/jbox2d/collision/shapes/ChainShape;

    .line 53
    .local v6, "chain":Lorg/jbox2d/collision/shapes/ChainShape;
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;->edge:Lorg/jbox2d/collision/shapes/EdgeShape;

    iget v1, p0, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;->m_indexA:I

    invoke-virtual {v6, v0, v1}, Lorg/jbox2d/collision/shapes/ChainShape;->getChildEdge(Lorg/jbox2d/collision/shapes/EdgeShape;I)V

    .line 54
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v0}, Lorg/jbox2d/pooling/IWorldPool;->getCollision()Lorg/jbox2d/collision/Collision;

    move-result-object v0

    iget-object v2, p0, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;->edge:Lorg/jbox2d/collision/shapes/EdgeShape;

    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Fixture;->getShape()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v4

    check-cast v4, Lorg/jbox2d/collision/shapes/PolygonShape;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jbox2d/collision/Collision;->collideEdgeAndPolygon(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/shapes/EdgeShape;Lorg/jbox2d/common/Transform;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)V

    .line 56
    return-void
.end method

.method public init(Lorg/jbox2d/dynamics/Fixture;ILorg/jbox2d/dynamics/Fixture;I)V
    .registers 7
    .param p1, "fA"    # Lorg/jbox2d/dynamics/Fixture;
    .param p2, "indexA"    # I
    .param p3, "fB"    # Lorg/jbox2d/dynamics/Fixture;
    .param p4, "indexB"    # I

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jbox2d/dynamics/contacts/Contact;->init(Lorg/jbox2d/dynamics/Fixture;ILorg/jbox2d/dynamics/Fixture;I)V

    .line 44
    sget-boolean v0, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;->$assertionsDisabled:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Fixture;->getType()Lorg/jbox2d/collision/shapes/ShapeType;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->CHAIN:Lorg/jbox2d/collision/shapes/ShapeType;

    if-eq v0, v1, :cond_17

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_17
    sget-boolean v0, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Fixture;->getType()Lorg/jbox2d/collision/shapes/ShapeType;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->POLYGON:Lorg/jbox2d/collision/shapes/ShapeType;

    if-eq v0, v1, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_2b
    return-void
.end method
