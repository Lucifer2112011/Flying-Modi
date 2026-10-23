###### Class org.jbox2d.profile.BasicPerformanceTest (org.jbox2d.profile.BasicPerformanceTest)
.class public abstract Lorg/jbox2d/profile/BasicPerformanceTest;
.super Ljava/lang/Object;
.source "BasicPerformanceTest.java"


# instance fields
.field private final iters:I

.field private final numTests:I

.field protected final times:[J


# direct methods
.method public constructor <init>(II)V
    .registers 7
    .param p1, "numTests"    # I
    .param p2, "iters"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lorg/jbox2d/profile/BasicPerformanceTest;->numTests:I

    .line 39
    iput p2, p0, Lorg/jbox2d/profile/BasicPerformanceTest;->iters:I

    .line 40
    new-array v1, p1, [J

    iput-object v1, p0, Lorg/jbox2d/profile/BasicPerformanceTest;->times:[J

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, p1, :cond_17

    .line 42
    iget-object v1, p0, Lorg/jbox2d/profile/BasicPerformanceTest;->times:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 44
    :cond_17
    return-void
.end method


# virtual methods
.method public getFrames(I)I
    .registers 3
    .param p1, "testNum"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getTestName(I)Ljava/lang/String;
.end method

.method public getTestTime(I)D
    .registers 6
    .param p1, "testNum"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jbox2d/profile/BasicPerformanceTest;->times:[J

    aget-wide v0, v0, p1

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public go()V
    .registers 13

    .prologue
    .line 52
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v6, p0, Lorg/jbox2d/profile/BasicPerformanceTest;->iters:I

    if-ge v2, v6, :cond_42

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v8, v2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    iget v7, p0, Lorg/jbox2d/profile/BasicPerformanceTest;->iters:I

    int-to-double v10, v7

    div-double/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/jbox2d/profile/BasicPerformanceTest;->println(Ljava/lang/String;)V

    .line 54
    const/4 v3, 0x0

    .local v3, "test":I
    :goto_24
    iget v6, p0, Lorg/jbox2d/profile/BasicPerformanceTest;->numTests:I

    if-ge v3, v6, :cond_3f

    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 56
    .local v4, "prev":J
    invoke-virtual {p0, v3}, Lorg/jbox2d/profile/BasicPerformanceTest;->runTest(I)V

    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 58
    .local v0, "after":J
    iget-object v6, p0, Lorg/jbox2d/profile/BasicPerformanceTest;->times:[J

    aget-wide v8, v6, v3

    sub-long v10, v0, v4

    add-long/2addr v8, v10

    aput-wide v8, v6, v3

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 52
    .end local v0    # "after":J
    .end local v4    # "prev":J
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61
    .end local v3    # "test":I
    :cond_42
    const/4 v3, 0x0

    .restart local v3    # "test":I
    :goto_43
    iget v6, p0, Lorg/jbox2d/profile/BasicPerformanceTest;->numTests:I

    if-ge v3, v6, :cond_54

    .line 62
    iget-object v6, p0, Lorg/jbox2d/profile/BasicPerformanceTest;->times:[J

    aget-wide v8, v6, v3

    iget v7, p0, Lorg/jbox2d/profile/BasicPerformanceTest;->iters:I

    int-to-long v10, v7

    div-long/2addr v8, v10

    aput-wide v8, v6, v3

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 64
    :cond_54
    invoke-virtual {p0}, Lorg/jbox2d/profile/BasicPerformanceTest;->printResults()V

    .line 65
    return-void
.end method

.method public printResults()V
    .registers 15

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 68
    const-string v3, "%-20s%20s%20s\n"

    new-array v6, v13, [Ljava/lang/Object;

    const-string v7, "Test Name"

    aput-object v7, v6, v10

    const-string v7, "Milliseconds Avg"

    aput-object v7, v6, v11

    const-string v7, "FPS (optional)"

    aput-object v7, v6, v12

    invoke-virtual {p0, v3, v6}, Lorg/jbox2d/profile/BasicPerformanceTest;->printf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    iget v3, p0, Lorg/jbox2d/profile/BasicPerformanceTest;->numTests:I

    if-ge v2, v3, :cond_6e

    .line 71
    iget-object v3, p0, Lorg/jbox2d/profile/BasicPerformanceTest;->times:[J

    aget-wide v6, v3, v2

    long-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v8

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double v4, v6, v8

    .line 72
    .local v4, "milliseconds":D
    invoke-virtual {p0, v2}, Lorg/jbox2d/profile/BasicPerformanceTest;->getFrames(I)I

    move-result v3

    if-eqz v3, :cond_5a

    .line 73
    invoke-virtual {p0, v2}, Lorg/jbox2d/profile/BasicPerformanceTest;->getFrames(I)I

    move-result v3

    int-to-double v6, v3

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    div-double v0, v6, v4

    .line 74
    .local v0, "fps":D
    const-string v3, "%-20s%20.4f%20.4f\n"

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lorg/jbox2d/profile/BasicPerformanceTest;->getTestName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-virtual {p0, v3, v6}, Lorg/jbox2d/profile/BasicPerformanceTest;->printf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .end local v0    # "fps":D
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 76
    :cond_5a
    const-string v3, "%-20s%20.4f\n"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lorg/jbox2d/profile/BasicPerformanceTest;->getTestName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v3, v6}, Lorg/jbox2d/profile/BasicPerformanceTest;->printf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_57

    .line 79
    .end local v4    # "milliseconds":D
    :cond_6e
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 95
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 96
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public abstract runTest(I)V
.end method
