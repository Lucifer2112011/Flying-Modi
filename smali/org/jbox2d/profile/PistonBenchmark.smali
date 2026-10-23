###### Class org.jbox2d.profile.PistonBenchmark (org.jbox2d.profile.PistonBenchmark)
.class public Lorg/jbox2d/profile/PistonBenchmark;
.super Lorg/jbox2d/profile/SettingsPerformanceTest;
.source "PistonBenchmark.java"


# static fields
.field public static frames:I

.field public static iters:I

.field public static posIters:I

.field public static timeStep:F

.field public static velIters:I


# instance fields
.field public m_joint1:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

.field public m_joint2:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

.field public world:Lorg/jbox2d/dynamics/World;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x5

    sput v0, Lorg/jbox2d/profile/PistonBenchmark;->iters:I

    .line 52
    const/16 v0, 0x320

    sput v0, Lorg/jbox2d/profile/PistonBenchmark;->frames:I

    .line 53
    const v0, 0x3c888889

    sput v0, Lorg/jbox2d/profile/PistonBenchmark;->timeStep:F

    .line 54
    const/16 v0, 0x8

    sput v0, Lorg/jbox2d/profile/PistonBenchmark;->velIters:I

    .line 55
    const/4 v0, 0x3

    sput v0, Lorg/jbox2d/profile/PistonBenchmark;->posIters:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    sget v0, Lorg/jbox2d/profile/PistonBenchmark;->iters:I

    invoke-direct {p0, v0}, Lorg/jbox2d/profile/SettingsPerformanceTest;-><init>(I)V

    .line 63
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Lorg/jbox2d/profile/PistonBenchmark;

    invoke-direct {v0}, Lorg/jbox2d/profile/PistonBenchmark;-><init>()V

    .line 67
    .local v0, "benchmark":Lorg/jbox2d/profile/PistonBenchmark;
    invoke-virtual {v0}, Lorg/jbox2d/profile/PistonBenchmark;->go()V

    .line 68
    return-void
.end method


# virtual methods
.method public getFrames(I)I
    .registers 3
    .param p1, "testNum"    # I

    .prologue
    .line 270
    sget v0, Lorg/jbox2d/profile/PistonBenchmark;->frames:I

    return v0
.end method

.method public runBenchmarkWorld()V
    .registers 33

    .prologue
    .line 72
    new-instance v23, Lorg/jbox2d/collision/broadphase/DynamicTree;

    invoke-direct/range {v23 .. v23}, Lorg/jbox2d/collision/broadphase/DynamicTree;-><init>()V

    .line 74
    .local v23, "strategy":Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;
    new-instance v27, Lorg/jbox2d/dynamics/World;

    new-instance v28, Lorg/jbox2d/common/Vec2;

    const/16 v29, 0x0

    const/high16 v30, -0x3ee00000    # -10.0f

    invoke-direct/range {v28 .. v30}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    new-instance v29, Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    const/16 v30, 0x64

    const/16 v31, 0xa

    invoke-direct/range {v29 .. v31}, Lorg/jbox2d/pooling/normal/DefaultWorldPool;-><init>(II)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/jbox2d/dynamics/World;-><init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    .line 75
    const/4 v12, 0x0

    .line 77
    .local v12, "ground":Lorg/jbox2d/dynamics/Body;
    new-instance v5, Lorg/jbox2d/dynamics/BodyDef;

    invoke-direct {v5}, Lorg/jbox2d/dynamics/BodyDef;-><init>()V

    .line 78
    .local v5, "bd":Lorg/jbox2d/dynamics/BodyDef;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v12

    .line 80
    new-instance v21, Lorg/jbox2d/collision/shapes/PolygonShape;

    invoke-direct/range {v21 .. v21}, Lorg/jbox2d/collision/shapes/PolygonShape;-><init>()V

    .line 81
    .local v21, "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    const/high16 v27, 0x40a00000    # 5.0f

    const/high16 v28, 0x42c80000    # 100.0f

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/shapes/PolygonShape;->setAsBox(FF)V

    .line 82
    new-instance v5, Lorg/jbox2d/dynamics/BodyDef;

    .end local v5    # "bd":Lorg/jbox2d/dynamics/BodyDef;
    invoke-direct {v5}, Lorg/jbox2d/dynamics/BodyDef;-><init>()V

    .line 83
    .restart local v5    # "bd":Lorg/jbox2d/dynamics/BodyDef;
    sget-object v27, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v27

    iput-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->type:Lorg/jbox2d/dynamics/BodyType;

    .line 84
    new-instance v22, Lorg/jbox2d/dynamics/FixtureDef;

    invoke-direct/range {v22 .. v22}, Lorg/jbox2d/dynamics/FixtureDef;-><init>()V

    .line 85
    .local v22, "sides":Lorg/jbox2d/dynamics/FixtureDef;
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lorg/jbox2d/dynamics/FixtureDef;->shape:Lorg/jbox2d/collision/shapes/Shape;

    .line 86
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/dynamics/FixtureDef;->density:F

    .line 87
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/dynamics/FixtureDef;->friction:F

    .line 88
    const v27, 0x3f4ccccd    # 0.8f

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/dynamics/FixtureDef;->restitution:F

    .line 89
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/dynamics/FixtureDef;->filter:Lorg/jbox2d/dynamics/Filter;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/Filter;->categoryBits:I

    .line 90
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/dynamics/FixtureDef;->filter:Lorg/jbox2d/dynamics/Filter;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/Filter;->maskBits:I

    .line 92
    iget-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    const v28, -0x3edfd70a    # -10.01f

    const/high16 v29, 0x42480000    # 50.0f

    invoke-virtual/range {v27 .. v29}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v6

    .line 94
    .local v6, "bod":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/jbox2d/dynamics/Body;->createFixture(Lorg/jbox2d/dynamics/FixtureDef;)Lorg/jbox2d/dynamics/Fixture;

    .line 95
    iget-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    const v28, 0x412028f6    # 10.01f

    const/high16 v29, 0x42480000    # 50.0f

    invoke-virtual/range {v27 .. v29}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v6

    .line 97
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/jbox2d/dynamics/Body;->createFixture(Lorg/jbox2d/dynamics/FixtureDef;)Lorg/jbox2d/dynamics/Fixture;

    .line 103
    new-instance v10, Lorg/jbox2d/dynamics/FixtureDef;

    invoke-direct {v10}, Lorg/jbox2d/dynamics/FixtureDef;-><init>()V

    .line 104
    .local v10, "fd":Lorg/jbox2d/dynamics/FixtureDef;
    new-instance v5, Lorg/jbox2d/dynamics/BodyDef;

    .end local v5    # "bd":Lorg/jbox2d/dynamics/BodyDef;
    invoke-direct {v5}, Lorg/jbox2d/dynamics/BodyDef;-><init>()V

    .line 105
    .restart local v5    # "bd":Lorg/jbox2d/dynamics/BodyDef;
    sget-object v27, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v27

    iput-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->type:Lorg/jbox2d/dynamics/BodyType;

    .line 106
    const/4 v14, 0x5

    .line 107
    .local v14, "numPieces":I
    const/high16 v18, 0x40800000    # 4.0f

    .line 108
    .local v18, "radius":F
    new-instance v27, Lorg/jbox2d/common/Vec2;

    const/16 v28, 0x0

    const/high16 v29, 0x41c80000    # 25.0f

    invoke-direct/range {v27 .. v29}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    move-object/from16 v0, v27

    iput-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v7

    .line 110
    .local v7, "body":Lorg/jbox2d/dynamics/Body;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_100
    if-ge v13, v14, :cond_174

    .line 111
    new-instance v8, Lorg/jbox2d/collision/shapes/CircleShape;

    invoke-direct {v8}, Lorg/jbox2d/collision/shapes/CircleShape;-><init>()V

    .line 112
    .local v8, "cd":Lorg/jbox2d/collision/shapes/CircleShape;
    const/high16 v27, 0x3f000000    # 0.5f

    move/from16 v0, v27

    iput v0, v8, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    .line 113
    iput-object v8, v10, Lorg/jbox2d/dynamics/FixtureDef;->shape:Lorg/jbox2d/collision/shapes/Shape;

    .line 114
    const/high16 v27, 0x41c80000    # 25.0f

    move/from16 v0, v27

    iput v0, v10, Lorg/jbox2d/dynamics/FixtureDef;->density:F

    .line 115
    const v27, 0x3dcccccd    # 0.1f

    move/from16 v0, v27

    iput v0, v10, Lorg/jbox2d/dynamics/FixtureDef;->friction:F

    .line 116
    const v27, 0x3f666666    # 0.9f

    move/from16 v0, v27

    iput v0, v10, Lorg/jbox2d/dynamics/FixtureDef;->restitution:F

    .line 117
    const-wide v28, 0x401921fb54442d18L    # 6.283185307179586

    int-to-float v0, v13

    move/from16 v27, v0

    int-to-float v0, v14

    move/from16 v30, v0

    div-float v27, v27, v30

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    mul-float v25, v18, v27

    .line 118
    .local v25, "xPos":F
    const-wide v28, 0x401921fb54442d18L    # 6.283185307179586

    int-to-float v0, v13

    move/from16 v27, v0

    int-to-float v0, v14

    move/from16 v30, v0

    div-float v27, v27, v30

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v18, v27

    .line 119
    .local v26, "yPos":F
    iget-object v0, v8, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 121
    invoke-virtual {v7, v10}, Lorg/jbox2d/dynamics/Body;->createFixture(Lorg/jbox2d/dynamics/FixtureDef;)Lorg/jbox2d/dynamics/Fixture;

    .line 110
    add-int/lit8 v13, v13, 0x1

    goto :goto_100

    .line 124
    .end local v8    # "cd":Lorg/jbox2d/collision/shapes/CircleShape;
    .end local v25    # "xPos":F
    .end local v26    # "yPos":F
    :cond_174
    new-instance v19, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;

    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;-><init>()V

    .line 125
    .local v19, "rjd":Lorg/jbox2d/dynamics/joints/RevoluteJointDef;
    invoke-virtual {v7}, Lorg/jbox2d/dynamics/Body;->getPosition()Lorg/jbox2d/common/Vec2;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v7, v12, v1}, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;)V

    .line 126
    const v27, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->motorSpeed:F

    .line 127
    const v27, 0x49742400    # 1000000.0f

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->maxMotorTorque:F

    .line 128
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->enableMotor:Z

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/World;->createJoint(Lorg/jbox2d/dynamics/joints/JointDef;)Lorg/jbox2d/dynamics/joints/Joint;

    .line 133
    move-object/from16 v17, v12

    .line 137
    .local v17, "prevBody":Lorg/jbox2d/dynamics/Body;
    new-instance v21, Lorg/jbox2d/collision/shapes/PolygonShape;

    .end local v21    # "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    invoke-direct/range {v21 .. v21}, Lorg/jbox2d/collision/shapes/PolygonShape;-><init>()V

    .line 138
    .restart local v21    # "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v28, 0x40000000    # 2.0f

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/shapes/PolygonShape;->setAsBox(FF)V

    .line 140
    new-instance v5, Lorg/jbox2d/dynamics/BodyDef;

    .end local v5    # "bd":Lorg/jbox2d/dynamics/BodyDef;
    invoke-direct {v5}, Lorg/jbox2d/dynamics/BodyDef;-><init>()V

    .line 141
    .restart local v5    # "bd":Lorg/jbox2d/dynamics/BodyDef;
    sget-object v27, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v27

    iput-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->type:Lorg/jbox2d/dynamics/BodyType;

    .line 142
    iget-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/high16 v29, 0x40e00000    # 7.0f

    invoke-virtual/range {v27 .. v29}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v7

    .line 144
    const/high16 v27, 0x40000000    # 2.0f

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Lorg/jbox2d/dynamics/Body;->createFixture(Lorg/jbox2d/collision/shapes/Shape;F)Lorg/jbox2d/dynamics/Fixture;

    .line 146
    new-instance v19, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;

    .end local v19    # "rjd":Lorg/jbox2d/dynamics/joints/RevoluteJointDef;
    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;-><init>()V

    .line 147
    .restart local v19    # "rjd":Lorg/jbox2d/dynamics/joints/RevoluteJointDef;
    new-instance v27, Lorg/jbox2d/common/Vec2;

    const/16 v28, 0x0

    const/high16 v29, 0x40a00000    # 5.0f

    invoke-direct/range {v27 .. v29}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v7, v2}, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;)V

    .line 148
    const v27, 0x40490fdb    # (float)Math.PI

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->motorSpeed:F

    .line 149
    const v27, 0x469c4000    # 20000.0f

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->maxMotorTorque:F

    .line 150
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->enableMotor:Z

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/World;->createJoint(Lorg/jbox2d/dynamics/joints/JointDef;)Lorg/jbox2d/dynamics/joints/Joint;

    move-result-object v27

    check-cast v27, Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/profile/PistonBenchmark;->m_joint1:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    .line 153
    move-object/from16 v17, v7

    .line 158
    new-instance v21, Lorg/jbox2d/collision/shapes/PolygonShape;

    .end local v21    # "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    invoke-direct/range {v21 .. v21}, Lorg/jbox2d/collision/shapes/PolygonShape;-><init>()V

    .line 159
    .restart local v21    # "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v28, 0x40800000    # 4.0f

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/shapes/PolygonShape;->setAsBox(FF)V

    .line 161
    new-instance v5, Lorg/jbox2d/dynamics/BodyDef;

    .end local v5    # "bd":Lorg/jbox2d/dynamics/BodyDef;
    invoke-direct {v5}, Lorg/jbox2d/dynamics/BodyDef;-><init>()V

    .line 162
    .restart local v5    # "bd":Lorg/jbox2d/dynamics/BodyDef;
    sget-object v27, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v27

    iput-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->type:Lorg/jbox2d/dynamics/BodyType;

    .line 163
    iget-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/high16 v29, 0x41500000    # 13.0f

    invoke-virtual/range {v27 .. v29}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v7

    .line 165
    const/high16 v27, 0x40000000    # 2.0f

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Lorg/jbox2d/dynamics/Body;->createFixture(Lorg/jbox2d/collision/shapes/Shape;F)Lorg/jbox2d/dynamics/Fixture;

    .line 167
    new-instance v19, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;

    .end local v19    # "rjd":Lorg/jbox2d/dynamics/joints/RevoluteJointDef;
    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;-><init>()V

    .line 168
    .restart local v19    # "rjd":Lorg/jbox2d/dynamics/joints/RevoluteJointDef;
    new-instance v27, Lorg/jbox2d/common/Vec2;

    const/16 v28, 0x0

    const/high16 v29, 0x41100000    # 9.0f

    invoke-direct/range {v27 .. v29}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v7, v2}, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;)V

    .line 169
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->enableMotor:Z

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/World;->createJoint(Lorg/jbox2d/dynamics/joints/JointDef;)Lorg/jbox2d/dynamics/joints/Joint;

    .line 172
    move-object/from16 v17, v7

    .line 177
    new-instance v21, Lorg/jbox2d/collision/shapes/PolygonShape;

    .end local v21    # "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    invoke-direct/range {v21 .. v21}, Lorg/jbox2d/collision/shapes/PolygonShape;-><init>()V

    .line 178
    .restart local v21    # "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    const/high16 v27, 0x40e00000    # 7.0f

    const/high16 v28, 0x40000000    # 2.0f

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/shapes/PolygonShape;->setAsBox(FF)V

    .line 180
    new-instance v5, Lorg/jbox2d/dynamics/BodyDef;

    .end local v5    # "bd":Lorg/jbox2d/dynamics/BodyDef;
    invoke-direct {v5}, Lorg/jbox2d/dynamics/BodyDef;-><init>()V

    .line 181
    .restart local v5    # "bd":Lorg/jbox2d/dynamics/BodyDef;
    sget-object v27, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v27

    iput-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->type:Lorg/jbox2d/dynamics/BodyType;

    .line 182
    iget-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/high16 v29, 0x41880000    # 17.0f

    invoke-virtual/range {v27 .. v29}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v7

    .line 184
    new-instance v15, Lorg/jbox2d/dynamics/FixtureDef;

    invoke-direct {v15}, Lorg/jbox2d/dynamics/FixtureDef;-><init>()V

    .line 185
    .local v15, "piston":Lorg/jbox2d/dynamics/FixtureDef;
    move-object/from16 v0, v21

    iput-object v0, v15, Lorg/jbox2d/dynamics/FixtureDef;->shape:Lorg/jbox2d/collision/shapes/Shape;

    .line 186
    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v27

    iput v0, v15, Lorg/jbox2d/dynamics/FixtureDef;->density:F

    .line 187
    iget-object v0, v15, Lorg/jbox2d/dynamics/FixtureDef;->filter:Lorg/jbox2d/dynamics/Filter;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/Filter;->categoryBits:I

    .line 188
    iget-object v0, v15, Lorg/jbox2d/dynamics/FixtureDef;->filter:Lorg/jbox2d/dynamics/Filter;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/Filter;->maskBits:I

    .line 189
    invoke-virtual {v7, v15}, Lorg/jbox2d/dynamics/Body;->createFixture(Lorg/jbox2d/dynamics/FixtureDef;)Lorg/jbox2d/dynamics/Fixture;

    .line 191
    new-instance v19, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;

    .end local v19    # "rjd":Lorg/jbox2d/dynamics/joints/RevoluteJointDef;
    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;-><init>()V

    .line 192
    .restart local v19    # "rjd":Lorg/jbox2d/dynamics/joints/RevoluteJointDef;
    new-instance v27, Lorg/jbox2d/common/Vec2;

    const/16 v28, 0x0

    const/high16 v29, 0x41880000    # 17.0f

    invoke-direct/range {v27 .. v29}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v7, v2}, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/World;->createJoint(Lorg/jbox2d/dynamics/joints/JointDef;)Lorg/jbox2d/dynamics/joints/Joint;

    .line 195
    new-instance v16, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;

    invoke-direct/range {v16 .. v16}, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;-><init>()V

    .line 196
    .local v16, "pjd":Lorg/jbox2d/dynamics/joints/PrismaticJointDef;
    new-instance v27, Lorg/jbox2d/common/Vec2;

    const/16 v28, 0x0

    const/high16 v29, 0x41880000    # 17.0f

    invoke-direct/range {v27 .. v29}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    new-instance v28, Lorg/jbox2d/common/Vec2;

    const/16 v29, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    invoke-direct/range {v28 .. v30}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v12, v7, v1, v2}, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 198
    const/high16 v27, 0x447a0000    # 1000.0f

    move/from16 v0, v27

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->maxMotorForce:F

    .line 199
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->enableMotor:Z

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/World;->createJoint(Lorg/jbox2d/dynamics/joints/JointDef;)Lorg/jbox2d/dynamics/joints/Joint;

    move-result-object v27

    check-cast v27, Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/profile/PistonBenchmark;->m_joint2:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    .line 206
    new-instance v20, Lorg/jbox2d/collision/shapes/PolygonShape;

    invoke-direct/range {v20 .. v20}, Lorg/jbox2d/collision/shapes/PolygonShape;-><init>()V

    .line 207
    .local v20, "sd":Lorg/jbox2d/collision/shapes/PolygonShape;
    new-instance v5, Lorg/jbox2d/dynamics/BodyDef;

    .end local v5    # "bd":Lorg/jbox2d/dynamics/BodyDef;
    invoke-direct {v5}, Lorg/jbox2d/dynamics/BodyDef;-><init>()V

    .line 208
    .restart local v5    # "bd":Lorg/jbox2d/dynamics/BodyDef;
    sget-object v27, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v27

    iput-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->type:Lorg/jbox2d/dynamics/BodyType;

    .line 209
    new-instance v11, Lorg/jbox2d/dynamics/FixtureDef;

    invoke-direct {v11}, Lorg/jbox2d/dynamics/FixtureDef;-><init>()V

    .line 211
    .local v11, "fixture":Lorg/jbox2d/dynamics/FixtureDef;
    const/4 v13, 0x0

    :goto_37c
    const/16 v27, 0x64

    move/from16 v0, v27

    if-ge v13, v0, :cond_3dc

    .line 212
    const v27, 0x3ecccccd    # 0.4f

    const v28, 0x3e99999a    # 0.3f

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/shapes/PolygonShape;->setAsBox(FF)V

    .line 213
    iget-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    const/high16 v28, -0x40800000    # -1.0f

    const/high16 v29, 0x41b80000    # 23.0f

    int-to-float v0, v13

    move/from16 v30, v0

    add-float v29, v29, v30

    invoke-virtual/range {v27 .. v29}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 215
    const/16 v27, 0x0

    move/from16 v0, v27

    iput-boolean v0, v5, Lorg/jbox2d/dynamics/BodyDef;->bullet:Z

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v7

    .line 217
    move-object/from16 v0, v20

    iput-object v0, v11, Lorg/jbox2d/dynamics/FixtureDef;->shape:Lorg/jbox2d/collision/shapes/Shape;

    .line 218
    const v27, 0x3dcccccd    # 0.1f

    move/from16 v0, v27

    iput v0, v11, Lorg/jbox2d/dynamics/FixtureDef;->density:F

    .line 219
    iget-object v0, v11, Lorg/jbox2d/dynamics/FixtureDef;->filter:Lorg/jbox2d/dynamics/Filter;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/Filter;->categoryBits:I

    .line 220
    iget-object v0, v11, Lorg/jbox2d/dynamics/FixtureDef;->filter:Lorg/jbox2d/dynamics/Filter;

    move-object/from16 v27, v0

    const/16 v28, 0x7

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/Filter;->maskBits:I

    .line 221
    invoke-virtual {v7, v11}, Lorg/jbox2d/dynamics/Body;->createFixture(Lorg/jbox2d/dynamics/FixtureDef;)Lorg/jbox2d/dynamics/Fixture;

    .line 211
    add-int/lit8 v13, v13, 0x1

    goto :goto_37c

    .line 224
    :cond_3dc
    new-instance v8, Lorg/jbox2d/collision/shapes/CircleShape;

    invoke-direct {v8}, Lorg/jbox2d/collision/shapes/CircleShape;-><init>()V

    .line 225
    .restart local v8    # "cd":Lorg/jbox2d/collision/shapes/CircleShape;
    const v27, 0x3eb851ec    # 0.36f

    move/from16 v0, v27

    iput v0, v8, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    .line 226
    const/4 v13, 0x0

    :goto_3e9
    const/16 v27, 0x64

    move/from16 v0, v27

    if-ge v13, v0, :cond_437

    .line 227
    iget-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x41b80000    # 23.0f

    int-to-float v0, v13

    move/from16 v30, v0

    add-float v29, v29, v30

    invoke-virtual/range {v27 .. v29}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 228
    const/16 v27, 0x0

    move/from16 v0, v27

    iput-boolean v0, v5, Lorg/jbox2d/dynamics/BodyDef;->bullet:Z

    .line 229
    iput-object v8, v11, Lorg/jbox2d/dynamics/FixtureDef;->shape:Lorg/jbox2d/collision/shapes/Shape;

    .line 230
    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v27

    iput v0, v11, Lorg/jbox2d/dynamics/FixtureDef;->density:F

    .line 231
    iget-object v0, v11, Lorg/jbox2d/dynamics/FixtureDef;->filter:Lorg/jbox2d/dynamics/Filter;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/Filter;->categoryBits:I

    .line 232
    iget-object v0, v11, Lorg/jbox2d/dynamics/FixtureDef;->filter:Lorg/jbox2d/dynamics/Filter;

    move-object/from16 v27, v0

    const/16 v28, 0x7

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/Filter;->maskBits:I

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v7

    .line 234
    invoke-virtual {v7, v11}, Lorg/jbox2d/dynamics/Body;->createFixture(Lorg/jbox2d/dynamics/FixtureDef;)Lorg/jbox2d/dynamics/Fixture;

    .line 226
    add-int/lit8 v13, v13, 0x1

    goto :goto_3e9

    .line 237
    :cond_437
    const/4 v4, 0x0

    .line 238
    .local v4, "angle":F
    const v9, 0x3f860a92

    .line 239
    .local v9, "delta":F
    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    .line 240
    .local v24, "vertices":[Lorg/jbox2d/common/Vec2;
    const/4 v13, 0x0

    :goto_444
    const/16 v27, 0x6

    move/from16 v0, v27

    if-ge v13, v0, :cond_467

    .line 241
    new-instance v27, Lorg/jbox2d/common/Vec2;

    const v28, 0x3e99999a    # 0.3f

    invoke-static {v4}, Lorg/jbox2d/common/MathUtils;->cos(F)F

    move-result v29

    mul-float v28, v28, v29

    const v29, 0x3e99999a    # 0.3f

    invoke-static {v4}, Lorg/jbox2d/common/MathUtils;->sin(F)F

    move-result v30

    mul-float v29, v29, v30

    invoke-direct/range {v27 .. v29}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    aput-object v27, v24, v13

    .line 242
    add-float/2addr v4, v9

    .line 240
    add-int/lit8 v13, v13, 0x1

    goto :goto_444

    .line 245
    :cond_467
    new-instance v21, Lorg/jbox2d/collision/shapes/PolygonShape;

    .end local v21    # "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    invoke-direct/range {v21 .. v21}, Lorg/jbox2d/collision/shapes/PolygonShape;-><init>()V

    .line 246
    .restart local v21    # "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    const/16 v27, 0x6

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/shapes/PolygonShape;->set([Lorg/jbox2d/common/Vec2;I)V

    .line 248
    const/4 v13, 0x0

    :goto_478
    const/16 v27, 0x64

    move/from16 v0, v27

    if-ge v13, v0, :cond_4d4

    .line 249
    iget-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/high16 v29, 0x41b80000    # 23.0f

    int-to-float v0, v13

    move/from16 v30, v0

    add-float v29, v29, v30

    invoke-virtual/range {v27 .. v29}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 250
    sget-object v27, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v27

    iput-object v0, v5, Lorg/jbox2d/dynamics/BodyDef;->type:Lorg/jbox2d/dynamics/BodyType;

    .line 251
    const/16 v27, 0x1

    move/from16 v0, v27

    iput-boolean v0, v5, Lorg/jbox2d/dynamics/BodyDef;->fixedRotation:Z

    .line 252
    const/16 v27, 0x0

    move/from16 v0, v27

    iput-boolean v0, v5, Lorg/jbox2d/dynamics/BodyDef;->bullet:Z

    .line 253
    move-object/from16 v0, v21

    iput-object v0, v11, Lorg/jbox2d/dynamics/FixtureDef;->shape:Lorg/jbox2d/collision/shapes/Shape;

    .line 254
    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v0, v27

    iput v0, v11, Lorg/jbox2d/dynamics/FixtureDef;->density:F

    .line 255
    iget-object v0, v11, Lorg/jbox2d/dynamics/FixtureDef;->filter:Lorg/jbox2d/dynamics/Filter;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/Filter;->categoryBits:I

    .line 256
    iget-object v0, v11, Lorg/jbox2d/dynamics/FixtureDef;->filter:Lorg/jbox2d/dynamics/Filter;

    move-object/from16 v27, v0

    const/16 v28, 0x7

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/Filter;->maskBits:I

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v7

    .line 258
    invoke-virtual {v7, v11}, Lorg/jbox2d/dynamics/Body;->createFixture(Lorg/jbox2d/dynamics/FixtureDef;)Lorg/jbox2d/dynamics/Fixture;

    .line 248
    add-int/lit8 v13, v13, 0x1

    goto :goto_478

    .line 263
    :cond_4d4
    const/4 v13, 0x0

    :goto_4d5
    sget v27, Lorg/jbox2d/profile/PistonBenchmark;->frames:I

    move/from16 v0, v27

    if-ge v13, v0, :cond_4ed

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/profile/PistonBenchmark;->world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v27, v0

    sget v28, Lorg/jbox2d/profile/PistonBenchmark;->timeStep:F

    sget v29, Lorg/jbox2d/profile/PistonBenchmark;->posIters:I

    sget v30, Lorg/jbox2d/profile/PistonBenchmark;->velIters:I

    invoke-virtual/range {v27 .. v30}, Lorg/jbox2d/dynamics/World;->step(FII)V

    .line 263
    add-int/lit8 v13, v13, 0x1

    goto :goto_4d5

    .line 266
    :cond_4ed
    return-void
.end method
