###### Class org.jbox2d.collision.Manifold (org.jbox2d.collision.Manifold)
.class public Lorg/jbox2d/collision/Manifold;
.super Ljava/lang/Object;
.source "Manifold.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/collision/Manifold$ManifoldType;
    }
.end annotation


# instance fields
.field public final localNormal:Lorg/jbox2d/common/Vec2;

.field public final localPoint:Lorg/jbox2d/common/Vec2;

.field public pointCount:I

.field public final points:[Lorg/jbox2d/collision/ManifoldPoint;

.field public type:Lorg/jbox2d/collision/Manifold$ManifoldType;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-array v1, v3, [Lorg/jbox2d/collision/ManifoldPoint;

    iput-object v1, p0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v3, :cond_17

    .line 77
    iget-object v1, p0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    new-instance v2, Lorg/jbox2d/collision/ManifoldPoint;

    invoke-direct {v2}, Lorg/jbox2d/collision/ManifoldPoint;-><init>()V

    aput-object v2, v1, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 79
    :cond_17
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    .line 80
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/Manifold;)V
    .registers 7
    .param p1, "other"    # Lorg/jbox2d/collision/Manifold;

    .prologue
    const/4 v4, 0x2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-array v1, v4, [Lorg/jbox2d/collision/ManifoldPoint;

    iput-object v1, p0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    .line 91
    iget-object v1, p1, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iput-object v1, p0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    .line 92
    iget-object v1, p1, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iput-object v1, p0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    .line 93
    iget v1, p1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    iput v1, p0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 94
    iget-object v1, p1, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    iput-object v1, p0, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    if-ge v0, v4, :cond_33

    .line 97
    iget-object v1, p0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    new-instance v2, Lorg/jbox2d/collision/ManifoldPoint;

    iget-object v3, p1, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lorg/jbox2d/collision/ManifoldPoint;-><init>(Lorg/jbox2d/collision/ManifoldPoint;)V

    aput-object v2, v1, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 99
    :cond_33
    return-void
.end method


# virtual methods
.method public set(Lorg/jbox2d/collision/Manifold;)V
    .registers 5
    .param p1, "cp"    # Lorg/jbox2d/collision/Manifold;

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-ge v0, v1, :cond_13

    .line 108
    iget-object v1, p0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v1, v1, v0

    iget-object v2, p1, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/jbox2d/collision/ManifoldPoint;->set(Lorg/jbox2d/collision/ManifoldPoint;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_13
    iget-object v1, p1, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    iput-object v1, p0, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 112
    iget-object v1, p0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    iget-object v2, p1, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 113
    iget-object v1, p0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    iget-object v2, p1, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 114
    iget v1, p1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    iput v1, p0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 115
    return-void
.end method

###### Class org.jbox2d.collision.Manifold.ManifoldType (org.jbox2d.collision.Manifold$ManifoldType)
.class public final enum Lorg/jbox2d/collision/Manifold$ManifoldType;
.super Ljava/lang/Enum;
.source "Manifold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Manifold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManifoldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jbox2d/collision/Manifold$ManifoldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jbox2d/collision/Manifold$ManifoldType;

.field public static final enum CIRCLES:Lorg/jbox2d/collision/Manifold$ManifoldType;

.field public static final enum FACE_A:Lorg/jbox2d/collision/Manifold$ManifoldType;

.field public static final enum FACE_B:Lorg/jbox2d/collision/Manifold$ManifoldType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lorg/jbox2d/collision/Manifold$ManifoldType;

    const-string v1, "CIRCLES"

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/collision/Manifold$ManifoldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Manifold$ManifoldType;->CIRCLES:Lorg/jbox2d/collision/Manifold$ManifoldType;

    new-instance v0, Lorg/jbox2d/collision/Manifold$ManifoldType;

    const-string v1, "FACE_A"

    invoke-direct {v0, v1, v3}, Lorg/jbox2d/collision/Manifold$ManifoldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_A:Lorg/jbox2d/collision/Manifold$ManifoldType;

    new-instance v0, Lorg/jbox2d/collision/Manifold$ManifoldType;

    const-string v1, "FACE_B"

    invoke-direct {v0, v1, v4}, Lorg/jbox2d/collision/Manifold$ManifoldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_B:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jbox2d/collision/Manifold$ManifoldType;

    sget-object v1, Lorg/jbox2d/collision/Manifold$ManifoldType;->CIRCLES:Lorg/jbox2d/collision/Manifold$ManifoldType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_A:Lorg/jbox2d/collision/Manifold$ManifoldType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_B:Lorg/jbox2d/collision/Manifold$ManifoldType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jbox2d/collision/Manifold$ManifoldType;->$VALUES:[Lorg/jbox2d/collision/Manifold$ManifoldType;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jbox2d/collision/Manifold$ManifoldType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lorg/jbox2d/collision/Manifold$ManifoldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/collision/Manifold$ManifoldType;

    return-object v0
.end method

.method public static values()[Lorg/jbox2d/collision/Manifold$ManifoldType;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lorg/jbox2d/collision/Manifold$ManifoldType;->$VALUES:[Lorg/jbox2d/collision/Manifold$ManifoldType;

    invoke-virtual {v0}, [Lorg/jbox2d/collision/Manifold$ManifoldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/collision/Manifold$ManifoldType;

    return-object v0
.end method
