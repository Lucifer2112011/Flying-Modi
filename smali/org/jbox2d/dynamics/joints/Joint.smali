###### Class org.jbox2d.dynamics.joints.Joint (org.jbox2d.dynamics.joints.Joint)
.class public abstract Lorg/jbox2d/dynamics/joints/Joint;
.super Ljava/lang/Object;
.source "Joint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/dynamics/joints/Joint$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected m_bodyA:Lorg/jbox2d/dynamics/Body;

.field protected m_bodyB:Lorg/jbox2d/dynamics/Body;

.field private m_collideConnected:Z

.field public m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

.field public m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

.field public m_islandFlag:Z

.field public m_next:Lorg/jbox2d/dynamics/joints/Joint;

.field public m_prev:Lorg/jbox2d/dynamics/joints/Joint;

.field private final m_type:Lorg/jbox2d/dynamics/joints/JointType;

.field public m_userData:Ljava/lang/Object;

.field protected pool:Lorg/jbox2d/pooling/IWorldPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lorg/jbox2d/dynamics/joints/Joint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/Joint;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/JointDef;)V
    .registers 6
    .param p1, "worldPool"    # Lorg/jbox2d/pooling/IWorldPool;
    .param p2, "def"    # Lorg/jbox2d/dynamics/joints/JointDef;

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget-boolean v0, Lorg/jbox2d/dynamics/joints/Joint;->$assertionsDisabled:Z

    if-nez v0, :cond_14

    iget-object v0, p2, Lorg/jbox2d/dynamics/joints/JointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/JointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    if-ne v0, v1, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_14
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/Joint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    .line 100
    iget-object v0, p2, Lorg/jbox2d/dynamics/joints/JointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 101
    iput-object v2, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_prev:Lorg/jbox2d/dynamics/joints/Joint;

    .line 102
    iput-object v2, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    .line 103
    iget-object v0, p2, Lorg/jbox2d/dynamics/joints/JointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    .line 104
    iget-object v0, p2, Lorg/jbox2d/dynamics/joints/JointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    .line 105
    iget-boolean v0, p2, Lorg/jbox2d/dynamics/joints/JointDef;->collideConnected:Z

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_collideConnected:Z

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_islandFlag:Z

    .line 107
    iget-object v0, p2, Lorg/jbox2d/dynamics/joints/JointDef;->userData:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_userData:Ljava/lang/Object;

    .line 109
    new-instance v0, Lorg/jbox2d/dynamics/joints/JointEdge;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/joints/JointEdge;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 110
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    .line 111
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 112
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 113
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 115
    new-instance v0, Lorg/jbox2d/dynamics/joints/JointEdge;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/joints/JointEdge;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 116
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    .line 117
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 118
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 119
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 123
    return-void
.end method

.method public static create(Lorg/jbox2d/dynamics/World;Lorg/jbox2d/dynamics/joints/JointDef;)Lorg/jbox2d/dynamics/joints/Joint;
    .registers 4
    .param p0, "world"    # Lorg/jbox2d/dynamics/World;
    .param p1, "def"    # Lorg/jbox2d/dynamics/joints/JointDef;

    .prologue
    .line 43
    sget-object v0, Lorg/jbox2d/dynamics/joints/Joint$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    iget-object v1, p1, Lorg/jbox2d/dynamics/joints/JointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_90

    .line 68
    const/4 v0, 0x0

    .end local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    :goto_e
    return-object v0

    .line 45
    .restart local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    :pswitch_f
    new-instance v0, Lorg/jbox2d/dynamics/joints/MouseJoint;

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    check-cast p1, Lorg/jbox2d/dynamics/joints/MouseJointDef;

    .end local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, v1, p1}, Lorg/jbox2d/dynamics/joints/MouseJoint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/MouseJointDef;)V

    goto :goto_e

    .line 47
    .restart local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    :pswitch_1b
    new-instance v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    check-cast p1, Lorg/jbox2d/dynamics/joints/DistanceJointDef;

    .end local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, v1, p1}, Lorg/jbox2d/dynamics/joints/DistanceJoint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/DistanceJointDef;)V

    goto :goto_e

    .line 49
    .restart local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    :pswitch_27
    new-instance v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    check-cast p1, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;

    .end local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, v1, p1}, Lorg/jbox2d/dynamics/joints/PrismaticJoint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/PrismaticJointDef;)V

    goto :goto_e

    .line 51
    .restart local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    :pswitch_33
    new-instance v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    check-cast p1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;

    .end local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, v1, p1}, Lorg/jbox2d/dynamics/joints/RevoluteJoint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/RevoluteJointDef;)V

    goto :goto_e

    .line 53
    .restart local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    :pswitch_3f
    new-instance v0, Lorg/jbox2d/dynamics/joints/WeldJoint;

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    check-cast p1, Lorg/jbox2d/dynamics/joints/WeldJointDef;

    .end local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, v1, p1}, Lorg/jbox2d/dynamics/joints/WeldJoint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/WeldJointDef;)V

    goto :goto_e

    .line 55
    .restart local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    :pswitch_4b
    new-instance v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    check-cast p1, Lorg/jbox2d/dynamics/joints/FrictionJointDef;

    .end local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, v1, p1}, Lorg/jbox2d/dynamics/joints/FrictionJoint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/FrictionJointDef;)V

    goto :goto_e

    .line 57
    .restart local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    :pswitch_57
    new-instance v0, Lorg/jbox2d/dynamics/joints/WheelJoint;

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    check-cast p1, Lorg/jbox2d/dynamics/joints/WheelJointDef;

    .end local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, v1, p1}, Lorg/jbox2d/dynamics/joints/WheelJoint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/WheelJointDef;)V

    goto :goto_e

    .line 59
    .restart local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    :pswitch_63
    new-instance v0, Lorg/jbox2d/dynamics/joints/GearJoint;

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    check-cast p1, Lorg/jbox2d/dynamics/joints/GearJointDef;

    .end local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, v1, p1}, Lorg/jbox2d/dynamics/joints/GearJoint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/GearJointDef;)V

    goto :goto_e

    .line 61
    .restart local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    :pswitch_6f
    new-instance v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    check-cast p1, Lorg/jbox2d/dynamics/joints/PulleyJointDef;

    .end local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, v1, p1}, Lorg/jbox2d/dynamics/joints/PulleyJoint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/PulleyJointDef;)V

    goto :goto_e

    .line 63
    .restart local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    :pswitch_7b
    new-instance v0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;

    check-cast p1, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;

    .end local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, p0, p1}, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;-><init>(Lorg/jbox2d/dynamics/World;Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;)V

    goto :goto_e

    .line 65
    .restart local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    :pswitch_83
    new-instance v0, Lorg/jbox2d/dynamics/joints/RopeJoint;

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    check-cast p1, Lorg/jbox2d/dynamics/joints/RopeJointDef;

    .end local p1    # "def":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, v1, p1}, Lorg/jbox2d/dynamics/joints/RopeJoint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/RopeJointDef;)V

    goto :goto_e

    .line 43
    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1b
        :pswitch_27
        :pswitch_33
        :pswitch_3f
        :pswitch_4b
        :pswitch_57
        :pswitch_63
        :pswitch_6f
        :pswitch_7b
        :pswitch_83
    .end packed-switch
.end method

.method public static destroy(Lorg/jbox2d/dynamics/joints/Joint;)V
    .registers 1
    .param p0, "joint"    # Lorg/jbox2d/dynamics/joints/Joint;

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/joints/Joint;->destructor()V

    .line 74
    return-void
.end method


# virtual methods
.method public destructor()V
    .registers 1

    .prologue
    .line 232
    return-void
.end method

.method public abstract getAnchorA(Lorg/jbox2d/common/Vec2;)V
.end method

.method public abstract getAnchorB(Lorg/jbox2d/common/Vec2;)V
.end method

.method public final getBodyA()Lorg/jbox2d/dynamics/Body;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    return-object v0
.end method

.method public final getBodyB()Lorg/jbox2d/dynamics/Body;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    return-object v0
.end method

.method public final getCollideConnected()Z
    .registers 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_collideConnected:Z

    return v0
.end method

.method public getNext()Lorg/jbox2d/dynamics/joints/Joint;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    return-object v0
.end method

.method public abstract getReactionForce(FLorg/jbox2d/common/Vec2;)V
.end method

.method public abstract getReactionTorque(F)F
.end method

.method public getType()Lorg/jbox2d/dynamics/joints/JointType;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_type:Lorg/jbox2d/dynamics/joints/JointType;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_userData:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract initVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->isActive()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->isActive()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setUserData(Ljava/lang/Object;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 198
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_userData:Ljava/lang/Object;

    .line 199
    return-void
.end method

.method public abstract solvePositionConstraints(Lorg/jbox2d/dynamics/SolverData;)Z
.end method

.method public abstract solveVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
.end method

###### Class org.jbox2d.dynamics.joints.Joint.AnonymousClass1 (org.jbox2d.dynamics.joints.Joint$1)
.class synthetic Lorg/jbox2d/dynamics/joints/Joint$1;
.super Ljava/lang/Object;
.source "Joint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/dynamics/joints/Joint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jbox2d$dynamics$joints$JointType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    invoke-static {}, Lorg/jbox2d/dynamics/joints/JointType;->values()[Lorg/jbox2d/dynamics/joints/JointType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jbox2d/dynamics/joints/Joint$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    :try_start_9
    sget-object v0, Lorg/jbox2d/dynamics/joints/Joint$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->MOUSE:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_aa

    :goto_14
    :try_start_14
    sget-object v0, Lorg/jbox2d/dynamics/joints/Joint$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->DISTANCE:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_a7

    :goto_1f
    :try_start_1f
    sget-object v0, Lorg/jbox2d/dynamics/joints/Joint$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->PRISMATIC:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_a5

    :goto_2a
    :try_start_2a
    sget-object v0, Lorg/jbox2d/dynamics/joints/Joint$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_a3

    :goto_35
    :try_start_35
    sget-object v0, Lorg/jbox2d/dynamics/joints/Joint$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->WELD:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_a1

    :goto_40
    :try_start_40
    sget-object v0, Lorg/jbox2d/dynamics/joints/Joint$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->FRICTION:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_9f

    :goto_4b
    :try_start_4b
    sget-object v0, Lorg/jbox2d/dynamics/joints/Joint$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->WHEEL:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_9d

    :goto_56
    :try_start_56
    sget-object v0, Lorg/jbox2d/dynamics/joints/Joint$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->GEAR:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_9b

    :goto_62
    :try_start_62
    sget-object v0, Lorg/jbox2d/dynamics/joints/Joint$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->PULLEY:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_99

    :goto_6e
    :try_start_6e
    sget-object v0, Lorg/jbox2d/dynamics/joints/Joint$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->CONSTANT_VOLUME:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_97

    :goto_7a
    :try_start_7a
    sget-object v0, Lorg/jbox2d/dynamics/joints/Joint$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->ROPE:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_95

    :goto_86
    :try_start_86
    sget-object v0, Lorg/jbox2d/dynamics/joints/Joint$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->UNKNOWN:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_93

    :goto_92
    return-void

    :catch_93
    move-exception v0

    goto :goto_92

    :catch_95
    move-exception v0

    goto :goto_86

    :catch_97
    move-exception v0

    goto :goto_7a

    :catch_99
    move-exception v0

    goto :goto_6e

    :catch_9b
    move-exception v0

    goto :goto_62

    :catch_9d
    move-exception v0

    goto :goto_56

    :catch_9f
    move-exception v0

    goto :goto_4b

    :catch_a1
    move-exception v0

    goto :goto_40

    :catch_a3
    move-exception v0

    goto :goto_35

    :catch_a5
    move-exception v0

    goto :goto_2a

    :catch_a7
    move-exception v0

    goto/16 :goto_1f

    :catch_aa
    move-exception v0

    goto/16 :goto_14
.end method
