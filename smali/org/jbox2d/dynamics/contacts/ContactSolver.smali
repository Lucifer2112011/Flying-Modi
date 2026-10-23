###### Class org.jbox2d.dynamics.contacts.ContactSolver (org.jbox2d.dynamics.contacts.ContactSolver)
.class public Lorg/jbox2d/dynamics/contacts/ContactSolver;
.super Ljava/lang/Object;
.source "ContactSolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEBUG_SOLVER:Z = false

.field public static final INITIAL_NUM_CONSTRAINTS:I = 0x100

.field public static final k_errorTol:F = 0.001f

.field public static final k_maxConditionNumber:F = 100.0f


# instance fields
.field private final P:Lorg/jbox2d/common/Vec2;

.field private final P1:Lorg/jbox2d/common/Vec2;

.field private final P2:Lorg/jbox2d/common/Vec2;

.field private final a:Lorg/jbox2d/common/Vec2;

.field private final b:Lorg/jbox2d/common/Vec2;

.field private final d:Lorg/jbox2d/common/Vec2;

.field private final dv1:Lorg/jbox2d/common/Vec2;

.field private final dv2:Lorg/jbox2d/common/Vec2;

.field public m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

.field public m_count:I

.field public m_positionConstraints:[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

.field public m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

.field public m_step:Lorg/jbox2d/dynamics/TimeStep;

.field public m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

.field public m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

.field private final psolver:Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;

.field private final rA:Lorg/jbox2d/common/Vec2;

.field private final rB:Lorg/jbox2d/common/Vec2;

.field private final tangent:Lorg/jbox2d/common/Vec2;

.field private final temp:Lorg/jbox2d/common/Vec2;

.field private final temp1:Lorg/jbox2d/common/Vec2;

.field private final temp2:Lorg/jbox2d/common/Vec2;

.field private final worldManifold:Lorg/jbox2d/collision/WorldManifold;

.field private final x:Lorg/jbox2d/common/Vec2;

.field private final xfA:Lorg/jbox2d/common/Transform;

.field private final xfB:Lorg/jbox2d/common/Transform;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x100

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->tangent:Lorg/jbox2d/common/Vec2;

    .line 78
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp1:Lorg/jbox2d/common/Vec2;

    .line 79
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    .line 183
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P:Lorg/jbox2d/common/Vec2;

    .line 184
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp:Lorg/jbox2d/common/Vec2;

    .line 226
    new-instance v1, Lorg/jbox2d/common/Transform;

    invoke-direct {v1}, Lorg/jbox2d/common/Transform;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    .line 227
    new-instance v1, Lorg/jbox2d/common/Transform;

    invoke-direct {v1}, Lorg/jbox2d/common/Transform;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    .line 228
    new-instance v1, Lorg/jbox2d/collision/WorldManifold;

    invoke-direct {v1}, Lorg/jbox2d/collision/WorldManifold;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->worldManifold:Lorg/jbox2d/collision/WorldManifold;

    .line 336
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->a:Lorg/jbox2d/common/Vec2;

    .line 337
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->b:Lorg/jbox2d/common/Vec2;

    .line 338
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->dv1:Lorg/jbox2d/common/Vec2;

    .line 339
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->dv2:Lorg/jbox2d/common/Vec2;

    .line 340
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    .line 341
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->d:Lorg/jbox2d/common/Vec2;

    .line 342
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    .line 343
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    .line 809
    new-instance v1, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;

    invoke-direct {v1}, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->psolver:Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;

    .line 810
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->rA:Lorg/jbox2d/common/Vec2;

    .line 811
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->rB:Lorg/jbox2d/common/Vec2;

    .line 68
    new-array v1, v3, [Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positionConstraints:[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    .line 69
    new-array v1, v3, [Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_93
    if-ge v0, v3, :cond_aa

    .line 71
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positionConstraints:[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    new-instance v2, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    invoke-direct {v2}, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;-><init>()V

    aput-object v2, v1, v0

    .line 72
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    new-instance v2, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    invoke-direct {v2}, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;-><init>()V

    aput-object v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 74
    :cond_aa
    return-void
.end method


# virtual methods
.method public final init(Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;)V
    .registers 28
    .param p1, "def"    # Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    .prologue
    .line 83
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_step:Lorg/jbox2d/dynamics/TimeStep;

    .line 84
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->count:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_count:I

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positionConstraints:[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_count:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_86

    .line 87
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positionConstraints:[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    .line 88
    .local v13, "old":[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;
    array-length v0, v13

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_count:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positionConstraints:[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    .line 89
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positionConstraints:[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    array-length v0, v13

    move/from16 v25, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v13, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    array-length v10, v13

    .local v10, "i":I
    :goto_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positionConstraints:[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_86

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positionConstraints:[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    move-object/from16 v22, v0

    new-instance v23, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    invoke-direct/range {v23 .. v23}, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;-><init>()V

    aput-object v23, v22, v10

    .line 90
    add-int/lit8 v10, v10, 0x1

    goto :goto_67

    .line 95
    .end local v10    # "i":I
    .end local v13    # "old":[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;
    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_count:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_f4

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    .line 97
    .local v13, "old":[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
    array-length v0, v13

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_count:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    .line 98
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    array-length v0, v13

    move/from16 v25, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v13, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    array-length v10, v13

    .restart local v10    # "i":I
    :goto_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_f4

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    move-object/from16 v22, v0

    new-instance v23, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    invoke-direct/range {v23 .. v23}, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;-><init>()V

    aput-object v23, v22, v10

    .line 99
    add-int/lit8 v10, v10, 0x1

    goto :goto_d5

    .line 104
    .end local v10    # "i":I
    .end local v13    # "old":[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
    :cond_f4
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    .line 105
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    .line 106
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    .line 108
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_119
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_count:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_319

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v22, v0

    aget-object v6, v22, v10

    .line 112
    .local v6, "contact":Lorg/jbox2d/dynamics/contacts/Contact;
    iget-object v8, v6, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    .line 113
    .local v8, "fixtureA":Lorg/jbox2d/dynamics/Fixture;
    iget-object v9, v6, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    .line 114
    .local v9, "fixtureB":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual {v8}, Lorg/jbox2d/dynamics/Fixture;->getShape()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v18

    .line 115
    .local v18, "shapeA":Lorg/jbox2d/collision/shapes/Shape;
    invoke-virtual {v9}, Lorg/jbox2d/dynamics/Fixture;->getShape()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v19

    .line 116
    .local v19, "shapeB":Lorg/jbox2d/collision/shapes/Shape;
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/collision/shapes/Shape;->m_radius:F

    move/from16 v16, v0

    .line 117
    .local v16, "radiusA":F
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/collision/shapes/Shape;->m_radius:F

    move/from16 v17, v0

    .line 118
    .local v17, "radiusB":F
    invoke-virtual {v8}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    .line 119
    .local v4, "bodyA":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v9}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v5

    .line 120
    .local v5, "bodyB":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v6}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifold()Lorg/jbox2d/collision/Manifold;

    move-result-object v12

    .line 122
    .local v12, "manifold":Lorg/jbox2d/collision/Manifold;
    iget v15, v12, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 123
    .local v15, "pointCount":I
    sget-boolean v22, Lorg/jbox2d/dynamics/contacts/ContactSolver;->$assertionsDisabled:Z

    if-nez v22, :cond_15d

    if-gtz v15, :cond_15d

    new-instance v22, Ljava/lang/AssertionError;

    invoke-direct/range {v22 .. v22}, Ljava/lang/AssertionError;-><init>()V

    throw v22

    .line 125
    :cond_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    move-object/from16 v22, v0

    aget-object v20, v22, v10

    .line 126
    .local v20, "vc":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
    iget v0, v6, Lorg/jbox2d/dynamics/contacts/Contact;->m_friction:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->friction:F

    .line 127
    iget v0, v6, Lorg/jbox2d/dynamics/contacts/Contact;->m_restitution:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->restitution:F

    .line 128
    iget v0, v6, Lorg/jbox2d/dynamics/contacts/Contact;->m_tangentSpeed:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->tangentSpeed:F

    .line 129
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->indexA:I

    .line 130
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->indexB:I

    .line 131
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invMassA:F

    .line 132
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invMassB:F

    .line 133
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invIA:F

    .line 134
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invIB:F

    .line 135
    move-object/from16 v0, v20

    iput v10, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->contactIndex:I

    .line 136
    move-object/from16 v0, v20

    iput v15, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->pointCount:I

    .line 137
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->K:Lorg/jbox2d/common/Mat22;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/jbox2d/common/Mat22;->setZero()V

    .line 138
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normalMass:Lorg/jbox2d/common/Mat22;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/jbox2d/common/Mat22;->setZero()V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positionConstraints:[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    move-object/from16 v22, v0

    aget-object v14, v22, v10

    .line 141
    .local v14, "pc":Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->indexA:I

    .line 142
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->indexB:I

    .line 143
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->invMassA:F

    .line 144
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->invMassB:F

    .line 145
    iget-object v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    iget-object v0, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 146
    iget-object v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 147
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->invIA:F

    .line 148
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->invIB:F

    .line 149
    iget-object v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    iget-object v0, v12, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 150
    iget-object v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    iget-object v0, v12, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 151
    iput v15, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->pointCount:I

    .line 152
    move/from16 v0, v16

    iput v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->radiusA:F

    .line 153
    move/from16 v0, v17

    iput v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->radiusB:F

    .line 154
    iget-object v0, v12, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 157
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_25c
    if-ge v11, v15, :cond_315

    .line 158
    iget-object v0, v12, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v22, v0

    aget-object v7, v22, v11

    .line 159
    .local v7, "cp":Lorg/jbox2d/collision/ManifoldPoint;
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    move-object/from16 v22, v0

    aget-object v21, v22, v11

    .line 161
    .local v21, "vcp":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    move/from16 v22, v0

    if-eqz v22, :cond_304

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v22, v0

    iget v0, v7, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v22, v0

    iget v0, v7, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->tangentImpulse:F

    .line 171
    :goto_2aa
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 172
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 173
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalMass:F

    .line 174
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->tangentMass:F

    .line 175
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->velocityBias:F

    .line 176
    iget-object v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localPoints:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    aget-object v22, v22, v11

    iget-object v0, v7, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 177
    iget-object v0, v14, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localPoints:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    aget-object v22, v22, v11

    iget-object v0, v7, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 157
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_25c

    .line 167
    :cond_304
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    .line 168
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->tangentImpulse:F

    goto :goto_2aa

    .line 108
    .end local v7    # "cp":Lorg/jbox2d/collision/ManifoldPoint;
    .end local v21    # "vcp":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    :cond_315
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_119

    .line 180
    .end local v4    # "bodyA":Lorg/jbox2d/dynamics/Body;
    .end local v5    # "bodyB":Lorg/jbox2d/dynamics/Body;
    .end local v6    # "contact":Lorg/jbox2d/dynamics/contacts/Contact;
    .end local v8    # "fixtureA":Lorg/jbox2d/dynamics/Fixture;
    .end local v9    # "fixtureB":Lorg/jbox2d/dynamics/Fixture;
    .end local v11    # "j":I
    .end local v12    # "manifold":Lorg/jbox2d/collision/Manifold;
    .end local v14    # "pc":Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;
    .end local v15    # "pointCount":I
    .end local v16    # "radiusA":F
    .end local v17    # "radiusB":F
    .end local v18    # "shapeA":Lorg/jbox2d/collision/shapes/Shape;
    .end local v19    # "shapeB":Lorg/jbox2d/collision/shapes/Shape;
    .end local v20    # "vc":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
    :cond_319
    return-void
.end method

.method public final initializeVelocityConstraints()V
    .registers 53

    .prologue
    .line 233
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_count:I

    if-ge v12, v2, :cond_3a8

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    aget-object v44, v2, v12

    .line 235
    .local v44, "vc":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positionConstraints:[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    aget-object v27, v2, v12

    .line 237
    .local v27, "pc":Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;
    move-object/from16 v0, v27

    iget v5, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->radiusA:F

    .line 238
    .local v5, "radiusA":F
    move-object/from16 v0, v27

    iget v7, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->radiusB:F

    .line 239
    .local v7, "radiusB":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v0, v44

    iget v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->contactIndex:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifold()Lorg/jbox2d/collision/Manifold;

    move-result-object v3

    .line 241
    .local v3, "manifold":Lorg/jbox2d/collision/Manifold;
    move-object/from16 v0, v44

    iget v15, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->indexA:I

    .line 242
    .local v15, "indexA":I
    move-object/from16 v0, v44

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->indexB:I

    move/from16 v16, v0

    .line 244
    .local v16, "indexB":I
    move-object/from16 v0, v44

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invMassA:F

    move/from16 v25, v0

    .line 245
    .local v25, "mA":F
    move-object/from16 v0, v44

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invMassB:F

    move/from16 v26, v0

    .line 246
    .local v26, "mB":F
    move-object/from16 v0, v44

    iget v13, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invIA:F

    .line 247
    .local v13, "iA":F
    move-object/from16 v0, v44

    iget v14, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invIB:F

    .line 248
    .local v14, "iB":F
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    .line 249
    .local v23, "localCenterA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    .line 251
    .local v24, "localCenterB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v2, v2, v15

    iget-object v10, v2, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 252
    .local v10, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v2, v2, v15

    iget v8, v2, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 253
    .local v8, "aA":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    aget-object v2, v2, v15

    iget-object v0, v2, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v41, v0

    .line 254
    .local v41, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    aget-object v2, v2, v15

    iget v0, v2, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v48, v0

    .line 256
    .local v48, "wA":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v2, v2, v16

    iget-object v11, v2, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 257
    .local v11, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v2, v2, v16

    iget v9, v2, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 258
    .local v9, "aB":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    aget-object v2, v2, v16

    iget-object v0, v2, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v42, v0

    .line 259
    .local v42, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    aget-object v2, v2, v16

    iget v0, v2, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v49, v0

    .line 261
    .local v49, "wB":F
    sget-boolean v2, Lorg/jbox2d/dynamics/contacts/ContactSolver;->$assertionsDisabled:Z

    if-nez v2, :cond_a9

    iget v2, v3, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-gtz v2, :cond_a9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 263
    :cond_a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    iget-object v2, v2, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-virtual {v2, v8}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    iget-object v2, v2, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-virtual {v2, v9}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    iget-object v2, v2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v4, v10, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    iget-object v6, v6, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v6, v6, Lorg/jbox2d/common/Rot;->c:F

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v50, v0

    mul-float v6, v6, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v50, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v51, v0

    mul-float v50, v50, v51

    sub-float v6, v6, v50

    sub-float/2addr v4, v6

    iput v4, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    iget-object v2, v2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v4, v10, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    iget-object v6, v6, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v6, v6, Lorg/jbox2d/common/Rot;->s:F

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v50, v0

    mul-float v6, v6, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v50, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v51, v0

    mul-float v50, v50, v51

    add-float v6, v6, v50

    sub-float/2addr v4, v6

    iput v4, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    iget-object v2, v2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v4, v11, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    iget-object v6, v6, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v6, v6, Lorg/jbox2d/common/Rot;->c:F

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v50, v0

    mul-float v6, v6, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v50, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v51, v0

    mul-float v50, v50, v51

    sub-float v6, v6, v50

    sub-float/2addr v4, v6

    iput v4, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    iget-object v2, v2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v4, v11, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    iget-object v6, v6, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v6, v6, Lorg/jbox2d/common/Rot;->s:F

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v50, v0

    mul-float v6, v6, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v50, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v51, v0

    mul-float v50, v50, v51

    add-float v6, v6, v50

    sub-float/2addr v4, v6

    iput v4, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->worldManifold:Lorg/jbox2d/collision/WorldManifold;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    invoke-virtual/range {v2 .. v7}, Lorg/jbox2d/collision/WorldManifold;->initialize(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/common/Transform;FLorg/jbox2d/common/Transform;F)V

    .line 272
    move-object/from16 v0, v44

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->worldManifold:Lorg/jbox2d/collision/WorldManifold;

    iget-object v4, v4, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v4}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 274
    move-object/from16 v0, v44

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->pointCount:I

    move/from16 v28, v0

    .line 275
    .local v28, "pointCount":I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_1bb
    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_2fe

    .line 276
    move-object/from16 v0, v44

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    aget-object v45, v2, v17

    .line 278
    .local v45, "vcp":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    move-object/from16 v0, v45

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->worldManifold:Lorg/jbox2d/collision/WorldManifold;

    iget-object v4, v4, Lorg/jbox2d/collision/WorldManifold;->points:[Lorg/jbox2d/common/Vec2;

    aget-object v4, v4, v17

    invoke-virtual {v2, v4}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 279
    move-object/from16 v0, v45

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->worldManifold:Lorg/jbox2d/collision/WorldManifold;

    iget-object v4, v4, Lorg/jbox2d/collision/WorldManifold;->points:[Lorg/jbox2d/common/Vec2;

    aget-object v4, v4, v17

    invoke-virtual {v2, v4}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 281
    move-object/from16 v0, v45

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, v44

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v4

    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, v44

    iget-object v6, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v6

    sub-float v33, v2, v4

    .line 282
    .local v33, "rnA":F
    move-object/from16 v0, v45

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, v44

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v4

    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, v44

    iget-object v6, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v6

    sub-float v34, v2, v4

    .line 284
    .local v34, "rnB":F
    add-float v2, v25, v26

    mul-float v4, v13, v33

    mul-float v4, v4, v33

    add-float/2addr v2, v4

    mul-float v4, v14, v34

    mul-float v4, v4, v34

    add-float v21, v2, v4

    .line 286
    .local v21, "kNormal":F
    const/4 v2, 0x0

    cmpl-float v2, v21, v2

    if-lez v2, :cond_2f9

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v2, v2, v21

    :goto_23b
    move-object/from16 v0, v45

    iput v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalMass:F

    .line 288
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v44

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v37, v2, v4

    .line 289
    .local v37, "tangentx":F
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, v44

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v38, v2, v4

    .line 291
    .local v38, "tangenty":F
    move-object/from16 v0, v45

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v2, v2, v38

    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v4, v4, v37

    sub-float v35, v2, v4

    .line 292
    .local v35, "rtA":F
    move-object/from16 v0, v45

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v2, v2, v38

    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v4, v4, v37

    sub-float v36, v2, v4

    .line 294
    .local v36, "rtB":F
    add-float v2, v25, v26

    mul-float v4, v13, v35

    mul-float v4, v4, v35

    add-float/2addr v2, v4

    mul-float v4, v14, v36

    mul-float v4, v4, v36

    add-float v22, v2, v4

    .line 296
    .local v22, "kTangent":F
    const/4 v2, 0x0

    cmpl-float v2, v22, v2

    if-lez v2, :cond_2fc

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v2, v2, v22

    :goto_28d
    move-object/from16 v0, v45

    iput v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->tangentMass:F

    .line 299
    const/4 v2, 0x0

    move-object/from16 v0, v45

    iput v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->velocityBias:F

    .line 300
    move-object/from16 v0, v42

    iget v2, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v0, v49

    neg-float v4, v0

    move-object/from16 v0, v45

    iget-object v6, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    move-object/from16 v0, v41

    iget v4, v0, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v2, v4

    move/from16 v0, v48

    neg-float v4, v0

    move-object/from16 v0, v45

    iget-object v6, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v6

    sub-float v39, v2, v4

    .line 301
    .local v39, "tempx":F
    move-object/from16 v0, v42

    iget v2, v0, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v4, v4, v49

    add-float/2addr v2, v4

    move-object/from16 v0, v41

    iget v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v2, v4

    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v4, v4, v48

    sub-float v40, v2, v4

    .line 302
    .local v40, "tempy":F
    move-object/from16 v0, v44

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v2, v2, v39

    move-object/from16 v0, v44

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v4, v4, v40

    add-float v43, v2, v4

    .line 303
    .local v43, "vRel":F
    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, v43, v2

    if-gez v2, :cond_2f5

    .line 304
    move-object/from16 v0, v44

    iget v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->restitution:F

    neg-float v2, v2

    mul-float v2, v2, v43

    move-object/from16 v0, v45

    iput v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->velocityBias:F

    .line 275
    :cond_2f5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1bb

    .line 286
    .end local v22    # "kTangent":F
    .end local v35    # "rtA":F
    .end local v36    # "rtB":F
    .end local v37    # "tangentx":F
    .end local v38    # "tangenty":F
    .end local v39    # "tempx":F
    .end local v40    # "tempy":F
    .end local v43    # "vRel":F
    :cond_2f9
    const/4 v2, 0x0

    goto/16 :goto_23b

    .line 296
    .restart local v22    # "kTangent":F
    .restart local v35    # "rtA":F
    .restart local v36    # "rtB":F
    .restart local v37    # "tangentx":F
    .restart local v38    # "tangenty":F
    :cond_2fc
    const/4 v2, 0x0

    goto :goto_28d

    .line 309
    .end local v21    # "kNormal":F
    .end local v22    # "kTangent":F
    .end local v33    # "rnA":F
    .end local v34    # "rnB":F
    .end local v35    # "rtA":F
    .end local v36    # "rtB":F
    .end local v37    # "tangentx":F
    .end local v38    # "tangenty":F
    .end local v45    # "vcp":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    :cond_2fe
    move-object/from16 v0, v44

    iget v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->pointCount:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_39e

    .line 310
    move-object/from16 v0, v44

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    const/4 v4, 0x0

    aget-object v46, v2, v4

    .line 311
    .local v46, "vcp1":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    move-object/from16 v0, v44

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    const/4 v4, 0x1

    aget-object v47, v2, v4

    .line 313
    .local v47, "vcp2":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    move-object/from16 v0, v46

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, v44

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v4}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v29

    .line 314
    .local v29, "rn1A":F
    move-object/from16 v0, v46

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, v44

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v4}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v30

    .line 315
    .local v30, "rn1B":F
    move-object/from16 v0, v47

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, v44

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v4}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v31

    .line 316
    .local v31, "rn2A":F
    move-object/from16 v0, v47

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, v44

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v4}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v32

    .line 318
    .local v32, "rn2B":F
    add-float v2, v25, v26

    mul-float v4, v13, v29

    mul-float v4, v4, v29

    add-float/2addr v2, v4

    mul-float v4, v14, v30

    mul-float v4, v4, v30

    add-float v18, v2, v4

    .line 319
    .local v18, "k11":F
    add-float v2, v25, v26

    mul-float v4, v13, v31

    mul-float v4, v4, v31

    add-float/2addr v2, v4

    mul-float v4, v14, v32

    mul-float v4, v4, v32

    add-float v20, v2, v4

    .line 320
    .local v20, "k22":F
    add-float v2, v25, v26

    mul-float v4, v13, v29

    mul-float v4, v4, v31

    add-float/2addr v2, v4

    mul-float v4, v14, v30

    mul-float v4, v4, v32

    add-float v19, v2, v4

    .line 321
    .local v19, "k12":F
    mul-float v2, v18, v18

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v6, v18, v20

    mul-float v50, v19, v19

    sub-float v6, v6, v50

    mul-float/2addr v4, v6

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3a2

    .line 323
    move-object/from16 v0, v44

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->K:Lorg/jbox2d/common/Mat22;

    iget-object v2, v2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 324
    move-object/from16 v0, v44

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->K:Lorg/jbox2d/common/Mat22;

    iget-object v2, v2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 325
    move-object/from16 v0, v44

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->K:Lorg/jbox2d/common/Mat22;

    move-object/from16 v0, v44

    iget-object v4, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normalMass:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v2, v4}, Lorg/jbox2d/common/Mat22;->invertToOut(Lorg/jbox2d/common/Mat22;)V

    .line 233
    .end local v18    # "k11":F
    .end local v19    # "k12":F
    .end local v20    # "k22":F
    .end local v29    # "rn1A":F
    .end local v30    # "rn1B":F
    .end local v31    # "rn2A":F
    .end local v32    # "rn2B":F
    .end local v46    # "vcp1":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    .end local v47    # "vcp2":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    :cond_39e
    :goto_39e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 329
    .restart local v18    # "k11":F
    .restart local v19    # "k12":F
    .restart local v20    # "k22":F
    .restart local v29    # "rn1A":F
    .restart local v30    # "rn1B":F
    .restart local v31    # "rn2A":F
    .restart local v32    # "rn2B":F
    .restart local v46    # "vcp1":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    .restart local v47    # "vcp2":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    :cond_3a2
    const/4 v2, 0x1

    move-object/from16 v0, v44

    iput v2, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->pointCount:I

    goto :goto_39e

    .line 333
    .end local v3    # "manifold":Lorg/jbox2d/collision/Manifold;
    .end local v5    # "radiusA":F
    .end local v7    # "radiusB":F
    .end local v8    # "aA":F
    .end local v9    # "aB":F
    .end local v10    # "cA":Lorg/jbox2d/common/Vec2;
    .end local v11    # "cB":Lorg/jbox2d/common/Vec2;
    .end local v13    # "iA":F
    .end local v14    # "iB":F
    .end local v15    # "indexA":I
    .end local v16    # "indexB":I
    .end local v17    # "j":I
    .end local v18    # "k11":F
    .end local v19    # "k12":F
    .end local v20    # "k22":F
    .end local v23    # "localCenterA":Lorg/jbox2d/common/Vec2;
    .end local v24    # "localCenterB":Lorg/jbox2d/common/Vec2;
    .end local v25    # "mA":F
    .end local v26    # "mB":F
    .end local v27    # "pc":Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;
    .end local v28    # "pointCount":I
    .end local v29    # "rn1A":F
    .end local v30    # "rn1B":F
    .end local v31    # "rn2A":F
    .end local v32    # "rn2B":F
    .end local v41    # "vA":Lorg/jbox2d/common/Vec2;
    .end local v42    # "vB":Lorg/jbox2d/common/Vec2;
    .end local v44    # "vc":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
    .end local v46    # "vcp1":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    .end local v47    # "vcp2":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    .end local v48    # "wA":F
    .end local v49    # "wB":F
    :cond_3a8
    return-void
.end method

.method public final solvePositionConstraints()Z
    .registers 35

    .prologue
    .line 817
    const/16 v22, 0x0

    .line 819
    .local v22, "minSeparation":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_count:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_249

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positionConstraints:[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    move-object/from16 v31, v0

    aget-object v24, v31, v11

    .line 822
    .local v24, "pc":Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;
    move-object/from16 v0, v24

    iget v15, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->indexA:I

    .line 823
    .local v15, "indexA":I
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->indexB:I

    move/from16 v16, v0

    .line 825
    .local v16, "indexB":I
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->invMassA:F

    move/from16 v20, v0

    .line 826
    .local v20, "mA":F
    move-object/from16 v0, v24

    iget v12, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->invIA:F

    .line 827
    .local v12, "iA":F
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    .line 828
    .local v18, "localCenterA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->invMassB:F

    move/from16 v21, v0

    .line 829
    .local v21, "mB":F
    move-object/from16 v0, v24

    iget v13, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->invIB:F

    .line 830
    .local v13, "iB":F
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    .line 831
    .local v19, "localCenterB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->pointCount:I

    move/from16 v26, v0

    .line 833
    .local v26, "pointCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v31, v0

    aget-object v31, v31, v15

    move-object/from16 v0, v31

    iget-object v9, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 834
    .local v9, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v31, v0

    aget-object v31, v31, v15

    move-object/from16 v0, v31

    iget v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 835
    .local v7, "aA":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v31, v0

    aget-object v31, v31, v16

    move-object/from16 v0, v31

    iget-object v10, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 836
    .local v10, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v31, v0

    aget-object v31, v31, v16

    move-object/from16 v0, v31

    iget v8, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 839
    .local v8, "aB":F
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_77
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_22d

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->psolver:Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;

    move-object/from16 v27, v0

    .line 848
    .local v27, "psm":Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->initialize(Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;I)V

    .line 849
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    .line 851
    .local v23, "normal":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->point:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    .line 852
    .local v25, "point":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->separation:F

    move/from16 v30, v0

    .line 854
    .local v30, "separation":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 858
    move/from16 v0, v22

    move/from16 v1, v30

    invoke-static {v0, v1}, Lorg/jbox2d/common/MathUtils;->min(FF)F

    move-result v22

    .line 861
    const v31, 0x3e4ccccd    # 0.2f

    const v32, 0x3ba3d70a    # 0.005f

    add-float v32, v32, v30

    mul-float v31, v31, v32

    const v32, -0x41b33333    # -0.2f

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v5

    .line 866
    .local v5, "C":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v28

    .line 867
    .local v28, "rnA":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v29

    .line 868
    .local v29, "rnB":F
    add-float v31, v20, v21

    mul-float v32, v12, v28

    mul-float v32, v32, v28

    add-float v31, v31, v32

    mul-float v32, v13, v29

    mul-float v32, v32, v29

    add-float v6, v31, v32

    .line 871
    .local v6, "K":F
    const/16 v31, 0x0

    cmpl-float v31, v6, v31

    if-lez v31, :cond_22b

    neg-float v0, v5

    move/from16 v31, v0

    div-float v14, v31, v6

    .line 873
    .local v14, "impulse":F
    :goto_1b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v31

    mul-float v31, v31, v12

    sub-float v7, v7, v31

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v31

    mul-float v31, v31, v13

    add-float v8, v8, v31

    .line 839
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_77

    .line 871
    .end local v14    # "impulse":F
    :cond_22b
    const/4 v14, 0x0

    goto :goto_1b2

    .line 883
    .end local v5    # "C":F
    .end local v6    # "K":F
    .end local v23    # "normal":Lorg/jbox2d/common/Vec2;
    .end local v25    # "point":Lorg/jbox2d/common/Vec2;
    .end local v27    # "psm":Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;
    .end local v28    # "rnA":F
    .end local v29    # "rnB":F
    .end local v30    # "separation":F
    :cond_22d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v31, v0

    aget-object v31, v31, v15

    move-object/from16 v0, v31

    iput v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v31, v0

    aget-object v31, v31, v16

    move-object/from16 v0, v31

    iput v8, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 819
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 891
    .end local v7    # "aA":F
    .end local v8    # "aB":F
    .end local v9    # "cA":Lorg/jbox2d/common/Vec2;
    .end local v10    # "cB":Lorg/jbox2d/common/Vec2;
    .end local v12    # "iA":F
    .end local v13    # "iB":F
    .end local v15    # "indexA":I
    .end local v16    # "indexB":I
    .end local v17    # "j":I
    .end local v18    # "localCenterA":Lorg/jbox2d/common/Vec2;
    .end local v19    # "localCenterB":Lorg/jbox2d/common/Vec2;
    .end local v20    # "mA":F
    .end local v21    # "mB":F
    .end local v24    # "pc":Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;
    .end local v26    # "pointCount":I
    :cond_249
    const v31, -0x438a3d71    # -0.015f

    cmpl-float v31, v22, v31

    if-ltz v31, :cond_253

    const/16 v31, 0x1

    :goto_252
    return v31

    :cond_253
    const/16 v31, 0x0

    goto :goto_252
.end method

.method public solveTOIPositionConstraints(II)Z
    .registers 37
    .param p1, "toiIndexA"    # I
    .param p2, "toiIndexB"    # I

    .prologue
    .line 896
    const/16 v22, 0x0

    .line 898
    .local v22, "minSeparation":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_count:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_262

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positionConstraints:[Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;

    move-object/from16 v31, v0

    aget-object v24, v31, v11

    .line 901
    .local v24, "pc":Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;
    move-object/from16 v0, v24

    iget v15, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->indexA:I

    .line 902
    .local v15, "indexA":I
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->indexB:I

    move/from16 v16, v0

    .line 903
    .local v16, "indexB":I
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    .line 904
    .local v18, "localCenterA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    .line 905
    .local v19, "localCenterB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->pointCount:I

    move/from16 v26, v0

    .line 907
    .local v26, "pointCount":I
    const/16 v20, 0x0

    .line 908
    .local v20, "mA":F
    const/4 v12, 0x0

    .line 909
    .local v12, "iA":F
    move/from16 v0, p1

    if-eq v15, v0, :cond_3c

    move/from16 v0, p2

    if-ne v15, v0, :cond_46

    .line 910
    :cond_3c
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->invMassA:F

    move/from16 v20, v0

    .line 911
    move-object/from16 v0, v24

    iget v12, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->invIA:F

    .line 914
    :cond_46
    const/16 v21, 0x0

    .line 915
    .local v21, "mB":F
    const/4 v13, 0x0

    .line 916
    .local v13, "iB":F
    move/from16 v0, v16

    move/from16 v1, p1

    if-eq v0, v1, :cond_55

    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_5f

    .line 917
    :cond_55
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->invMassB:F

    move/from16 v21, v0

    .line 918
    move-object/from16 v0, v24

    iget v13, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->invIB:F

    .line 921
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v31, v0

    aget-object v31, v31, v15

    move-object/from16 v0, v31

    iget-object v9, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 922
    .local v9, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v31, v0

    aget-object v31, v31, v15

    move-object/from16 v0, v31

    iget v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 924
    .local v7, "aA":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v31, v0

    aget-object v31, v31, v16

    move-object/from16 v0, v31

    iget-object v10, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 925
    .local v10, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v31, v0

    aget-object v31, v31, v16

    move-object/from16 v0, v31

    iget v8, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 928
    .local v8, "aB":F
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_91
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_246

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->psolver:Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;

    move-object/from16 v27, v0

    .line 937
    .local v27, "psm":Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfA:Lorg/jbox2d/common/Transform;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->xfB:Lorg/jbox2d/common/Transform;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->initialize(Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;I)V

    .line 938
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    .line 940
    .local v23, "normal":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->point:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    .line 941
    .local v25, "point":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->separation:F

    move/from16 v30, v0

    .line 943
    .local v30, "separation":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 947
    move/from16 v0, v22

    move/from16 v1, v30

    invoke-static {v0, v1}, Lorg/jbox2d/common/MathUtils;->min(FF)F

    move-result v22

    .line 950
    const/high16 v31, 0x3f400000    # 0.75f

    const v32, 0x3ba3d70a    # 0.005f

    add-float v32, v32, v30

    mul-float v31, v31, v32

    const v32, -0x41b33333    # -0.2f

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v5

    .line 955
    .local v5, "C":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v28

    .line 956
    .local v28, "rnA":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v29

    .line 957
    .local v29, "rnB":F
    add-float v31, v20, v21

    mul-float v32, v12, v28

    mul-float v32, v32, v28

    add-float v31, v31, v32

    mul-float v32, v13, v29

    mul-float v32, v32, v29

    add-float v6, v31, v32

    .line 960
    .local v6, "K":F
    const/16 v31, 0x0

    cmpl-float v31, v6, v31

    if-lez v31, :cond_244

    neg-float v0, v5

    move/from16 v31, v0

    div-float v14, v31, v6

    .line 962
    .local v14, "impulse":F
    :goto_1cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v31

    mul-float v31, v31, v12

    sub-float v7, v7, v31

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v31

    mul-float v31, v31, v13

    add-float v8, v8, v31

    .line 928
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_91

    .line 960
    .end local v14    # "impulse":F
    :cond_244
    const/4 v14, 0x0

    goto :goto_1cb

    .line 972
    .end local v5    # "C":F
    .end local v6    # "K":F
    .end local v23    # "normal":Lorg/jbox2d/common/Vec2;
    .end local v25    # "point":Lorg/jbox2d/common/Vec2;
    .end local v27    # "psm":Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;
    .end local v28    # "rnA":F
    .end local v29    # "rnB":F
    .end local v30    # "separation":F
    :cond_246
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v31, v0

    aget-object v31, v31, v15

    move-object/from16 v0, v31

    iput v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v31, v0

    aget-object v31, v31, v16

    move-object/from16 v0, v31

    iput v8, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 898
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 980
    .end local v7    # "aA":F
    .end local v8    # "aB":F
    .end local v9    # "cA":Lorg/jbox2d/common/Vec2;
    .end local v10    # "cB":Lorg/jbox2d/common/Vec2;
    .end local v12    # "iA":F
    .end local v13    # "iB":F
    .end local v15    # "indexA":I
    .end local v16    # "indexB":I
    .end local v17    # "j":I
    .end local v18    # "localCenterA":Lorg/jbox2d/common/Vec2;
    .end local v19    # "localCenterB":Lorg/jbox2d/common/Vec2;
    .end local v20    # "mA":F
    .end local v21    # "mB":F
    .end local v24    # "pc":Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;
    .end local v26    # "pointCount":I
    :cond_262
    const v31, -0x440a3d71    # -0.0075f

    cmpl-float v31, v22, v31

    if-ltz v31, :cond_26c

    const/16 v31, 0x1

    :goto_26b
    return v31

    :cond_26c
    const/16 v31, 0x0

    goto :goto_26b
.end method

.method public final solveVelocityConstraints()V
    .registers 41

    .prologue
    .line 346
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_count:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v12, v0, :cond_bf5

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    move-object/from16 v35, v0

    aget-object v27, v35, v12

    .line 349
    .local v27, "vc":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
    move-object/from16 v0, v27

    iget v15, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->indexA:I

    .line 350
    .local v15, "indexA":I
    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->indexB:I

    move/from16 v16, v0

    .line 352
    .local v16, "indexB":I
    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invMassA:F

    move/from16 v19, v0

    .line 353
    .local v19, "mA":F
    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invMassB:F

    move/from16 v20, v0

    .line 354
    .local v20, "mB":F
    move-object/from16 v0, v27

    iget v13, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invIA:F

    .line 355
    .local v13, "iA":F
    move-object/from16 v0, v27

    iget v14, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invIB:F

    .line 356
    .local v14, "iB":F
    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->pointCount:I

    move/from16 v24, v0

    .line 358
    .local v24, "pointCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v35, v0

    aget-object v35, v35, v15

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    .line 359
    .local v25, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v35, v0

    aget-object v35, v35, v15

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v33, v0

    .line 360
    .local v33, "wA":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v35, v0

    aget-object v35, v35, v16

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    .line 361
    .local v26, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v35, v0

    aget-object v35, v35, v16

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v34, v0

    .line 363
    .local v34, "wB":F
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    .line 364
    .local v23, "normal":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->tangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    const/high16 v36, 0x3f800000    # 1.0f

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    mul-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->tangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    const/high16 v36, -0x40800000    # -1.0f

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v37, v0

    mul-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 366
    move-object/from16 v0, v27

    iget v11, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->friction:F

    .line 368
    .local v11, "friction":F
    sget-boolean v35, Lorg/jbox2d/dynamics/contacts/ContactSolver;->$assertionsDisabled:Z

    if-nez v35, :cond_cb

    const/16 v35, 0x1

    move/from16 v0, v24

    move/from16 v1, v35

    if-eq v0, v1, :cond_cb

    const/16 v35, 0x2

    move/from16 v0, v24

    move/from16 v1, v35

    if-eq v0, v1, :cond_cb

    new-instance v35, Ljava/lang/AssertionError;

    invoke-direct/range {v35 .. v35}, Ljava/lang/AssertionError;-><init>()V

    throw v35

    .line 371
    :cond_cb
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_cd
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_234

    .line 372
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    move-object/from16 v35, v0

    aget-object v28, v35, v17

    .line 373
    .local v28, "vcp":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    .line 374
    .local v6, "a":Lorg/jbox2d/common/Vec2;
    move/from16 v0, v34

    neg-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    mul-float v35, v35, v36

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    mul-float v36, v36, v33

    add-float v9, v35, v36

    .line 375
    .local v9, "dvx":F
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    mul-float v35, v35, v34

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    mul-float v36, v36, v33

    sub-float v10, v35, v36

    .line 378
    .local v10, "dvy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->tangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    mul-float v35, v35, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->tangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    mul-float v36, v36, v10

    add-float v35, v35, v36

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->tangentSpeed:F

    move/from16 v36, v0

    sub-float v32, v35, v36

    .line 379
    .local v32, "vt":F
    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->tangentMass:F

    move/from16 v35, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v36, v0

    mul-float v18, v35, v36

    .line 382
    .local v18, "lambda":F
    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    move/from16 v35, v0

    mul-float v21, v11, v35

    .line 383
    .local v21, "maxFriction":F
    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->tangentImpulse:F

    move/from16 v35, v0

    add-float v35, v35, v18

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v22

    .line 385
    .local v22, "newImpulse":F
    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->tangentImpulse:F

    move/from16 v35, v0

    sub-float v18, v22, v35

    .line 386
    move/from16 v0, v22

    move-object/from16 v1, v28

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->tangentImpulse:F

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->tangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    mul-float v3, v35, v18

    .line 392
    .local v3, "Px":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->tangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v35, v0

    mul-float v4, v35, v18

    .line 395
    .local v4, "Py":F
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    mul-float v36, v3, v19

    sub-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 396
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v35, v0

    mul-float v36, v4, v19

    sub-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 397
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    mul-float v35, v35, v4

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    mul-float v36, v36, v3

    sub-float v35, v35, v36

    mul-float v35, v35, v13

    sub-float v33, v33, v35

    .line 400
    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    mul-float v36, v3, v20

    add-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v26

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 401
    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v35, v0

    mul-float v36, v4, v20

    add-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v26

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 402
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    mul-float v35, v35, v4

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    mul-float v36, v36, v3

    sub-float v35, v35, v36

    mul-float v35, v35, v14

    add-float v34, v34, v35

    .line 371
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_cd

    .line 406
    .end local v3    # "Px":F
    .end local v4    # "Py":F
    .end local v6    # "a":Lorg/jbox2d/common/Vec2;
    .end local v9    # "dvx":F
    .end local v10    # "dvy":F
    .end local v18    # "lambda":F
    .end local v21    # "maxFriction":F
    .end local v22    # "newImpulse":F
    .end local v28    # "vcp":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    .end local v32    # "vt":F
    :cond_234
    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->pointCount:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3aa

    .line 407
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v28, v35, v36

    .line 412
    .restart local v28    # "vcp":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    move/from16 v0, v34

    neg-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    mul-float v35, v35, v36

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    mul-float v36, v36, v33

    add-float v9, v35, v36

    .line 413
    .restart local v9    # "dvx":F
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    mul-float v35, v35, v34

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    mul-float v36, v36, v33

    sub-float v10, v35, v36

    .line 416
    .restart local v10    # "dvy":F
    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    mul-float v35, v35, v9

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    mul-float v36, v36, v10

    add-float v29, v35, v36

    .line 417
    .local v29, "vn":F
    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalMass:F

    move/from16 v35, v0

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->velocityBias:F

    move/from16 v36, v0

    sub-float v36, v29, v36

    mul-float v18, v35, v36

    .line 420
    .restart local v18    # "lambda":F
    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    move/from16 v35, v0

    add-float v6, v35, v18

    .line 421
    .local v6, "a":F
    const/16 v35, 0x0

    cmpl-float v35, v6, v35

    if-lez v35, :cond_3a6

    move/from16 v22, v6

    .line 422
    .restart local v22    # "newImpulse":F
    :goto_2e4
    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    move/from16 v35, v0

    sub-float v18, v22, v35

    .line 423
    move/from16 v0, v22

    move-object/from16 v1, v28

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    .line 426
    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    mul-float v3, v35, v18

    .line 427
    .restart local v3    # "Px":F
    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v35, v0

    mul-float v4, v35, v18

    .line 430
    .restart local v4    # "Py":F
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    mul-float v36, v3, v19

    sub-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 431
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v35, v0

    mul-float v36, v4, v19

    sub-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 432
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    mul-float v35, v35, v4

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    mul-float v36, v36, v3

    sub-float v35, v35, v36

    mul-float v35, v35, v13

    sub-float v33, v33, v35

    .line 435
    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    mul-float v36, v3, v20

    add-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v26

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 436
    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v35, v0

    mul-float v36, v4, v20

    add-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v26

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 437
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    mul-float v35, v35, v4

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    mul-float v36, v36, v3

    sub-float v35, v35, v36

    mul-float v35, v35, v14

    add-float v34, v34, v35

    .line 750
    .end local v3    # "Px":F
    .end local v4    # "Py":F
    .end local v6    # "a":F
    .end local v9    # "dvx":F
    .end local v10    # "dvy":F
    .end local v18    # "lambda":F
    .end local v22    # "newImpulse":F
    .end local v28    # "vcp":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    .end local v29    # "vn":F
    :cond_386
    :goto_386
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v35, v0

    aget-object v35, v35, v15

    move/from16 v0, v33

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v35, v0

    aget-object v35, v35, v16

    move/from16 v0, v34

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 346
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 421
    .restart local v6    # "a":F
    .restart local v9    # "dvx":F
    .restart local v10    # "dvy":F
    .restart local v18    # "lambda":F
    .restart local v28    # "vcp":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    .restart local v29    # "vn":F
    :cond_3a6
    const/16 v22, 0x0

    goto/16 :goto_2e4

    .line 478
    .end local v6    # "a":F
    .end local v9    # "dvx":F
    .end local v10    # "dvy":F
    .end local v18    # "lambda":F
    .end local v28    # "vcp":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    .end local v29    # "vn":F
    :cond_3aa
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v7, v35, v36

    .line 479
    .local v7, "cp1":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v8, v35, v36

    .line 480
    .local v8, "cp2":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->a:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    iget v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->a:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    iget v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 483
    sget-boolean v35, Lorg/jbox2d/dynamics/contacts/ContactSolver;->$assertionsDisabled:Z

    if-nez v35, :cond_40c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->a:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-ltz v35, :cond_406

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->a:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-gez v35, :cond_40c

    :cond_406
    new-instance v35, Ljava/lang/AssertionError;

    invoke-direct/range {v35 .. v35}, Ljava/lang/AssertionError;-><init>()V

    throw v35

    .line 486
    :cond_40c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->dv1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move/from16 v0, v34

    neg-float v0, v0

    move/from16 v36, v0

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    mul-float v36, v36, v37

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v37, v0

    add-float v36, v36, v37

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v37, v0

    sub-float v36, v36, v37

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    mul-float v37, v37, v33

    add-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->dv1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    mul-float v36, v36, v34

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    add-float v36, v36, v37

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    sub-float v36, v36, v37

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v37, v0

    mul-float v37, v37, v33

    sub-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->dv2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move/from16 v0, v34

    neg-float v0, v0

    move/from16 v36, v0

    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    mul-float v36, v36, v37

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v37, v0

    add-float v36, v36, v37

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v37, v0

    sub-float v36, v36, v37

    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    mul-float v37, v37, v33

    add-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->dv2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    mul-float v36, v36, v34

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    add-float v36, v36, v37

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    sub-float v36, v36, v37

    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v37, v0

    mul-float v37, v37, v33

    sub-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->dv1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    mul-float v35, v35, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->dv1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    mul-float v36, v36, v37

    add-float v30, v35, v36

    .line 495
    .local v30, "vn1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->dv2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    mul-float v35, v35, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->dv2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    mul-float v36, v36, v37

    add-float v31, v35, v36

    .line 497
    .local v31, "vn2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->b:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    iget v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->velocityBias:F

    move/from16 v36, v0

    sub-float v36, v30, v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->b:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    iget v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->velocityBias:F

    move/from16 v36, v0

    sub-float v36, v31, v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 502
    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->K:Lorg/jbox2d/common/Mat22;

    .line 503
    .local v5, "R":Lorg/jbox2d/common/Mat22;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->b:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    iget-object v0, v5, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->a:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v38, v0

    mul-float v37, v37, v38

    iget-object v0, v5, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->a:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    add-float v37, v37, v38

    sub-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->b:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    iget-object v0, v5, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->a:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v38, v0

    mul-float v37, v37, v38

    iget-object v0, v5, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->a:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    add-float v37, v37, v38

    sub-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 520
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normalMass:Lorg/jbox2d/common/Mat22;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->b:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    invoke-static/range {v35 .. v37}, Lorg/jbox2d/common/Mat22;->mulToOutUnsafe(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    const/high16 v37, -0x40800000    # -1.0f

    mul-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    const/high16 v37, -0x40800000    # -1.0f

    mul-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-ltz v35, :cond_775

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-ltz v35, :cond_775

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->a:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 548
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-static/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v35

    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v36

    add-float v35, v35, v36

    mul-float v35, v35, v13

    sub-float v33, v33, v35

    .line 549
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-static/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v35

    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v36

    add-float v35, v35, v36

    mul-float v35, v35, v14

    add-float v34, v34, v35

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    move/from16 v0, v35

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v35, v0

    move/from16 v0, v35

    iput v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    goto/16 :goto_386

    .line 586
    :cond_775
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    iget v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalMass:F

    move/from16 v36, v0

    move/from16 v0, v36

    neg-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->b:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v37, v0

    mul-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 588
    const/16 v30, 0x0

    .line 589
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->K:Lorg/jbox2d/common/Mat22;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    mul-float v35, v35, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->b:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    add-float v31, v35, v36

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-ltz v35, :cond_908

    const/16 v35, 0x0

    cmpl-float v35, v31, v35

    if-ltz v35, :cond_908

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->a:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 615
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-static/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v35

    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v36

    add-float v35, v35, v36

    mul-float v35, v35, v13

    sub-float v33, v33, v35

    .line 616
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-static/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v35

    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v36

    add-float v35, v35, v36

    mul-float v35, v35, v14

    add-float v34, v34, v35

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    move/from16 v0, v35

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v35, v0

    move/from16 v0, v35

    iput v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    goto/16 :goto_386

    .line 648
    :cond_908
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    iget v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalMass:F

    move/from16 v36, v0

    move/from16 v0, v36

    neg-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->b:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    mul-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 650
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->K:Lorg/jbox2d/common/Mat22;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    mul-float v35, v35, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->b:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    add-float v30, v35, v36

    .line 651
    const/16 v31, 0x0

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-ltz v35, :cond_a9b

    const/16 v35, 0x0

    cmpl-float v35, v30, v35

    if-ltz v35, :cond_a9b

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->a:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 675
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-static/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v35

    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v36

    add-float v35, v35, v36

    mul-float v35, v35, v13

    sub-float v33, v33, v35

    .line 676
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-static/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v35

    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v36

    add-float v35, v35, v36

    mul-float v35, v35, v14

    add-float v34, v34, v35

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    move/from16 v0, v35

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v35, v0

    move/from16 v0, v35

    iput v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    goto/16 :goto_386

    .line 707
    :cond_a9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->b:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->b:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    .line 712
    const/16 v35, 0x0

    cmpl-float v35, v30, v35

    if-ltz v35, :cond_386

    const/16 v35, 0x0

    cmpl-float v35, v31, v35

    if-ltz v35, :cond_386

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->a:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->temp2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 734
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-static/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v35

    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v36

    add-float v35, v35, v36

    mul-float v35, v35, v13

    sub-float v33, v33, v35

    .line 735
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    invoke-static/range {v35 .. v36}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v35

    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->P2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v36

    add-float v35, v35, v36

    mul-float v35, v35, v14

    add-float v34, v34, v35

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v35, v0

    move/from16 v0, v35

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->x:Lorg/jbox2d/common/Vec2;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v35, v0

    move/from16 v0, v35

    iput v0, v8, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    goto/16 :goto_386

    .line 754
    .end local v5    # "R":Lorg/jbox2d/common/Mat22;
    .end local v7    # "cp1":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    .end local v8    # "cp2":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    .end local v11    # "friction":F
    .end local v13    # "iA":F
    .end local v14    # "iB":F
    .end local v15    # "indexA":I
    .end local v16    # "indexB":I
    .end local v17    # "j":I
    .end local v19    # "mA":F
    .end local v20    # "mB":F
    .end local v23    # "normal":Lorg/jbox2d/common/Vec2;
    .end local v24    # "pointCount":I
    .end local v25    # "vA":Lorg/jbox2d/common/Vec2;
    .end local v26    # "vB":Lorg/jbox2d/common/Vec2;
    .end local v27    # "vc":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
    .end local v30    # "vn1":F
    .end local v31    # "vn2":F
    .end local v33    # "wA":F
    .end local v34    # "wB":F
    :cond_bf5
    return-void
.end method

.method public storeImpulses()V
    .registers 7

    .prologue
    .line 757
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_count:I

    if-ge v0, v4, :cond_36

    .line 758
    iget-object v4, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    aget-object v3, v4, v0

    .line 759
    .local v3, "vc":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
    iget-object v4, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    iget v5, v3, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->contactIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifold()Lorg/jbox2d/collision/Manifold;

    move-result-object v2

    .line 761
    .local v2, "manifold":Lorg/jbox2d/collision/Manifold;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_14
    iget v4, v3, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->pointCount:I

    if-ge v1, v4, :cond_33

    .line 762
    iget-object v4, v2, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v4, v4, v1

    iget-object v5, v3, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    aget-object v5, v5, v1

    iget v5, v5, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    iput v5, v4, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 763
    iget-object v4, v2, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v4, v4, v1

    iget-object v5, v3, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    aget-object v5, v5, v1

    iget v5, v5, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->tangentImpulse:F

    iput v5, v4, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 757
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 766
    .end local v1    # "j":I
    .end local v2    # "manifold":Lorg/jbox2d/collision/Manifold;
    .end local v3    # "vc":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
    :cond_36
    return-void
.end method

.method public warmStart()V
    .registers 26

    .prologue
    .line 188
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_count:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v4, v0, :cond_15a

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    move-object/from16 v22, v0

    aget-object v18, v22, v4

    .line 191
    .local v18, "vc":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
    move-object/from16 v0, v18

    iget v7, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->indexA:I

    .line 192
    .local v7, "indexA":I
    move-object/from16 v0, v18

    iget v8, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->indexB:I

    .line 193
    .local v8, "indexB":I
    move-object/from16 v0, v18

    iget v10, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invMassA:F

    .line 194
    .local v10, "mA":F
    move-object/from16 v0, v18

    iget v5, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invIA:F

    .line 195
    .local v5, "iA":F
    move-object/from16 v0, v18

    iget v11, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invMassB:F

    .line 196
    .local v11, "mB":F
    move-object/from16 v0, v18

    iget v6, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->invIB:F

    .line 197
    .local v6, "iB":F
    move-object/from16 v0, v18

    iget v13, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->pointCount:I

    .line 199
    .local v13, "pointCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    .line 200
    .local v16, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v20, v0

    .line 201
    .local v20, "wA":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v22, v0

    aget-object v22, v22, v8

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    .line 202
    .local v17, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v22, v0

    aget-object v22, v22, v8

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v21, v0

    .line 204
    .local v21, "wB":F
    move-object/from16 v0, v18

    iget-object v12, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->normal:Lorg/jbox2d/common/Vec2;

    .line 205
    .local v12, "normal":Lorg/jbox2d/common/Vec2;
    const/high16 v22, 0x3f800000    # 1.0f

    iget v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v14, v22, v23

    .line 206
    .local v14, "tangentx":F
    const/high16 v22, -0x40800000    # -1.0f

    iget v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v15, v22, v23

    .line 208
    .local v15, "tangenty":F
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_7c
    if-ge v9, v13, :cond_13a

    .line 209
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    move-object/from16 v22, v0

    aget-object v19, v22, v9

    .line 210
    .local v19, "vcp":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->tangentImpulse:F

    move/from16 v22, v0

    mul-float v22, v22, v14

    iget v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v2, v22, v23

    .line 211
    .local v2, "Px":F
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->tangentImpulse:F

    move/from16 v22, v0

    mul-float v22, v22, v15

    iget v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v3, v22, v23

    .line 213
    .local v3, "Py":F
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v22, v22, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v2

    sub-float v22, v22, v23

    mul-float v22, v22, v5

    sub-float v20, v20, v22

    .line 214
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v23, v2, v10

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 215
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v23, v3, v10

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 216
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v22, v22, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v2

    sub-float v22, v22, v23

    mul-float v22, v22, v6

    add-float v21, v21, v22

    .line 217
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v23, v2, v11

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 218
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v23, v3, v11

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 208
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7c

    .line 220
    .end local v2    # "Px":F
    .end local v3    # "Py":F
    .end local v19    # "vcp":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
    :cond_13a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    move/from16 v0, v20

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v22, v0

    aget-object v22, v22, v8

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 188
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 223
    .end local v5    # "iA":F
    .end local v6    # "iB":F
    .end local v7    # "indexA":I
    .end local v8    # "indexB":I
    .end local v9    # "j":I
    .end local v10    # "mA":F
    .end local v11    # "mB":F
    .end local v12    # "normal":Lorg/jbox2d/common/Vec2;
    .end local v13    # "pointCount":I
    .end local v14    # "tangentx":F
    .end local v15    # "tangenty":F
    .end local v16    # "vA":Lorg/jbox2d/common/Vec2;
    .end local v17    # "vB":Lorg/jbox2d/common/Vec2;
    .end local v18    # "vc":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
    .end local v20    # "wA":F
    .end local v21    # "wB":F
    :cond_15a
    return-void
.end method

###### Class org.jbox2d.dynamics.contacts.ContactSolver.ContactSolverDef (org.jbox2d.dynamics.contacts.ContactSolver$ContactSolverDef)
.class public Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;
.super Ljava/lang/Object;
.source "ContactSolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/dynamics/contacts/ContactSolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactSolverDef"
.end annotation


# instance fields
.field public contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

.field public count:I

.field public positions:[Lorg/jbox2d/dynamics/contacts/Position;

.field public step:Lorg/jbox2d/dynamics/TimeStep;

.field public velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
