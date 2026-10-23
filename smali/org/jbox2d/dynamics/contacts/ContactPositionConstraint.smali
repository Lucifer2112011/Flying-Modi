###### Class org.jbox2d.dynamics.contacts.ContactPositionConstraint (org.jbox2d.dynamics.contacts.ContactPositionConstraint)
.class public Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;
.super Ljava/lang/Object;
.source "ContactPositionConstraint.java"


# instance fields
.field indexA:I

.field indexB:I

.field invIA:F

.field invIB:F

.field invMassA:F

.field invMassB:F

.field final localCenterA:Lorg/jbox2d/common/Vec2;

.field final localCenterB:Lorg/jbox2d/common/Vec2;

.field final localNormal:Lorg/jbox2d/common/Vec2;

.field final localPoint:Lorg/jbox2d/common/Vec2;

.field localPoints:[Lorg/jbox2d/common/Vec2;

.field pointCount:I

.field radiusA:F

.field radiusB:F

.field type:Lorg/jbox2d/collision/Manifold$ManifoldType;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jbox2d/common/Vec2;

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localPoints:[Lorg/jbox2d/common/Vec2;

    .line 32
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localNormal:Lorg/jbox2d/common/Vec2;

    .line 33
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localPoint:Lorg/jbox2d/common/Vec2;

    .line 37
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localCenterA:Lorg/jbox2d/common/Vec2;

    .line 38
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localCenterB:Lorg/jbox2d/common/Vec2;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localPoints:[Lorg/jbox2d/common/Vec2;

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 46
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localPoints:[Lorg/jbox2d/common/Vec2;

    new-instance v2, Lorg/jbox2d/common/Vec2;

    invoke-direct {v2}, Lorg/jbox2d/common/Vec2;-><init>()V

    aput-object v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 48
    :cond_36
    return-void
.end method
