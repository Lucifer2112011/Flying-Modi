###### Class org.jbox2d.dynamics.Body (org.jbox2d.dynamics.Body)
.class public Lorg/jbox2d/dynamics/Body;
.super Ljava/lang/Object;
.source "Body.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final e_activeFlag:I = 0x20

.field public static final e_autoSleepFlag:I = 0x4

.field public static final e_awakeFlag:I = 0x2

.field public static final e_bulletFlag:I = 0x8

.field public static final e_fixedRotationFlag:I = 0x10

.field public static final e_islandFlag:I = 0x1

.field public static final e_toiFlag:I = 0x40


# instance fields
.field private final fixDef:Lorg/jbox2d/dynamics/FixtureDef;

.field public m_I:F

.field public m_angularDamping:F

.field public m_angularVelocity:F

.field public m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

.field public m_fixtureCount:I

.field public m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

.field public m_flags:I

.field public final m_force:Lorg/jbox2d/common/Vec2;

.field public m_gravityScale:F

.field public m_invI:F

.field public m_invMass:F

.field public m_islandIndex:I

.field public m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

.field public m_linearDamping:F

.field public final m_linearVelocity:Lorg/jbox2d/common/Vec2;

.field public m_mass:F

.field public m_next:Lorg/jbox2d/dynamics/Body;

.field public m_prev:Lorg/jbox2d/dynamics/Body;

.field public m_sleepTime:F

.field public final m_sweep:Lorg/jbox2d/common/Sweep;

.field public m_torque:F

.field public m_type:Lorg/jbox2d/dynamics/BodyType;

.field public m_userData:Ljava/lang/Object;

.field public m_world:Lorg/jbox2d/dynamics/World;

.field public final m_xf:Lorg/jbox2d/common/Transform;

.field private final pmd:Lorg/jbox2d/collision/shapes/MassData;

.field private final pxf:Lorg/jbox2d/common/Transform;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lorg/jbox2d/dynamics/BodyDef;Lorg/jbox2d/dynamics/World;)V
    .registers 9
    .param p1, "bd"    # Lorg/jbox2d/dynamics/BodyDef;
    .param p2, "world"    # Lorg/jbox2d/dynamics/World;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/jbox2d/common/Transform;

    invoke-direct {v0}, Lorg/jbox2d/common/Transform;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    .line 66
    new-instance v0, Lorg/jbox2d/common/Sweep;

    invoke-direct {v0}, Lorg/jbox2d/common/Sweep;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    .line 68
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    .line 69
    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 71
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    .line 72
    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    .line 213
    new-instance v0, Lorg/jbox2d/dynamics/FixtureDef;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/FixtureDef;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->fixDef:Lorg/jbox2d/dynamics/FixtureDef;

    .line 652
    new-instance v0, Lorg/jbox2d/collision/shapes/MassData;

    invoke-direct {v0}, Lorg/jbox2d/collision/shapes/MassData;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->pmd:Lorg/jbox2d/collision/shapes/MassData;

    .line 1111
    new-instance v0, Lorg/jbox2d/common/Transform;

    invoke-direct {v0}, Lorg/jbox2d/common/Transform;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->pxf:Lorg/jbox2d/common/Transform;

    .line 99
    sget-boolean v0, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v0, :cond_4f

    iget-object v0, p1, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->isValid()Z

    move-result v0

    if-nez v0, :cond_4f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_4f
    sget-boolean v0, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v0, :cond_61

    iget-object v0, p1, Lorg/jbox2d/dynamics/BodyDef;->linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->isValid()Z

    move-result v0

    if-nez v0, :cond_61

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 101
    :cond_61
    sget-boolean v0, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v0, :cond_71

    iget v0, p1, Lorg/jbox2d/dynamics/BodyDef;->gravityScale:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_71

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :cond_71
    sget-boolean v0, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v0, :cond_81

    iget v0, p1, Lorg/jbox2d/dynamics/BodyDef;->angularDamping:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_81

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_81
    sget-boolean v0, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v0, :cond_91

    iget v0, p1, Lorg/jbox2d/dynamics/BodyDef;->linearDamping:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_91

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_91
    iput v5, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 107
    iget-boolean v0, p1, Lorg/jbox2d/dynamics/BodyDef;->bullet:Z

    if-eqz v0, :cond_9d

    .line 108
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 110
    :cond_9d
    iget-boolean v0, p1, Lorg/jbox2d/dynamics/BodyDef;->fixedRotation:Z

    if-eqz v0, :cond_a7

    .line 111
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 113
    :cond_a7
    iget-boolean v0, p1, Lorg/jbox2d/dynamics/BodyDef;->allowSleep:Z

    if-eqz v0, :cond_b1

    .line 114
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 116
    :cond_b1
    iget-boolean v0, p1, Lorg/jbox2d/dynamics/BodyDef;->awake:Z

    if-eqz v0, :cond_bb

    .line 117
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 119
    :cond_bb
    iget-boolean v0, p1, Lorg/jbox2d/dynamics/BodyDef;->active:Z

    if-eqz v0, :cond_c5

    .line 120
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 123
    :cond_c5
    iput-object p2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    .line 125
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 126
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v1, p1, Lorg/jbox2d/dynamics/BodyDef;->angle:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 128
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 129
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v1, v1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 130
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v1, v1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 131
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v1, p1, Lorg/jbox2d/dynamics/BodyDef;->angle:F

    iput v1, v0, Lorg/jbox2d/common/Sweep;->a0:F

    .line 132
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v1, p1, Lorg/jbox2d/dynamics/BodyDef;->angle:F

    iput v1, v0, Lorg/jbox2d/common/Sweep;->a:F

    .line 133
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iput v2, v0, Lorg/jbox2d/common/Sweep;->alpha0:F

    .line 135
    iput-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 136
    iput-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 137
    iput-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_prev:Lorg/jbox2d/dynamics/Body;

    .line 138
    iput-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    .line 140
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/dynamics/BodyDef;->linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 141
    iget v0, p1, Lorg/jbox2d/dynamics/BodyDef;->angularVelocity:F

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 143
    iget v0, p1, Lorg/jbox2d/dynamics/BodyDef;->linearDamping:F

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearDamping:F

    .line 144
    iget v0, p1, Lorg/jbox2d/dynamics/BodyDef;->angularDamping:F

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_angularDamping:F

    .line 145
    iget v0, p1, Lorg/jbox2d/dynamics/BodyDef;->gravityScale:F

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_gravityScale:F

    .line 147
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 148
    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    .line 150
    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    .line 152
    iget-object v0, p1, Lorg/jbox2d/dynamics/BodyDef;->type:Lorg/jbox2d/dynamics/BodyType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    .line 154
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v1, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    if-ne v0, v1, :cond_149

    .line 155
    iput v4, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    .line 156
    iput v4, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 162
    :goto_13c
    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    .line 163
    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 165
    iget-object v0, p1, Lorg/jbox2d/dynamics/BodyDef;->userData:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_userData:Ljava/lang/Object;

    .line 167
    iput-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    .line 168
    iput v5, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureCount:I

    .line 169
    return-void

    .line 158
    :cond_149
    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    .line 159
    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    goto :goto_13c
.end method


# virtual methods
.method protected final advance(F)V
    .registers 5
    .param p1, "t"    # F

    .prologue
    .line 1174
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Sweep;->advance(F)V

    .line 1175
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v1, v1, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1176
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v1, v1, Lorg/jbox2d/common/Sweep;->a0:F

    iput v1, v0, Lorg/jbox2d/common/Sweep;->a:F

    .line 1177
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v1, v1, Lorg/jbox2d/common/Sweep;->a:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 1179
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v1, v1, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v2, v2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 1180
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v1, v1, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1181
    return-void
.end method

.method public applyAngularImpulse(F)V
    .registers 4
    .param p1, "impulse"    # F

    .prologue
    .line 548
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v1, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    if-eq v0, v1, :cond_7

    .line 556
    :goto_6
    return-void

    .line 552
    :cond_7
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->isAwake()Z

    move-result v0

    if-nez v0, :cond_11

    .line 553
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 555
    :cond_11
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v1, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    goto :goto_6
.end method

.method public final applyForce(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 7
    .param p1, "force"    # Lorg/jbox2d/common/Vec2;
    .param p2, "point"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 456
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v1, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    if-eq v0, v1, :cond_7

    .line 473
    :goto_6
    return-void

    .line 460
    :cond_7
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->isAwake()Z

    move-result v0

    if-nez v0, :cond_11

    .line 461
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 469
    :cond_11
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    iget v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 470
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    iget v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 472
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    iget v1, p2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    iget v2, p2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    goto :goto_6
.end method

.method public final applyForceToCenter(Lorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "force"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 481
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v1, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    if-eq v0, v1, :cond_7

    .line 491
    :goto_6
    return-void

    .line 485
    :cond_7
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->isAwake()Z

    move-result v0

    if-nez v0, :cond_11

    .line 486
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 489
    :cond_11
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    iget v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 490
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    iget v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_6
.end method

.method public final applyLinearImpulse(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 8
    .param p1, "impulse"    # Lorg/jbox2d/common/Vec2;
    .param p2, "point"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 520
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v1, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    if-eq v0, v1, :cond_7

    .line 540
    :goto_6
    return-void

    .line 524
    :cond_7
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->isAwake()Z

    move-result v0

    if-nez v0, :cond_11

    .line 525
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 535
    :cond_11
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 536
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 538
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v1, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    iget v2, p2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    iget v3, p2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v4, v4, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v3, v4

    iget v4, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    goto :goto_6
.end method

.method public final applyTorque(F)V
    .registers 4
    .param p1, "torque"    # F

    .prologue
    .line 500
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v1, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    if-eq v0, v1, :cond_7

    .line 509
    :goto_6
    return-void

    .line 504
    :cond_7
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->isAwake()Z

    move-result v0

    if-nez v0, :cond_11

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 508
    :cond_11
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    goto :goto_6
.end method

.method public final createFixture(Lorg/jbox2d/collision/shapes/Shape;F)Lorg/jbox2d/dynamics/Fixture;
    .registers 4
    .param p1, "shape"    # Lorg/jbox2d/collision/shapes/Shape;
    .param p2, "density"    # F

    .prologue
    .line 225
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->fixDef:Lorg/jbox2d/dynamics/FixtureDef;

    iput-object p1, v0, Lorg/jbox2d/dynamics/FixtureDef;->shape:Lorg/jbox2d/collision/shapes/Shape;

    .line 226
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->fixDef:Lorg/jbox2d/dynamics/FixtureDef;

    iput p2, v0, Lorg/jbox2d/dynamics/FixtureDef;->density:F

    .line 228
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->fixDef:Lorg/jbox2d/dynamics/FixtureDef;

    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/Body;->createFixture(Lorg/jbox2d/dynamics/FixtureDef;)Lorg/jbox2d/dynamics/Fixture;

    move-result-object v0

    return-object v0
.end method

.method public final createFixture(Lorg/jbox2d/dynamics/FixtureDef;)Lorg/jbox2d/dynamics/Fixture;
    .registers 6
    .param p1, "def"    # Lorg/jbox2d/dynamics/FixtureDef;

    .prologue
    .line 181
    sget-boolean v2, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 183
    :cond_12
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 184
    const/4 v1, 0x0

    .line 210
    :goto_1c
    return-object v1

    .line 187
    :cond_1d
    new-instance v1, Lorg/jbox2d/dynamics/Fixture;

    invoke-direct {v1}, Lorg/jbox2d/dynamics/Fixture;-><init>()V

    .line 188
    .local v1, "fixture":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual {v1, p0, p1}, Lorg/jbox2d/dynamics/Fixture;->create(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/FixtureDef;)V

    .line 190
    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_38

    .line 191
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v2, v2, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v0, v2, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    .line 192
    .local v0, "broadPhase":Lorg/jbox2d/collision/broadphase/BroadPhase;
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    invoke-virtual {v1, v0, v2}, Lorg/jbox2d/dynamics/Fixture;->createProxies(Lorg/jbox2d/collision/broadphase/BroadPhase;Lorg/jbox2d/common/Transform;)V

    .line 195
    .end local v0    # "broadPhase":Lorg/jbox2d/collision/broadphase/BroadPhase;
    :cond_38
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    iput-object v2, v1, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    .line 196
    iput-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    .line 197
    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureCount:I

    .line 199
    iput-object p0, v1, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    .line 202
    iget v2, v1, Lorg/jbox2d/dynamics/Fixture;->m_density:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_50

    .line 203
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->resetMassData()V

    .line 208
    :cond_50
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget v3, v2, Lorg/jbox2d/dynamics/World;->m_flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/jbox2d/dynamics/World;->m_flags:I

    goto :goto_1c
.end method

.method public final destroyFixture(Lorg/jbox2d/dynamics/Fixture;)V
    .registers 13
    .param p1, "fixture"    # Lorg/jbox2d/dynamics/Fixture;

    .prologue
    const/4 v10, 0x0

    .line 241
    sget-boolean v8, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v8, :cond_13

    iget-object v8, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v8}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v8

    if-eqz v8, :cond_13

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 242
    :cond_13
    iget-object v8, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v8}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1d

    .line 303
    :goto_1c
    return-void

    .line 246
    :cond_1d
    sget-boolean v8, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v8, :cond_2b

    iget-object v8, p1, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    if-eq v8, p0, :cond_2b

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 249
    :cond_2b
    sget-boolean v8, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v8, :cond_39

    iget v8, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureCount:I

    if-gtz v8, :cond_39

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 250
    :cond_39
    iget-object v7, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    .line 251
    .local v7, "node":Lorg/jbox2d/dynamics/Fixture;
    const/4 v6, 0x0

    .line 252
    .local v6, "last":Lorg/jbox2d/dynamics/Fixture;
    const/4 v5, 0x0

    .line 253
    .local v5, "found":Z
    :goto_3d
    if-eqz v7, :cond_44

    .line 254
    if-ne v7, p1, :cond_50

    .line 255
    iget-object v7, p1, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    .line 256
    const/4 v5, 0x1

    .line 264
    :cond_44
    sget-boolean v8, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v8, :cond_54

    if-nez v5, :cond_54

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 259
    :cond_50
    move-object v6, v7

    .line 260
    iget-object v7, v7, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    goto :goto_3d

    .line 267
    :cond_54
    if-nez v6, :cond_76

    .line 268
    iget-object v8, p1, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    iput-object v8, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    .line 274
    :goto_5a
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 275
    .local v2, "edge":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :cond_5c
    :goto_5c
    if-eqz v2, :cond_7b

    .line 276
    iget-object v1, v2, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 277
    .local v1, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    iget-object v2, v2, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 279
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureA()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v3

    .line 280
    .local v3, "fixtureA":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureB()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v4

    .line 282
    .local v4, "fixtureB":Lorg/jbox2d/dynamics/Fixture;
    if-eq p1, v3, :cond_6e

    if-ne p1, v4, :cond_5c

    .line 285
    :cond_6e
    iget-object v8, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v8, v8, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    invoke-virtual {v8, v1}, Lorg/jbox2d/dynamics/ContactManager;->destroy(Lorg/jbox2d/dynamics/contacts/Contact;)V

    goto :goto_5c

    .line 270
    .end local v1    # "c":Lorg/jbox2d/dynamics/contacts/Contact;
    .end local v2    # "edge":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    .end local v3    # "fixtureA":Lorg/jbox2d/dynamics/Fixture;
    .end local v4    # "fixtureB":Lorg/jbox2d/dynamics/Fixture;
    :cond_76
    iget-object v8, p1, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    iput-object v8, v6, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    goto :goto_5a

    .line 289
    .restart local v2    # "edge":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :cond_7b
    iget v8, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v8, v8, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_8c

    .line 290
    iget-object v8, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v8, v8, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v0, v8, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    .line 291
    .local v0, "broadPhase":Lorg/jbox2d/collision/broadphase/BroadPhase;
    invoke-virtual {p1, v0}, Lorg/jbox2d/dynamics/Fixture;->destroyProxies(Lorg/jbox2d/collision/broadphase/BroadPhase;)V

    .line 294
    .end local v0    # "broadPhase":Lorg/jbox2d/collision/broadphase/BroadPhase;
    :cond_8c
    invoke-virtual {p1}, Lorg/jbox2d/dynamics/Fixture;->destroy()V

    .line 295
    iput-object v10, p1, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    .line 296
    iput-object v10, p1, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    .line 297
    const/4 p1, 0x0

    .line 299
    iget v8, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureCount:I

    .line 302
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->resetMassData()V

    goto/16 :goto_1c
.end method

.method public final getAngle()F
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    return v0
.end method

.method public final getAngularDamping()F
    .registers 2

    .prologue
    .line 853
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_angularDamping:F

    return v0
.end method

.method public final getAngularVelocity()F
    .registers 2

    .prologue
    .line 427
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    return v0
.end method

.method public final getContactList()Lorg/jbox2d/dynamics/contacts/ContactEdge;
    .registers 2

    .prologue
    .line 1083
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    return-object v0
.end method

.method public final getFixtureList()Lorg/jbox2d/dynamics/Fixture;
    .registers 2

    .prologue
    .line 1068
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    return-object v0
.end method

.method public getGravityScale()F
    .registers 2

    .prologue
    .line 436
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_gravityScale:F

    return v0
.end method

.method public final getInertia()F
    .registers 6

    .prologue
    .line 573
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    iget v1, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v4, v4, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final getJointList()Lorg/jbox2d/dynamics/joints/JointEdge;
    .registers 2

    .prologue
    .line 1073
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    return-object v0
.end method

.method public final getLinearDamping()F
    .registers 2

    .prologue
    .line 843
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearDamping:F

    return v0
.end method

.method public final getLinearVelocity()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public final getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "localPoint"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 831
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 832
    .local v0, "out":Lorg/jbox2d/common/Vec2;
    invoke-virtual {p0, p1, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 833
    return-object v0
.end method

.method public final getLinearVelocityFromLocalPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 3
    .param p1, "localPoint"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 837
    invoke-virtual {p0, p1, p2}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 838
    invoke-virtual {p0, p2, p2}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 839
    return-void
.end method

.method public final getLinearVelocityFromWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "worldPoint"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 813
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 814
    .local v0, "out":Lorg/jbox2d/common/Vec2;
    invoke-virtual {p0, p1, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 815
    return-object v0
.end method

.method public final getLinearVelocityFromWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "worldPoint"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 819
    invoke-virtual {p2, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v1, v1, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 820
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    invoke-static {v0, p2, p2}, Lorg/jbox2d/common/Vec2;->crossToOut(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 821
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v0}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 822
    return-void
.end method

.method public final getLocalCenter()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public final getLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "worldPoint"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 777
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 778
    .local v0, "out":Lorg/jbox2d/common/Vec2;
    invoke-virtual {p0, p1, v0}, Lorg/jbox2d/dynamics/Body;->getLocalPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 779
    return-object v0
.end method

.method public final getLocalPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "worldPoint"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 783
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    invoke-static {v0, p1, p2}, Lorg/jbox2d/common/Transform;->mulTransToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 784
    return-void
.end method

.method public final getLocalVector(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "worldVector"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 793
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 794
    .local v0, "out":Lorg/jbox2d/common/Vec2;
    invoke-virtual {p0, p1, v0}, Lorg/jbox2d/dynamics/Body;->getLocalVectorToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 795
    return-object v0
.end method

.method public final getLocalVectorToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "worldVector"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 799
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-static {v0, p1, p2}, Lorg/jbox2d/common/Rot;->mulTrans(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 800
    return-void
.end method

.method public final getLocalVectorToOutUnsafe(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "worldVector"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 803
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-static {v0, p1, p2}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 804
    return-void
.end method

.method public final getMass()F
    .registers 2

    .prologue
    .line 564
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    return v0
.end method

.method public final getMassData(Lorg/jbox2d/collision/shapes/MassData;)V
    .registers 7
    .param p1, "data"    # Lorg/jbox2d/collision/shapes/MassData;

    .prologue
    .line 589
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    iput v0, p1, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    .line 590
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    iget v1, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v4, v4, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lorg/jbox2d/collision/shapes/MassData;->I:F

    .line 595
    iget-object v0, p1, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v1, v1, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 596
    iget-object v0, p1, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v1, v1, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 597
    return-void
.end method

.method public final getNext()Lorg/jbox2d/dynamics/Body;
    .registers 2

    .prologue
    .line 1088
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    return-object v0
.end method

.method public final getPosition()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public final getTransform()Lorg/jbox2d/common/Transform;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    return-object v0
.end method

.method public getType()Lorg/jbox2d/dynamics/BodyType;
    .registers 2

    .prologue
    .line 862
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    return-object v0
.end method

.method public final getUserData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1093
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_userData:Ljava/lang/Object;

    return-object v0
.end method

.method public final getWorld()Lorg/jbox2d/dynamics/World;
    .registers 2

    .prologue
    .line 1107
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    return-object v0
.end method

.method public final getWorldCenter()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public final getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "localPoint"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 741
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 742
    .local v0, "v":Lorg/jbox2d/common/Vec2;
    invoke-virtual {p0, p1, v0}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 743
    return-object v0
.end method

.method public final getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "localPoint"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 747
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    invoke-static {v0, p1, p2}, Lorg/jbox2d/common/Transform;->mulToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 748
    return-void
.end method

.method public final getWorldVector(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "localVector"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 757
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 758
    .local v0, "out":Lorg/jbox2d/common/Vec2;
    invoke-virtual {p0, p1, v0}, Lorg/jbox2d/dynamics/Body;->getWorldVectorToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 759
    return-object v0
.end method

.method public final getWorldVectorToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "localVector"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 763
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-static {v0, p1, p2}, Lorg/jbox2d/common/Rot;->mulToOut(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 764
    return-void
.end method

.method public final getWorldVectorToOutUnsafe(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "localVector"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 767
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-static {v0, p1, p2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 768
    return-void
.end method

.method public isActive()Z
    .registers 3

    .prologue
    .line 1039
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isAwake()Z
    .registers 3

    .prologue
    .line 981
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

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

.method public final isBullet()Z
    .registers 3

    .prologue
    .line 918
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isFixedRotation()Z
    .registers 3

    .prologue
    .line 1063
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSleepingAllowed()Z
    .registers 3

    .prologue
    .line 950
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

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

.method public final resetMassData()V
    .registers 12

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 661
    iput v9, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    .line 662
    iput v9, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 663
    iput v9, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    .line 664
    iput v9, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 665
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v6, v6, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 668
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v7, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    if-eq v6, v7, :cond_1e

    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v7, Lorg/jbox2d/dynamics/BodyType;->KINEMATIC:Lorg/jbox2d/dynamics/BodyType;

    if-ne v6, v7, :cond_3d

    .line 670
    :cond_1e
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v6, v6, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget-object v7, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v7, v7, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 671
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v6, v6, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget-object v7, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v7, v7, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 672
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v7, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v7, v7, Lorg/jbox2d/common/Sweep;->a:F

    iput v7, v6, Lorg/jbox2d/common/Sweep;->a0:F

    .line 732
    :goto_3c
    return-void

    .line 676
    :cond_3d
    sget-boolean v6, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v6, :cond_4d

    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v7, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    if-eq v6, v7, :cond_4d

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 679
    :cond_4d
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v6

    invoke-interface {v6}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 680
    .local v1, "localCenter":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 681
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v6

    invoke-interface {v6}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 682
    .local v4, "temp":Lorg/jbox2d/common/Vec2;
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->pmd:Lorg/jbox2d/collision/shapes/MassData;

    .line 683
    .local v2, "massData":Lorg/jbox2d/collision/shapes/MassData;
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    .local v0, "f":Lorg/jbox2d/dynamics/Fixture;
    :goto_68
    if-eqz v0, :cond_93

    .line 684
    iget v6, v0, Lorg/jbox2d/dynamics/Fixture;->m_density:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_73

    .line 683
    :goto_70
    iget-object v0, v0, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    goto :goto_68

    .line 687
    :cond_73
    invoke-virtual {v0, v2}, Lorg/jbox2d/dynamics/Fixture;->getMassData(Lorg/jbox2d/collision/shapes/MassData;)V

    .line 688
    iget v6, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    iget v7, v2, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    add-float/2addr v6, v7

    iput v6, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    .line 690
    iget-object v6, v2, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    iget v7, v2, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 691
    invoke-virtual {v1, v4}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 692
    iget v6, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    iget v7, v2, Lorg/jbox2d/collision/shapes/MassData;->I:F

    add-float/2addr v6, v7

    iput v6, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    goto :goto_70

    .line 696
    :cond_93
    iget v6, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_cc

    .line 697
    iget v6, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    div-float v6, v10, v6

    iput v6, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 698
    iget v6, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    invoke-virtual {v1, v6}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 705
    :goto_a4
    iget v6, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_129

    iget v6, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_129

    .line 707
    iget v6, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    iget v7, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    invoke-static {v1, v1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iput v6, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    .line 708
    sget-boolean v6, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v6, :cond_d1

    iget v6, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    cmpl-float v6, v6, v9

    if-gtz v6, :cond_d1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 701
    :cond_cc
    iput v10, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    .line 702
    iput v10, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    goto :goto_a4

    .line 709
    :cond_d1
    iget v6, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    div-float v6, v10, v6

    iput v6, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 715
    :goto_d7
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v6

    invoke-interface {v6}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 717
    .local v3, "oldCenter":Lorg/jbox2d/common/Vec2;
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v6, v6, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 718
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v6, v6, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 720
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v7, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v7, v7, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget-object v8, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v8, v8, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    invoke-static {v6, v7, v8}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 721
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v6, v6, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget-object v7, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v7, v7, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 725
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v6, v6, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 727
    move-object v5, v3

    .line 728
    .local v5, "temp2":Lorg/jbox2d/common/Vec2;
    iget v6, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    invoke-static {v6, v4, v5}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 729
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v5}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 731
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    goto/16 :goto_3c

    .line 711
    .end local v3    # "oldCenter":Lorg/jbox2d/common/Vec2;
    .end local v5    # "temp2":Lorg/jbox2d/common/Vec2;
    :cond_129
    iput v9, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    .line 712
    iput v9, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    goto :goto_d7
.end method

.method public setActive(Z)V
    .registers 8
    .param p1, "flag"    # Z

    .prologue
    .line 997
    sget-boolean v4, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v4, :cond_12

    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 999
    :cond_12
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->isActive()Z

    move-result v4

    if-ne p1, v4, :cond_19

    .line 1031
    :cond_18
    :goto_18
    return-void

    .line 1003
    :cond_19
    if-eqz p1, :cond_33

    .line 1004
    iget v4, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 1007
    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v4, v4, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v0, v4, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    .line 1008
    .local v0, "broadPhase":Lorg/jbox2d/collision/broadphase/BroadPhase;
    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    .local v3, "f":Lorg/jbox2d/dynamics/Fixture;
    :goto_29
    if-eqz v3, :cond_18

    .line 1009
    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    invoke-virtual {v3, v0, v4}, Lorg/jbox2d/dynamics/Fixture;->createProxies(Lorg/jbox2d/collision/broadphase/BroadPhase;Lorg/jbox2d/common/Transform;)V

    .line 1008
    iget-object v3, v3, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    goto :goto_29

    .line 1014
    .end local v0    # "broadPhase":Lorg/jbox2d/collision/broadphase/BroadPhase;
    .end local v3    # "f":Lorg/jbox2d/dynamics/Fixture;
    :cond_33
    iget v4, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v4, v4, -0x21

    iput v4, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 1017
    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v4, v4, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v0, v4, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    .line 1018
    .restart local v0    # "broadPhase":Lorg/jbox2d/collision/broadphase/BroadPhase;
    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    .restart local v3    # "f":Lorg/jbox2d/dynamics/Fixture;
    :goto_41
    if-eqz v3, :cond_49

    .line 1019
    invoke-virtual {v3, v0}, Lorg/jbox2d/dynamics/Fixture;->destroyProxies(Lorg/jbox2d/collision/broadphase/BroadPhase;)V

    .line 1018
    iget-object v3, v3, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    goto :goto_41

    .line 1023
    :cond_49
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 1024
    .local v1, "ce":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :goto_4b
    if-eqz v1, :cond_5a

    .line 1025
    move-object v2, v1

    .line 1026
    .local v2, "ce0":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    iget-object v1, v1, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 1027
    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v4, v4, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v5, v2, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    invoke-virtual {v4, v5}, Lorg/jbox2d/dynamics/ContactManager;->destroy(Lorg/jbox2d/dynamics/contacts/Contact;)V

    goto :goto_4b

    .line 1029
    .end local v2    # "ce0":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :cond_5a
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    goto :goto_18
.end method

.method public final setAngularDamping(F)V
    .registers 2
    .param p1, "angularDamping"    # F

    .prologue
    .line 858
    iput p1, p0, Lorg/jbox2d/dynamics/Body;->m_angularDamping:F

    .line 859
    return-void
.end method

.method public final setAngularVelocity(F)V
    .registers 4
    .param p1, "w"    # F

    .prologue
    .line 410
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v1, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    if-ne v0, v1, :cond_7

    .line 419
    :goto_6
    return-void

    .line 414
    :cond_7
    mul-float v0, p1, p1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    .line 415
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 418
    :cond_12
    iput p1, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    goto :goto_6
.end method

.method public setAwake(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x0

    .line 960
    if-eqz p1, :cond_12

    .line 961
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_11

    .line 962
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 963
    iput v1, p0, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    .line 973
    :cond_11
    :goto_11
    return-void

    .line 966
    :cond_12
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 967
    iput v1, p0, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    .line 968
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 969
    iput v1, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 970
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 971
    iput v1, p0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    goto :goto_11
.end method

.method public final setBullet(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 923
    if-eqz p1, :cond_9

    .line 924
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 928
    :goto_8
    return-void

    .line 926
    :cond_9
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    goto :goto_8
.end method

.method public setFixedRotation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 1048
    if-eqz p1, :cond_c

    .line 1049
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 1054
    :goto_8
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->resetMassData()V

    .line 1055
    return-void

    .line 1051
    :cond_c
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    goto :goto_8
.end method

.method public setGravityScale(F)V
    .registers 2
    .param p1, "gravityScale"    # F

    .prologue
    .line 445
    iput p1, p0, Lorg/jbox2d/dynamics/Body;->m_gravityScale:F

    .line 446
    return-void
.end method

.method public final setLinearDamping(F)V
    .registers 2
    .param p1, "linearDamping"    # F

    .prologue
    .line 848
    iput p1, p0, Lorg/jbox2d/dynamics/Body;->m_linearDamping:F

    .line 849
    return-void
.end method

.method public final setLinearVelocity(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 383
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v1, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    if-ne v0, v1, :cond_7

    .line 392
    :goto_6
    return-void

    .line 387
    :cond_7
    invoke-static {p1, p1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 391
    :cond_14
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    goto :goto_6
.end method

.method public final setMassData(Lorg/jbox2d/collision/shapes/MassData;)V
    .registers 10
    .param p1, "massData"    # Lorg/jbox2d/collision/shapes/MassData;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 608
    sget-boolean v2, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v2, :cond_15

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 609
    :cond_15
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 650
    :cond_1e
    :goto_1e
    return-void

    .line 613
    :cond_1f
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v3, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    if-ne v2, v3, :cond_1e

    .line 617
    iput v6, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 618
    iput v6, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    .line 619
    iput v6, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 621
    iget v2, p1, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    .line 622
    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_37

    .line 623
    iput v7, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    .line 626
    :cond_37
    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    div-float v2, v7, v2

    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 628
    iget v2, p1, Lorg/jbox2d/collision/shapes/MassData;->I:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_6f

    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_6f

    .line 629
    iget v2, p1, Lorg/jbox2d/collision/shapes/MassData;->I:F

    iget v3, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    iget-object v4, p1, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    iget-object v5, p1, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    .line 630
    sget-boolean v2, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v2, :cond_69

    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_69

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 631
    :cond_69
    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    div-float v2, v7, v2

    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 634
    :cond_6f
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v2

    invoke-interface {v2}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 636
    .local v0, "oldCenter":Lorg/jbox2d/common/Vec2;
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 637
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget-object v3, p1, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 639
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v4, v4, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v3, v4}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 640
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 644
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v2

    invoke-interface {v2}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 645
    .local v1, "temp":Lorg/jbox2d/common/Vec2;
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 646
    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    invoke-static {v2, v1, v1}, Lorg/jbox2d/common/Vec2;->crossToOut(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 647
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 649
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    goto/16 :goto_1e
.end method

.method public setSleepingAllowed(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 936
    if-eqz p1, :cond_9

    .line 937
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 942
    :goto_8
    return-void

    .line 939
    :cond_9
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 940
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    goto :goto_8
.end method

.method public final setTransform(Lorg/jbox2d/common/Vec2;F)V
    .registers 8
    .param p1, "position"    # Lorg/jbox2d/common/Vec2;
    .param p2, "angle"    # F

    .prologue
    .line 313
    sget-boolean v2, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 314
    :cond_12
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 334
    :goto_1b
    return-void

    .line 318
    :cond_1c
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v2, v2, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-virtual {v2, p2}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 319
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v2, v2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 322
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v4, v4, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v3, v4}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 323
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iput p2, v2, Lorg/jbox2d/common/Sweep;->a:F

    .line 325
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 326
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v3, v3, Lorg/jbox2d/common/Sweep;->a:F

    iput v3, v2, Lorg/jbox2d/common/Sweep;->a0:F

    .line 328
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v2, v2, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v0, v2, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    .line 329
    .local v0, "broadPhase":Lorg/jbox2d/collision/broadphase/BroadPhase;
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    .local v1, "f":Lorg/jbox2d/dynamics/Fixture;
    :goto_56
    if-eqz v1, :cond_62

    .line 330
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    invoke-virtual {v1, v0, v2, v3}, Lorg/jbox2d/dynamics/Fixture;->synchronize(Lorg/jbox2d/collision/broadphase/BroadPhase;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)V

    .line 329
    iget-object v1, v1, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    goto :goto_56

    .line 333
    :cond_62
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v2, v2, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/ContactManager;->findNewContacts()V

    goto :goto_1b
.end method

.method public setType(Lorg/jbox2d/dynamics/BodyType;)V
    .registers 12
    .param p1, "type"    # Lorg/jbox2d/dynamics/BodyType;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 871
    sget-boolean v6, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v6, :cond_14

    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_14

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 872
    :cond_14
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v6

    if-ne v6, v9, :cond_1d

    .line 914
    :cond_1c
    return-void

    .line 876
    :cond_1d
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    if-eq v6, p1, :cond_1c

    .line 880
    iput-object p1, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    .line 882
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->resetMassData()V

    .line 884
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v7, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    if-ne v6, v7, :cond_49

    .line 885
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 886
    iput v8, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 887
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v7, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v7, v7, Lorg/jbox2d/common/Sweep;->a:F

    iput v7, v6, Lorg/jbox2d/common/Sweep;->a0:F

    .line 888
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v6, v6, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget-object v7, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v7, v7, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 889
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->synchronizeFixtures()V

    .line 892
    :cond_49
    invoke-virtual {p0, v9}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 894
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 895
    iput v8, p0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    .line 898
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 899
    .local v1, "ce":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :goto_55
    if-eqz v1, :cond_64

    .line 900
    move-object v2, v1

    .line 901
    .local v2, "ce0":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    iget-object v1, v1, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 902
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v6, v6, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v7, v2, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    invoke-virtual {v6, v7}, Lorg/jbox2d/dynamics/ContactManager;->destroy(Lorg/jbox2d/dynamics/contacts/Contact;)V

    goto :goto_55

    .line 904
    .end local v2    # "ce0":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :cond_64
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 907
    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v6, v6, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v0, v6, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    .line 908
    .local v0, "broadPhase":Lorg/jbox2d/collision/broadphase/BroadPhase;
    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    .local v3, "f":Lorg/jbox2d/dynamics/Fixture;
    :goto_6f
    if-eqz v3, :cond_1c

    .line 909
    iget v5, v3, Lorg/jbox2d/dynamics/Fixture;->m_proxyCount:I

    .line 910
    .local v5, "proxyCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_74
    if-ge v4, v5, :cond_82

    .line 911
    iget-object v6, v3, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    aget-object v6, v6, v4

    iget v6, v6, Lorg/jbox2d/dynamics/FixtureProxy;->proxyId:I

    invoke-virtual {v0, v6}, Lorg/jbox2d/collision/broadphase/BroadPhase;->touchProxy(I)V

    .line 910
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 908
    :cond_82
    iget-object v3, v3, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    goto :goto_6f
.end method

.method public final setUserData(Ljava/lang/Object;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1100
    iput-object p1, p0, Lorg/jbox2d/dynamics/Body;->m_userData:Ljava/lang/Object;

    .line 1101
    return-void
.end method

.method public shouldCollide(Lorg/jbox2d/dynamics/Body;)Z
    .registers 6
    .param p1, "other"    # Lorg/jbox2d/dynamics/Body;

    .prologue
    const/4 v1, 0x0

    .line 1156
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v3, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    if-eq v2, v3, :cond_e

    iget-object v2, p1, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    sget-object v3, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    if-eq v2, v3, :cond_e

    .line 1169
    :cond_d
    :goto_d
    return v1

    .line 1161
    :cond_e
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .local v0, "jn":Lorg/jbox2d/dynamics/joints/JointEdge;
    :goto_10
    if-eqz v0, :cond_21

    .line 1162
    iget-object v2, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->other:Lorg/jbox2d/dynamics/Body;

    if-ne v2, p1, :cond_1e

    .line 1163
    iget-object v2, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/joints/Joint;->getCollideConnected()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1161
    :cond_1e
    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    goto :goto_10

    .line 1169
    :cond_21
    const/4 v1, 0x1

    goto :goto_d
.end method

.method protected final synchronizeFixtures()V
    .registers 7

    .prologue
    .line 1114
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->pxf:Lorg/jbox2d/common/Transform;

    .line 1121
    .local v1, "xf1":Lorg/jbox2d/common/Transform;
    iget-object v2, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v3, v3, Lorg/jbox2d/common/Sweep;->a0:F

    invoke-static {v3}, Lorg/jbox2d/common/MathUtils;->sin(F)F

    move-result v3

    iput v3, v2, Lorg/jbox2d/common/Rot;->s:F

    .line 1122
    iget-object v2, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v3, v3, Lorg/jbox2d/common/Sweep;->a0:F

    invoke-static {v3}, Lorg/jbox2d/common/MathUtils;->cos(F)F

    move-result v3

    iput v3, v2, Lorg/jbox2d/common/Rot;->c:F

    .line 1123
    iget-object v2, v1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v4, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v4, v4, Lorg/jbox2d/common/Rot;->c:F

    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v5, v5, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v4, v4, Lorg/jbox2d/common/Rot;->s:F

    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v5, v5, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 1124
    iget-object v2, v1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v4, v4, Lorg/jbox2d/common/Rot;->s:F

    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v5, v5, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v4, v4, Lorg/jbox2d/common/Rot;->c:F

    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v5, v5, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 1127
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    .local v0, "f":Lorg/jbox2d/dynamics/Fixture;
    :goto_60
    if-eqz v0, :cond_70

    .line 1128
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v2, v2, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v2, v2, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    invoke-virtual {v0, v2, v1, v3}, Lorg/jbox2d/dynamics/Fixture;->synchronize(Lorg/jbox2d/collision/broadphase/BroadPhase;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)V

    .line 1127
    iget-object v0, v0, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    goto :goto_60

    .line 1130
    :cond_70
    return-void
.end method

.method public final synchronizeTransform()V
    .registers 7

    .prologue
    .line 1139
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v2, v2, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v3, v3, Lorg/jbox2d/common/Sweep;->a:F

    invoke-static {v3}, Lorg/jbox2d/common/MathUtils;->sin(F)F

    move-result v3

    iput v3, v2, Lorg/jbox2d/common/Rot;->s:F

    .line 1140
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v2, v2, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v3, v3, Lorg/jbox2d/common/Sweep;->a:F

    invoke-static {v3}, Lorg/jbox2d/common/MathUtils;->cos(F)F

    move-result v3

    iput v3, v2, Lorg/jbox2d/common/Rot;->c:F

    .line 1141
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v0, v2, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    .line 1142
    .local v0, "q":Lorg/jbox2d/common/Rot;
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v1, v2, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    .line 1143
    .local v1, "v":Lorg/jbox2d/common/Vec2;
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v2, v2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    iget v4, v0, Lorg/jbox2d/common/Rot;->c:F

    iget v5, v1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, v0, Lorg/jbox2d/common/Rot;->s:F

    iget v5, v1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 1144
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    iget-object v2, v2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget v4, v0, Lorg/jbox2d/common/Rot;->s:F

    iget v5, v1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, v0, Lorg/jbox2d/common/Rot;->c:F

    iget v5, v1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 1145
    return-void
.end method
