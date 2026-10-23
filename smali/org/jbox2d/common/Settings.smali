###### Class org.jbox2d.common.Settings (org.jbox2d.common.Settings)
.class public Lorg/jbox2d/common/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static CONTACT_STACK_INIT_SIZE:I = 0x0

.field public static final EPSILON:F = 1.1920929E-7f

.field public static FAST_ABS:Z = false

.field public static FAST_ATAN2:Z = false

.field public static FAST_CEIL:Z = false

.field public static FAST_FLOOR:Z = false

.field public static FAST_ROUND:Z = false

.field public static final PI:F = 3.1415927f

.field public static SINCOS_LUT_ENABLED:Z = false

.field public static final SINCOS_LUT_LENGTH:I

.field public static SINCOS_LUT_LERP:Z = false

.field public static final SINCOS_LUT_PRECISION:F = 1.1E-4f

.field public static final aabbExtension:F = 0.1f

.field public static final aabbMultiplier:F = 2.0f

.field public static final angularSleepTolerance:F = 0.03490659f

.field public static final angularSlop:F = 0.03490659f

.field public static final baumgarte:F = 0.2f

.field public static final linearSleepTolerance:F = 0.01f

.field public static final linearSlop:F = 0.005f

.field public static final maxAngularCorrection:F = 0.13962635f

.field public static final maxLinearCorrection:F = 0.2f

.field public static final maxManifoldPoints:I = 0x2

.field public static final maxPolygonVertices:I = 0x8

.field public static final maxRotation:F = 1.5707964f

.field public static maxRotationSquared:F = 0.0f

.field public static final maxSubSteps:I = 0x8

.field public static final maxTOIContacts:I = 0x20

.field public static final maxTranslation:F = 2.0f

.field public static final maxTranslationSquared:F = 4.0f

.field public static final polygonRadius:F = 0.01f

.field public static final timeToSleep:F = 0.5f

.field public static final toiBaugarte:F = 0.75f

.field public static final velocityThreshold:F = 1.0f


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 39
    sput-boolean v1, Lorg/jbox2d/common/Settings;->FAST_ABS:Z

    .line 40
    sput-boolean v1, Lorg/jbox2d/common/Settings;->FAST_FLOOR:Z

    .line 41
    sput-boolean v1, Lorg/jbox2d/common/Settings;->FAST_CEIL:Z

    .line 42
    sput-boolean v1, Lorg/jbox2d/common/Settings;->FAST_ROUND:Z

    .line 43
    sput-boolean v1, Lorg/jbox2d/common/Settings;->FAST_ATAN2:Z

    .line 45
    const/16 v0, 0xa

    sput v0, Lorg/jbox2d/common/Settings;->CONTACT_STACK_INIT_SIZE:I

    .line 46
    sput-boolean v1, Lorg/jbox2d/common/Settings;->SINCOS_LUT_ENABLED:Z

    .line 72
    const-wide v0, 0x40ebe3fbb621829bL    # 57119.86598277577

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lorg/jbox2d/common/Settings;->SINCOS_LUT_LENGTH:I

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lorg/jbox2d/common/Settings;->SINCOS_LUT_LERP:Z

    .line 164
    const v0, 0x401de9e7

    sput v0, Lorg/jbox2d/common/Settings;->maxRotationSquared:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final mixFriction(FF)F
    .registers 3
    .param p0, "friction1"    # F
    .param p1, "friction2"    # F

    .prologue
    .line 199
    mul-float v0, p0, p1

    invoke-static {v0}, Lorg/jbox2d/common/MathUtils;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public static final mixRestitution(FF)F
    .registers 3
    .param p0, "restitution1"    # F
    .param p1, "restitution2"    # F

    .prologue
    .line 210
    cmpl-float v0, p0, p1

    if-lez v0, :cond_5

    .end local p0    # "restitution1":F
    :goto_4
    return p0

    .restart local p0    # "restitution1":F
    :cond_5
    move p0, p1

    goto :goto_4
.end method
