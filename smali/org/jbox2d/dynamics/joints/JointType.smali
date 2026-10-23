###### Class org.jbox2d.dynamics.joints.JointType (org.jbox2d.dynamics.joints.JointType)
.class public final enum Lorg/jbox2d/dynamics/joints/JointType;
.super Ljava/lang/Enum;
.source "JointType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jbox2d/dynamics/joints/JointType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum CONSTANT_VOLUME:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum DISTANCE:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum FRICTION:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum GEAR:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum MOUSE:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum PRISMATIC:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum PULLEY:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum REVOLUTE:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum ROPE:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum UNKNOWN:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum WELD:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum WHEEL:Lorg/jbox2d/dynamics/joints/JointType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->UNKNOWN:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "REVOLUTE"

    invoke-direct {v0, v1, v4}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "PRISMATIC"

    invoke-direct {v0, v1, v5}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->PRISMATIC:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "DISTANCE"

    invoke-direct {v0, v1, v6}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->DISTANCE:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "PULLEY"

    invoke-direct {v0, v1, v7}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->PULLEY:Lorg/jbox2d/dynamics/joints/JointType;

    .line 28
    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "MOUSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->MOUSE:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "GEAR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->GEAR:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "WHEEL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->WHEEL:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "WELD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->WELD:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "FRICTION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->FRICTION:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "ROPE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->ROPE:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "CONSTANT_VOLUME"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->CONSTANT_VOLUME:Lorg/jbox2d/dynamics/joints/JointType;

    .line 26
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/jbox2d/dynamics/joints/JointType;

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->UNKNOWN:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->PRISMATIC:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->DISTANCE:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->PULLEY:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->MOUSE:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->GEAR:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->WHEEL:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->WELD:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->FRICTION:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->ROPE:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->CONSTANT_VOLUME:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->$VALUES:[Lorg/jbox2d/dynamics/joints/JointType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jbox2d/dynamics/joints/JointType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/jbox2d/dynamics/joints/JointType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/dynamics/joints/JointType;

    return-object v0
.end method

.method public static values()[Lorg/jbox2d/dynamics/joints/JointType;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->$VALUES:[Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v0}, [Lorg/jbox2d/dynamics/joints/JointType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/dynamics/joints/JointType;

    return-object v0
.end method
