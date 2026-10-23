###### Class org.jbox2d.pooling.normal.DefaultWorldPool (org.jbox2d.pooling.normal.DefaultWorldPool)
.class public Lorg/jbox2d/pooling/normal/DefaultWorldPool;
.super Ljava/lang/Object;
.source "DefaultWorldPool.java"

# interfaces
.implements Lorg/jbox2d/pooling/IWorldPool;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final aabbs:Lorg/jbox2d/pooling/normal/OrderedStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jbox2d/pooling/normal/OrderedStack",
            "<",
            "Lorg/jbox2d/collision/AABB;",
            ">;"
        }
    .end annotation
.end field

.field private final afloats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[F>;"
        }
    .end annotation
.end field

.field private final aints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private final avecs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/jbox2d/common/Vec2;",
            ">;"
        }
    .end annotation
.end field

.field private final ccstack:Lorg/jbox2d/pooling/normal/MutableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jbox2d/pooling/normal/MutableStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final chcstack:Lorg/jbox2d/pooling/normal/MutableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jbox2d/pooling/normal/MutableStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final chpstack:Lorg/jbox2d/pooling/normal/MutableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jbox2d/pooling/normal/MutableStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final collision:Lorg/jbox2d/collision/Collision;

.field private final cpstack:Lorg/jbox2d/pooling/normal/MutableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jbox2d/pooling/normal/MutableStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final dist:Lorg/jbox2d/collision/Distance;

.field private final ecstack:Lorg/jbox2d/pooling/normal/MutableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jbox2d/pooling/normal/MutableStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final epstack:Lorg/jbox2d/pooling/normal/MutableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jbox2d/pooling/normal/MutableStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final mat33s:Lorg/jbox2d/pooling/normal/OrderedStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jbox2d/pooling/normal/OrderedStack",
            "<",
            "Lorg/jbox2d/common/Mat33;",
            ">;"
        }
    .end annotation
.end field

.field private final mats:Lorg/jbox2d/pooling/normal/OrderedStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jbox2d/pooling/normal/OrderedStack",
            "<",
            "Lorg/jbox2d/common/Mat22;",
            ">;"
        }
    .end annotation
.end field

.field private final pcstack:Lorg/jbox2d/pooling/normal/MutableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jbox2d/pooling/normal/MutableStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final rots:Lorg/jbox2d/pooling/normal/OrderedStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jbox2d/pooling/normal/OrderedStack",
            "<",
            "Lorg/jbox2d/common/Rot;",
            ">;"
        }
    .end annotation
.end field

.field private final toi:Lorg/jbox2d/collision/TimeOfImpact;

.field private final vec3s:Lorg/jbox2d/pooling/normal/OrderedStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jbox2d/pooling/normal/OrderedStack",
            "<",
            "Lorg/jbox2d/common/Vec3;",
            ">;"
        }
    .end annotation
.end field

.field private final vecs:Lorg/jbox2d/pooling/normal/OrderedStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jbox2d/pooling/normal/OrderedStack",
            "<",
            "Lorg/jbox2d/common/Vec2;",
            ">;"
        }
    .end annotation
.end field

.field private final world:Lorg/jbox2d/pooling/IWorldPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-class v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "argSize"    # I
    .param p2, "argContainerSize"    # I

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->afloats:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->aints:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->avecs:Ljava/util/HashMap;

    .line 71
    iput-object p0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->world:Lorg/jbox2d/pooling/IWorldPool;

    .line 73
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$1;

    sget v1, Lorg/jbox2d/common/Settings;->CONTACT_STACK_INIT_SIZE:I

    invoke-direct {v0, p0, v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$1;-><init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;I)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->pcstack:Lorg/jbox2d/pooling/normal/MutableStack;

    .line 78
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$2;

    sget v1, Lorg/jbox2d/common/Settings;->CONTACT_STACK_INIT_SIZE:I

    invoke-direct {v0, p0, v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$2;-><init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;I)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->ccstack:Lorg/jbox2d/pooling/normal/MutableStack;

    .line 83
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$3;

    sget v1, Lorg/jbox2d/common/Settings;->CONTACT_STACK_INIT_SIZE:I

    invoke-direct {v0, p0, v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$3;-><init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;I)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->cpstack:Lorg/jbox2d/pooling/normal/MutableStack;

    .line 88
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$4;

    sget v1, Lorg/jbox2d/common/Settings;->CONTACT_STACK_INIT_SIZE:I

    invoke-direct {v0, p0, v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$4;-><init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;I)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->ecstack:Lorg/jbox2d/pooling/normal/MutableStack;

    .line 93
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$5;

    sget v1, Lorg/jbox2d/common/Settings;->CONTACT_STACK_INIT_SIZE:I

    invoke-direct {v0, p0, v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$5;-><init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;I)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->epstack:Lorg/jbox2d/pooling/normal/MutableStack;

    .line 98
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$6;

    sget v1, Lorg/jbox2d/common/Settings;->CONTACT_STACK_INIT_SIZE:I

    invoke-direct {v0, p0, v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$6;-><init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;I)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->chcstack:Lorg/jbox2d/pooling/normal/MutableStack;

    .line 103
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$7;

    sget v1, Lorg/jbox2d/common/Settings;->CONTACT_STACK_INIT_SIZE:I

    invoke-direct {v0, p0, v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$7;-><init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;I)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->chpstack:Lorg/jbox2d/pooling/normal/MutableStack;

    .line 113
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$8;

    invoke-direct {v0, p0, p1, p2}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$8;-><init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;II)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->vecs:Lorg/jbox2d/pooling/normal/OrderedStack;

    .line 116
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$9;-><init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;II)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->vec3s:Lorg/jbox2d/pooling/normal/OrderedStack;

    .line 119
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$10;

    invoke-direct {v0, p0, p1, p2}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$10;-><init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;II)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->mats:Lorg/jbox2d/pooling/normal/OrderedStack;

    .line 122
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$11;

    invoke-direct {v0, p0, p1, p2}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$11;-><init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;II)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->aabbs:Lorg/jbox2d/pooling/normal/OrderedStack;

    .line 125
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$12;-><init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;II)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->rots:Lorg/jbox2d/pooling/normal/OrderedStack;

    .line 128
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$13;

    invoke-direct {v0, p0, p1, p2}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$13;-><init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;II)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->mat33s:Lorg/jbox2d/pooling/normal/OrderedStack;

    .line 132
    new-instance v0, Lorg/jbox2d/collision/Distance;

    invoke-direct {v0}, Lorg/jbox2d/collision/Distance;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->dist:Lorg/jbox2d/collision/Distance;

    .line 133
    new-instance v0, Lorg/jbox2d/collision/Collision;

    invoke-direct {v0, p0}, Lorg/jbox2d/collision/Collision;-><init>(Lorg/jbox2d/pooling/IWorldPool;)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->collision:Lorg/jbox2d/collision/Collision;

    .line 134
    new-instance v0, Lorg/jbox2d/collision/TimeOfImpact;

    invoke-direct {v0, p0}, Lorg/jbox2d/collision/TimeOfImpact;-><init>(Lorg/jbox2d/pooling/IWorldPool;)V

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->toi:Lorg/jbox2d/collision/TimeOfImpact;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lorg/jbox2d/pooling/normal/DefaultWorldPool;)Lorg/jbox2d/pooling/IWorldPool;
    .registers 2
    .param p0, "x0"    # Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->world:Lorg/jbox2d/pooling/IWorldPool;

    return-object v0
.end method


# virtual methods
.method public getChainCircleContactStack()Lorg/jbox2d/pooling/IDynamicStack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->chcstack:Lorg/jbox2d/pooling/normal/MutableStack;

    return-object v0
.end method

.method public getChainPolyContactStack()Lorg/jbox2d/pooling/IDynamicStack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->chpstack:Lorg/jbox2d/pooling/normal/MutableStack;

    return-object v0
.end method

.method public final getCircleContactStack()Lorg/jbox2d/pooling/IDynamicStack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->ccstack:Lorg/jbox2d/pooling/normal/MutableStack;

    return-object v0
.end method

.method public final getCollision()Lorg/jbox2d/collision/Collision;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->collision:Lorg/jbox2d/collision/Collision;

    return-object v0
.end method

.method public final getDistance()Lorg/jbox2d/collision/Distance;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->dist:Lorg/jbox2d/collision/Distance;

    return-object v0
.end method

.method public getEdgeCircleContactStack()Lorg/jbox2d/pooling/IDynamicStack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->ecstack:Lorg/jbox2d/pooling/normal/MutableStack;

    return-object v0
.end method

.method public getEdgePolyContactStack()Lorg/jbox2d/pooling/IDynamicStack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->epstack:Lorg/jbox2d/pooling/normal/MutableStack;

    return-object v0
.end method

.method public final getFloatArray(I)[F
    .registers 5
    .param p1, "argLength"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->afloats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 247
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->afloats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, p1, [F

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_17
    sget-boolean v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->$assertionsDisabled:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->afloats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    array-length v0, v0

    if-eq v0, p1, :cond_32

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Array not built with correct length"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 251
    :cond_32
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->afloats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public final getIntArray(I)[I
    .registers 5
    .param p1, "argLength"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->aints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 256
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->aints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, p1, [I

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_17
    sget-boolean v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->$assertionsDisabled:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->aints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    if-eq v0, p1, :cond_32

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Array not built with correct length"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 260
    :cond_32
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->aints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public final getPolyCircleContactStack()Lorg/jbox2d/pooling/IDynamicStack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->cpstack:Lorg/jbox2d/pooling/normal/MutableStack;

    return-object v0
.end method

.method public final getPolyContactStack()Lorg/jbox2d/pooling/IDynamicStack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->pcstack:Lorg/jbox2d/pooling/normal/MutableStack;

    return-object v0
.end method

.method public final getTimeOfImpact()Lorg/jbox2d/collision/TimeOfImpact;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->toi:Lorg/jbox2d/collision/TimeOfImpact;

    return-object v0
.end method

.method public final getVec2Array(I)[Lorg/jbox2d/common/Vec2;
    .registers 6
    .param p1, "argLength"    # I

    .prologue
    .line 264
    iget-object v2, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->avecs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 265
    new-array v1, p1, [Lorg/jbox2d/common/Vec2;

    .line 266
    .local v1, "ray":[Lorg/jbox2d/common/Vec2;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, p1, :cond_1b

    .line 267
    new-instance v2, Lorg/jbox2d/common/Vec2;

    invoke-direct {v2}, Lorg/jbox2d/common/Vec2;-><init>()V

    aput-object v2, v1, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 269
    :cond_1b
    iget-object v2, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->avecs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .end local v0    # "i":I
    .end local v1    # "ray":[Lorg/jbox2d/common/Vec2;
    :cond_24
    sget-boolean v2, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->$assertionsDisabled:Z

    if-nez v2, :cond_3f

    iget-object v2, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->avecs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jbox2d/common/Vec2;

    array-length v2, v2

    if-eq v2, p1, :cond_3f

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Array not built with correct length"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 273
    :cond_3f
    iget-object v2, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->avecs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jbox2d/common/Vec2;

    return-object v2
.end method

.method public final popAABB()Lorg/jbox2d/collision/AABB;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->aabbs:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0}, Lorg/jbox2d/pooling/normal/OrderedStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/collision/AABB;

    return-object v0
.end method

.method public final popAABB(I)[Lorg/jbox2d/collision/AABB;
    .registers 3
    .param p1, "argNum"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->aabbs:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0, p1}, Lorg/jbox2d/pooling/normal/OrderedStack;->pop(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/collision/AABB;

    return-object v0
.end method

.method public final popMat22()Lorg/jbox2d/common/Mat22;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->mats:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0}, Lorg/jbox2d/pooling/normal/OrderedStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/common/Mat22;

    return-object v0
.end method

.method public final popMat22(I)[Lorg/jbox2d/common/Mat22;
    .registers 3
    .param p1, "argNum"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->mats:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0, p1}, Lorg/jbox2d/pooling/normal/OrderedStack;->pop(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/common/Mat22;

    return-object v0
.end method

.method public final popMat33()Lorg/jbox2d/common/Mat33;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->mat33s:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0}, Lorg/jbox2d/pooling/normal/OrderedStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/common/Mat33;

    return-object v0
.end method

.method public final popRot()Lorg/jbox2d/common/Rot;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->rots:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0}, Lorg/jbox2d/pooling/normal/OrderedStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/common/Rot;

    return-object v0
.end method

.method public final popVec2()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->vecs:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0}, Lorg/jbox2d/pooling/normal/OrderedStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public final popVec2(I)[Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "argNum"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->vecs:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0, p1}, Lorg/jbox2d/pooling/normal/OrderedStack;->pop(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public final popVec3()Lorg/jbox2d/common/Vec3;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->vec3s:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0}, Lorg/jbox2d/pooling/normal/OrderedStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/common/Vec3;

    return-object v0
.end method

.method public final popVec3(I)[Lorg/jbox2d/common/Vec3;
    .registers 3
    .param p1, "argNum"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->vec3s:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0, p1}, Lorg/jbox2d/pooling/normal/OrderedStack;->pop(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/common/Vec3;

    return-object v0
.end method

.method public final pushAABB(I)V
    .registers 3
    .param p1, "argNum"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->aabbs:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0, p1}, Lorg/jbox2d/pooling/normal/OrderedStack;->push(I)V

    .line 223
    return-void
.end method

.method public final pushMat22(I)V
    .registers 3
    .param p1, "argNum"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->mats:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0, p1}, Lorg/jbox2d/pooling/normal/OrderedStack;->push(I)V

    .line 203
    return-void
.end method

.method public final pushMat33(I)V
    .registers 3
    .param p1, "argNum"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->mat33s:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0, p1}, Lorg/jbox2d/pooling/normal/OrderedStack;->push(I)V

    .line 211
    return-void
.end method

.method public final pushRot(I)V
    .registers 3
    .param p1, "num"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->rots:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0, p1}, Lorg/jbox2d/pooling/normal/OrderedStack;->push(I)V

    .line 231
    return-void
.end method

.method public final pushVec2(I)V
    .registers 3
    .param p1, "argNum"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->vecs:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0, p1}, Lorg/jbox2d/pooling/normal/OrderedStack;->push(I)V

    .line 179
    return-void
.end method

.method public final pushVec3(I)V
    .registers 3
    .param p1, "argNum"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->vec3s:Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0, p1}, Lorg/jbox2d/pooling/normal/OrderedStack;->push(I)V

    .line 191
    return-void
.end method

###### Class org.jbox2d.pooling.normal.DefaultWorldPool.AnonymousClass1 (org.jbox2d.pooling.normal.DefaultWorldPool$1)
.class Lorg/jbox2d/pooling/normal/DefaultWorldPool$1;
.super Lorg/jbox2d/pooling/normal/MutableStack;
.source "DefaultWorldPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/pooling/normal/DefaultWorldPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jbox2d/pooling/normal/MutableStack",
        "<",
        "Lorg/jbox2d/dynamics/contacts/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;


# direct methods
.method constructor <init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;I)V
    .registers 3
    .param p2, "x0"    # I

    .prologue
    .line 74
    iput-object p1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$1;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-direct {p0, p2}, Lorg/jbox2d/pooling/normal/MutableStack;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$1;->newInstance()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance()Lorg/jbox2d/dynamics/contacts/Contact;
    .registers 3

    .prologue
    .line 75
    new-instance v0, Lorg/jbox2d/dynamics/contacts/PolygonContact;

    iget-object v1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$1;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-static {v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->access$000(Lorg/jbox2d/pooling/normal/DefaultWorldPool;)Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jbox2d/dynamics/contacts/PolygonContact;-><init>(Lorg/jbox2d/pooling/IWorldPool;)V

    return-object v0
.end method

###### Class org.jbox2d.pooling.normal.DefaultWorldPool.AnonymousClass10 (org.jbox2d.pooling.normal.DefaultWorldPool$10)
.class Lorg/jbox2d/pooling/normal/DefaultWorldPool$10;
.super Lorg/jbox2d/pooling/normal/OrderedStack;
.source "DefaultWorldPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jbox2d/pooling/normal/DefaultWorldPool;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jbox2d/pooling/normal/OrderedStack",
        "<",
        "Lorg/jbox2d/common/Mat22;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;


# direct methods
.method constructor <init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;II)V
    .registers 4
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 119
    iput-object p1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$10;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-direct {p0, p2, p3}, Lorg/jbox2d/pooling/normal/OrderedStack;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$10;->newInstance()Lorg/jbox2d/common/Mat22;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance()Lorg/jbox2d/common/Mat22;
    .registers 2

    .prologue
    .line 120
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    return-object v0
.end method

###### Class org.jbox2d.pooling.normal.DefaultWorldPool.AnonymousClass11 (org.jbox2d.pooling.normal.DefaultWorldPool$11)
.class Lorg/jbox2d/pooling/normal/DefaultWorldPool$11;
.super Lorg/jbox2d/pooling/normal/OrderedStack;
.source "DefaultWorldPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jbox2d/pooling/normal/DefaultWorldPool;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jbox2d/pooling/normal/OrderedStack",
        "<",
        "Lorg/jbox2d/collision/AABB;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;


# direct methods
.method constructor <init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;II)V
    .registers 4
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 122
    iput-object p1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$11;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-direct {p0, p2, p3}, Lorg/jbox2d/pooling/normal/OrderedStack;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$11;->newInstance()Lorg/jbox2d/collision/AABB;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance()Lorg/jbox2d/collision/AABB;
    .registers 2

    .prologue
    .line 123
    new-instance v0, Lorg/jbox2d/collision/AABB;

    invoke-direct {v0}, Lorg/jbox2d/collision/AABB;-><init>()V

    return-object v0
.end method

###### Class org.jbox2d.pooling.normal.DefaultWorldPool.AnonymousClass12 (org.jbox2d.pooling.normal.DefaultWorldPool$12)
.class Lorg/jbox2d/pooling/normal/DefaultWorldPool$12;
.super Lorg/jbox2d/pooling/normal/OrderedStack;
.source "DefaultWorldPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jbox2d/pooling/normal/DefaultWorldPool;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jbox2d/pooling/normal/OrderedStack",
        "<",
        "Lorg/jbox2d/common/Rot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;


# direct methods
.method constructor <init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;II)V
    .registers 4
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 125
    iput-object p1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$12;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-direct {p0, p2, p3}, Lorg/jbox2d/pooling/normal/OrderedStack;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$12;->newInstance()Lorg/jbox2d/common/Rot;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance()Lorg/jbox2d/common/Rot;
    .registers 2

    .prologue
    .line 126
    new-instance v0, Lorg/jbox2d/common/Rot;

    invoke-direct {v0}, Lorg/jbox2d/common/Rot;-><init>()V

    return-object v0
.end method

###### Class org.jbox2d.pooling.normal.DefaultWorldPool.AnonymousClass13 (org.jbox2d.pooling.normal.DefaultWorldPool$13)
.class Lorg/jbox2d/pooling/normal/DefaultWorldPool$13;
.super Lorg/jbox2d/pooling/normal/OrderedStack;
.source "DefaultWorldPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jbox2d/pooling/normal/DefaultWorldPool;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jbox2d/pooling/normal/OrderedStack",
        "<",
        "Lorg/jbox2d/common/Mat33;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;


# direct methods
.method constructor <init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;II)V
    .registers 4
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 128
    iput-object p1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$13;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-direct {p0, p2, p3}, Lorg/jbox2d/pooling/normal/OrderedStack;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$13;->newInstance()Lorg/jbox2d/common/Mat33;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance()Lorg/jbox2d/common/Mat33;
    .registers 2

    .prologue
    .line 129
    new-instance v0, Lorg/jbox2d/common/Mat33;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat33;-><init>()V

    return-object v0
.end method

###### Class org.jbox2d.pooling.normal.DefaultWorldPool.AnonymousClass2 (org.jbox2d.pooling.normal.DefaultWorldPool$2)
.class Lorg/jbox2d/pooling/normal/DefaultWorldPool$2;
.super Lorg/jbox2d/pooling/normal/MutableStack;
.source "DefaultWorldPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/pooling/normal/DefaultWorldPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jbox2d/pooling/normal/MutableStack",
        "<",
        "Lorg/jbox2d/dynamics/contacts/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;


# direct methods
.method constructor <init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;I)V
    .registers 3
    .param p2, "x0"    # I

    .prologue
    .line 79
    iput-object p1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$2;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-direct {p0, p2}, Lorg/jbox2d/pooling/normal/MutableStack;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$2;->newInstance()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance()Lorg/jbox2d/dynamics/contacts/Contact;
    .registers 3

    .prologue
    .line 80
    new-instance v0, Lorg/jbox2d/dynamics/contacts/CircleContact;

    iget-object v1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$2;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-static {v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->access$000(Lorg/jbox2d/pooling/normal/DefaultWorldPool;)Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jbox2d/dynamics/contacts/CircleContact;-><init>(Lorg/jbox2d/pooling/IWorldPool;)V

    return-object v0
.end method

###### Class org.jbox2d.pooling.normal.DefaultWorldPool.AnonymousClass3 (org.jbox2d.pooling.normal.DefaultWorldPool$3)
.class Lorg/jbox2d/pooling/normal/DefaultWorldPool$3;
.super Lorg/jbox2d/pooling/normal/MutableStack;
.source "DefaultWorldPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/pooling/normal/DefaultWorldPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jbox2d/pooling/normal/MutableStack",
        "<",
        "Lorg/jbox2d/dynamics/contacts/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;


# direct methods
.method constructor <init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;I)V
    .registers 3
    .param p2, "x0"    # I

    .prologue
    .line 84
    iput-object p1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$3;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-direct {p0, p2}, Lorg/jbox2d/pooling/normal/MutableStack;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$3;->newInstance()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance()Lorg/jbox2d/dynamics/contacts/Contact;
    .registers 3

    .prologue
    .line 85
    new-instance v0, Lorg/jbox2d/dynamics/contacts/PolygonAndCircleContact;

    iget-object v1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$3;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-static {v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->access$000(Lorg/jbox2d/pooling/normal/DefaultWorldPool;)Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jbox2d/dynamics/contacts/PolygonAndCircleContact;-><init>(Lorg/jbox2d/pooling/IWorldPool;)V

    return-object v0
.end method

###### Class org.jbox2d.pooling.normal.DefaultWorldPool.AnonymousClass4 (org.jbox2d.pooling.normal.DefaultWorldPool$4)
.class Lorg/jbox2d/pooling/normal/DefaultWorldPool$4;
.super Lorg/jbox2d/pooling/normal/MutableStack;
.source "DefaultWorldPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/pooling/normal/DefaultWorldPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jbox2d/pooling/normal/MutableStack",
        "<",
        "Lorg/jbox2d/dynamics/contacts/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;


# direct methods
.method constructor <init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;I)V
    .registers 3
    .param p2, "x0"    # I

    .prologue
    .line 89
    iput-object p1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$4;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-direct {p0, p2}, Lorg/jbox2d/pooling/normal/MutableStack;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$4;->newInstance()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance()Lorg/jbox2d/dynamics/contacts/Contact;
    .registers 3

    .prologue
    .line 90
    new-instance v0, Lorg/jbox2d/dynamics/contacts/EdgeAndCircleContact;

    iget-object v1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$4;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-static {v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->access$000(Lorg/jbox2d/pooling/normal/DefaultWorldPool;)Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jbox2d/dynamics/contacts/EdgeAndCircleContact;-><init>(Lorg/jbox2d/pooling/IWorldPool;)V

    return-object v0
.end method

###### Class org.jbox2d.pooling.normal.DefaultWorldPool.AnonymousClass5 (org.jbox2d.pooling.normal.DefaultWorldPool$5)
.class Lorg/jbox2d/pooling/normal/DefaultWorldPool$5;
.super Lorg/jbox2d/pooling/normal/MutableStack;
.source "DefaultWorldPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/pooling/normal/DefaultWorldPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jbox2d/pooling/normal/MutableStack",
        "<",
        "Lorg/jbox2d/dynamics/contacts/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;


# direct methods
.method constructor <init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;I)V
    .registers 3
    .param p2, "x0"    # I

    .prologue
    .line 94
    iput-object p1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$5;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-direct {p0, p2}, Lorg/jbox2d/pooling/normal/MutableStack;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$5;->newInstance()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance()Lorg/jbox2d/dynamics/contacts/Contact;
    .registers 3

    .prologue
    .line 95
    new-instance v0, Lorg/jbox2d/dynamics/contacts/EdgeAndPolygonContact;

    iget-object v1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$5;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-static {v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->access$000(Lorg/jbox2d/pooling/normal/DefaultWorldPool;)Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jbox2d/dynamics/contacts/EdgeAndPolygonContact;-><init>(Lorg/jbox2d/pooling/IWorldPool;)V

    return-object v0
.end method

###### Class org.jbox2d.pooling.normal.DefaultWorldPool.AnonymousClass6 (org.jbox2d.pooling.normal.DefaultWorldPool$6)
.class Lorg/jbox2d/pooling/normal/DefaultWorldPool$6;
.super Lorg/jbox2d/pooling/normal/MutableStack;
.source "DefaultWorldPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/pooling/normal/DefaultWorldPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jbox2d/pooling/normal/MutableStack",
        "<",
        "Lorg/jbox2d/dynamics/contacts/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;


# direct methods
.method constructor <init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;I)V
    .registers 3
    .param p2, "x0"    # I

    .prologue
    .line 99
    iput-object p1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$6;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-direct {p0, p2}, Lorg/jbox2d/pooling/normal/MutableStack;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$6;->newInstance()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance()Lorg/jbox2d/dynamics/contacts/Contact;
    .registers 3

    .prologue
    .line 100
    new-instance v0, Lorg/jbox2d/dynamics/contacts/ChainAndCircleContact;

    iget-object v1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$6;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-static {v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->access$000(Lorg/jbox2d/pooling/normal/DefaultWorldPool;)Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jbox2d/dynamics/contacts/ChainAndCircleContact;-><init>(Lorg/jbox2d/pooling/IWorldPool;)V

    return-object v0
.end method

###### Class org.jbox2d.pooling.normal.DefaultWorldPool.AnonymousClass7 (org.jbox2d.pooling.normal.DefaultWorldPool$7)
.class Lorg/jbox2d/pooling/normal/DefaultWorldPool$7;
.super Lorg/jbox2d/pooling/normal/MutableStack;
.source "DefaultWorldPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/pooling/normal/DefaultWorldPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jbox2d/pooling/normal/MutableStack",
        "<",
        "Lorg/jbox2d/dynamics/contacts/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;


# direct methods
.method constructor <init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;I)V
    .registers 3
    .param p2, "x0"    # I

    .prologue
    .line 104
    iput-object p1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$7;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-direct {p0, p2}, Lorg/jbox2d/pooling/normal/MutableStack;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$7;->newInstance()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance()Lorg/jbox2d/dynamics/contacts/Contact;
    .registers 3

    .prologue
    .line 105
    new-instance v0, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;

    iget-object v1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$7;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-static {v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool;->access$000(Lorg/jbox2d/pooling/normal/DefaultWorldPool;)Lorg/jbox2d/pooling/IWorldPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jbox2d/dynamics/contacts/ChainAndPolygonContact;-><init>(Lorg/jbox2d/pooling/IWorldPool;)V

    return-object v0
.end method

###### Class org.jbox2d.pooling.normal.DefaultWorldPool.AnonymousClass8 (org.jbox2d.pooling.normal.DefaultWorldPool$8)
.class Lorg/jbox2d/pooling/normal/DefaultWorldPool$8;
.super Lorg/jbox2d/pooling/normal/OrderedStack;
.source "DefaultWorldPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jbox2d/pooling/normal/DefaultWorldPool;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jbox2d/pooling/normal/OrderedStack",
        "<",
        "Lorg/jbox2d/common/Vec2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;


# direct methods
.method constructor <init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;II)V
    .registers 4
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 113
    iput-object p1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$8;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-direct {p0, p2, p3}, Lorg/jbox2d/pooling/normal/OrderedStack;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$8;->newInstance()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 114
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    return-object v0
.end method

###### Class org.jbox2d.pooling.normal.DefaultWorldPool.AnonymousClass9 (org.jbox2d.pooling.normal.DefaultWorldPool$9)
.class Lorg/jbox2d/pooling/normal/DefaultWorldPool$9;
.super Lorg/jbox2d/pooling/normal/OrderedStack;
.source "DefaultWorldPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jbox2d/pooling/normal/DefaultWorldPool;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jbox2d/pooling/normal/OrderedStack",
        "<",
        "Lorg/jbox2d/common/Vec3;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;


# direct methods
.method constructor <init>(Lorg/jbox2d/pooling/normal/DefaultWorldPool;II)V
    .registers 4
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 116
    iput-object p1, p0, Lorg/jbox2d/pooling/normal/DefaultWorldPool$9;->this$0:Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-direct {p0, p2, p3}, Lorg/jbox2d/pooling/normal/OrderedStack;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/DefaultWorldPool$9;->newInstance()Lorg/jbox2d/common/Vec3;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance()Lorg/jbox2d/common/Vec3;
    .registers 2

    .prologue
    .line 117
    new-instance v0, Lorg/jbox2d/common/Vec3;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec3;-><init>()V

    return-object v0
.end method
