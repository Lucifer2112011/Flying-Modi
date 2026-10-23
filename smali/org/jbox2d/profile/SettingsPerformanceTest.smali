###### Class org.jbox2d.profile.SettingsPerformanceTest (org.jbox2d.profile.SettingsPerformanceTest)
.class public abstract Lorg/jbox2d/profile/SettingsPerformanceTest;
.super Lorg/jbox2d/profile/BasicPerformanceTest;
.source "SettingsPerformanceTest.java"


# static fields
.field private static NUM_TESTS:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const/16 v0, 0x8

    sput v0, Lorg/jbox2d/profile/SettingsPerformanceTest;->NUM_TESTS:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "iters"    # I

    .prologue
    .line 10
    sget v0, Lorg/jbox2d/profile/SettingsPerformanceTest;->NUM_TESTS:I

    invoke-direct {p0, v0, p1}, Lorg/jbox2d/profile/BasicPerformanceTest;-><init>(II)V

    .line 11
    return-void
.end method


# virtual methods
.method public getTestName(I)Ljava/lang/String;
    .registers 3
    .param p1, "testNum"    # I

    .prologue
    .line 38
    packed-switch p1, :pswitch_data_1e

    .line 56
    const-string v0, ""

    :goto_5
    return-object v0

    .line 40
    :pswitch_6
    const-string v0, "No optimizations"

    goto :goto_5

    .line 42
    :pswitch_9
    const-string v0, "Fast abs"

    goto :goto_5

    .line 44
    :pswitch_c
    const-string v0, "Fast atan2"

    goto :goto_5

    .line 46
    :pswitch_f
    const-string v0, "Fast ceil"

    goto :goto_5

    .line 48
    :pswitch_12
    const-string v0, "Fast floor"

    goto :goto_5

    .line 50
    :pswitch_15
    const-string v0, "Fast round"

    goto :goto_5

    .line 52
    :pswitch_18
    const-string v0, "Sincos lookup table"

    goto :goto_5

    .line 54
    :pswitch_1b
    const-string v0, "All optimizations on"

    goto :goto_5

    .line 38
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method

.method public abstract runBenchmarkWorld()V
.end method

.method public runTest(I)V
    .registers 5
    .param p1, "testNum"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 15
    if-ne p1, v1, :cond_38

    move v0, v1

    :goto_5
    sput-boolean v0, Lorg/jbox2d/common/Settings;->FAST_ABS:Z

    .line 16
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3a

    move v0, v1

    :goto_b
    sput-boolean v0, Lorg/jbox2d/common/Settings;->FAST_ATAN2:Z

    .line 17
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3c

    move v0, v1

    :goto_11
    sput-boolean v0, Lorg/jbox2d/common/Settings;->FAST_CEIL:Z

    .line 18
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3e

    move v0, v1

    :goto_17
    sput-boolean v0, Lorg/jbox2d/common/Settings;->FAST_FLOOR:Z

    .line 19
    const/4 v0, 0x5

    if-ne p1, v0, :cond_40

    move v0, v1

    :goto_1d
    sput-boolean v0, Lorg/jbox2d/common/Settings;->FAST_ROUND:Z

    .line 20
    const/4 v0, 0x6

    if-ne p1, v0, :cond_23

    move v2, v1

    :cond_23
    sput-boolean v2, Lorg/jbox2d/common/Settings;->SINCOS_LUT_ENABLED:Z

    .line 22
    const/4 v0, 0x7

    if-ne p1, v0, :cond_34

    .line 23
    sput-boolean v1, Lorg/jbox2d/common/Settings;->FAST_ABS:Z

    .line 24
    sput-boolean v1, Lorg/jbox2d/common/Settings;->FAST_ATAN2:Z

    .line 25
    sput-boolean v1, Lorg/jbox2d/common/Settings;->FAST_CEIL:Z

    .line 26
    sput-boolean v1, Lorg/jbox2d/common/Settings;->FAST_FLOOR:Z

    .line 27
    sput-boolean v1, Lorg/jbox2d/common/Settings;->FAST_ROUND:Z

    .line 28
    sput-boolean v1, Lorg/jbox2d/common/Settings;->SINCOS_LUT_ENABLED:Z

    .line 31
    :cond_34
    invoke-virtual {p0}, Lorg/jbox2d/profile/SettingsPerformanceTest;->runBenchmarkWorld()V

    .line 32
    return-void

    :cond_38
    move v0, v2

    .line 15
    goto :goto_5

    :cond_3a
    move v0, v2

    .line 16
    goto :goto_b

    :cond_3c
    move v0, v2

    .line 17
    goto :goto_11

    :cond_3e
    move v0, v2

    .line 18
    goto :goto_17

    :cond_40
    move v0, v2

    .line 19
    goto :goto_1d
.end method
