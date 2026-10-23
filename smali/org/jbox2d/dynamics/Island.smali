###### Class org.jbox2d.dynamics.Island (org.jbox2d.dynamics.Island)
.class public Lorg/jbox2d/dynamics/Island;
.super Ljava/lang/Object;
.source "Island.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final contactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

.field private final impulse:Lorg/jbox2d/callbacks/ContactImpulse;

.field public m_bodies:[Lorg/jbox2d/dynamics/Body;

.field public m_bodyCapacity:I

.field public m_bodyCount:I

.field public m_contactCapacity:I

.field public m_contactCount:I

.field public m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

.field public m_jointCapacity:I

.field public m_jointCount:I

.field public m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

.field public m_listener:Lorg/jbox2d/callbacks/ContactListener;

.field public m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

.field public m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

.field private final solverData:Lorg/jbox2d/dynamics/SolverData;

.field private final solverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

.field private final timer:Lorg/jbox2d/common/Timer;

.field private final toiContactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

.field private final toiSolverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 163
    const-class v0, Lorg/jbox2d/dynamics/Island;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/Island;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/ContactSolver;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Island;->contactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

    .line 236
    new-instance v0, Lorg/jbox2d/common/Timer;

    invoke-direct {v0}, Lorg/jbox2d/common/Timer;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Island;->timer:Lorg/jbox2d/common/Timer;

    .line 237
    new-instance v0, Lorg/jbox2d/dynamics/SolverData;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/SolverData;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Island;->solverData:Lorg/jbox2d/dynamics/SolverData;

    .line 238
    new-instance v0, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Island;->solverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    .line 430
    new-instance v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/ContactSolver;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Island;->toiContactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

    .line 431
    new-instance v0, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Island;->toiSolverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    .line 580
    new-instance v0, Lorg/jbox2d/callbacks/ContactImpulse;

    invoke-direct {v0}, Lorg/jbox2d/callbacks/ContactImpulse;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Island;->impulse:Lorg/jbox2d/callbacks/ContactImpulse;

    .line 184
    return-void
.end method


# virtual methods
.method public add(Lorg/jbox2d/dynamics/Body;)V
    .registers 4
    .param p1, "body"    # Lorg/jbox2d/dynamics/Body;

    .prologue
    .line 564
    sget-boolean v0, Lorg/jbox2d/dynamics/Island;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    iget v0, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    iget v1, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCapacity:I

    if-lt v0, v1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 565
    :cond_10
    iget v0, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    iput v0, p1, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    .line 566
    iget-object v0, p0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    iget v1, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    aput-object p1, v0, v1

    .line 567
    iget v0, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    .line 568
    return-void
.end method

.method public add(Lorg/jbox2d/dynamics/contacts/Contact;)V
    .registers 5
    .param p1, "contact"    # Lorg/jbox2d/dynamics/contacts/Contact;

    .prologue
    .line 571
    sget-boolean v0, Lorg/jbox2d/dynamics/Island;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    iget v0, p0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    iget v1, p0, Lorg/jbox2d/dynamics/Island;->m_contactCapacity:I

    if-lt v0, v1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 572
    :cond_10
    iget-object v0, p0, Lorg/jbox2d/dynamics/Island;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    iget v1, p0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    aput-object p1, v0, v1

    .line 573
    return-void
.end method

.method public add(Lorg/jbox2d/dynamics/joints/Joint;)V
    .registers 5
    .param p1, "joint"    # Lorg/jbox2d/dynamics/joints/Joint;

    .prologue
    .line 576
    sget-boolean v0, Lorg/jbox2d/dynamics/Island;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    iget v0, p0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    iget v1, p0, Lorg/jbox2d/dynamics/Island;->m_jointCapacity:I

    if-lt v0, v1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 577
    :cond_10
    iget-object v0, p0, Lorg/jbox2d/dynamics/Island;->m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

    iget v1, p0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    aput-object p1, v0, v1

    .line 578
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    .line 231
    iput v0, p0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    .line 232
    iput v0, p0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    .line 233
    return-void
.end method

.method public init(IIILorg/jbox2d/callbacks/ContactListener;)V
    .registers 10
    .param p1, "bodyCapacity"    # I
    .param p2, "contactCapacity"    # I
    .param p3, "jointCapacity"    # I
    .param p4, "listener"    # Lorg/jbox2d/callbacks/ContactListener;

    .prologue
    const/4 v4, 0x0

    .line 189
    iput p1, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCapacity:I

    .line 190
    iput p2, p0, Lorg/jbox2d/dynamics/Island;->m_contactCapacity:I

    .line 191
    iput p3, p0, Lorg/jbox2d/dynamics/Island;->m_jointCapacity:I

    .line 192
    iput v4, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    .line 193
    iput v4, p0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    .line 194
    iput v4, p0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    .line 196
    iput-object p4, p0, Lorg/jbox2d/dynamics/Island;->m_listener:Lorg/jbox2d/callbacks/ContactListener;

    .line 198
    iget-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    if-eqz v2, :cond_1a

    iget v2, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCapacity:I

    iget-object v3, p0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v3, v3

    if-le v2, v3, :cond_20

    .line 199
    :cond_1a
    iget v2, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCapacity:I

    new-array v2, v2, [Lorg/jbox2d/dynamics/Body;

    iput-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    .line 201
    :cond_20
    iget-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

    if-eqz v2, :cond_2b

    iget v2, p0, Lorg/jbox2d/dynamics/Island;->m_jointCapacity:I

    iget-object v3, p0, Lorg/jbox2d/dynamics/Island;->m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

    array-length v3, v3

    if-le v2, v3, :cond_31

    .line 202
    :cond_2b
    iget v2, p0, Lorg/jbox2d/dynamics/Island;->m_jointCapacity:I

    new-array v2, v2, [Lorg/jbox2d/dynamics/joints/Joint;

    iput-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

    .line 204
    :cond_31
    iget-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    if-eqz v2, :cond_3c

    iget v2, p0, Lorg/jbox2d/dynamics/Island;->m_contactCapacity:I

    iget-object v3, p0, Lorg/jbox2d/dynamics/Island;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    array-length v3, v3

    if-le v2, v3, :cond_42

    .line 205
    :cond_3c
    iget v2, p0, Lorg/jbox2d/dynamics/Island;->m_contactCapacity:I

    new-array v2, v2, [Lorg/jbox2d/dynamics/contacts/Contact;

    iput-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    .line 209
    :cond_42
    iget-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    if-eqz v2, :cond_4d

    iget v2, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCapacity:I

    iget-object v3, p0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    array-length v3, v3

    if-le v2, v3, :cond_74

    .line 210
    :cond_4d
    iget-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    if-nez v2, :cond_71

    new-array v1, v4, [Lorg/jbox2d/dynamics/contacts/Velocity;

    .line 211
    .local v1, "old":[Lorg/jbox2d/dynamics/contacts/Velocity;
    :goto_53
    iget v2, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCapacity:I

    new-array v2, v2, [Lorg/jbox2d/dynamics/contacts/Velocity;

    iput-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    .line 212
    iget-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    array-length v0, v1

    .local v0, "i":I
    :goto_60
    iget-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    array-length v2, v2

    if-ge v0, v2, :cond_74

    .line 214
    iget-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    new-instance v3, Lorg/jbox2d/dynamics/contacts/Velocity;

    invoke-direct {v3}, Lorg/jbox2d/dynamics/contacts/Velocity;-><init>()V

    aput-object v3, v2, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 210
    .end local v0    # "i":I
    .end local v1    # "old":[Lorg/jbox2d/dynamics/contacts/Velocity;
    :cond_71
    iget-object v1, p0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    goto :goto_53

    .line 219
    :cond_74
    iget-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    if-eqz v2, :cond_7f

    iget v2, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCapacity:I

    iget-object v3, p0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    array-length v3, v3

    if-le v2, v3, :cond_a6

    .line 220
    :cond_7f
    iget-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    if-nez v2, :cond_a3

    new-array v1, v4, [Lorg/jbox2d/dynamics/contacts/Position;

    .line 221
    .local v1, "old":[Lorg/jbox2d/dynamics/contacts/Position;
    :goto_85
    iget v2, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCapacity:I

    new-array v2, v2, [Lorg/jbox2d/dynamics/contacts/Position;

    iput-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    .line 222
    iget-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    array-length v0, v1

    .restart local v0    # "i":I
    :goto_92
    iget-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    array-length v2, v2

    if-ge v0, v2, :cond_a6

    .line 224
    iget-object v2, p0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    new-instance v3, Lorg/jbox2d/dynamics/contacts/Position;

    invoke-direct {v3}, Lorg/jbox2d/dynamics/contacts/Position;-><init>()V

    aput-object v3, v2, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    .line 220
    .end local v0    # "i":I
    .end local v1    # "old":[Lorg/jbox2d/dynamics/contacts/Position;
    :cond_a3
    iget-object v1, p0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    goto :goto_85

    .line 227
    :cond_a6
    return-void
.end method

.method public report([Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;)V
    .registers 8
    .param p1, "constraints"    # [Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    .prologue
    .line 583
    iget-object v4, p0, Lorg/jbox2d/dynamics/Island;->m_listener:Lorg/jbox2d/callbacks/ContactListener;

    if-nez v4, :cond_5

    .line 599
    :cond_4
    return-void

    .line 587
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v4, p0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    if-ge v1, v4, :cond_4

    .line 588
    iget-object v4, p0, Lorg/jbox2d/dynamics/Island;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    aget-object v0, v4, v1

    .line 590
    .local v0, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    aget-object v3, p1, v1

    .line 591
    .local v3, "vc":Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;
    iget-object v4, p0, Lorg/jbox2d/dynamics/Island;->impulse:Lorg/jbox2d/callbacks/ContactImpulse;

    iget v5, v3, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->pointCount:I

    iput v5, v4, Lorg/jbox2d/callbacks/ContactImpulse;->count:I

    .line 592
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_17
    iget v4, v3, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->pointCount:I

    if-ge v2, v4, :cond_36

    .line 593
    iget-object v4, p0, Lorg/jbox2d/dynamics/Island;->impulse:Lorg/jbox2d/callbacks/ContactImpulse;

    iget-object v4, v4, Lorg/jbox2d/callbacks/ContactImpulse;->normalImpulses:[F

    iget-object v5, v3, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    aget-object v5, v5, v2

    iget v5, v5, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->normalImpulse:F

    aput v5, v4, v2

    .line 594
    iget-object v4, p0, Lorg/jbox2d/dynamics/Island;->impulse:Lorg/jbox2d/callbacks/ContactImpulse;

    iget-object v4, v4, Lorg/jbox2d/callbacks/ContactImpulse;->tangentImpulses:[F

    iget-object v5, v3, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;

    aget-object v5, v5, v2

    iget v5, v5, Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;->tangentImpulse:F

    aput v5, v4, v2

    .line 592
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 597
    :cond_36
    iget-object v4, p0, Lorg/jbox2d/dynamics/Island;->m_listener:Lorg/jbox2d/callbacks/ContactListener;

    iget-object v5, p0, Lorg/jbox2d/dynamics/Island;->impulse:Lorg/jbox2d/callbacks/ContactImpulse;

    invoke-interface {v4, v0, v5}, Lorg/jbox2d/callbacks/ContactListener;->postSolve(Lorg/jbox2d/dynamics/contacts/Contact;Lorg/jbox2d/callbacks/ContactImpulse;)V

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public solve(Lorg/jbox2d/dynamics/Profile;Lorg/jbox2d/dynamics/TimeStep;Lorg/jbox2d/common/Vec2;Z)V
    .registers 32
    .param p1, "profile"    # Lorg/jbox2d/dynamics/Profile;
    .param p2, "step"    # Lorg/jbox2d/dynamics/TimeStep;
    .param p3, "gravity"    # Lorg/jbox2d/common/Vec2;
    .param p4, "allowSleep"    # Z

    .prologue
    .line 243
    move-object/from16 v0, p2

    iget v9, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    .line 246
    .local v9, "h":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_194

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v23, v0

    aget-object v5, v23, v10

    .line 248
    .local v5, "b":Lorg/jbox2d/dynamics/Body;
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v7, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    .line 249
    .local v7, "c":Lorg/jbox2d/common/Vec2;
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v2, v0, Lorg/jbox2d/common/Sweep;->a:F

    .line 250
    .local v2, "a":F
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    .line 251
    .local v21, "v":Lorg/jbox2d/common/Vec2;
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v22, v0

    .line 254
    .local v22, "w":F
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 255
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v23, v0

    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a0:F

    .line 257
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v23, v0

    sget-object v24, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_112

    .line 260
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_gravityScale:F

    move/from16 v24, v0

    move-object/from16 v0, p3

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v25, v0

    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    mul-float v24, v24, v9

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 261
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_gravityScale:F

    move/from16 v24, v0

    move-object/from16 v0, p3

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v25, v0

    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    mul-float v24, v24, v9

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 262
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v23, v0

    mul-float v23, v23, v9

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_torque:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    .line 272
    const/high16 v23, 0x3f800000    # 1.0f

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_linearDamping:F

    move/from16 v24, v0

    mul-float v24, v24, v9

    sub-float v23, v23, v24

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-static/range {v23 .. v25}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v3

    .line 273
    .local v3, "a1":F
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v3

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 274
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v3

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 275
    const/high16 v23, 0x3f800000    # 1.0f

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_angularDamping:F

    move/from16 v24, v0

    mul-float v24, v24, v9

    sub-float v23, v23, v24

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-static/range {v23 .. v25}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v23

    mul-float v22, v22, v23

    .line 278
    .end local v3    # "a1":F
    :cond_112
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iput v2, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move/from16 v0, v22

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 246
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 286
    .end local v2    # "a":F
    .end local v5    # "b":Lorg/jbox2d/dynamics/Body;
    .end local v7    # "c":Lorg/jbox2d/common/Vec2;
    .end local v21    # "v":Lorg/jbox2d/common/Vec2;
    .end local v22    # "w":F
    :cond_194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->timer:Lorg/jbox2d/common/Timer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/jbox2d/common/Timer;->reset()V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->solverData:Lorg/jbox2d/dynamics/SolverData;

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->solverData:Lorg/jbox2d/dynamics/SolverData;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->solverData:Lorg/jbox2d/dynamics/SolverData;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->solverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->step:Lorg/jbox2d/dynamics/TimeStep;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->solverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->solverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->count:I

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->solverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->solverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->contactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->solverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->init(Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->contactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->initializeVelocityConstraints()V

    .line 304
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    move/from16 v23, v0

    if-eqz v23, :cond_24a

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->contactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->warmStart()V

    .line 309
    :cond_24a
    const/4 v10, 0x0

    :goto_24b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_269

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->solverData:Lorg/jbox2d/dynamics/SolverData;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/dynamics/joints/Joint;->initVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V

    .line 309
    add-int/lit8 v10, v10, 0x1

    goto :goto_24b

    .line 313
    :cond_269
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->timer:Lorg/jbox2d/common/Timer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/jbox2d/common/Timer;->getMilliseconds()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/dynamics/Profile;->solveInit:F

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->timer:Lorg/jbox2d/common/Timer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/jbox2d/common/Timer;->reset()V

    .line 318
    const/4 v10, 0x0

    :goto_283
    move-object/from16 v0, p2

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->velocityIterations:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_2b8

    .line 319
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_28e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_2ac

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v23, v0

    aget-object v23, v23, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->solverData:Lorg/jbox2d/dynamics/SolverData;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/dynamics/joints/Joint;->solveVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V

    .line 319
    add-int/lit8 v11, v11, 0x1

    goto :goto_28e

    .line 323
    :cond_2ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->contactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->solveVelocityConstraints()V

    .line 318
    add-int/lit8 v10, v10, 0x1

    goto :goto_283

    .line 327
    .end local v11    # "j":I
    :cond_2b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->contactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->storeImpulses()V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->timer:Lorg/jbox2d/common/Timer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/jbox2d/common/Timer;->getMilliseconds()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/dynamics/Profile;->solveVelocity:F

    .line 331
    const/4 v10, 0x0

    :goto_2d2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_3b1

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget-object v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 333
    .restart local v7    # "c":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v2, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 334
    .restart local v2    # "a":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    .line 335
    .restart local v21    # "v":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v22, v0

    .line 338
    .restart local v22    # "w":F
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v19, v23, v9

    .line 339
    .local v19, "translationx":F
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v20, v23, v9

    .line 341
    .local v20, "translationy":F
    mul-float v23, v19, v19

    mul-float v24, v20, v20

    add-float v23, v23, v24

    const/high16 v24, 0x40800000    # 4.0f

    cmpl-float v23, v23, v24

    if-lez v23, :cond_356

    .line 342
    const/high16 v23, 0x40000000    # 2.0f

    mul-float v24, v19, v19

    mul-float v25, v20, v20

    add-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lorg/jbox2d/common/MathUtils;->sqrt(F)F

    move-result v24

    div-float v17, v23, v24

    .line 344
    .local v17, "ratio":F
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v17

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 345
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v17

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 348
    .end local v17    # "ratio":F
    :cond_356
    mul-float v18, v9, v22

    .line 349
    .local v18, "rotation":F
    mul-float v23, v18, v18

    sget v24, Lorg/jbox2d/common/Settings;->maxRotationSquared:F

    cmpl-float v23, v23, v24

    if-lez v23, :cond_36b

    .line 350
    const v23, 0x3fc90fdb

    invoke-static/range {v18 .. v18}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v24

    div-float v17, v23, v24

    .line 351
    .restart local v17    # "ratio":F
    mul-float v22, v22, v17

    .line 355
    .end local v17    # "ratio":F
    :cond_36b
    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v24, v24, v9

    add-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    .line 356
    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v24, v24, v9

    add-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    .line 357
    mul-float v23, v9, v22

    add-float v2, v2, v23

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iput v2, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move/from16 v0, v22

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 331
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2d2

    .line 364
    .end local v2    # "a":F
    .end local v7    # "c":Lorg/jbox2d/common/Vec2;
    .end local v18    # "rotation":F
    .end local v19    # "translationx":F
    .end local v20    # "translationy":F
    .end local v21    # "v":Lorg/jbox2d/common/Vec2;
    .end local v22    # "w":F
    :cond_3b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->timer:Lorg/jbox2d/common/Timer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/jbox2d/common/Timer;->reset()V

    .line 365
    const/16 v16, 0x0

    .line 366
    .local v16, "positionSolved":Z
    const/4 v10, 0x0

    :goto_3bd
    move-object/from16 v0, p2

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->positionIterations:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_3ff

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->contactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->solvePositionConstraints()Z

    move-result v8

    .line 369
    .local v8, "contactsOkay":Z
    const/4 v13, 0x1

    .line 370
    .local v13, "jointsOkay":Z
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_3d3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_3f9

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v23, v0

    aget-object v23, v23, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->solverData:Lorg/jbox2d/dynamics/SolverData;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/dynamics/joints/Joint;->solvePositionConstraints(Lorg/jbox2d/dynamics/SolverData;)Z

    move-result v12

    .line 372
    .local v12, "jointOkay":Z
    if-eqz v13, :cond_3f7

    if-eqz v12, :cond_3f7

    const/4 v13, 0x1

    .line 370
    :goto_3f4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3d3

    .line 372
    :cond_3f7
    const/4 v13, 0x0

    goto :goto_3f4

    .line 375
    .end local v12    # "jointOkay":Z
    :cond_3f9
    if-eqz v8, :cond_4c7

    if-eqz v13, :cond_4c7

    .line 377
    const/16 v16, 0x1

    .line 383
    .end local v8    # "contactsOkay":Z
    .end local v11    # "j":I
    .end local v13    # "jointsOkay":Z
    :cond_3ff
    const/4 v10, 0x0

    :goto_400
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_4cb

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v23, v0

    aget-object v6, v23, v10

    .line 385
    .local v6, "body":Lorg/jbox2d/dynamics/Body;
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 386
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 387
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 388
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 389
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 391
    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 383
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_400

    .line 366
    .end local v6    # "body":Lorg/jbox2d/dynamics/Body;
    .restart local v8    # "contactsOkay":Z
    .restart local v11    # "j":I
    .restart local v13    # "jointsOkay":Z
    :cond_4c7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3bd

    .line 394
    .end local v8    # "contactsOkay":Z
    .end local v11    # "j":I
    .end local v13    # "jointsOkay":Z
    :cond_4cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->timer:Lorg/jbox2d/common/Timer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/jbox2d/common/Timer;->getMilliseconds()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/dynamics/Profile;->solvePosition:F

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->contactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Island;->report([Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;)V

    .line 398
    if-eqz p4, :cond_589

    .line 399
    const v15, 0x7f7fffff    # Float.MAX_VALUE

    .line 401
    .local v15, "minSleepTime":F
    const v14, 0x38d1b717    # 1.0E-4f

    .line 402
    .local v14, "linTolSqr":F
    const v4, 0x3a9fb511

    .line 404
    .local v4, "angTolSqr":F
    const/4 v10, 0x0

    :goto_4fa
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_564

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v23, v0

    aget-object v5, v23, v10

    .line 406
    .restart local v5    # "b":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getType()Lorg/jbox2d/dynamics/BodyType;

    move-result-object v23

    sget-object v24, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_51b

    .line 404
    :goto_518
    add-int/lit8 v10, v10, 0x1

    goto :goto_4fa

    .line 410
    :cond_51b
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x4

    if-eqz v23, :cond_547

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v23, v0

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    const v24, 0x3a9fb511

    cmpl-float v23, v23, v24

    if-gtz v23, :cond_547

    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v23

    const v24, 0x38d1b717    # 1.0E-4f

    cmpl-float v23, v23, v24

    if-lez v23, :cond_54f

    .line 413
    :cond_547
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v5, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    .line 414
    const/4 v15, 0x0

    goto :goto_518

    .line 416
    :cond_54f
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    move/from16 v23, v0

    add-float v23, v23, v9

    move/from16 v0, v23

    iput v0, v5, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    .line 417
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v15, v0}, Lorg/jbox2d/common/MathUtils;->min(FF)F

    move-result v15

    goto :goto_518

    .line 421
    .end local v5    # "b":Lorg/jbox2d/dynamics/Body;
    :cond_564
    const/high16 v23, 0x3f000000    # 0.5f

    cmpl-float v23, v15, v23

    if-ltz v23, :cond_589

    if-eqz v16, :cond_589

    .line 422
    const/4 v10, 0x0

    :goto_56d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_589

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v23, v0

    aget-object v5, v23, v10

    .line 424
    .restart local v5    # "b":Lorg/jbox2d/dynamics/Body;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 422
    add-int/lit8 v10, v10, 0x1

    goto :goto_56d

    .line 428
    .end local v4    # "angTolSqr":F
    .end local v5    # "b":Lorg/jbox2d/dynamics/Body;
    .end local v14    # "linTolSqr":F
    .end local v15    # "minSleepTime":F
    :cond_589
    return-void
.end method

.method public solveTOI(Lorg/jbox2d/dynamics/TimeStep;II)V
    .registers 21
    .param p1, "subStep"    # Lorg/jbox2d/dynamics/TimeStep;
    .param p2, "toiIndexA"    # I
    .param p3, "toiIndexB"    # I

    .prologue
    .line 434
    sget-boolean v14, Lorg/jbox2d/dynamics/Island;->$assertionsDisabled:Z

    if-nez v14, :cond_12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    move/from16 v0, p2

    if-lt v0, v14, :cond_12

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 435
    :cond_12
    sget-boolean v14, Lorg/jbox2d/dynamics/Island;->$assertionsDisabled:Z

    if-nez v14, :cond_24

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    move/from16 v0, p3

    if-lt v0, v14, :cond_24

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 438
    :cond_24
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_25
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    if-ge v7, v14, :cond_a4

    .line 439
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v14, v14, v7

    iget-object v14, v14, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v15, v15, v7

    iget-object v15, v15, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v15, v15, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->x:F

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 440
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v14, v14, v7

    iget-object v14, v14, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v15, v15, v7

    iget-object v15, v15, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v15, v15, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->y:F

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 441
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v14, v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v15, v15, v7

    iget-object v15, v15, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v15, v15, Lorg/jbox2d/common/Sweep;->a:F

    iput v15, v14, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 442
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    aget-object v14, v14, v7

    iget-object v14, v14, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v15, v15, v7

    iget-object v15, v15, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->x:F

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 443
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    aget-object v14, v14, v7

    iget-object v14, v14, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v15, v15, v7

    iget-object v15, v15, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->y:F

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 444
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    aget-object v14, v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v15, v15, v7

    iget v15, v15, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iput v15, v14, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 438
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 447
    :cond_a4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->toiSolverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    iput-object v15, v14, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->toiSolverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    iput v15, v14, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->count:I

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->toiSolverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    move-object/from16 v0, p1

    iput-object v0, v14, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->step:Lorg/jbox2d/dynamics/TimeStep;

    .line 450
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->toiSolverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    iput-object v15, v14, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->toiSolverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iput-object v15, v14, Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    .line 452
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->toiContactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->toiSolverDef:Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;

    invoke-virtual {v14, v15}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->init(Lorg/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;)V

    .line 455
    const/4 v7, 0x0

    :goto_e0
    move-object/from16 v0, p1

    iget v14, v0, Lorg/jbox2d/dynamics/TimeStep;->positionIterations:I

    if-ge v7, v14, :cond_f4

    .line 456
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->toiContactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v14, v0, v1}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->solveTOIPositionConstraints(II)Z

    move-result v5

    .line 457
    .local v5, "contactsOkay":Z
    if-eqz v5, :cond_171

    .line 495
    .end local v5    # "contactsOkay":Z
    :cond_f4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v14, v14, p2

    iget-object v14, v14, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v14, v14, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v15, v15, p2

    iget-object v15, v15, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->x:F

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v14, v14, p2

    iget-object v14, v14, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v14, v14, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v15, v15, p2

    iget-object v15, v15, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->y:F

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 497
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v14, v14, p2

    iget-object v14, v14, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v15, v15, p2

    iget v15, v15, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    iput v15, v14, Lorg/jbox2d/common/Sweep;->a0:F

    .line 498
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v14, v14, p3

    iget-object v14, v14, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v14, v14, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v15, v15, p3

    iget-object v15, v15, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v14, v15}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 499
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v14, v14, p3

    iget-object v14, v14, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v15, v15, p3

    iget v15, v15, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    iput v15, v14, Lorg/jbox2d/common/Sweep;->a0:F

    .line 503
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->toiContactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

    invoke-virtual {v14}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->initializeVelocityConstraints()V

    .line 506
    const/4 v7, 0x0

    :goto_161
    move-object/from16 v0, p1

    iget v14, v0, Lorg/jbox2d/dynamics/TimeStep;->velocityIterations:I

    if-ge v7, v14, :cond_175

    .line 507
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->toiContactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

    invoke-virtual {v14}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->solveVelocityConstraints()V

    .line 506
    add-int/lit8 v7, v7, 0x1

    goto :goto_161

    .line 455
    .restart local v5    # "contactsOkay":Z
    :cond_171
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_e0

    .line 513
    .end local v5    # "contactsOkay":Z
    :cond_175
    move-object/from16 v0, p1

    iget v6, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    .line 516
    .local v6, "h":F
    const/4 v7, 0x0

    :goto_17a
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    if-ge v7, v14, :cond_25a

    .line 517
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v14, v14, v7

    iget-object v4, v14, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 518
    .local v4, "c":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v14, v14, v7

    iget v2, v14, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 519
    .local v2, "a":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    aget-object v14, v14, v7

    iget-object v12, v14, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 520
    .local v12, "v":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    aget-object v14, v14, v7

    iget v13, v14, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 523
    .local v13, "w":F
    iget v14, v12, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v10, v14, v6

    .line 524
    .local v10, "translationx":F
    iget v14, v12, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v11, v14, v6

    .line 525
    .local v11, "translationy":F
    mul-float v14, v10, v10

    mul-float v15, v11, v11

    add-float/2addr v14, v15

    const/high16 v15, 0x40800000    # 4.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1c4

    .line 526
    const/high16 v14, 0x40000000    # 2.0f

    mul-float v15, v10, v10

    mul-float v16, v11, v11

    add-float v15, v15, v16

    invoke-static {v15}, Lorg/jbox2d/common/MathUtils;->sqrt(F)F

    move-result v15

    div-float v8, v14, v15

    .line 528
    .local v8, "ratio":F
    invoke-virtual {v12, v8}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 531
    .end local v8    # "ratio":F
    :cond_1c4
    mul-float v9, v6, v13

    .line 532
    .local v9, "rotation":F
    mul-float v14, v9, v9

    sget v15, Lorg/jbox2d/common/Settings;->maxRotationSquared:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1d8

    .line 533
    const v14, 0x3fc90fdb

    invoke-static {v9}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v15

    div-float v8, v14, v15

    .line 534
    .restart local v8    # "ratio":F
    mul-float/2addr v13, v8

    .line 538
    .end local v8    # "ratio":F
    :cond_1d8
    iget v14, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget v15, v12, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v15, v6

    add-float/2addr v14, v15

    iput v14, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 539
    iget v14, v4, Lorg/jbox2d/common/Vec2;->y:F

    iget v15, v12, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v15, v6

    add-float/2addr v14, v15

    iput v14, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 540
    mul-float v14, v6, v13

    add-float/2addr v2, v14

    .line 542
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v14, v14, v7

    iget-object v14, v14, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    iget v15, v4, Lorg/jbox2d/common/Vec2;->x:F

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 543
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v14, v14, v7

    iget-object v14, v14, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    iget v15, v4, Lorg/jbox2d/common/Vec2;->y:F

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 544
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_positions:[Lorg/jbox2d/dynamics/contacts/Position;

    aget-object v14, v14, v7

    iput v2, v14, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 545
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    aget-object v14, v14, v7

    iget-object v14, v14, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    iget v15, v12, Lorg/jbox2d/common/Vec2;->x:F

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 546
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    aget-object v14, v14, v7

    iget-object v14, v14, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    iget v15, v12, Lorg/jbox2d/common/Vec2;->y:F

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 547
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    aget-object v14, v14, v7

    iput v13, v14, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 550
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v3, v14, v7

    .line 551
    .local v3, "body":Lorg/jbox2d/dynamics/Body;
    iget-object v14, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v14, v14, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v15, v4, Lorg/jbox2d/common/Vec2;->x:F

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 552
    iget-object v14, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v14, v14, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v15, v4, Lorg/jbox2d/common/Vec2;->y:F

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 553
    iget-object v14, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iput v2, v14, Lorg/jbox2d/common/Sweep;->a:F

    .line 554
    iget-object v14, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v15, v12, Lorg/jbox2d/common/Vec2;->x:F

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 555
    iget-object v14, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v15, v12, Lorg/jbox2d/common/Vec2;->y:F

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 556
    iput v13, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 557
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 516
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_17a

    .line 560
    .end local v2    # "a":F
    .end local v3    # "body":Lorg/jbox2d/dynamics/Body;
    .end local v4    # "c":Lorg/jbox2d/common/Vec2;
    .end local v9    # "rotation":F
    .end local v10    # "translationx":F
    .end local v11    # "translationy":F
    .end local v12    # "v":Lorg/jbox2d/common/Vec2;
    .end local v13    # "w":F
    :cond_25a
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/Island;->toiContactSolver:Lorg/jbox2d/dynamics/contacts/ContactSolver;

    iget-object v14, v14, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_velocityConstraints:[Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/jbox2d/dynamics/Island;->report([Lorg/jbox2d/dynamics/contacts/ContactVelocityConstraint;)V

    .line 561
    return-void
.end method
