###### Class org.jbox2d.dynamics.joints.ConstantVolumeJoint (org.jbox2d.dynamics.joints.ConstantVolumeJoint)
.class public Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "ConstantVolumeJoint.java"


# instance fields
.field private final bodies:[Lorg/jbox2d/dynamics/Body;

.field private distanceJoints:[Lorg/jbox2d/dynamics/joints/DistanceJoint;

.field private m_impulse:F

.field private normals:[Lorg/jbox2d/common/Vec2;

.field private targetLengths:[F

.field private targetVolume:F

.field private world:Lorg/jbox2d/dynamics/World;


# direct methods
.method public constructor <init>(Lorg/jbox2d/dynamics/World;Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;)V
    .registers 12
    .param p1, "argWorld"    # Lorg/jbox2d/dynamics/World;
    .param p2, "def"    # Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;

    .prologue
    const/4 v5, 0x0

    .line 61
    invoke-virtual {p1}, Lorg/jbox2d/dynamics/World;->getPool()Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 42
    const/4 v4, 0x0

    iput v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->m_impulse:F

    .line 62
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->world:Lorg/jbox2d/dynamics/World;

    .line 63
    iget-object v4, p2, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->bodies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x2

    if-gt v4, v6, :cond_1e

    .line 64
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "You cannot create a constant volume joint with less than three bodies."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :cond_1e
    iget-object v4, p2, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->bodies:Ljava/util/ArrayList;

    new-array v6, v5, [Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/jbox2d/dynamics/Body;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    .line 69
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v4, v4

    new-array v4, v4, [F

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->targetLengths:[F

    .line 70
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->targetLengths:[F

    array-length v4, v4

    if-ge v2, v4, :cond_61

    .line 71
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->targetLengths:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_5e

    move v3, v5

    .line 72
    .local v3, "next":I
    :goto_3f
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getWorldCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->getWorldCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v0

    .line 73
    .local v0, "dist":F
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->targetLengths:[F

    aput v0, v4, v2

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 71
    .end local v0    # "dist":F
    .end local v3    # "next":I
    :cond_5e
    add-int/lit8 v3, v2, 0x1

    goto :goto_3f

    .line 75
    :cond_61
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->getBodyArea()F

    move-result v4

    iput v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->targetVolume:F

    .line 77
    iget-object v4, p2, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->joints:Ljava/util/ArrayList;

    if-eqz v4, :cond_81

    iget-object v4, p2, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->joints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v6, p2, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->bodies:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v4, v6, :cond_81

    .line 78
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Incorrect joint definition.  Joints have to correspond to the bodies"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_81
    iget-object v4, p2, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->joints:Ljava/util/ArrayList;

    if-nez v4, :cond_d8

    .line 82
    new-instance v1, Lorg/jbox2d/dynamics/joints/DistanceJointDef;

    invoke-direct {v1}, Lorg/jbox2d/dynamics/joints/DistanceJointDef;-><init>()V

    .line 83
    .local v1, "djd":Lorg/jbox2d/dynamics/joints/DistanceJointDef;
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v4, v4

    new-array v4, v4, [Lorg/jbox2d/dynamics/joints/DistanceJoint;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->distanceJoints:[Lorg/jbox2d/dynamics/joints/DistanceJoint;

    .line 84
    const/4 v2, 0x0

    :goto_92
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->targetLengths:[F

    array-length v4, v4

    if-ge v2, v4, :cond_e4

    .line 85
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->targetLengths:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_d5

    move v3, v5

    .line 86
    .restart local v3    # "next":I
    :goto_9f
    iget v4, p2, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->frequencyHz:F

    iput v4, v1, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->frequencyHz:F

    .line 87
    iget v4, p2, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->dampingRatio:F

    iput v4, v1, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->dampingRatio:F

    .line 88
    iget-boolean v4, p2, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->collideConnected:Z

    iput-boolean v4, v1, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->collideConnected:Z

    .line 89
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v4, v4, v2

    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v6, v6, v3

    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lorg/jbox2d/dynamics/Body;->getWorldCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v7

    iget-object v8, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lorg/jbox2d/dynamics/Body;->getWorldCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v8

    invoke-virtual {v1, v4, v6, v7, v8}, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 91
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->distanceJoints:[Lorg/jbox2d/dynamics/joints/DistanceJoint;

    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v4, v1}, Lorg/jbox2d/dynamics/World;->createJoint(Lorg/jbox2d/dynamics/joints/JointDef;)Lorg/jbox2d/dynamics/joints/Joint;

    move-result-object v4

    check-cast v4, Lorg/jbox2d/dynamics/joints/DistanceJoint;

    aput-object v4, v6, v2

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    .line 85
    .end local v3    # "next":I
    :cond_d5
    add-int/lit8 v3, v2, 0x1

    goto :goto_9f

    .line 94
    .end local v1    # "djd":Lorg/jbox2d/dynamics/joints/DistanceJointDef;
    :cond_d8
    iget-object v4, p2, Lorg/jbox2d/dynamics/joints/ConstantVolumeJointDef;->joints:Ljava/util/ArrayList;

    new-array v5, v5, [Lorg/jbox2d/dynamics/joints/DistanceJoint;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/jbox2d/dynamics/joints/DistanceJoint;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->distanceJoints:[Lorg/jbox2d/dynamics/joints/DistanceJoint;

    .line 97
    :cond_e4
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v4, v4

    new-array v4, v4, [Lorg/jbox2d/common/Vec2;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->normals:[Lorg/jbox2d/common/Vec2;

    .line 98
    const/4 v2, 0x0

    :goto_ec
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->normals:[Lorg/jbox2d/common/Vec2;

    array-length v4, v4

    if-ge v2, v4, :cond_fd

    .line 99
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->normals:[Lorg/jbox2d/common/Vec2;

    new-instance v5, Lorg/jbox2d/common/Vec2;

    invoke-direct {v5}, Lorg/jbox2d/common/Vec2;-><init>()V

    aput-object v5, v4, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_ec

    .line 101
    :cond_fd
    return-void
.end method

.method private constrainEdges([Lorg/jbox2d/dynamics/contacts/Position;)Z
    .registers 16
    .param p1, "positions"    # [Lorg/jbox2d/dynamics/contacts/Position;

    .prologue
    .line 135
    const/4 v9, 0x0

    .line 136
    .local v9, "perimeter":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v11, v11

    if-ge v6, v11, :cond_6b

    .line 137
    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ne v6, v11, :cond_68

    const/4 v7, 0x0

    .line 138
    .local v7, "next":I
    :goto_f
    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v11, v11, v7

    iget v11, v11, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v11, p1, v11

    iget-object v11, v11, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v12, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v12, v12, v6

    iget v12, v12, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v12, p1, v12

    iget-object v12, v12, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    sub-float v4, v11, v12

    .line 139
    .local v4, "dx":F
    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v11, v11, v7

    iget v11, v11, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v11, p1, v11

    iget-object v11, v11, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v12, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v12, v12, v6

    iget v12, v12, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v12, p1, v12

    iget-object v12, v12, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v5, v11, v12

    .line 140
    .local v5, "dy":F
    mul-float v11, v4, v4

    mul-float v12, v5, v5

    add-float/2addr v11, v12

    invoke-static {v11}, Lorg/jbox2d/common/MathUtils;->sqrt(F)F

    move-result v2

    .line 141
    .local v2, "dist":F
    const/high16 v11, 0x34000000

    cmpg-float v11, v2, v11

    if-gez v11, :cond_54

    .line 142
    const/high16 v2, 0x3f800000    # 1.0f

    .line 144
    :cond_54
    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->normals:[Lorg/jbox2d/common/Vec2;

    aget-object v11, v11, v6

    div-float v12, v5, v2

    iput v12, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 145
    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->normals:[Lorg/jbox2d/common/Vec2;

    aget-object v11, v11, v6

    neg-float v12, v4

    div-float/2addr v12, v2

    iput v12, v11, Lorg/jbox2d/common/Vec2;->y:F

    .line 146
    add-float/2addr v9, v2

    .line 136
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 137
    .end local v2    # "dist":F
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v7    # "next":I
    :cond_68
    add-int/lit8 v7, v6, 0x1

    goto :goto_f

    .line 149
    :cond_6b
    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v11}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 151
    .local v0, "delta":Lorg/jbox2d/common/Vec2;
    iget v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->targetVolume:F

    invoke-direct {p0, p1}, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->getSolverArea([Lorg/jbox2d/dynamics/contacts/Position;)F

    move-result v12

    sub-float v1, v11, v12

    .line 152
    .local v1, "deltaArea":F
    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v11, v1

    div-float v10, v11, v9

    .line 154
    .local v10, "toExtrude":F
    const/4 v3, 0x1

    .line 155
    .local v3, "done":Z
    const/4 v6, 0x0

    :goto_80
    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v11, v11

    if-ge v6, v11, :cond_f2

    .line 156
    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ne v6, v11, :cond_ef

    const/4 v7, 0x0

    .line 157
    .restart local v7    # "next":I
    :goto_8d
    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->normals:[Lorg/jbox2d/common/Vec2;

    aget-object v11, v11, v6

    iget v11, v11, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v12, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->normals:[Lorg/jbox2d/common/Vec2;

    aget-object v12, v12, v7

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v11, v12

    mul-float/2addr v11, v10

    iget-object v12, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->normals:[Lorg/jbox2d/common/Vec2;

    aget-object v12, v12, v6

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v13, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->normals:[Lorg/jbox2d/common/Vec2;

    aget-object v13, v13, v7

    iget v13, v13, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v12, v13

    mul-float/2addr v12, v10

    invoke-virtual {v0, v11, v12}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 160
    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->lengthSquared()F

    move-result v8

    .line 161
    .local v8, "normSqrd":F
    const v11, 0x3d23d70b    # 0.040000003f

    cmpl-float v11, v8, v11

    if-lez v11, :cond_c2

    .line 162
    const v11, 0x3e4ccccd    # 0.2f

    invoke-static {v8}, Lorg/jbox2d/common/MathUtils;->sqrt(F)F

    move-result v12

    div-float/2addr v11, v12

    invoke-virtual {v0, v11}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 164
    :cond_c2
    const v11, 0x37d1b717    # 2.5E-5f

    cmpl-float v11, v8, v11

    if-lez v11, :cond_ca

    .line 165
    const/4 v3, 0x0

    .line 167
    :cond_ca
    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v11, v11, v7

    iget v11, v11, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v11, p1, v11

    iget-object v11, v11, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    iget v12, v11, Lorg/jbox2d/common/Vec2;->x:F

    iget v13, v0, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 168
    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v11, v11, v7

    iget v11, v11, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v11, p1, v11

    iget-object v11, v11, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    iget v12, v11, Lorg/jbox2d/common/Vec2;->y:F

    iget v13, v0, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->y:F

    .line 155
    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    .line 156
    .end local v7    # "next":I
    .end local v8    # "normSqrd":F
    :cond_ef
    add-int/lit8 v7, v6, 0x1

    goto :goto_8d

    .line 173
    :cond_f2
    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 175
    return v3
.end method

.method private getBodyArea()F
    .registers 7

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "area":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_43

    .line 113
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_40

    const/4 v2, 0x0

    .line 114
    .local v2, "next":I
    :goto_11
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getWorldCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v3

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getWorldCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getWorldCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getWorldCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 113
    .end local v2    # "next":I
    :cond_40
    add-int/lit8 v2, v1, 0x1

    goto :goto_11

    .line 118
    :cond_43
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    .line 119
    return v0
.end method

.method private getSolverArea([Lorg/jbox2d/dynamics/contacts/Position;)F
    .registers 8
    .param p1, "positions"    # [Lorg/jbox2d/dynamics/contacts/Position;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "area":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v3, v3

    if-ge v1, v3, :cond_49

    .line 125
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_46

    const/4 v2, 0x0

    .line 126
    .local v2, "next":I
    :goto_f
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v3, v3, v1

    iget v3, v3, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v3, p1, v3

    iget-object v3, v3, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v4, v4, v2

    iget v4, v4, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v4, p1, v4

    iget-object v4, v4, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v4, v4, v2

    iget v4, v4, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v4, p1, v4

    iget-object v4, v4, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v5, v5, v1

    iget v5, v5, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v5, p1, v5

    iget-object v5, v5, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 125
    .end local v2    # "next":I
    :cond_46
    add-int/lit8 v2, v1, 0x1

    goto :goto_f

    .line 130
    :cond_49
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    .line 131
    return v0
.end method


# virtual methods
.method public destructor()V
    .registers 4

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->distanceJoints:[Lorg/jbox2d/dynamics/joints/DistanceJoint;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 106
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->world:Lorg/jbox2d/dynamics/World;

    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->distanceJoints:[Lorg/jbox2d/dynamics/joints/DistanceJoint;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/jbox2d/dynamics/World;->destroyJoint(Lorg/jbox2d/dynamics/joints/Joint;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_12
    return-void
.end method

.method public getAnchorA(Lorg/jbox2d/common/Vec2;)V
    .registers 2
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 243
    return-void
.end method

.method public getAnchorB(Lorg/jbox2d/common/Vec2;)V
    .registers 2
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 247
    return-void
.end method

.method public getBodies()[Lorg/jbox2d/dynamics/Body;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    return-object v0
.end method

.method public getJoints()[Lorg/jbox2d/dynamics/joints/DistanceJoint;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->distanceJoints:[Lorg/jbox2d/dynamics/joints/DistanceJoint;

    return-object v0
.end method

.method public getReactionForce(FLorg/jbox2d/common/Vec2;)V
    .registers 3
    .param p1, "inv_dt"    # F
    .param p2, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 251
    return-void
.end method

.method public getReactionTorque(F)F
    .registers 3
    .param p1, "inv_dt"    # F

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public inflate(F)V
    .registers 3
    .param p1, "factor"    # F

    .prologue
    .line 57
    iget v0, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->targetVolume:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->targetVolume:F

    .line 58
    return-void
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 13
    .param p1, "step"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    .line 180
    iget-object v5, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    .line 181
    .local v5, "velocities":[Lorg/jbox2d/dynamics/contacts/Velocity;
    iget-object v3, p1, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    .line 182
    .local v3, "positions":[Lorg/jbox2d/dynamics/contacts/Position;
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v7, v7

    invoke-interface {v6, v7}, Lorg/jbox2d/pooling/IWorldPool;->getVec2Array(I)[Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 184
    .local v0, "d":[Lorg/jbox2d/common/Vec2;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v6, v6

    if-ge v1, v6, :cond_4b

    .line 185
    if-nez v1, :cond_45

    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 186
    .local v4, "prev":I
    :goto_1c
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_48

    const/4 v2, 0x0

    .line 187
    .local v2, "next":I
    :goto_24
    aget-object v6, v0, v1

    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v7, v7, v2

    iget v7, v7, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v7, v3, v7

    iget-object v7, v7, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 188
    aget-object v6, v0, v1

    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v7, v7, v4

    iget v7, v7, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v7, v3, v7

    iget-object v7, v7, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 185
    .end local v2    # "next":I
    .end local v4    # "prev":I
    :cond_45
    add-int/lit8 v4, v1, -0x1

    goto :goto_1c

    .line 186
    .restart local v4    # "prev":I
    :cond_48
    add-int/lit8 v2, v1, 0x1

    goto :goto_24

    .line 191
    .end local v4    # "prev":I
    :cond_4b
    iget-object v6, p1, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    iget-boolean v6, v6, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    if-eqz v6, :cond_a0

    .line 192
    iget v6, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->m_impulse:F

    iget-object v7, p1, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    iget v7, v7, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    mul-float/2addr v6, v7

    iput v6, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->m_impulse:F

    .line 198
    const/4 v1, 0x0

    :goto_5b
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v6, v6

    if-ge v1, v6, :cond_a3

    .line 199
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v6, v6, v1

    iget v6, v6, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v6, v5, v6

    iget-object v6, v6, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    iget v7, v6, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v8, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v8, v8, v1

    iget v8, v8, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    aget-object v9, v0, v1

    iget v9, v9, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, v10

    iget v9, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->m_impulse:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, v6, Lorg/jbox2d/common/Vec2;->x:F

    .line 200
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v6, v6, v1

    iget v6, v6, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v6, v5, v6

    iget-object v6, v6, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    iget v7, v6, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v8, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v8, v8, v1

    iget v8, v8, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    aget-object v9, v0, v1

    iget v9, v9, Lorg/jbox2d/common/Vec2;->x:F

    neg-float v9, v9

    mul-float/2addr v8, v9

    mul-float/2addr v8, v10

    iget v9, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->m_impulse:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 203
    :cond_a0
    const/4 v6, 0x0

    iput v6, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->m_impulse:F

    .line 205
    :cond_a3
    return-void
.end method

.method public solvePositionConstraints(Lorg/jbox2d/dynamics/SolverData;)Z
    .registers 3
    .param p1, "step"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 209
    iget-object v0, p1, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    invoke-direct {p0, v0}, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->constrainEdges([Lorg/jbox2d/dynamics/contacts/Position;)Z

    move-result v0

    return v0
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 16
    .param p1, "step"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    const/high16 v13, 0x3f000000    # 0.5f

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "crossMassSum":F
    const/4 v2, 0x0

    .line 217
    .local v2, "dotMassSum":F
    iget-object v8, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    .line 218
    .local v8, "velocities":[Lorg/jbox2d/dynamics/contacts/Velocity;
    iget-object v6, p1, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    .line 219
    .local v6, "positions":[Lorg/jbox2d/dynamics/contacts/Position;
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v10, v10

    invoke-interface {v9, v10}, Lorg/jbox2d/pooling/IWorldPool;->getVec2Array(I)[Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 221
    .local v1, "d":[Lorg/jbox2d/common/Vec2;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v9, v9

    if-ge v3, v9, :cond_6e

    .line 222
    if-nez v3, :cond_68

    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v9, v9

    add-int/lit8 v7, v9, -0x1

    .line 223
    .local v7, "prev":I
    :goto_1e
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_6b

    const/4 v5, 0x0

    .line 224
    .local v5, "next":I
    :goto_26
    aget-object v9, v1, v3

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v10, v10, v5

    iget v10, v10, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v10, v6, v10

    iget-object v10, v10, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v9, v10}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 225
    aget-object v9, v1, v3

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v10, v10, v7

    iget v10, v10, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v10, v6, v10

    iget-object v10, v10, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v9, v10}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 226
    aget-object v9, v1, v3

    invoke-virtual {v9}, Lorg/jbox2d/common/Vec2;->lengthSquared()F

    move-result v9

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Lorg/jbox2d/dynamics/Body;->getMass()F

    move-result v10

    div-float/2addr v9, v10

    add-float/2addr v2, v9

    .line 227
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v9, v9, v3

    iget v9, v9, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v9, v8, v9

    iget-object v9, v9, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    aget-object v10, v1, v3

    invoke-static {v9, v10}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v9

    add-float/2addr v0, v9

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 222
    .end local v5    # "next":I
    .end local v7    # "prev":I
    :cond_68
    add-int/lit8 v7, v3, -0x1

    goto :goto_1e

    .line 223
    .restart local v7    # "prev":I
    :cond_6b
    add-int/lit8 v5, v3, 0x1

    goto :goto_26

    .line 229
    .end local v7    # "prev":I
    :cond_6e
    const/high16 v9, -0x40000000    # -2.0f

    mul-float/2addr v9, v0

    div-float v4, v9, v2

    .line 233
    .local v4, "lambda":F
    iget v9, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->m_impulse:F

    add-float/2addr v9, v4

    iput v9, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->m_impulse:F

    .line 235
    const/4 v3, 0x0

    :goto_79
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    array-length v9, v9

    if-ge v3, v9, :cond_ba

    .line 236
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v9, v9, v3

    iget v9, v9, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v9, v8, v9

    iget-object v9, v9, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    iget v10, v9, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v11, v11, v3

    iget v11, v11, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    aget-object v12, v1, v3

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v11, v12

    mul-float/2addr v11, v13

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    iput v10, v9, Lorg/jbox2d/common/Vec2;->x:F

    .line 237
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v9, v9, v3

    iget v9, v9, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    aget-object v9, v8, v9

    iget-object v9, v9, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    iget v10, v9, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/ConstantVolumeJoint;->bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v11, v11, v3

    iget v11, v11, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    aget-object v12, v1, v3

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    neg-float v12, v12

    mul-float/2addr v11, v12

    mul-float/2addr v11, v13

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    iput v10, v9, Lorg/jbox2d/common/Vec2;->y:F

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    .line 239
    :cond_ba
    return-void
.end method
