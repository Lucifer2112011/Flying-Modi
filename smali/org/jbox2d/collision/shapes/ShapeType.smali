###### Class org.jbox2d.collision.shapes.ShapeType (org.jbox2d.collision.shapes.ShapeType)
.class public final enum Lorg/jbox2d/collision/shapes/ShapeType;
.super Ljava/lang/Enum;
.source "ShapeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jbox2d/collision/shapes/ShapeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jbox2d/collision/shapes/ShapeType;

.field public static final enum CHAIN:Lorg/jbox2d/collision/shapes/ShapeType;

.field public static final enum CIRCLE:Lorg/jbox2d/collision/shapes/ShapeType;

.field public static final enum EDGE:Lorg/jbox2d/collision/shapes/ShapeType;

.field public static final enum POLYGON:Lorg/jbox2d/collision/shapes/ShapeType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lorg/jbox2d/collision/shapes/ShapeType;

    const-string v1, "CIRCLE"

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/collision/shapes/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/shapes/ShapeType;->CIRCLE:Lorg/jbox2d/collision/shapes/ShapeType;

    new-instance v0, Lorg/jbox2d/collision/shapes/ShapeType;

    const-string v1, "EDGE"

    invoke-direct {v0, v1, v3}, Lorg/jbox2d/collision/shapes/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/shapes/ShapeType;->EDGE:Lorg/jbox2d/collision/shapes/ShapeType;

    new-instance v0, Lorg/jbox2d/collision/shapes/ShapeType;

    const-string v1, "POLYGON"

    invoke-direct {v0, v1, v4}, Lorg/jbox2d/collision/shapes/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/shapes/ShapeType;->POLYGON:Lorg/jbox2d/collision/shapes/ShapeType;

    new-instance v0, Lorg/jbox2d/collision/shapes/ShapeType;

    const-string v1, "CHAIN"

    invoke-direct {v0, v1, v5}, Lorg/jbox2d/collision/shapes/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/shapes/ShapeType;->CHAIN:Lorg/jbox2d/collision/shapes/ShapeType;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jbox2d/collision/shapes/ShapeType;

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->CIRCLE:Lorg/jbox2d/collision/shapes/ShapeType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->EDGE:Lorg/jbox2d/collision/shapes/ShapeType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->POLYGON:Lorg/jbox2d/collision/shapes/ShapeType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->CHAIN:Lorg/jbox2d/collision/shapes/ShapeType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jbox2d/collision/shapes/ShapeType;->$VALUES:[Lorg/jbox2d/collision/shapes/ShapeType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jbox2d/collision/shapes/ShapeType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/collision/shapes/ShapeType;

    return-object v0
.end method

.method public static values()[Lorg/jbox2d/collision/shapes/ShapeType;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lorg/jbox2d/collision/shapes/ShapeType;->$VALUES:[Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-virtual {v0}, [Lorg/jbox2d/collision/shapes/ShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/collision/shapes/ShapeType;

    return-object v0
.end method
