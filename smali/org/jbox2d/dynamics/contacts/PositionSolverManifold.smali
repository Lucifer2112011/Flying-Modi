###### Class org.jbox2d.dynamics.contacts.PositionSolverManifold (org.jbox2d.dynamics.contacts.PositionSolverManifold)
.class Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;
.super Ljava/lang/Object;
.source "ContactSolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/dynamics/contacts/PositionSolverManifold$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final normal:Lorg/jbox2d/common/Vec2;

.field public final point:Lorg/jbox2d/common/Vec2;

.field public separation:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 993
    const-class v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    .line 996
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->point:Lorg/jbox2d/common/Vec2;

    return-void
.end method


# virtual methods
.method public initialize(Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;I)V
    .registers 28
    .param p1, "pc"    # Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;
    .param p2, "xfA"    # Lorg/jbox2d/common/Transform;
    .param p3, "xfB"    # Lorg/jbox2d/common/Transform;
    .param p4, "index"    # I

    .prologue
    .line 1000
    sget-boolean v19, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->$assertionsDisabled:Z

    if-nez v19, :cond_12

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->pointCount:I

    move/from16 v19, v0

    if-gtz v19, :cond_12

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 1002
    :cond_12
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v17, v0

    .line 1003
    .local v17, "xfAq":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v18, v0

    .line 1004
    .local v18, "xfBq":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localPoints:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    aget-object v7, v19, p4

    .line 1005
    .local v7, "pcLocalPointsI":Lorg/jbox2d/common/Vec2;
    sget-object v19, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold$1;->$SwitchMap$org$jbox2d$collision$Manifold$ManifoldType:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/jbox2d/collision/Manifold$ManifoldType;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_41a

    .line 1088
    :goto_37
    return-void

    .line 1015
    :pswitch_38
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localPoint:Lorg/jbox2d/common/Vec2;

    .line 1016
    .local v10, "plocalPoint":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localPoints:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v4, v19, v20

    .line 1017
    .local v4, "pLocalPoints0":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v19, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v20, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    add-float v11, v19, v20

    .line 1018
    .local v11, "pointAx":F
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v19, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v20, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    add-float v12, v19, v20

    .line 1019
    .local v12, "pointAy":F
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v19, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v20, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    add-float v13, v19, v20

    .line 1020
    .local v13, "pointBx":F
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v19, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v20, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    add-float v14, v19, v20

    .line 1021
    .local v14, "pointBy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    sub-float v20, v13, v11

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    sub-float v20, v14, v12

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->point:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    add-float v20, v11, v13

    const/high16 v21, 0x3f000000    # 0.5f

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->point:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    add-float v20, v12, v14

    const/high16 v21, 0x3f000000    # 0.5f

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1027
    sub-float v15, v13, v11

    .line 1028
    .local v15, "tempx":F
    sub-float v16, v14, v12

    .line 1029
    .local v16, "tempy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    mul-float v20, v20, v16

    add-float v19, v19, v20

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->radiusA:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->radiusB:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->separation:F

    goto/16 :goto_37

    .line 1041
    .end local v4    # "pLocalPoints0":Lorg/jbox2d/common/Vec2;
    .end local v10    # "plocalPoint":Lorg/jbox2d/common/Vec2;
    .end local v11    # "pointAx":F
    .end local v12    # "pointAy":F
    .end local v13    # "pointBx":F
    .end local v14    # "pointBy":F
    .end local v15    # "tempx":F
    .end local v16    # "tempy":F
    :pswitch_169
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localNormal:Lorg/jbox2d/common/Vec2;

    .line 1042
    .local v5, "pcLocalNormal":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localPoint:Lorg/jbox2d/common/Vec2;

    .line 1043
    .local v6, "pcLocalPoint":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v20, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v21, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v20, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v21, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1045
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v19, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v20, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    add-float v8, v19, v20

    .line 1046
    .local v8, "planePointx":F
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v19, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v20, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    add-float v9, v19, v20

    .line 1048
    .local v9, "planePointy":F
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v19, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v20, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    add-float v2, v19, v20

    .line 1049
    .local v2, "clipPointx":F
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v19, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v20, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    add-float v3, v19, v20

    .line 1050
    .local v3, "clipPointy":F
    sub-float v15, v2, v8

    .line 1051
    .restart local v15    # "tempx":F
    sub-float v16, v3, v9

    .line 1052
    .restart local v16    # "tempy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    mul-float v20, v20, v16

    add-float v19, v19, v20

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->radiusA:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->radiusB:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->separation:F

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->point:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v2, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->point:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v3, v0, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_37

    .line 1069
    .end local v2    # "clipPointx":F
    .end local v3    # "clipPointy":F
    .end local v5    # "pcLocalNormal":Lorg/jbox2d/common/Vec2;
    .end local v6    # "pcLocalPoint":Lorg/jbox2d/common/Vec2;
    .end local v8    # "planePointx":F
    .end local v9    # "planePointy":F
    .end local v15    # "tempx":F
    .end local v16    # "tempy":F
    :pswitch_2ab
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localNormal:Lorg/jbox2d/common/Vec2;

    .line 1070
    .restart local v5    # "pcLocalNormal":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->localPoint:Lorg/jbox2d/common/Vec2;

    .line 1071
    .restart local v6    # "pcLocalPoint":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v20, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v21, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v20, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v21, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1073
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v19, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v20, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    add-float v8, v19, v20

    .line 1074
    .restart local v8    # "planePointx":F
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v19, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v20, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    add-float v9, v19, v20

    .line 1076
    .restart local v9    # "planePointy":F
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v19, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v20, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    add-float v2, v19, v20

    .line 1077
    .restart local v2    # "clipPointx":F
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v19, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v20, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    add-float v3, v19, v20

    .line 1078
    .restart local v3    # "clipPointy":F
    sub-float v15, v2, v8

    .line 1079
    .restart local v15    # "tempx":F
    sub-float v16, v3, v9

    .line 1080
    .restart local v16    # "tempy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    mul-float v20, v20, v16

    add-float v19, v19, v20

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->radiusA:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactPositionConstraint;->radiusB:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->separation:F

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->point:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v2, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->point:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v3, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    const/high16 v21, -0x40800000    # -1.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    const/high16 v21, -0x40800000    # -1.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_37

    .line 1005
    nop

    :pswitch_data_41a
    .packed-switch 0x1
        :pswitch_38
        :pswitch_169
        :pswitch_2ab
    .end packed-switch
.end method

###### Class org.jbox2d.dynamics.contacts.PositionSolverManifold.AnonymousClass1 (org.jbox2d.dynamics.contacts.PositionSolverManifold$1)
.class synthetic Lorg/jbox2d/dynamics/contacts/PositionSolverManifold$1;
.super Ljava/lang/Object;
.source "ContactSolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/dynamics/contacts/PositionSolverManifold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jbox2d$collision$Manifold$ManifoldType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1005
    invoke-static {}, Lorg/jbox2d/collision/Manifold$ManifoldType;->values()[Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold$1;->$SwitchMap$org$jbox2d$collision$Manifold$ManifoldType:[I

    :try_start_9
    sget-object v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold$1;->$SwitchMap$org$jbox2d$collision$Manifold$ManifoldType:[I

    sget-object v1, Lorg/jbox2d/collision/Manifold$ManifoldType;->CIRCLES:Lorg/jbox2d/collision/Manifold$ManifoldType;

    invoke-virtual {v1}, Lorg/jbox2d/collision/Manifold$ManifoldType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold$1;->$SwitchMap$org$jbox2d$collision$Manifold$ManifoldType:[I

    sget-object v1, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_A:Lorg/jbox2d/collision/Manifold$ManifoldType;

    invoke-virtual {v1}, Lorg/jbox2d/collision/Manifold$ManifoldType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lorg/jbox2d/dynamics/contacts/PositionSolverManifold$1;->$SwitchMap$org$jbox2d$collision$Manifold$ManifoldType:[I

    sget-object v1, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_B:Lorg/jbox2d/collision/Manifold$ManifoldType;

    invoke-virtual {v1}, Lorg/jbox2d/collision/Manifold$ManifoldType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
