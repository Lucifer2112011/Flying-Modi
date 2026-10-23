###### Class org.jbox2d.dynamics.joints.ConstantVolumeJointDef (org.jbox2d.dynamics.joints.ConstantVolumeJointDef)
.class public Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "ConstantVolumeJointDef.java"


# instance fields
.field bodies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jbox2d/dynamics/Body;",
            ">;"
        }
    .end annotation
.end field

.field public dampingRatio:F

.field public frequencyHz:F

.field joints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jbox2d/dynamics/joints/DistanceJoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 42
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->CONSTANT_VOLUME:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->bodies:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->joints:Ljava/util/ArrayList;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->collideConnected:Z

    .line 46
    iput v1, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->frequencyHz:F

    .line 47
    iput v1, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->dampingRatio:F

    .line 48
    return-void
.end method


# virtual methods
.method public addBody(Lorg/jbox2d/dynamics/Body;)V
    .registers 4
    .param p1, "argBody"    # Lorg/jbox2d/dynamics/Body;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->bodies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->bodies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 58
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    .line 60
    :cond_10
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->bodies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 61
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    .line 63
    :cond_1b
    return-void
.end method

.method public addBodyAndJoint(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/joints/DistanceJoint;)V
    .registers 4
    .param p1, "argBody"    # Lorg/jbox2d/dynamics/Body;
    .param p2, "argJoint"    # Lorg/jbox2d/dynamics/joints/DistanceJoint;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->addBody(Lorg/jbox2d/dynamics/Body;)V

    .line 70
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->joints:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->joints:Ljava/util/ArrayList;

    .line 73
    :cond_e
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->joints:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method
