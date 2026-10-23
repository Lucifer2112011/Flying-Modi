###### Class org.jbox2d.dynamics.joints.LimitState (org.jbox2d.dynamics.joints.LimitState)
.class public final enum Lorg/jbox2d/dynamics/joints/LimitState;
.super Ljava/lang/Enum;
.source "LimitState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jbox2d/dynamics/joints/LimitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jbox2d/dynamics/joints/LimitState;

.field public static final enum AT_LOWER:Lorg/jbox2d/dynamics/joints/LimitState;

.field public static final enum AT_UPPER:Lorg/jbox2d/dynamics/joints/LimitState;

.field public static final enum EQUAL:Lorg/jbox2d/dynamics/joints/LimitState;

.field public static final enum INACTIVE:Lorg/jbox2d/dynamics/joints/LimitState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/jbox2d/dynamics/joints/LimitState;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/dynamics/joints/LimitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE:Lorg/jbox2d/dynamics/joints/LimitState;

    new-instance v0, Lorg/jbox2d/dynamics/joints/LimitState;

    const-string v1, "AT_LOWER"

    invoke-direct {v0, v1, v3}, Lorg/jbox2d/dynamics/joints/LimitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER:Lorg/jbox2d/dynamics/joints/LimitState;

    new-instance v0, Lorg/jbox2d/dynamics/joints/LimitState;

    const-string v1, "AT_UPPER"

    invoke-direct {v0, v1, v4}, Lorg/jbox2d/dynamics/joints/LimitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER:Lorg/jbox2d/dynamics/joints/LimitState;

    new-instance v0, Lorg/jbox2d/dynamics/joints/LimitState;

    const-string v1, "EQUAL"

    invoke-direct {v0, v1, v5}, Lorg/jbox2d/dynamics/joints/LimitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jbox2d/dynamics/joints/LimitState;

    sget-object v1, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE:Lorg/jbox2d/dynamics/joints/LimitState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER:Lorg/jbox2d/dynamics/joints/LimitState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER:Lorg/jbox2d/dynamics/joints/LimitState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL:Lorg/jbox2d/dynamics/joints/LimitState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->$VALUES:[Lorg/jbox2d/dynamics/joints/LimitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jbox2d/dynamics/joints/LimitState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/jbox2d/dynamics/joints/LimitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/dynamics/joints/LimitState;

    return-object v0
.end method

.method public static values()[Lorg/jbox2d/dynamics/joints/LimitState;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->$VALUES:[Lorg/jbox2d/dynamics/joints/LimitState;

    invoke-virtual {v0}, [Lorg/jbox2d/dynamics/joints/LimitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/dynamics/joints/LimitState;

    return-object v0
.end method
