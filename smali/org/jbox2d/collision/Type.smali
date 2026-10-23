###### Class org.jbox2d.collision.Type (org.jbox2d.collision.Type)
.class final enum Lorg/jbox2d/collision/Type;
.super Ljava/lang/Enum;
.source "TimeOfImpact.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jbox2d/collision/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jbox2d/collision/Type;

.field public static final enum FACE_A:Lorg/jbox2d/collision/Type;

.field public static final enum FACE_B:Lorg/jbox2d/collision/Type;

.field public static final enum POINTS:Lorg/jbox2d/collision/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 310
    new-instance v0, Lorg/jbox2d/collision/Type;

    const-string v1, "POINTS"

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/collision/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Type;->POINTS:Lorg/jbox2d/collision/Type;

    new-instance v0, Lorg/jbox2d/collision/Type;

    const-string v1, "FACE_A"

    invoke-direct {v0, v1, v3}, Lorg/jbox2d/collision/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Type;->FACE_A:Lorg/jbox2d/collision/Type;

    new-instance v0, Lorg/jbox2d/collision/Type;

    const-string v1, "FACE_B"

    invoke-direct {v0, v1, v4}, Lorg/jbox2d/collision/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Type;->FACE_B:Lorg/jbox2d/collision/Type;

    .line 309
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jbox2d/collision/Type;

    sget-object v1, Lorg/jbox2d/collision/Type;->POINTS:Lorg/jbox2d/collision/Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jbox2d/collision/Type;->FACE_A:Lorg/jbox2d/collision/Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jbox2d/collision/Type;->FACE_B:Lorg/jbox2d/collision/Type;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jbox2d/collision/Type;->$VALUES:[Lorg/jbox2d/collision/Type;

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
    .line 309
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jbox2d/collision/Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 309
    const-class v0, Lorg/jbox2d/collision/Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/collision/Type;

    return-object v0
.end method

.method public static values()[Lorg/jbox2d/collision/Type;
    .registers 1

    .prologue
    .line 309
    sget-object v0, Lorg/jbox2d/collision/Type;->$VALUES:[Lorg/jbox2d/collision/Type;

    invoke-virtual {v0}, [Lorg/jbox2d/collision/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/collision/Type;

    return-object v0
.end method
