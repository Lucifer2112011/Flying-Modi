###### Class org.jbox2d.collision.ContactID (org.jbox2d.collision.ContactID)
.class public Lorg/jbox2d/collision/ContactID;
.super Ljava/lang/Object;
.source "ContactID.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/collision/ContactID$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jbox2d/collision/ContactID;",
        ">;"
    }
.end annotation


# instance fields
.field public indexA:B

.field public indexB:B

.field public typeA:B

.field public typeB:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/ContactID;)V
    .registers 2
    .param p1, "c"    # Lorg/jbox2d/collision/ContactID;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lorg/jbox2d/collision/ContactID;->set(Lorg/jbox2d/collision/ContactID;)V

    .line 74
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Lorg/jbox2d/collision/ContactID;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jbox2d/collision/ContactID;->compareTo(Lorg/jbox2d/collision/ContactID;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jbox2d/collision/ContactID;)I
    .registers 4
    .param p1, "o"    # Lorg/jbox2d/collision/ContactID;

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/jbox2d/collision/ContactID;->getKey()I

    move-result v0

    invoke-virtual {p1}, Lorg/jbox2d/collision/ContactID;->getKey()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public flip()V
    .registers 3

    .prologue
    .line 84
    iget-byte v0, p0, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 85
    .local v0, "tempA":B
    iget-byte v1, p0, Lorg/jbox2d/collision/ContactID;->indexB:B

    iput-byte v1, p0, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 86
    iput-byte v0, p0, Lorg/jbox2d/collision/ContactID;->indexB:B

    .line 87
    iget-byte v0, p0, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 88
    iget-byte v1, p0, Lorg/jbox2d/collision/ContactID;->typeB:B

    iput-byte v1, p0, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 89
    iput-byte v0, p0, Lorg/jbox2d/collision/ContactID;->typeB:B

    .line 90
    return-void
.end method

.method public getKey()I
    .registers 3

    .prologue
    .line 63
    iget-byte v0, p0, Lorg/jbox2d/collision/ContactID;->indexA:B

    shl-int/lit8 v0, v0, 0x18

    iget-byte v1, p0, Lorg/jbox2d/collision/ContactID;->indexB:B

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-byte v1, p0, Lorg/jbox2d/collision/ContactID;->typeA:B

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-byte v1, p0, Lorg/jbox2d/collision/ContactID;->typeB:B

    or-int/2addr v0, v1

    return v0
.end method

.method public isEqual(Lorg/jbox2d/collision/ContactID;)Z
    .registers 4
    .param p1, "cid"    # Lorg/jbox2d/collision/ContactID;

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/jbox2d/collision/ContactID;->getKey()I

    move-result v0

    invoke-virtual {p1}, Lorg/jbox2d/collision/ContactID;->getKey()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public set(Lorg/jbox2d/collision/ContactID;)V
    .registers 3
    .param p1, "c"    # Lorg/jbox2d/collision/ContactID;

    .prologue
    .line 77
    iget-byte v0, p1, Lorg/jbox2d/collision/ContactID;->indexA:B

    iput-byte v0, p0, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 78
    iget-byte v0, p1, Lorg/jbox2d/collision/ContactID;->indexB:B

    iput-byte v0, p0, Lorg/jbox2d/collision/ContactID;->indexB:B

    .line 79
    iget-byte v0, p1, Lorg/jbox2d/collision/ContactID;->typeA:B

    iput-byte v0, p0, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 80
    iget-byte v0, p1, Lorg/jbox2d/collision/ContactID;->typeB:B

    iput-byte v0, p0, Lorg/jbox2d/collision/ContactID;->typeB:B

    .line 81
    return-void
.end method

.method public zero()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 96
    iput-byte v0, p0, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 97
    iput-byte v0, p0, Lorg/jbox2d/collision/ContactID;->indexB:B

    .line 98
    iput-byte v0, p0, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 99
    iput-byte v0, p0, Lorg/jbox2d/collision/ContactID;->typeB:B

    .line 100
    return-void
.end method

###### Class org.jbox2d.collision.ContactID.Type (org.jbox2d.collision.ContactID$Type)
.class public final enum Lorg/jbox2d/collision/ContactID$Type;
.super Ljava/lang/Enum;
.source "ContactID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/ContactID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jbox2d/collision/ContactID$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jbox2d/collision/ContactID$Type;

.field public static final enum FACE:Lorg/jbox2d/collision/ContactID$Type;

.field public static final enum VERTEX:Lorg/jbox2d/collision/ContactID$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lorg/jbox2d/collision/ContactID$Type;

    const-string v1, "VERTEX"

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/collision/ContactID$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/ContactID$Type;->VERTEX:Lorg/jbox2d/collision/ContactID$Type;

    new-instance v0, Lorg/jbox2d/collision/ContactID$Type;

    const-string v1, "FACE"

    invoke-direct {v0, v1, v3}, Lorg/jbox2d/collision/ContactID$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/ContactID$Type;->FACE:Lorg/jbox2d/collision/ContactID$Type;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jbox2d/collision/ContactID$Type;

    sget-object v1, Lorg/jbox2d/collision/ContactID$Type;->VERTEX:Lorg/jbox2d/collision/ContactID$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jbox2d/collision/ContactID$Type;->FACE:Lorg/jbox2d/collision/ContactID$Type;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jbox2d/collision/ContactID$Type;->$VALUES:[Lorg/jbox2d/collision/ContactID$Type;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jbox2d/collision/ContactID$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lorg/jbox2d/collision/ContactID$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/collision/ContactID$Type;

    return-object v0
.end method

.method public static values()[Lorg/jbox2d/collision/ContactID$Type;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lorg/jbox2d/collision/ContactID$Type;->$VALUES:[Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual {v0}, [Lorg/jbox2d/collision/ContactID$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/collision/ContactID$Type;

    return-object v0
.end method
