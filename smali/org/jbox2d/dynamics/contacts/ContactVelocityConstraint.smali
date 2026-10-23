###### Class org.jbox2d.dynamics.contacts.ContactVelocityConstraint (org.jbox2d.dynamics.contacts.ContactVelocityConstraint)
.class public Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
.super Ljava/lang/Object;
.source "ContactVelocityConstraint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    }
.end annotation


# instance fields
.field public final K:Lorg/jbox2d/common/Mat22;

.field public contactIndex:I

.field public friction:F

.field public indexA:I

.field public indexB:I

.field public invIA:F

.field public invIB:F

.field public invMassA:F

.field public invMassB:F

.field public final normal:Lorg/jbox2d/common/Vec2;

.field public final normalMass:Lorg/jbox2d/common/Mat22;

.field public pointCount:I

.field public points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

.field public restitution:F

.field public tangentSpeed:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    .line 32
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    .line 33
    new-instance v1, Lorg/jbox2d/common/Mat22;

    invoke-direct {v1}, Lorg/jbox2d/common/Mat22;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normalMass:Lorg/jbox2d/common/Mat22;

    .line 34
    new-instance v1, Lorg/jbox2d/common/Mat22;

    invoke-direct {v1}, Lorg/jbox2d/common/Mat22;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->K:Lorg/jbox2d/common/Mat22;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 47
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    new-instance v2, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    invoke-direct {v2}, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;-><init>()V

    aput-object v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 49
    :cond_2f
    return-void
.end method

###### Class org.jbox2d.dynamics.contacts.ContactVelocityConstraint.VelocityConstraintPoint (org.jbox2d.dynamics.contacts.ContactVelocityConstraint$VelocityConstraintPoint)
.class public Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
.super Ljava/lang/Object;
.source "ContactVelocityConstraint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VelocityConstraintPoint"
.end annotation


# instance fields
.field public normalImpulse:F

.field public normalMass:F

.field public final rA:Lorg/jbox2d/common/Vec2;

.field public final rB:Lorg/jbox2d/common/Vec2;

.field public tangentImpulse:F

.field public tangentMass:F

.field public velocityBias:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    .line 53
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    return-void
.end method
