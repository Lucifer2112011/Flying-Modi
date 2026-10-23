###### Class org.jbox2d.dynamics.World (org.jbox2d.dynamics.World)
.class public Lorg/jbox2d/dynamics/World;
.super Ljava/lang/Object;
.source "World.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/dynamics/World$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CLEAR_FORCES:I = 0x4

.field private static LIQUID_INT:Ljava/lang/Integer; = null

.field public static final LOCKED:I = 0x2

.field public static final NEW_FIXTURE:I = 0x1

.field public static final WORLD_POOL_CONTAINER_SIZE:I = 0xa

.field public static final WORLD_POOL_SIZE:I = 0x64


# instance fields
.field public activeContacts:I

.field private averageLinearVel:F

.field private final avs:Lorg/jbox2d/pooling/arrays/Vec2Array;

.field private final axis:Lorg/jbox2d/common/Vec2;

.field private final backup1:Lorg/jbox2d/common/Sweep;

.field private final backup2:Lorg/jbox2d/common/Sweep;

.field private final broadphaseTimer:Lorg/jbox2d/common/Timer;

.field private final cA:Lorg/jbox2d/common/Vec2;

.field private final cB:Lorg/jbox2d/common/Vec2;

.field private final center:Lorg/jbox2d/common/Vec2;

.field private final circCenterMoved:Lorg/jbox2d/common/Vec2;

.field private final color:Lorg/jbox2d/common/Color3f;

.field public contactPoolCount:I

.field private contactStacks:[[Lorg/jbox2d/dynamics/contacts/ContactRegister;

.field private final input:Lorg/jbox2d/collision/RayCastInput;

.field private final island:Lorg/jbox2d/dynamics/Island;

.field private final islandProfile:Lorg/jbox2d/dynamics/Profile;

.field private final liquidColor:Lorg/jbox2d/common/Color3f;

.field private liquidLength:F

.field private final liquidOffset:Lorg/jbox2d/common/Vec2;

.field private m_allowSleep:Z

.field private m_bodyCount:I

.field private m_bodyList:Lorg/jbox2d/dynamics/Body;

.field protected m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

.field private m_continuousPhysics:Z

.field private m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

.field private m_destructionListener:Lorg/jbox2d/callbacks/DestructionListener;

.field protected m_flags:I

.field private final m_gravity:Lorg/jbox2d/common/Vec2;

.field private m_inv_dt0:F

.field private m_jointCount:I

.field private m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

.field private m_profile:Lorg/jbox2d/dynamics/Profile;

.field private m_stepComplete:Z

.field private m_subStepping:Z

.field private m_warmStarting:Z

.field private final pool:Lorg/jbox2d/pooling/IWorldPool;

.field private stack:[Lorg/jbox2d/dynamics/Body;

.field private final step:Lorg/jbox2d/dynamics/TimeStep;

.field private final stepTimer:Lorg/jbox2d/common/Timer;

.field private final subStep:Lorg/jbox2d/dynamics/TimeStep;

.field private final tempBodies:[Lorg/jbox2d/dynamics/Body;

.field private final tempTimer:Lorg/jbox2d/common/Timer;

.field private final tlvertices:Lorg/jbox2d/pooling/arrays/Vec2Array;

.field private final toiInput:Lorg/jbox2d/collision/TimeOfImpact$TOIInput;

.field private final toiIsland:Lorg/jbox2d/dynamics/Island;

.field private final toiOutput:Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;

.field private final v1:Lorg/jbox2d/common/Vec2;

.field private final v2:Lorg/jbox2d/common/Vec2;

.field private final wqwrapper:Lorg/jbox2d/dynamics/WorldQueryWrapper;

.field private final wrcwrapper:Lorg/jbox2d/dynamics/WorldRayCastWrapper;

.field private final xf:Lorg/jbox2d/common/Transform;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 73
    const-class v0, Lorg/jbox2d/dynamics/World;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    .line 1453
    new-instance v0, Ljava/lang/Integer;

    const v1, 0x499679e4    # 1232700.5f

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/jbox2d/dynamics/World;->LIQUID_INT:Ljava/lang/Integer;

    return-void

    .line 73
    :cond_16
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "gravity"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 130
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    const/16 v1, 0x64

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/pooling/normal/DefaultWorldPool;-><init>(II)V

    invoke-direct {p0, p1, v0}, Lorg/jbox2d/dynamics/World;-><init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/pooling/IWorldPool;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/pooling/IWorldPool;)V
    .registers 4
    .param p1, "gravity"    # Lorg/jbox2d/common/Vec2;
    .param p2, "pool"    # Lorg/jbox2d/pooling/IWorldPool;

    .prologue
    .line 139
    new-instance v0, Lorg/jbox2d/collision/broadphase/DynamicTree;

    invoke-direct {v0}, Lorg/jbox2d/collision/broadphase/DynamicTree;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/jbox2d/dynamics/World;-><init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;)V
    .registers 10
    .param p1, "gravity"    # Lorg/jbox2d/common/Vec2;
    .param p2, "argPool"    # Lorg/jbox2d/pooling/IWorldPool;
    .param p3, "broadPhaseStrategy"    # Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    .prologue
    const v5, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v2, p0, Lorg/jbox2d/dynamics/World;->activeContacts:I

    .line 84
    iput v2, p0, Lorg/jbox2d/dynamics/World;->contactPoolCount:I

    .line 96
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->m_gravity:Lorg/jbox2d/common/Vec2;

    .line 121
    invoke-static {}, Lorg/jbox2d/collision/shapes/ShapeType;->values()[Lorg/jbox2d/collision/shapes/ShapeType;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lorg/jbox2d/collision/shapes/ShapeType;->values()[Lorg/jbox2d/collision/shapes/ShapeType;

    move-result-object v1

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lorg/jbox2d/dynamics/contacts/ContactRegister;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/jbox2d/dynamics/contacts/ContactRegister;

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->contactStacks:[[Lorg/jbox2d/dynamics/contacts/ContactRegister;

    .line 554
    new-instance v0, Lorg/jbox2d/dynamics/TimeStep;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/TimeStep;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->step:Lorg/jbox2d/dynamics/TimeStep;

    .line 555
    new-instance v0, Lorg/jbox2d/common/Timer;

    invoke-direct {v0}, Lorg/jbox2d/common/Timer;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->stepTimer:Lorg/jbox2d/common/Timer;

    .line 556
    new-instance v0, Lorg/jbox2d/common/Timer;

    invoke-direct {v0}, Lorg/jbox2d/common/Timer;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->tempTimer:Lorg/jbox2d/common/Timer;

    .line 637
    new-instance v0, Lorg/jbox2d/common/Color3f;

    invoke-direct {v0}, Lorg/jbox2d/common/Color3f;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    .line 638
    new-instance v0, Lorg/jbox2d/common/Transform;

    invoke-direct {v0}, Lorg/jbox2d/common/Transform;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->xf:Lorg/jbox2d/common/Transform;

    .line 639
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->cA:Lorg/jbox2d/common/Vec2;

    .line 640
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->cB:Lorg/jbox2d/common/Vec2;

    .line 641
    new-instance v0, Lorg/jbox2d/pooling/arrays/Vec2Array;

    invoke-direct {v0}, Lorg/jbox2d/pooling/arrays/Vec2Array;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->avs:Lorg/jbox2d/pooling/arrays/Vec2Array;

    .line 730
    new-instance v0, Lorg/jbox2d/dynamics/WorldQueryWrapper;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/WorldQueryWrapper;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->wqwrapper:Lorg/jbox2d/dynamics/WorldQueryWrapper;

    .line 744
    new-instance v0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/WorldRayCastWrapper;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->wrcwrapper:Lorg/jbox2d/dynamics/WorldRayCastWrapper;

    .line 745
    new-instance v0, Lorg/jbox2d/collision/RayCastInput;

    invoke-direct {v0}, Lorg/jbox2d/collision/RayCastInput;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->input:Lorg/jbox2d/collision/RayCastInput;

    .line 958
    new-instance v0, Lorg/jbox2d/dynamics/Island;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/Island;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->island:Lorg/jbox2d/dynamics/Island;

    .line 959
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/jbox2d/dynamics/Body;

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->stack:[Lorg/jbox2d/dynamics/Body;

    .line 960
    new-instance v0, Lorg/jbox2d/dynamics/Profile;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/Profile;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->islandProfile:Lorg/jbox2d/dynamics/Profile;

    .line 961
    new-instance v0, Lorg/jbox2d/common/Timer;

    invoke-direct {v0}, Lorg/jbox2d/common/Timer;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->broadphaseTimer:Lorg/jbox2d/common/Timer;

    .line 1121
    new-instance v0, Lorg/jbox2d/dynamics/Island;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/Island;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->toiIsland:Lorg/jbox2d/dynamics/Island;

    .line 1122
    new-instance v0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;

    invoke-direct {v0}, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->toiInput:Lorg/jbox2d/collision/TimeOfImpact$TOIInput;

    .line 1123
    new-instance v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;

    invoke-direct {v0}, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->toiOutput:Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;

    .line 1124
    new-instance v0, Lorg/jbox2d/dynamics/TimeStep;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/TimeStep;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->subStep:Lorg/jbox2d/dynamics/TimeStep;

    .line 1125
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jbox2d/dynamics/Body;

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->tempBodies:[Lorg/jbox2d/dynamics/Body;

    .line 1126
    new-instance v0, Lorg/jbox2d/common/Sweep;

    invoke-direct {v0}, Lorg/jbox2d/common/Sweep;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->backup1:Lorg/jbox2d/common/Sweep;

    .line 1127
    new-instance v0, Lorg/jbox2d/common/Sweep;

    invoke-direct {v0}, Lorg/jbox2d/common/Sweep;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->backup2:Lorg/jbox2d/common/Sweep;

    .line 1454
    const v0, 0x3df5c28f    # 0.12f

    iput v0, p0, Lorg/jbox2d/dynamics/World;->liquidLength:F

    .line 1455
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/jbox2d/dynamics/World;->averageLinearVel:F

    .line 1456
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->liquidOffset:Lorg/jbox2d/common/Vec2;

    .line 1457
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->circCenterMoved:Lorg/jbox2d/common/Vec2;

    .line 1458
    new-instance v0, Lorg/jbox2d/common/Color3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v5, v1}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->liquidColor:Lorg/jbox2d/common/Color3f;

    .line 1460
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->center:Lorg/jbox2d/common/Vec2;

    .line 1461
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->axis:Lorg/jbox2d/common/Vec2;

    .line 1462
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->v1:Lorg/jbox2d/common/Vec2;

    .line 1463
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->v2:Lorg/jbox2d/common/Vec2;

    .line 1464
    new-instance v0, Lorg/jbox2d/pooling/arrays/Vec2Array;

    invoke-direct {v0}, Lorg/jbox2d/pooling/arrays/Vec2Array;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->tlvertices:Lorg/jbox2d/pooling/arrays/Vec2Array;

    .line 143
    iput-object p2, p0, Lorg/jbox2d/dynamics/World;->pool:Lorg/jbox2d/pooling/IWorldPool;

    .line 144
    iput-object v4, p0, Lorg/jbox2d/dynamics/World;->m_destructionListener:Lorg/jbox2d/callbacks/DestructionListener;

    .line 145
    iput-object v4, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    .line 147
    iput-object v4, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .line 148
    iput-object v4, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    .line 150
    iput v2, p0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    .line 151
    iput v2, p0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    .line 153
    iput-boolean v3, p0, Lorg/jbox2d/dynamics/World;->m_warmStarting:Z

    .line 154
    iput-boolean v3, p0, Lorg/jbox2d/dynamics/World;->m_continuousPhysics:Z

    .line 155
    iput-boolean v2, p0, Lorg/jbox2d/dynamics/World;->m_subStepping:Z

    .line 156
    iput-boolean v3, p0, Lorg/jbox2d/dynamics/World;->m_stepComplete:Z

    .line 158
    iput-boolean v3, p0, Lorg/jbox2d/dynamics/World;->m_allowSleep:Z

    .line 159
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_gravity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 161
    const/4 v0, 0x4

    iput v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/dynamics/World;->m_inv_dt0:F

    .line 165
    new-instance v0, Lorg/jbox2d/dynamics/ContactManager;

    invoke-direct {v0, p0, p3}, Lorg/jbox2d/dynamics/ContactManager;-><init>(Lorg/jbox2d/dynamics/World;Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    .line 166
    new-instance v0, Lorg/jbox2d/dynamics/Profile;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/Profile;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->m_profile:Lorg/jbox2d/dynamics/Profile;

    .line 168
    invoke-direct {p0}, Lorg/jbox2d/dynamics/World;->initializeRegisters()V

    .line 169
    return-void
.end method

.method private addType(Lorg/jbox2d/pooling/IDynamicStack;Lorg/jbox2d/collision/shapes/ShapeType;Lorg/jbox2d/collision/shapes/ShapeType;)V
    .registers 8
    .param p2, "type1"    # Lorg/jbox2d/collision/shapes/ShapeType;
    .param p3, "type2"    # Lorg/jbox2d/collision/shapes/ShapeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;",
            "Lorg/jbox2d/collision/shapes/ShapeType;",
            "Lorg/jbox2d/collision/shapes/ShapeType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "creator":Lorg/jbox2d/pooling/IDynamicStack;, "Lorg/jbox2d/pooling/IDynamicStack<Lorg/jbox2d/dynamics/contacts/Contact;>;"
    new-instance v0, Lorg/jbox2d/dynamics/contacts/ContactRegister;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/ContactRegister;-><init>()V

    .line 198
    .local v0, "register":Lorg/jbox2d/dynamics/contacts/ContactRegister;
    iput-object p1, v0, Lorg/jbox2d/dynamics/contacts/ContactRegister;->creator:Lorg/jbox2d/pooling/IDynamicStack;

    .line 199
    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/jbox2d/dynamics/contacts/ContactRegister;->primary:Z

    .line 200
    iget-object v2, p0, Lorg/jbox2d/dynamics/World;->contactStacks:[[Lorg/jbox2d/dynamics/contacts/ContactRegister;

    invoke-virtual {p2}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p3}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v3

    aput-object v0, v2, v3

    .line 202
    if-eq p2, p3, :cond_32

    .line 203
    new-instance v1, Lorg/jbox2d/dynamics/contacts/ContactRegister;

    invoke-direct {v1}, Lorg/jbox2d/dynamics/contacts/ContactRegister;-><init>()V

    .line 204
    .local v1, "register2":Lorg/jbox2d/dynamics/contacts/ContactRegister;
    iput-object p1, v1, Lorg/jbox2d/dynamics/contacts/ContactRegister;->creator:Lorg/jbox2d/pooling/IDynamicStack;

    .line 205
    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/jbox2d/dynamics/contacts/ContactRegister;->primary:Z

    .line 206
    iget-object v2, p0, Lorg/jbox2d/dynamics/World;->contactStacks:[[Lorg/jbox2d/dynamics/contacts/ContactRegister;

    invoke-virtual {p3}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p2}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v3

    aput-object v1, v2, v3

    .line 208
    .end local v1    # "register2":Lorg/jbox2d/dynamics/contacts/ContactRegister;
    :cond_32
    return-void
.end method

.method private drawJoint(Lorg/jbox2d/dynamics/joints/Joint;)V
    .registers 16
    .param p1, "joint"    # Lorg/jbox2d/dynamics/joints/Joint;

    .prologue
    const v13, 0x3f4ccccd    # 0.8f

    .line 1411
    invoke-virtual {p1}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyA()Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    .line 1412
    .local v0, "bodyA":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {p1}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyB()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    .line 1413
    .local v1, "bodyB":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getTransform()Lorg/jbox2d/common/Transform;

    move-result-object v9

    .line 1414
    .local v9, "xf1":Lorg/jbox2d/common/Transform;
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getTransform()Lorg/jbox2d/common/Transform;

    move-result-object v10

    .line 1415
    .local v10, "xf2":Lorg/jbox2d/common/Transform;
    iget-object v7, v9, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    .line 1416
    .local v7, "x1":Lorg/jbox2d/common/Vec2;
    iget-object v8, v10, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    .line 1417
    .local v8, "x2":Lorg/jbox2d/common/Vec2;
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v11}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 1418
    .local v2, "p1":Lorg/jbox2d/common/Vec2;
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v11}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 1419
    .local v3, "p2":Lorg/jbox2d/common/Vec2;
    invoke-virtual {p1, v2}, Lorg/jbox2d/dynamics/joints/Joint;->getAnchorA(Lorg/jbox2d/common/Vec2;)V

    .line 1420
    invoke-virtual {p1, v3}, Lorg/jbox2d/dynamics/joints/Joint;->getAnchorB(Lorg/jbox2d/common/Vec2;)V

    .line 1422
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v11, v12, v13, v13}, Lorg/jbox2d/common/Color3f;->set(FFF)V

    .line 1424
    sget-object v11, Lorg/jbox2d/dynamics/World$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    invoke-virtual {p1}, Lorg/jbox2d/dynamics/joints/Joint;->getType()Lorg/jbox2d/dynamics/joints/JointType;

    move-result-object v12

    invoke-virtual {v12}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_84

    .line 1444
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    invoke-virtual {v11, v7, v2, v12}, Lorg/jbox2d/callbacks/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 1445
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    invoke-virtual {v11, v2, v3, v12}, Lorg/jbox2d/callbacks/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 1446
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    invoke-virtual {v11, v8, v3, v12}, Lorg/jbox2d/callbacks/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 1448
    :goto_54
    :pswitch_54
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 1449
    return-void

    .line 1427
    :pswitch_5b
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    invoke-virtual {v11, v2, v3, v12}, Lorg/jbox2d/callbacks/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    goto :goto_54

    :pswitch_63
    move-object v4, p1

    .line 1431
    check-cast v4, Lorg/jbox2d/dynamics/joints/PulleyJoint;

    .line 1432
    .local v4, "pulley":Lorg/jbox2d/dynamics/joints/PulleyJoint;
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/joints/PulleyJoint;->getGroundAnchorA()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 1433
    .local v5, "s1":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/joints/PulleyJoint;->getGroundAnchorB()Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 1434
    .local v6, "s2":Lorg/jbox2d/common/Vec2;
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    invoke-virtual {v11, v5, v2, v12}, Lorg/jbox2d/callbacks/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 1435
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    invoke-virtual {v11, v6, v3, v12}, Lorg/jbox2d/callbacks/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 1436
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    invoke-virtual {v11, v5, v6, v12}, Lorg/jbox2d/callbacks/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    goto :goto_54

    .line 1424
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_63
        :pswitch_54
        :pswitch_54
    .end packed-switch
.end method

.method private drawShape(Lorg/jbox2d/dynamics/Fixture;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Color3f;)V
    .registers 20
    .param p1, "fixture"    # Lorg/jbox2d/dynamics/Fixture;
    .param p2, "xf"    # Lorg/jbox2d/common/Transform;
    .param p3, "color"    # Lorg/jbox2d/common/Color3f;

    .prologue
    .line 1467
    sget-object v12, Lorg/jbox2d/dynamics/World$1;->$SwitchMap$org$jbox2d$collision$shapes$ShapeType:[I

    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/Fixture;->getType()Lorg/jbox2d/collision/shapes/ShapeType;

    move-result-object v13

    invoke-virtual {v13}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_18a

    .line 1535
    :cond_f
    :goto_f
    return-void

    .line 1469
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/Fixture;->getShape()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v3

    check-cast v3, Lorg/jbox2d/collision/shapes/CircleShape;

    .line 1472
    .local v3, "circle":Lorg/jbox2d/collision/shapes/CircleShape;
    iget-object v12, v3, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->center:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 1473
    iget v9, v3, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    .line 1474
    .local v9, "radius":F
    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->axis:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Rot;->getXAxis(Lorg/jbox2d/common/Vec2;)V

    .line 1476
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/Fixture;->getUserData()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_b9

    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/Fixture;->getUserData()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lorg/jbox2d/dynamics/World;->LIQUID_INT:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b9

    .line 1477
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    .line 1478
    .local v1, "b":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/World;->liquidOffset:Lorg/jbox2d/common/Vec2;

    iget-object v13, v1, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1479
    iget-object v12, v1, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v12}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v7

    .line 1480
    .local v7, "linVelLength":F
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jbox2d/dynamics/World;->averageLinearVel:F

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v12, v12, v13

    if-nez v12, :cond_a7

    .line 1481
    move-object/from16 v0, p0

    iput v7, v0, Lorg/jbox2d/dynamics/World;->averageLinearVel:F

    .line 1485
    :goto_61
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/World;->liquidOffset:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/World;->liquidLength:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/World;->averageLinearVel:F

    div-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 1486
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/World;->circCenterMoved:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->liquidOffset:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1487
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/World;->center:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->liquidOffset:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1488
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->center:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/World;->circCenterMoved:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/World;->liquidColor:Lorg/jbox2d/common/Color3f;

    invoke-virtual {v12, v13, v14, v15}, Lorg/jbox2d/callbacks/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    goto/16 :goto_f

    .line 1483
    :cond_a7
    const v12, 0x3f7ae148    # 0.98f

    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/World;->averageLinearVel:F

    mul-float/2addr v12, v13

    const v13, 0x3ca3d70a    # 0.02f

    mul-float/2addr v13, v7

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/jbox2d/dynamics/World;->averageLinearVel:F

    goto :goto_61

    .line 1492
    .end local v1    # "b":Lorg/jbox2d/dynamics/Body;
    .end local v7    # "linVelLength":F
    :cond_b9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->center:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/World;->axis:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v9, v14, v0}, Lorg/jbox2d/callbacks/DebugDraw;->drawSolidCircle(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    goto/16 :goto_f

    .line 1497
    .end local v3    # "circle":Lorg/jbox2d/collision/shapes/CircleShape;
    .end local v9    # "radius":F
    :pswitch_cc
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/Fixture;->getShape()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v8

    check-cast v8, Lorg/jbox2d/collision/shapes/PolygonShape;

    .line 1498
    .local v8, "poly":Lorg/jbox2d/collision/shapes/PolygonShape;
    iget v10, v8, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    .line 1499
    .local v10, "vertexCount":I
    sget-boolean v12, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v12, :cond_e2

    const/16 v12, 0x8

    if-le v10, v12, :cond_e2

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 1500
    :cond_e2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/World;->tlvertices:Lorg/jbox2d/pooling/arrays/Vec2Array;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lorg/jbox2d/pooling/arrays/Vec2Array;->get(I)[Lorg/jbox2d/common/Vec2;

    move-result-object v11

    .line 1502
    .local v11, "vertices":[Lorg/jbox2d/common/Vec2;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_ed
    if-ge v6, v10, :cond_fd

    .line 1504
    iget-object v12, v8, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v12, v12, v6

    aget-object v13, v11, v6

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 1502
    add-int/lit8 v6, v6, 0x1

    goto :goto_ed

    .line 1507
    :cond_fd
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    move-object/from16 v0, p3

    invoke-virtual {v12, v11, v10, v0}, Lorg/jbox2d/callbacks/DebugDraw;->drawSolidPolygon([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Color3f;)V

    goto/16 :goto_f

    .line 1511
    .end local v6    # "i":I
    .end local v8    # "poly":Lorg/jbox2d/collision/shapes/PolygonShape;
    .end local v10    # "vertexCount":I
    .end local v11    # "vertices":[Lorg/jbox2d/common/Vec2;
    :pswitch_108
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/Fixture;->getShape()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v5

    check-cast v5, Lorg/jbox2d/collision/shapes/EdgeShape;

    .line 1512
    .local v5, "edge":Lorg/jbox2d/collision/shapes/EdgeShape;
    iget-object v12, v5, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 1513
    iget-object v12, v5, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->v2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/World;->v2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v14, v0}, Lorg/jbox2d/callbacks/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    goto/16 :goto_f

    .line 1519
    .end local v5    # "edge":Lorg/jbox2d/collision/shapes/EdgeShape;
    :pswitch_137
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/Fixture;->getShape()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v2

    check-cast v2, Lorg/jbox2d/collision/shapes/ChainShape;

    .line 1520
    .local v2, "chain":Lorg/jbox2d/collision/shapes/ChainShape;
    iget v4, v2, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    .line 1521
    .local v4, "count":I
    iget-object v11, v2, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    .line 1523
    .restart local v11    # "vertices":[Lorg/jbox2d/common/Vec2;
    const/4 v12, 0x0

    aget-object v12, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 1524
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_14e
    if-ge v6, v4, :cond_f

    .line 1525
    aget-object v12, v11, v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->v2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/World;->v2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v14, v0}, Lorg/jbox2d/callbacks/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 1527
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->v1:Lorg/jbox2d/common/Vec2;

    const v14, 0x3d4ccccd    # 0.05f

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v14, v0}, Lorg/jbox2d/callbacks/DebugDraw;->drawCircle(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Color3f;)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/World;->v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->v2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1524
    add-int/lit8 v6, v6, 0x1

    goto :goto_14e

    .line 1467
    :pswitch_data_18a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_cc
        :pswitch_108
        :pswitch_137
    .end packed-switch
.end method

.method private initializeRegisters()V
    .registers 4

    .prologue
    .line 211
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v0}, Lorg/jbox2d/pooling/IWorldPool;->getCircleContactStack()Lorg/jbox2d/pooling/IDynamicStack;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->CIRCLE:Lorg/jbox2d/collision/shapes/ShapeType;

    sget-object v2, Lorg/jbox2d/collision/shapes/ShapeType;->CIRCLE:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-direct {p0, v0, v1, v2}, Lorg/jbox2d/dynamics/World;->addType(Lorg/jbox2d/pooling/IDynamicStack;Lorg/jbox2d/collision/shapes/ShapeType;Lorg/jbox2d/collision/shapes/ShapeType;)V

    .line 212
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v0}, Lorg/jbox2d/pooling/IWorldPool;->getPolyCircleContactStack()Lorg/jbox2d/pooling/IDynamicStack;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->POLYGON:Lorg/jbox2d/collision/shapes/ShapeType;

    sget-object v2, Lorg/jbox2d/collision/shapes/ShapeType;->CIRCLE:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-direct {p0, v0, v1, v2}, Lorg/jbox2d/dynamics/World;->addType(Lorg/jbox2d/pooling/IDynamicStack;Lorg/jbox2d/collision/shapes/ShapeType;Lorg/jbox2d/collision/shapes/ShapeType;)V

    .line 213
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v0}, Lorg/jbox2d/pooling/IWorldPool;->getPolyContactStack()Lorg/jbox2d/pooling/IDynamicStack;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->POLYGON:Lorg/jbox2d/collision/shapes/ShapeType;

    sget-object v2, Lorg/jbox2d/collision/shapes/ShapeType;->POLYGON:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-direct {p0, v0, v1, v2}, Lorg/jbox2d/dynamics/World;->addType(Lorg/jbox2d/pooling/IDynamicStack;Lorg/jbox2d/collision/shapes/ShapeType;Lorg/jbox2d/collision/shapes/ShapeType;)V

    .line 214
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v0}, Lorg/jbox2d/pooling/IWorldPool;->getEdgeCircleContactStack()Lorg/jbox2d/pooling/IDynamicStack;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->EDGE:Lorg/jbox2d/collision/shapes/ShapeType;

    sget-object v2, Lorg/jbox2d/collision/shapes/ShapeType;->CIRCLE:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-direct {p0, v0, v1, v2}, Lorg/jbox2d/dynamics/World;->addType(Lorg/jbox2d/pooling/IDynamicStack;Lorg/jbox2d/collision/shapes/ShapeType;Lorg/jbox2d/collision/shapes/ShapeType;)V

    .line 215
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v0}, Lorg/jbox2d/pooling/IWorldPool;->getEdgePolyContactStack()Lorg/jbox2d/pooling/IDynamicStack;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->EDGE:Lorg/jbox2d/collision/shapes/ShapeType;

    sget-object v2, Lorg/jbox2d/collision/shapes/ShapeType;->POLYGON:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-direct {p0, v0, v1, v2}, Lorg/jbox2d/dynamics/World;->addType(Lorg/jbox2d/pooling/IDynamicStack;Lorg/jbox2d/collision/shapes/ShapeType;Lorg/jbox2d/collision/shapes/ShapeType;)V

    .line 216
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v0}, Lorg/jbox2d/pooling/IWorldPool;->getChainCircleContactStack()Lorg/jbox2d/pooling/IDynamicStack;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->CHAIN:Lorg/jbox2d/collision/shapes/ShapeType;

    sget-object v2, Lorg/jbox2d/collision/shapes/ShapeType;->CIRCLE:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-direct {p0, v0, v1, v2}, Lorg/jbox2d/dynamics/World;->addType(Lorg/jbox2d/pooling/IDynamicStack;Lorg/jbox2d/collision/shapes/ShapeType;Lorg/jbox2d/collision/shapes/ShapeType;)V

    .line 217
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v0}, Lorg/jbox2d/pooling/IWorldPool;->getChainPolyContactStack()Lorg/jbox2d/pooling/IDynamicStack;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->CHAIN:Lorg/jbox2d/collision/shapes/ShapeType;

    sget-object v2, Lorg/jbox2d/collision/shapes/ShapeType;->POLYGON:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-direct {p0, v0, v1, v2}, Lorg/jbox2d/dynamics/World;->addType(Lorg/jbox2d/pooling/IDynamicStack;Lorg/jbox2d/collision/shapes/ShapeType;Lorg/jbox2d/collision/shapes/ShapeType;)V

    .line 218
    return-void
.end method

.method private solve(Lorg/jbox2d/dynamics/TimeStep;)V
    .registers 26
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_profile:Lorg/jbox2d/dynamics/Profile;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/dynamics/Profile;->solveInit:F

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_profile:Lorg/jbox2d/dynamics/Profile;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/dynamics/Profile;->solveVelocity:F

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_profile:Lorg/jbox2d/dynamics/Profile;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/dynamics/Profile;->solvePosition:F

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->island:Lorg/jbox2d/dynamics/Island;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactCount:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactListener:Lorg/jbox2d/callbacks/ContactListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Lorg/jbox2d/dynamics/Island;->init(IIILorg/jbox2d/callbacks/ContactListener;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .local v5, "b":Lorg/jbox2d/dynamics/Body;
    :goto_5b
    if-eqz v5, :cond_6a

    .line 974
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    iput v0, v5, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 973
    iget-object v5, v5, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    goto :goto_5b

    .line 976
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v6, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    .local v6, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    :goto_74
    if-eqz v6, :cond_83

    .line 977
    iget v0, v6, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 976
    iget-object v6, v6, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    goto :goto_74

    .line 979
    :cond_83
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    .local v10, "j":Lorg/jbox2d/dynamics/joints/Joint;
    :goto_87
    if-eqz v10, :cond_92

    .line 980
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v10, Lorg/jbox2d/dynamics/joints/Joint;->m_islandFlag:Z

    .line 979
    iget-object v10, v10, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    goto :goto_87

    .line 984
    :cond_92
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    move/from16 v18, v0

    .line 985
    .local v18, "stackSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->stack:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_b5

    .line 986
    move/from16 v0, v18

    new-array v0, v0, [Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/World;->stack:[Lorg/jbox2d/dynamics/Body;

    .line 988
    :cond_b5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .local v13, "seed":Lorg/jbox2d/dynamics/Body;
    :goto_b9
    if-eqz v13, :cond_30d

    .line 989
    iget v0, v13, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_cc

    .line 988
    :cond_c9
    iget-object v13, v13, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    goto :goto_b9

    .line 993
    :cond_cc
    invoke-virtual {v13}, Lorg/jbox2d/dynamics/Body;->isAwake()Z

    move-result v19

    if-eqz v19, :cond_c9

    invoke-virtual {v13}, Lorg/jbox2d/dynamics/Body;->isActive()Z

    move-result v19

    if-eqz v19, :cond_c9

    .line 998
    invoke-virtual {v13}, Lorg/jbox2d/dynamics/Body;->getType()Lorg/jbox2d/dynamics/BodyType;

    move-result-object v19

    sget-object v20, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_c9

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->island:Lorg/jbox2d/dynamics/Island;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/dynamics/Island;->clear()V

    .line 1004
    const/16 v16, 0x0

    .line 1005
    .local v16, "stackCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->stack:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "stackCount":I
    .local v17, "stackCount":I
    aput-object v13, v19, v16

    .line 1006
    iget v0, v13, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v13, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v16, v17

    .line 1009
    .end local v17    # "stackCount":I
    .restart local v16    # "stackCount":I
    :cond_105
    :goto_105
    if-lez v16, :cond_250

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->stack:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    add-int/lit8 v16, v16, -0x1

    aget-object v5, v19, v16

    .line 1012
    sget-boolean v19, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v19, :cond_127

    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->isActive()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_127

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 1013
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->island:Lorg/jbox2d/dynamics/Island;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/jbox2d/dynamics/Island;->add(Lorg/jbox2d/dynamics/Body;)V

    .line 1016
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 1020
    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getType()Lorg/jbox2d/dynamics/BodyType;

    move-result-object v19

    sget-object v20, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_105

    .line 1025
    iget-object v7, v5, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .local v7, "ce":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    move/from16 v17, v16

    .end local v16    # "stackCount":I
    .restart local v17    # "stackCount":I
    :goto_149
    if-eqz v7, :cond_1d5

    .line 1026
    iget-object v8, v7, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 1029
    .local v8, "contact":Lorg/jbox2d/dynamics/contacts/Contact;
    iget v0, v8, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_162

    move/from16 v16, v17

    .line 1025
    .end local v17    # "stackCount":I
    .restart local v16    # "stackCount":I
    :goto_15d
    iget-object v7, v7, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move/from16 v17, v16

    .end local v16    # "stackCount":I
    .restart local v17    # "stackCount":I
    goto :goto_149

    .line 1034
    :cond_162
    invoke-virtual {v8}, Lorg/jbox2d/dynamics/contacts/Contact;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_359

    invoke-virtual {v8}, Lorg/jbox2d/dynamics/contacts/Contact;->isTouching()Z

    move-result v19

    if-nez v19, :cond_171

    move/from16 v16, v17

    .line 1035
    .end local v17    # "stackCount":I
    .restart local v16    # "stackCount":I
    goto :goto_15d

    .line 1039
    .end local v16    # "stackCount":I
    .restart local v17    # "stackCount":I
    :cond_171
    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v14, v0, Lorg/jbox2d/dynamics/Fixture;->m_isSensor:Z

    .line 1040
    .local v14, "sensorA":Z
    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v15, v0, Lorg/jbox2d/dynamics/Fixture;->m_isSensor:Z

    .line 1041
    .local v15, "sensorB":Z
    if-nez v14, :cond_359

    if-eqz v15, :cond_188

    move/from16 v16, v17

    .line 1042
    .end local v17    # "stackCount":I
    .restart local v16    # "stackCount":I
    goto :goto_15d

    .line 1045
    .end local v16    # "stackCount":I
    .restart local v17    # "stackCount":I
    :cond_188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->island:Lorg/jbox2d/dynamics/Island;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/jbox2d/dynamics/Island;->add(Lorg/jbox2d/dynamics/contacts/Contact;)V

    .line 1046
    iget v0, v8, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v8, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 1048
    iget-object v12, v7, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 1051
    .local v12, "other":Lorg/jbox2d/dynamics/Body;
    iget v0, v12, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1b0

    move/from16 v16, v17

    .line 1052
    .end local v17    # "stackCount":I
    .restart local v16    # "stackCount":I
    goto :goto_15d

    .line 1055
    .end local v16    # "stackCount":I
    .restart local v17    # "stackCount":I
    :cond_1b0
    sget-boolean v19, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v19, :cond_1c0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1c0

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 1056
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->stack:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "stackCount":I
    .restart local v16    # "stackCount":I
    aput-object v12, v19, v17

    .line 1057
    iget v0, v12, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v12, Lorg/jbox2d/dynamics/Body;->m_flags:I

    goto :goto_15d

    .line 1061
    .end local v8    # "contact":Lorg/jbox2d/dynamics/contacts/Contact;
    .end local v12    # "other":Lorg/jbox2d/dynamics/Body;
    .end local v14    # "sensorA":Z
    .end local v15    # "sensorB":Z
    .end local v16    # "stackCount":I
    .restart local v17    # "stackCount":I
    :cond_1d5
    iget-object v11, v5, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .local v11, "je":Lorg/jbox2d/dynamics/joints/JointEdge;
    :goto_1d7
    if-eqz v11, :cond_24c

    .line 1062
    iget-object v0, v11, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/Joint;->m_islandFlag:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1f2

    move/from16 v16, v17

    .line 1061
    .end local v17    # "stackCount":I
    .restart local v16    # "stackCount":I
    :goto_1ed
    iget-object v11, v11, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    move/from16 v17, v16

    .end local v16    # "stackCount":I
    .restart local v17    # "stackCount":I
    goto :goto_1d7

    .line 1066
    :cond_1f2
    iget-object v12, v11, Lorg/jbox2d/dynamics/joints/JointEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 1069
    .restart local v12    # "other":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v12}, Lorg/jbox2d/dynamics/Body;->isActive()Z

    move-result v19

    if-nez v19, :cond_1fd

    move/from16 v16, v17

    .line 1070
    .end local v17    # "stackCount":I
    .restart local v16    # "stackCount":I
    goto :goto_1ed

    .line 1073
    .end local v16    # "stackCount":I
    .restart local v17    # "stackCount":I
    :cond_1fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->island:Lorg/jbox2d/dynamics/Island;

    move-object/from16 v19, v0

    iget-object v0, v11, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/dynamics/Island;->add(Lorg/jbox2d/dynamics/joints/Joint;)V

    .line 1074
    iget-object v0, v11, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_islandFlag:Z

    .line 1076
    iget v0, v12, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_227

    move/from16 v16, v17

    .line 1077
    .end local v17    # "stackCount":I
    .restart local v16    # "stackCount":I
    goto :goto_1ed

    .line 1080
    .end local v16    # "stackCount":I
    .restart local v17    # "stackCount":I
    :cond_227
    sget-boolean v19, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v19, :cond_237

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_237

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 1081
    :cond_237
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->stack:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "stackCount":I
    .restart local v16    # "stackCount":I
    aput-object v12, v19, v17

    .line 1082
    iget v0, v12, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v12, Lorg/jbox2d/dynamics/Body;->m_flags:I

    goto :goto_1ed

    .end local v12    # "other":Lorg/jbox2d/dynamics/Body;
    .end local v16    # "stackCount":I
    .restart local v17    # "stackCount":I
    :cond_24c
    move/from16 v16, v17

    .line 1084
    .end local v17    # "stackCount":I
    .restart local v16    # "stackCount":I
    goto/16 :goto_105

    .line 1085
    .end local v7    # "ce":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    .end local v11    # "je":Lorg/jbox2d/dynamics/joints/JointEdge;
    :cond_250
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->island:Lorg/jbox2d/dynamics/Island;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->islandProfile:Lorg/jbox2d/dynamics/Profile;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_gravity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/World;->m_allowSleep:Z

    move/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jbox2d/dynamics/Island;->solve(Lorg/jbox2d/dynamics/Profile;Lorg/jbox2d/dynamics/TimeStep;Lorg/jbox2d/common/Vec2;Z)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_profile:Lorg/jbox2d/dynamics/Profile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/Profile;->solveInit:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->islandProfile:Lorg/jbox2d/dynamics/Profile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/dynamics/Profile;->solveInit:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/dynamics/Profile;->solveInit:F

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_profile:Lorg/jbox2d/dynamics/Profile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/Profile;->solveVelocity:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->islandProfile:Lorg/jbox2d/dynamics/Profile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/dynamics/Profile;->solveVelocity:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/dynamics/Profile;->solveVelocity:F

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_profile:Lorg/jbox2d/dynamics/Profile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/Profile;->solvePosition:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->islandProfile:Lorg/jbox2d/dynamics/Profile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/dynamics/Profile;->solvePosition:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/dynamics/Profile;->solvePosition:F

    .line 1091
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->island:Lorg/jbox2d/dynamics/Island;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_c9

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->island:Lorg/jbox2d/dynamics/Island;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    aget-object v5, v19, v9

    .line 1094
    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getType()Lorg/jbox2d/dynamics/BodyType;

    move-result-object v19

    sget-object v20, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_30a

    .line 1095
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    iput v0, v5, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 1091
    :cond_30a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d6

    .line 1100
    .end local v9    # "i":I
    .end local v16    # "stackCount":I
    :cond_30d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->broadphaseTimer:Lorg/jbox2d/common/Timer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Timer;->reset()V

    .line 1102
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    :goto_31a
    if-eqz v5, :cond_339

    .line 1104
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_329

    .line 1102
    :cond_324
    :goto_324
    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getNext()Lorg/jbox2d/dynamics/Body;

    move-result-object v5

    goto :goto_31a

    .line 1108
    :cond_329
    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getType()Lorg/jbox2d/dynamics/BodyType;

    move-result-object v19

    sget-object v20, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_324

    .line 1113
    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->synchronizeFixtures()V

    goto :goto_324

    .line 1117
    :cond_339
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/dynamics/ContactManager;->findNewContacts()V

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_profile:Lorg/jbox2d/dynamics/Profile;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->broadphaseTimer:Lorg/jbox2d/common/Timer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/jbox2d/common/Timer;->getMilliseconds()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/dynamics/Profile;->broadphase:F

    .line 1119
    return-void

    .restart local v7    # "ce":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    .restart local v8    # "contact":Lorg/jbox2d/dynamics/contacts/Contact;
    .restart local v17    # "stackCount":I
    :cond_359
    move/from16 v16, v17

    .end local v17    # "stackCount":I
    .restart local v16    # "stackCount":I
    goto/16 :goto_15d
.end method

.method private solveTOI(Lorg/jbox2d/dynamics/TimeStep;)V
    .registers 39
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->toiIsland:Lorg/jbox2d/dynamics/Island;

    move-object/from16 v25, v0

    .line 1132
    .local v25, "island":Lorg/jbox2d/dynamics/Island;
    const/16 v33, 0x40

    const/16 v34, 0x20

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactListener:Lorg/jbox2d/callbacks/ContactListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v25

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jbox2d/dynamics/Island;->init(IIILorg/jbox2d/callbacks/ContactListener;)V

    .line 1134
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/World;->m_stepComplete:Z

    move/from16 v33, v0

    if-eqz v33, :cond_10b

    .line 1135
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .local v9, "b":Lorg/jbox2d/dynamics/Body;
    :goto_31
    if-eqz v9, :cond_4c

    .line 1136
    iget v0, v9, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, -0x2

    move/from16 v0, v33

    iput v0, v9, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 1137
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lorg/jbox2d/common/Sweep;->alpha0:F

    .line 1135
    iget-object v9, v9, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    goto :goto_31

    .line 1140
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v14, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    .local v14, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    :goto_56
    if-eqz v14, :cond_10b

    .line 1142
    iget v0, v14, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, -0x22

    move/from16 v0, v33

    iput v0, v14, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 1143
    const/16 v33, 0x0

    move/from16 v0, v33

    iput v0, v14, Lorg/jbox2d/dynamics/contacts/Contact;->m_toiCount:F

    .line 1144
    const/high16 v33, 0x3f800000    # 1.0f

    move/from16 v0, v33

    iput v0, v14, Lorg/jbox2d/dynamics/contacts/Contact;->m_toi:F

    .line 1140
    iget-object v14, v14, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    goto :goto_56

    .line 1254
    .end local v9    # "b":Lorg/jbox2d/dynamics/Body;
    .local v26, "minAlpha":F
    .local v27, "minContact":Lorg/jbox2d/dynamics/contacts/Contact;
    :cond_71
    invoke-virtual/range {v27 .. v27}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureA()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v19

    .line 1255
    .local v19, "fA":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual/range {v27 .. v27}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureB()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v20

    .line 1256
    .local v20, "fB":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v10

    .line 1257
    .local v10, "bA":Lorg/jbox2d/dynamics/Body;
    invoke-virtual/range {v20 .. v20}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v11

    .line 1259
    .local v11, "bB":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->backup1:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lorg/jbox2d/common/Sweep;->set(Lorg/jbox2d/common/Sweep;)Lorg/jbox2d/common/Sweep;

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->backup2:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    iget-object v0, v11, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lorg/jbox2d/common/Sweep;->set(Lorg/jbox2d/common/Sweep;)Lorg/jbox2d/common/Sweep;

    .line 1262
    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lorg/jbox2d/dynamics/Body;->advance(F)V

    .line 1263
    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/jbox2d/dynamics/Body;->advance(F)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactListener:Lorg/jbox2d/callbacks/ContactListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/contacts/Contact;->update(Lorg/jbox2d/callbacks/ContactListener;)V

    .line 1267
    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, -0x21

    move/from16 v0, v33

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 1268
    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_toiCount:F

    move/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    add-float v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Contact;->m_toiCount:F

    .line 1271
    invoke-virtual/range {v27 .. v27}, Lorg/jbox2d/dynamics/contacts/Contact;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_e2

    invoke-virtual/range {v27 .. v27}, Lorg/jbox2d/dynamics/contacts/Contact;->isTouching()Z

    move-result v33

    if-nez v33, :cond_2fa

    .line 1273
    :cond_e2
    const/16 v33, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/contacts/Contact;->setEnabled(Z)V

    .line 1274
    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->backup1:Lorg/jbox2d/common/Sweep;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lorg/jbox2d/common/Sweep;->set(Lorg/jbox2d/common/Sweep;)Lorg/jbox2d/common/Sweep;

    .line 1275
    iget-object v0, v11, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->backup2:Lorg/jbox2d/common/Sweep;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lorg/jbox2d/common/Sweep;->set(Lorg/jbox2d/common/Sweep;)Lorg/jbox2d/common/Sweep;

    .line 1276
    invoke-virtual {v10}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 1277
    invoke-virtual {v11}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 1151
    .end local v10    # "bA":Lorg/jbox2d/dynamics/Body;
    .end local v11    # "bB":Lorg/jbox2d/dynamics/Body;
    .end local v14    # "c":Lorg/jbox2d/dynamics/contacts/Contact;
    .end local v19    # "fA":Lorg/jbox2d/dynamics/Fixture;
    .end local v20    # "fB":Lorg/jbox2d/dynamics/Fixture;
    .end local v26    # "minAlpha":F
    .end local v27    # "minContact":Lorg/jbox2d/dynamics/contacts/Contact;
    :cond_10b
    const/16 v27, 0x0

    .line 1152
    .restart local v27    # "minContact":Lorg/jbox2d/dynamics/contacts/Contact;
    const/high16 v26, 0x3f800000    # 1.0f

    .line 1154
    .restart local v26    # "minAlpha":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v14, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    .restart local v14    # "c":Lorg/jbox2d/dynamics/contacts/Contact;
    :goto_119
    if-eqz v14, :cond_2e8

    .line 1156
    invoke-virtual {v14}, Lorg/jbox2d/dynamics/contacts/Contact;->isEnabled()Z

    move-result v33

    if-nez v33, :cond_124

    .line 1154
    :cond_121
    :goto_121
    iget-object v14, v14, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    goto :goto_119

    .line 1161
    :cond_124
    iget v0, v14, Lorg/jbox2d/dynamics/contacts/Contact;->m_toiCount:F

    move/from16 v33, v0

    const/high16 v34, 0x41000000    # 8.0f

    cmpl-float v33, v33, v34

    if-gtz v33, :cond_121

    .line 1165
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1166
    .local v7, "alpha":F
    iget v0, v14, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, 0x20

    if-eqz v33, :cond_143

    .line 1168
    iget v7, v14, Lorg/jbox2d/dynamics/contacts/Contact;->m_toi:F

    .line 1240
    :goto_13a
    cmpg-float v33, v7, v26

    if-gez v33, :cond_121

    .line 1242
    move-object/from16 v27, v14

    .line 1243
    move/from16 v26, v7

    goto :goto_121

    .line 1170
    :cond_143
    invoke-virtual {v14}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureA()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v19

    .line 1171
    .restart local v19    # "fA":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual {v14}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureB()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v20

    .line 1174
    .restart local v20    # "fB":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/dynamics/Fixture;->isSensor()Z

    move-result v33

    if-nez v33, :cond_121

    invoke-virtual/range {v20 .. v20}, Lorg/jbox2d/dynamics/Fixture;->isSensor()Z

    move-result v33

    if-nez v33, :cond_121

    .line 1178
    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v10

    .line 1179
    .restart local v10    # "bA":Lorg/jbox2d/dynamics/Body;
    invoke-virtual/range {v20 .. v20}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v11

    .line 1181
    .restart local v11    # "bB":Lorg/jbox2d/dynamics/Body;
    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v31, v0

    .line 1182
    .local v31, "typeA":Lorg/jbox2d/dynamics/BodyType;
    iget-object v0, v11, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v32, v0

    .line 1183
    .local v32, "typeB":Lorg/jbox2d/dynamics/BodyType;
    sget-boolean v33, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v33, :cond_181

    sget-object v33, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_181

    sget-object v33, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_181

    new-instance v33, Ljava/lang/AssertionError;

    invoke-direct/range {v33 .. v33}, Ljava/lang/AssertionError;-><init>()V

    throw v33

    .line 1185
    :cond_181
    invoke-virtual {v10}, Lorg/jbox2d/dynamics/Body;->isAwake()Z

    move-result v33

    if-eqz v33, :cond_208

    sget-object v33, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_208

    const/4 v5, 0x1

    .line 1186
    .local v5, "activeA":Z
    :goto_190
    invoke-virtual {v11}, Lorg/jbox2d/dynamics/Body;->isAwake()Z

    move-result v33

    if-eqz v33, :cond_20a

    sget-object v33, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_20a

    const/4 v6, 0x1

    .line 1189
    .local v6, "activeB":Z
    :goto_19f
    if-nez v5, :cond_1a3

    if-eqz v6, :cond_121

    .line 1193
    :cond_1a3
    invoke-virtual {v10}, Lorg/jbox2d/dynamics/Body;->isBullet()Z

    move-result v33

    if-nez v33, :cond_1b1

    sget-object v33, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_20c

    :cond_1b1
    const/16 v16, 0x1

    .line 1194
    .local v16, "collideA":Z
    :goto_1b3
    invoke-virtual {v11}, Lorg/jbox2d/dynamics/Body;->isBullet()Z

    move-result v33

    if-nez v33, :cond_1c1

    sget-object v33, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_20f

    :cond_1c1
    const/16 v17, 0x1

    .line 1197
    .local v17, "collideB":Z
    :goto_1c3
    if-nez v16, :cond_1c7

    if-eqz v17, :cond_121

    .line 1203
    :cond_1c7
    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v8, v0, Lorg/jbox2d/common/Sweep;->alpha0:F

    .line 1205
    .local v8, "alpha0":F
    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/common/Sweep;->alpha0:F

    move/from16 v33, v0

    iget-object v0, v11, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Sweep;->alpha0:F

    move/from16 v34, v0

    cmpg-float v33, v33, v34

    if-gez v33, :cond_212

    .line 1206
    iget-object v0, v11, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v8, v0, Lorg/jbox2d/common/Sweep;->alpha0:F

    .line 1207
    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Lorg/jbox2d/common/Sweep;->advance(F)V

    .line 1213
    :cond_1f8
    :goto_1f8
    sget-boolean v33, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v33, :cond_23c

    const/high16 v33, 0x3f800000    # 1.0f

    cmpg-float v33, v8, v33

    if-ltz v33, :cond_23c

    new-instance v33, Ljava/lang/AssertionError;

    invoke-direct/range {v33 .. v33}, Ljava/lang/AssertionError;-><init>()V

    throw v33

    .line 1185
    .end local v5    # "activeA":Z
    .end local v6    # "activeB":Z
    .end local v8    # "alpha0":F
    .end local v16    # "collideA":Z
    .end local v17    # "collideB":Z
    :cond_208
    const/4 v5, 0x0

    goto :goto_190

    .line 1186
    .restart local v5    # "activeA":Z
    :cond_20a
    const/4 v6, 0x0

    goto :goto_19f

    .line 1193
    .restart local v6    # "activeB":Z
    :cond_20c
    const/16 v16, 0x0

    goto :goto_1b3

    .line 1194
    .restart local v16    # "collideA":Z
    :cond_20f
    const/16 v17, 0x0

    goto :goto_1c3

    .line 1208
    .restart local v8    # "alpha0":F
    .restart local v17    # "collideB":Z
    :cond_212
    iget-object v0, v11, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/common/Sweep;->alpha0:F

    move/from16 v33, v0

    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Sweep;->alpha0:F

    move/from16 v34, v0

    cmpg-float v33, v33, v34

    if-gez v33, :cond_1f8

    .line 1209
    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v8, v0, Lorg/jbox2d/common/Sweep;->alpha0:F

    .line 1210
    iget-object v0, v11, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Lorg/jbox2d/common/Sweep;->advance(F)V

    goto :goto_1f8

    .line 1215
    :cond_23c
    invoke-virtual {v14}, Lorg/jbox2d/dynamics/contacts/Contact;->getChildIndexA()I

    move-result v22

    .line 1216
    .local v22, "indexA":I
    invoke-virtual {v14}, Lorg/jbox2d/dynamics/contacts/Contact;->getChildIndexB()I

    move-result v23

    .line 1219
    .local v23, "indexB":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->toiInput:Lorg/jbox2d/collision/TimeOfImpact$TOIInput;

    move-object/from16 v24, v0

    .line 1220
    .local v24, "input":Lorg/jbox2d/collision/TimeOfImpact$TOIInput;
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    move-object/from16 v33, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/dynamics/Fixture;->getShape()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/Distance$DistanceProxy;->set(Lorg/jbox2d/collision/shapes/Shape;I)V

    .line 1221
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    move-object/from16 v33, v0

    invoke-virtual/range {v20 .. v20}, Lorg/jbox2d/dynamics/Fixture;->getShape()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/Distance$DistanceProxy;->set(Lorg/jbox2d/collision/shapes/Shape;I)V

    .line 1222
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->sweepA:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lorg/jbox2d/common/Sweep;->set(Lorg/jbox2d/common/Sweep;)Lorg/jbox2d/common/Sweep;

    .line 1223
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->sweepB:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    iget-object v0, v11, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lorg/jbox2d/common/Sweep;->set(Lorg/jbox2d/common/Sweep;)Lorg/jbox2d/common/Sweep;

    .line 1224
    const/high16 v33, 0x3f800000    # 1.0f

    move/from16 v0, v33

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->tMax:F

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lorg/jbox2d/pooling/IWorldPool;->getTimeOfImpact()Lorg/jbox2d/collision/TimeOfImpact;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->toiOutput:Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/TimeOfImpact;->timeOfImpact(Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;Lorg/jbox2d/collision/TimeOfImpact$TOIInput;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->toiOutput:Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v12, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->t:F

    .line 1230
    .local v12, "beta":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->toiOutput:Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->state:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    move-object/from16 v33, v0

    sget-object v34, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->TOUCHING:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_2e5

    .line 1231
    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v33, v33, v8

    mul-float v33, v33, v12

    add-float v33, v33, v8

    const/high16 v34, 0x3f800000    # 1.0f

    invoke-static/range {v33 .. v34}, Lorg/jbox2d/common/MathUtils;->min(FF)F

    move-result v7

    .line 1236
    :goto_2d7
    iput v7, v14, Lorg/jbox2d/dynamics/contacts/Contact;->m_toi:F

    .line 1237
    iget v0, v14, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v33, v0

    or-int/lit8 v33, v33, 0x20

    move/from16 v0, v33

    iput v0, v14, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    goto/16 :goto_13a

    .line 1233
    :cond_2e5
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_2d7

    .line 1247
    .end local v5    # "activeA":Z
    .end local v6    # "activeB":Z
    .end local v7    # "alpha":F
    .end local v8    # "alpha0":F
    .end local v10    # "bA":Lorg/jbox2d/dynamics/Body;
    .end local v11    # "bB":Lorg/jbox2d/dynamics/Body;
    .end local v12    # "beta":F
    .end local v16    # "collideA":Z
    .end local v17    # "collideB":Z
    .end local v19    # "fA":Lorg/jbox2d/dynamics/Fixture;
    .end local v20    # "fB":Lorg/jbox2d/dynamics/Fixture;
    .end local v22    # "indexA":I
    .end local v23    # "indexB":I
    .end local v24    # "input":Lorg/jbox2d/collision/TimeOfImpact$TOIInput;
    .end local v31    # "typeA":Lorg/jbox2d/dynamics/BodyType;
    .end local v32    # "typeB":Lorg/jbox2d/dynamics/BodyType;
    :cond_2e8
    if-eqz v27, :cond_2f1

    const v33, 0x3f7fffec    # 0.9999988f

    cmpg-float v33, v33, v26

    if-gez v33, :cond_71

    .line 1249
    :cond_2f1
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jbox2d/dynamics/World;->m_stepComplete:Z

    .line 1408
    :goto_2f9
    return-void

    .line 1281
    .restart local v10    # "bA":Lorg/jbox2d/dynamics/Body;
    .restart local v11    # "bB":Lorg/jbox2d/dynamics/Body;
    .restart local v19    # "fA":Lorg/jbox2d/dynamics/Fixture;
    .restart local v20    # "fB":Lorg/jbox2d/dynamics/Fixture;
    :cond_2fa
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 1282
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 1285
    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/dynamics/Island;->clear()V

    .line 1286
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lorg/jbox2d/dynamics/Island;->add(Lorg/jbox2d/dynamics/Body;)V

    .line 1287
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lorg/jbox2d/dynamics/Island;->add(Lorg/jbox2d/dynamics/Body;)V

    .line 1288
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Island;->add(Lorg/jbox2d/dynamics/contacts/Contact;)V

    .line 1290
    iget v0, v10, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v33, v0

    or-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    iput v0, v10, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 1291
    iget v0, v11, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v33, v0

    or-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    iput v0, v11, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 1292
    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v33, v0

    or-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->tempBodies:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v10, v33, v34

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->tempBodies:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    aput-object v11, v33, v34

    .line 1297
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_354
    const/16 v33, 0x2

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_49a

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->tempBodies:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v33, v0

    aget-object v13, v33, v21

    .line 1299
    .local v13, "body":Lorg/jbox2d/dynamics/Body;
    iget-object v0, v13, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v33, v0

    sget-object v34, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_386

    .line 1300
    iget-object v15, v13, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .local v15, "ce":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :goto_372
    if-eqz v15, :cond_386

    .line 1301
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    move/from16 v33, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCapacity:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_389

    .line 1297
    .end local v15    # "ce":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :cond_386
    add-int/lit8 v21, v21, 0x1

    goto :goto_354

    .line 1305
    .restart local v15    # "ce":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :cond_389
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    move/from16 v33, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_contactCapacity:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_386

    .line 1309
    iget-object v0, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v18, v0

    .line 1312
    .local v18, "contact":Lorg/jbox2d/dynamics/contacts/Contact;
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, 0x1

    if-eqz v33, :cond_3ac

    .line 1300
    :cond_3a9
    :goto_3a9
    iget-object v15, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    goto :goto_372

    .line 1317
    :cond_3ac
    iget-object v0, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v28, v0

    .line 1318
    .local v28, "other":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v33, v0

    sget-object v34, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_3ca

    invoke-virtual {v13}, Lorg/jbox2d/dynamics/Body;->isBullet()Z

    move-result v33

    if-nez v33, :cond_3ca

    invoke-virtual/range {v28 .. v28}, Lorg/jbox2d/dynamics/Body;->isBullet()Z

    move-result v33

    if-eqz v33, :cond_3a9

    .line 1324
    :cond_3ca
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/Fixture;->m_isSensor:Z

    move/from16 v29, v0

    .line 1325
    .local v29, "sensorA":Z
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/Fixture;->m_isSensor:Z

    move/from16 v30, v0

    .line 1326
    .local v30, "sensorB":Z
    if-nez v29, :cond_3a9

    if-nez v30, :cond_3a9

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->backup1:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lorg/jbox2d/common/Sweep;->set(Lorg/jbox2d/common/Sweep;)Lorg/jbox2d/common/Sweep;

    .line 1332
    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, 0x1

    if-nez v33, :cond_406

    .line 1333
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->advance(F)V

    .line 1337
    :cond_406
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactListener:Lorg/jbox2d/callbacks/ContactListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/contacts/Contact;->update(Lorg/jbox2d/callbacks/ContactListener;)V

    .line 1340
    invoke-virtual/range {v18 .. v18}, Lorg/jbox2d/dynamics/contacts/Contact;->isEnabled()Z

    move-result v33

    if-nez v33, :cond_433

    .line 1341
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->backup1:Lorg/jbox2d/common/Sweep;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lorg/jbox2d/common/Sweep;->set(Lorg/jbox2d/common/Sweep;)Lorg/jbox2d/common/Sweep;

    .line 1342
    invoke-virtual/range {v28 .. v28}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    goto/16 :goto_3a9

    .line 1347
    :cond_433
    invoke-virtual/range {v18 .. v18}, Lorg/jbox2d/dynamics/contacts/Contact;->isTouching()Z

    move-result v33

    if-nez v33, :cond_44d

    .line 1348
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->backup1:Lorg/jbox2d/common/Sweep;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lorg/jbox2d/common/Sweep;->set(Lorg/jbox2d/common/Sweep;)Lorg/jbox2d/common/Sweep;

    .line 1349
    invoke-virtual/range {v28 .. v28}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    goto/16 :goto_3a9

    .line 1354
    :cond_44d
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v33, v0

    or-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 1355
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Island;->add(Lorg/jbox2d/dynamics/contacts/Contact;)V

    .line 1358
    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, 0x1

    if-nez v33, :cond_3a9

    .line 1363
    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v33, v0

    or-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v28

    iput v0, v1, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 1365
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v33, v0

    sget-object v34, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_491

    .line 1366
    const/16 v33, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 1369
    :cond_491
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Island;->add(Lorg/jbox2d/dynamics/Body;)V

    goto/16 :goto_3a9

    .line 1374
    .end local v13    # "body":Lorg/jbox2d/dynamics/Body;
    .end local v15    # "ce":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    .end local v18    # "contact":Lorg/jbox2d/dynamics/contacts/Contact;
    .end local v28    # "other":Lorg/jbox2d/dynamics/Body;
    .end local v29    # "sensorA":Z
    .end local v30    # "sensorB":Z
    :cond_49a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->subStep:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    sub-float v34, v34, v26

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v35, v0

    mul-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->subStep:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->subStep:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v35, v0

    div-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->subStep:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->subStep:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v33, v0

    const/16 v34, 0x14

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lorg/jbox2d/dynamics/TimeStep;->positionIterations:I

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->subStep:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->velocityIterations:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lorg/jbox2d/dynamics/TimeStep;->velocityIterations:I

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->subStep:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->subStep:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v33, v0

    iget v0, v10, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v34, v0

    iget v0, v11, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v35, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lorg/jbox2d/dynamics/Island;->solveTOI(Lorg/jbox2d/dynamics/TimeStep;II)V

    .line 1383
    const/16 v21, 0x0

    :goto_525
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_56e

    .line 1384
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v33, v0

    aget-object v13, v33, v21

    .line 1385
    .restart local v13    # "body":Lorg/jbox2d/dynamics/Body;
    iget v0, v13, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, -0x2

    move/from16 v0, v33

    iput v0, v13, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 1387
    iget-object v0, v13, Lorg/jbox2d/dynamics/Body;->m_type:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v33, v0

    sget-object v34, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_552

    .line 1383
    :cond_54f
    add-int/lit8 v21, v21, 0x1

    goto :goto_525

    .line 1391
    :cond_552
    invoke-virtual {v13}, Lorg/jbox2d/dynamics/Body;->synchronizeFixtures()V

    .line 1394
    iget-object v15, v13, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .restart local v15    # "ce":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :goto_557
    if-eqz v15, :cond_54f

    .line 1395
    iget-object v0, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v34, v0

    and-int/lit8 v34, v34, -0x22

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 1394
    iget-object v15, v15, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    goto :goto_557

    .line 1401
    .end local v13    # "body":Lorg/jbox2d/dynamics/Body;
    .end local v15    # "ce":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :cond_56e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/jbox2d/dynamics/ContactManager;->findNewContacts()V

    .line 1403
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/World;->m_subStepping:Z

    move/from16 v33, v0

    if-eqz v33, :cond_10b

    .line 1404
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jbox2d/dynamics/World;->m_stepComplete:Z

    goto/16 :goto_2f9
.end method


# virtual methods
.method public clearForces()V
    .registers 3

    .prologue
    .line 631
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .local v0, "body":Lorg/jbox2d/dynamics/Body;
    :goto_2
    if-eqz v0, :cond_11

    .line 632
    iget-object v1, v0, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 633
    const/4 v1, 0x0

    iput v1, v0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    .line 631
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getNext()Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    goto :goto_2

    .line 635
    :cond_11
    return-void
.end method

.method public createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;
    .registers 5
    .param p1, "def"    # Lorg/jbox2d/dynamics/BodyDef;

    .prologue
    const/4 v1, 0x0

    .line 307
    sget-boolean v2, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v2, :cond_11

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 308
    :cond_11
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object v0, v1

    .line 323
    :goto_18
    return-object v0

    .line 312
    :cond_19
    new-instance v0, Lorg/jbox2d/dynamics/Body;

    invoke-direct {v0, p1, p0}, Lorg/jbox2d/dynamics/Body;-><init>(Lorg/jbox2d/dynamics/BodyDef;Lorg/jbox2d/dynamics/World;)V

    .line 315
    .local v0, "b":Lorg/jbox2d/dynamics/Body;
    iput-object v1, v0, Lorg/jbox2d/dynamics/Body;->m_prev:Lorg/jbox2d/dynamics/Body;

    .line 316
    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    iput-object v1, v0, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    .line 317
    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    if-eqz v1, :cond_2c

    .line 318
    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    iput-object v0, v1, Lorg/jbox2d/dynamics/Body;->m_prev:Lorg/jbox2d/dynamics/Body;

    .line 320
    :cond_2c
    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .line 321
    iget v1, p0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    goto :goto_18
.end method

.method public createJoint(Lorg/jbox2d/dynamics/joints/JointDef;)Lorg/jbox2d/dynamics/joints/Joint;
    .registers 9
    .param p1, "def"    # Lorg/jbox2d/dynamics/joints/JointDef;

    .prologue
    const/4 v4, 0x0

    .line 409
    sget-boolean v5, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v5, :cond_11

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 410
    :cond_11
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_19

    move-object v3, v4

    .line 463
    :cond_18
    return-object v3

    .line 414
    :cond_19
    invoke-static {p0, p1}, Lorg/jbox2d/dynamics/joints/Joint;->create(Lorg/jbox2d/dynamics/World;Lorg/jbox2d/dynamics/joints/JointDef;)Lorg/jbox2d/dynamics/joints/Joint;

    move-result-object v3

    .line 417
    .local v3, "j":Lorg/jbox2d/dynamics/joints/Joint;
    iput-object v4, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_prev:Lorg/jbox2d/dynamics/joints/Joint;

    .line 418
    iget-object v5, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    iput-object v5, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    .line 419
    iget-object v5, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    if-eqz v5, :cond_2b

    .line 420
    iget-object v5, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    iput-object v3, v5, Lorg/jbox2d/dynamics/joints/Joint;->m_prev:Lorg/jbox2d/dynamics/joints/Joint;

    .line 422
    :cond_2b
    iput-object v3, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    .line 423
    iget v5, p0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    .line 426
    iget-object v5, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v3, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    .line 427
    iget-object v5, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyB()Lorg/jbox2d/dynamics/Body;

    move-result-object v6

    iput-object v6, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 428
    iget-object v5, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v4, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 429
    iget-object v5, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyA()Lorg/jbox2d/dynamics/Body;

    move-result-object v6

    iget-object v6, v6, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v6, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 430
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyA()Lorg/jbox2d/dynamics/Body;

    move-result-object v5

    iget-object v5, v5, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-eqz v5, :cond_5f

    .line 431
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyA()Lorg/jbox2d/dynamics/Body;

    move-result-object v5

    iget-object v5, v5, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v6, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v6, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 433
    :cond_5f
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyA()Lorg/jbox2d/dynamics/Body;

    move-result-object v5

    iget-object v6, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v6, v5, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 435
    iget-object v5, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v3, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    .line 436
    iget-object v5, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyA()Lorg/jbox2d/dynamics/Body;

    move-result-object v6

    iput-object v6, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 437
    iget-object v5, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v4, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 438
    iget-object v4, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyB()Lorg/jbox2d/dynamics/Body;

    move-result-object v5

    iget-object v5, v5, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v5, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 439
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyB()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    iget-object v4, v4, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-eqz v4, :cond_93

    .line 440
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyB()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    iget-object v4, v4, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v5, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 442
    :cond_93
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyB()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    iget-object v5, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v5, v4, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 444
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/JointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    .line 445
    .local v0, "bodyA":Lorg/jbox2d/dynamics/Body;
    iget-object v1, p1, Lorg/jbox2d/dynamics/joints/JointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    .line 448
    .local v1, "bodyB":Lorg/jbox2d/dynamics/Body;
    iget-boolean v4, p1, Lorg/jbox2d/dynamics/joints/JointDef;->collideConnected:Z

    if-nez v4, :cond_18

    .line 449
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getContactList()Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-result-object v2

    .line 450
    .local v2, "edge":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :goto_a7
    if-eqz v2, :cond_18

    .line 451
    iget-object v4, v2, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    if-ne v4, v0, :cond_b2

    .line 454
    iget-object v4, v2, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/contacts/Contact;->flagForFiltering()V

    .line 457
    :cond_b2
    iget-object v2, v2, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    goto :goto_a7
.end method

.method public destroyBody(Lorg/jbox2d/dynamics/Body;)V
    .registers 11
    .param p1, "body"    # Lorg/jbox2d/dynamics/Body;

    .prologue
    const/4 v8, 0x0

    .line 335
    sget-boolean v6, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v6, :cond_f

    iget v6, p0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    if-gtz v6, :cond_f

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 336
    :cond_f
    sget-boolean v6, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v6, :cond_1f

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_1f

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 337
    :cond_1f
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 398
    :goto_25
    return-void

    .line 342
    :cond_26
    iget-object v4, p1, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 343
    .local v4, "je":Lorg/jbox2d/dynamics/joints/JointEdge;
    :goto_28
    if-eqz v4, :cond_40

    .line 344
    move-object v5, v4

    .line 345
    .local v5, "je0":Lorg/jbox2d/dynamics/joints/JointEdge;
    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 346
    iget-object v6, p0, Lorg/jbox2d/dynamics/World;->m_destructionListener:Lorg/jbox2d/callbacks/DestructionListener;

    if-eqz v6, :cond_38

    .line 347
    iget-object v6, p0, Lorg/jbox2d/dynamics/World;->m_destructionListener:Lorg/jbox2d/callbacks/DestructionListener;

    iget-object v7, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    invoke-interface {v6, v7}, Lorg/jbox2d/callbacks/DestructionListener;->sayGoodbye(Lorg/jbox2d/dynamics/joints/Joint;)V

    .line 350
    :cond_38
    iget-object v6, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    invoke-virtual {p0, v6}, Lorg/jbox2d/dynamics/World;->destroyJoint(Lorg/jbox2d/dynamics/joints/Joint;)V

    .line 352
    iput-object v4, p1, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    goto :goto_28

    .line 354
    .end local v5    # "je0":Lorg/jbox2d/dynamics/joints/JointEdge;
    :cond_40
    iput-object v8, p1, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 357
    iget-object v0, p1, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 358
    .local v0, "ce":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :goto_44
    if-eqz v0, :cond_51

    .line 359
    move-object v1, v0

    .line 360
    .local v1, "ce0":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 361
    iget-object v6, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v7, v1, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    invoke-virtual {v6, v7}, Lorg/jbox2d/dynamics/ContactManager;->destroy(Lorg/jbox2d/dynamics/contacts/Contact;)V

    goto :goto_44

    .line 363
    .end local v1    # "ce0":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :cond_51
    iput-object v8, p1, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 365
    iget-object v2, p1, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    .line 366
    .local v2, "f":Lorg/jbox2d/dynamics/Fixture;
    :goto_55
    if-eqz v2, :cond_76

    .line 367
    move-object v3, v2

    .line 368
    .local v3, "f0":Lorg/jbox2d/dynamics/Fixture;
    iget-object v2, v2, Lorg/jbox2d/dynamics/Fixture;->m_next:Lorg/jbox2d/dynamics/Fixture;

    .line 370
    iget-object v6, p0, Lorg/jbox2d/dynamics/World;->m_destructionListener:Lorg/jbox2d/callbacks/DestructionListener;

    if-eqz v6, :cond_63

    .line 371
    iget-object v6, p0, Lorg/jbox2d/dynamics/World;->m_destructionListener:Lorg/jbox2d/callbacks/DestructionListener;

    invoke-interface {v6, v3}, Lorg/jbox2d/callbacks/DestructionListener;->sayGoodbye(Lorg/jbox2d/dynamics/Fixture;)V

    .line 374
    :cond_63
    iget-object v6, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v6, v6, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    invoke-virtual {v3, v6}, Lorg/jbox2d/dynamics/Fixture;->destroyProxies(Lorg/jbox2d/collision/broadphase/BroadPhase;)V

    .line 375
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Fixture;->destroy()V

    .line 377
    iput-object v2, p1, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    .line 378
    iget v6, p1, Lorg/jbox2d/dynamics/Body;->m_fixtureCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p1, Lorg/jbox2d/dynamics/Body;->m_fixtureCount:I

    goto :goto_55

    .line 380
    .end local v3    # "f0":Lorg/jbox2d/dynamics/Fixture;
    :cond_76
    iput-object v8, p1, Lorg/jbox2d/dynamics/Body;->m_fixtureList:Lorg/jbox2d/dynamics/Fixture;

    .line 381
    const/4 v6, 0x0

    iput v6, p1, Lorg/jbox2d/dynamics/Body;->m_fixtureCount:I

    .line 384
    iget-object v6, p1, Lorg/jbox2d/dynamics/Body;->m_prev:Lorg/jbox2d/dynamics/Body;

    if-eqz v6, :cond_85

    .line 385
    iget-object v6, p1, Lorg/jbox2d/dynamics/Body;->m_prev:Lorg/jbox2d/dynamics/Body;

    iget-object v7, p1, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    iput-object v7, v6, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    .line 388
    :cond_85
    iget-object v6, p1, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    if-eqz v6, :cond_8f

    .line 389
    iget-object v6, p1, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    iget-object v7, p1, Lorg/jbox2d/dynamics/Body;->m_prev:Lorg/jbox2d/dynamics/Body;

    iput-object v7, v6, Lorg/jbox2d/dynamics/Body;->m_prev:Lorg/jbox2d/dynamics/Body;

    .line 392
    :cond_8f
    iget-object v6, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    if-ne p1, v6, :cond_97

    .line 393
    iget-object v6, p1, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    iput-object v6, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .line 396
    :cond_97
    iget v6, p0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    goto :goto_25
.end method

.method public destroyJoint(Lorg/jbox2d/dynamics/joints/Joint;)V
    .registers 10
    .param p1, "j"    # Lorg/jbox2d/dynamics/joints/Joint;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 473
    sget-boolean v4, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v4, :cond_12

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 474
    :cond_12
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 551
    :cond_18
    return-void

    .line 478
    :cond_19
    invoke-virtual {p1}, Lorg/jbox2d/dynamics/joints/Joint;->getCollideConnected()Z

    move-result v2

    .line 481
    .local v2, "collideConnected":Z
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_prev:Lorg/jbox2d/dynamics/joints/Joint;

    if-eqz v4, :cond_27

    .line 482
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_prev:Lorg/jbox2d/dynamics/joints/Joint;

    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    iput-object v5, v4, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    .line 485
    :cond_27
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    if-eqz v4, :cond_31

    .line 486
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_prev:Lorg/jbox2d/dynamics/joints/Joint;

    iput-object v5, v4, Lorg/jbox2d/dynamics/joints/Joint;->m_prev:Lorg/jbox2d/dynamics/joints/Joint;

    .line 489
    :cond_31
    iget-object v4, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    if-ne p1, v4, :cond_39

    .line 490
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    iput-object v4, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    .line 494
    :cond_39
    invoke-virtual {p1}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyA()Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    .line 495
    .local v0, "bodyA":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {p1}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyB()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    .line 498
    .local v1, "bodyB":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v0, v7}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 499
    invoke-virtual {v1, v7}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 502
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-eqz v4, :cond_57

    .line 503
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v5, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 506
    :cond_57
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-eqz v4, :cond_67

    .line 507
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v5, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 510
    :cond_67
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v0, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-ne v4, v5, :cond_73

    .line 511
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v4, v0, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 514
    :cond_73
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v6, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 515
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeA:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v6, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 518
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-eqz v4, :cond_8b

    .line 519
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v5, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 522
    :cond_8b
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-eqz v4, :cond_9b

    .line 523
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v5, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 526
    :cond_9b
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v1, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-ne v4, v5, :cond_a7

    .line 527
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v4, v1, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 530
    :cond_a7
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v6, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 531
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_edgeB:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v6, v4, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 533
    invoke-static {p1}, Lorg/jbox2d/dynamics/joints/Joint;->destroy(Lorg/jbox2d/dynamics/joints/Joint;)V

    .line 535
    sget-boolean v4, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v4, :cond_c0

    iget v4, p0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    if-gtz v4, :cond_c0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 536
    :cond_c0
    iget v4, p0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    .line 539
    if-nez v2, :cond_18

    .line 540
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getContactList()Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-result-object v3

    .line 541
    .local v3, "edge":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :goto_cc
    if-eqz v3, :cond_18

    .line 542
    iget-object v4, v3, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    if-ne v4, v0, :cond_d7

    .line 545
    iget-object v4, v3, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/contacts/Contact;->flagForFiltering()V

    .line 548
    :cond_d7
    iget-object v3, v3, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    goto :goto_cc
.end method

.method public drawDebugData()V
    .registers 16

    .prologue
    .line 647
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    if-nez v11, :cond_5

    .line 728
    :cond_4
    :goto_4
    return-void

    .line 651
    :cond_5
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    invoke-virtual {v11}, Lorg/jbox2d/callbacks/DebugDraw;->getFlags()I

    move-result v6

    .line 653
    .local v6, "flags":I
    and-int/lit8 v11, v6, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_af

    .line 654
    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .local v1, "b":Lorg/jbox2d/dynamics/Body;
    :goto_12
    if-eqz v1, :cond_af

    .line 655
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->xf:Lorg/jbox2d/common/Transform;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getTransform()Lorg/jbox2d/common/Transform;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jbox2d/common/Transform;->set(Lorg/jbox2d/common/Transform;)Lorg/jbox2d/common/Transform;

    .line 656
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getFixtureList()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v3

    .local v3, "f":Lorg/jbox2d/dynamics/Fixture;
    :goto_21
    if-eqz v3, :cond_a9

    .line 657
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->isActive()Z

    move-result v11

    if-nez v11, :cond_41

    .line 658
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f000000    # 0.5f

    const v14, 0x3e99999a    # 0.3f

    invoke-virtual {v11, v12, v13, v14}, Lorg/jbox2d/common/Color3f;->set(FFF)V

    .line 659
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->xf:Lorg/jbox2d/common/Transform;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    invoke-direct {p0, v3, v11, v12}, Lorg/jbox2d/dynamics/World;->drawShape(Lorg/jbox2d/dynamics/Fixture;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Color3f;)V

    .line 656
    :goto_3c
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Fixture;->getNext()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v3

    goto :goto_21

    .line 660
    :cond_41
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getType()Lorg/jbox2d/dynamics/BodyType;

    move-result-object v11

    sget-object v12, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    if-ne v11, v12, :cond_5e

    .line 661
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    const/high16 v12, 0x3f000000    # 0.5f

    const v13, 0x3f666666    # 0.9f

    const v14, 0x3e99999a    # 0.3f

    invoke-virtual {v11, v12, v13, v14}, Lorg/jbox2d/common/Color3f;->set(FFF)V

    .line 662
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->xf:Lorg/jbox2d/common/Transform;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    invoke-direct {p0, v3, v11, v12}, Lorg/jbox2d/dynamics/World;->drawShape(Lorg/jbox2d/dynamics/Fixture;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Color3f;)V

    goto :goto_3c

    .line 663
    :cond_5e
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getType()Lorg/jbox2d/dynamics/BodyType;

    move-result-object v11

    sget-object v12, Lorg/jbox2d/dynamics/BodyType;->KINEMATIC:Lorg/jbox2d/dynamics/BodyType;

    if-ne v11, v12, :cond_7a

    .line 664
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f000000    # 0.5f

    const v14, 0x3f666666    # 0.9f

    invoke-virtual {v11, v12, v13, v14}, Lorg/jbox2d/common/Color3f;->set(FFF)V

    .line 665
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->xf:Lorg/jbox2d/common/Transform;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    invoke-direct {p0, v3, v11, v12}, Lorg/jbox2d/dynamics/World;->drawShape(Lorg/jbox2d/dynamics/Fixture;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Color3f;)V

    goto :goto_3c

    .line 666
    :cond_7a
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->isAwake()Z

    move-result v11

    if-nez v11, :cond_93

    .line 667
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v11, v12, v13, v14}, Lorg/jbox2d/common/Color3f;->set(FFF)V

    .line 668
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->xf:Lorg/jbox2d/common/Transform;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    invoke-direct {p0, v3, v11, v12}, Lorg/jbox2d/dynamics/World;->drawShape(Lorg/jbox2d/dynamics/Fixture;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Color3f;)V

    goto :goto_3c

    .line 670
    :cond_93
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    const v12, 0x3f666666    # 0.9f

    const v13, 0x3f333333    # 0.7f

    const v14, 0x3f333333    # 0.7f

    invoke-virtual {v11, v12, v13, v14}, Lorg/jbox2d/common/Color3f;->set(FFF)V

    .line 671
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->xf:Lorg/jbox2d/common/Transform;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    invoke-direct {p0, v3, v11, v12}, Lorg/jbox2d/dynamics/World;->drawShape(Lorg/jbox2d/dynamics/Fixture;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Color3f;)V

    goto :goto_3c

    .line 654
    :cond_a9
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getNext()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    goto/16 :goto_12

    .line 677
    .end local v1    # "b":Lorg/jbox2d/dynamics/Body;
    .end local v3    # "f":Lorg/jbox2d/dynamics/Fixture;
    :cond_af
    and-int/lit8 v11, v6, 0x2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_c0

    .line 678
    iget-object v8, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    .local v8, "j":Lorg/jbox2d/dynamics/joints/Joint;
    :goto_b6
    if-eqz v8, :cond_c0

    .line 679
    invoke-direct {p0, v8}, Lorg/jbox2d/dynamics/World;->drawJoint(Lorg/jbox2d/dynamics/joints/Joint;)V

    .line 678
    invoke-virtual {v8}, Lorg/jbox2d/dynamics/joints/Joint;->getNext()Lorg/jbox2d/dynamics/joints/Joint;

    move-result-object v8

    goto :goto_b6

    .line 683
    .end local v8    # "j":Lorg/jbox2d/dynamics/joints/Joint;
    :cond_c0
    and-int/lit8 v11, v6, 0x8

    const/16 v12, 0x8

    if-ne v11, v12, :cond_10c

    .line 684
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    const v12, 0x3e99999a    # 0.3f

    const v13, 0x3f666666    # 0.9f

    const v14, 0x3f666666    # 0.9f

    invoke-virtual {v11, v12, v13, v14}, Lorg/jbox2d/common/Color3f;->set(FFF)V

    .line 685
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v2, v11, Lorg/jbox2d/dynamics/ContactManager;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    .local v2, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    :goto_d8
    if-eqz v2, :cond_10c

    .line 686
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureA()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v4

    .line 687
    .local v4, "fixtureA":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureB()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v5

    .line 688
    .local v5, "fixtureB":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/contacts/Contact;->getChildIndexA()I

    move-result v11

    invoke-virtual {v4, v11}, Lorg/jbox2d/dynamics/Fixture;->getAABB(I)Lorg/jbox2d/collision/AABB;

    move-result-object v11

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->cA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v11, v12}, Lorg/jbox2d/collision/AABB;->getCenterToOut(Lorg/jbox2d/common/Vec2;)V

    .line 689
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/contacts/Contact;->getChildIndexB()I

    move-result v11

    invoke-virtual {v5, v11}, Lorg/jbox2d/dynamics/Fixture;->getAABB(I)Lorg/jbox2d/collision/AABB;

    move-result-object v11

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->cB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v11, v12}, Lorg/jbox2d/collision/AABB;->getCenterToOut(Lorg/jbox2d/common/Vec2;)V

    .line 690
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->cA:Lorg/jbox2d/common/Vec2;

    iget-object v13, p0, Lorg/jbox2d/dynamics/World;->cB:Lorg/jbox2d/common/Vec2;

    iget-object v14, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    invoke-virtual {v11, v12, v13, v14}, Lorg/jbox2d/callbacks/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 685
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/contacts/Contact;->getNext()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v2

    goto :goto_d8

    .line 694
    .end local v2    # "c":Lorg/jbox2d/dynamics/contacts/Contact;
    .end local v4    # "fixtureA":Lorg/jbox2d/dynamics/Fixture;
    .end local v5    # "fixtureB":Lorg/jbox2d/dynamics/Fixture;
    :cond_10c
    and-int/lit8 v11, v6, 0x4

    const/4 v12, 0x4

    if-ne v11, v12, :cond_196

    .line 695
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    const v12, 0x3f666666    # 0.9f

    const v13, 0x3e99999a    # 0.3f

    const v14, 0x3f666666    # 0.9f

    invoke-virtual {v11, v12, v13, v14}, Lorg/jbox2d/common/Color3f;->set(FFF)V

    .line 697
    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .restart local v1    # "b":Lorg/jbox2d/dynamics/Body;
    :goto_121
    if-eqz v1, :cond_196

    .line 698
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->isActive()Z

    move-result v11

    if-nez v11, :cond_12e

    .line 697
    :cond_129
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getNext()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    goto :goto_121

    .line 702
    :cond_12e
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getFixtureList()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v3

    .restart local v3    # "f":Lorg/jbox2d/dynamics/Fixture;
    :goto_132
    if-eqz v3, :cond_129

    .line 703
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_135
    iget v11, v3, Lorg/jbox2d/dynamics/Fixture;->m_proxyCount:I

    if-ge v7, v11, :cond_191

    .line 704
    iget-object v11, v3, Lorg/jbox2d/dynamics/Fixture;->m_proxies:[Lorg/jbox2d/dynamics/FixtureProxy;

    aget-object v9, v11, v7

    .line 705
    .local v9, "proxy":Lorg/jbox2d/dynamics/FixtureProxy;
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v11, v11, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    iget v12, v9, Lorg/jbox2d/dynamics/FixtureProxy;->proxyId:I

    invoke-virtual {v11, v12}, Lorg/jbox2d/collision/broadphase/BroadPhase;->getFatAABB(I)Lorg/jbox2d/collision/AABB;

    move-result-object v0

    .line 706
    .local v0, "aabb":Lorg/jbox2d/collision/AABB;
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->avs:Lorg/jbox2d/pooling/arrays/Vec2Array;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lorg/jbox2d/pooling/arrays/Vec2Array;->get(I)[Lorg/jbox2d/common/Vec2;

    move-result-object v10

    .line 707
    .local v10, "vs":[Lorg/jbox2d/common/Vec2;
    const/4 v11, 0x0

    aget-object v11, v10, v11

    iget-object v12, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v13, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v13, v13, Lorg/jbox2d/common/Vec2;->y:F

    invoke-virtual {v11, v12, v13}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 708
    const/4 v11, 0x1

    aget-object v11, v10, v11

    iget-object v12, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v13, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v13, v13, Lorg/jbox2d/common/Vec2;->y:F

    invoke-virtual {v11, v12, v13}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 709
    const/4 v11, 0x2

    aget-object v11, v10, v11

    iget-object v12, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v13, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v13, v13, Lorg/jbox2d/common/Vec2;->y:F

    invoke-virtual {v11, v12, v13}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 710
    const/4 v11, 0x3

    aget-object v11, v10, v11

    iget-object v12, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v13, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v13, v13, Lorg/jbox2d/common/Vec2;->y:F

    invoke-virtual {v11, v12, v13}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 711
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    const/4 v12, 0x4

    iget-object v13, p0, Lorg/jbox2d/dynamics/World;->color:Lorg/jbox2d/common/Color3f;

    invoke-virtual {v11, v10, v12, v13}, Lorg/jbox2d/callbacks/DebugDraw;->drawPolygon([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Color3f;)V

    .line 703
    add-int/lit8 v7, v7, 0x1

    goto :goto_135

    .line 702
    .end local v0    # "aabb":Lorg/jbox2d/collision/AABB;
    .end local v9    # "proxy":Lorg/jbox2d/dynamics/FixtureProxy;
    .end local v10    # "vs":[Lorg/jbox2d/common/Vec2;
    :cond_191
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Fixture;->getNext()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v3

    goto :goto_132

    .line 717
    .end local v1    # "b":Lorg/jbox2d/dynamics/Body;
    .end local v3    # "f":Lorg/jbox2d/dynamics/Fixture;
    .end local v7    # "i":I
    :cond_196
    and-int/lit8 v11, v6, 0x10

    const/16 v12, 0x10

    if-ne v11, v12, :cond_1c0

    .line 718
    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .restart local v1    # "b":Lorg/jbox2d/dynamics/Body;
    :goto_19e
    if-eqz v1, :cond_1c0

    .line 719
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->xf:Lorg/jbox2d/common/Transform;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getTransform()Lorg/jbox2d/common/Transform;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jbox2d/common/Transform;->set(Lorg/jbox2d/common/Transform;)Lorg/jbox2d/common/Transform;

    .line 720
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->xf:Lorg/jbox2d/common/Transform;

    iget-object v11, v11, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getWorldCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 721
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->xf:Lorg/jbox2d/common/Transform;

    invoke-virtual {v11, v12}, Lorg/jbox2d/callbacks/DebugDraw;->drawTransform(Lorg/jbox2d/common/Transform;)V

    .line 718
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getNext()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    goto :goto_19e

    .line 725
    .end local v1    # "b":Lorg/jbox2d/dynamics/Body;
    :cond_1c0
    and-int/lit8 v11, v6, 0x20

    const/16 v12, 0x20

    if-ne v11, v12, :cond_4

    .line 726
    iget-object v11, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v11, v11, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    invoke-virtual {v11, v12}, Lorg/jbox2d/collision/broadphase/BroadPhase;->drawTree(Lorg/jbox2d/callbacks/DebugDraw;)V

    goto/16 :goto_4
.end method

.method public getAutoClearForces()Z
    .registers 3

    .prologue
    .line 942
    iget v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getBodyCount()I
    .registers 2

    .prologue
    .line 848
    iget v0, p0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    return v0
.end method

.method public getBodyList()Lorg/jbox2d/dynamics/Body;
    .registers 2

    .prologue
    .line 772
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    return-object v0
.end method

.method public getContactCount()I
    .registers 2

    .prologue
    .line 866
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactCount:I

    return v0
.end method

.method public getContactList()Lorg/jbox2d/dynamics/contacts/Contact;
    .registers 2

    .prologue
    .line 794
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    return-object v0
.end method

.method public getContactManager()Lorg/jbox2d/dynamics/ContactManager;
    .registers 2

    .prologue
    .line 951
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    return-object v0
.end method

.method public getGravity()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 911
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_gravity:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getJointCount()I
    .registers 2

    .prologue
    .line 857
    iget v0, p0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    return v0
.end method

.method public getJointList()Lorg/jbox2d/dynamics/joints/Joint;
    .registers 2

    .prologue
    .line 782
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    return-object v0
.end method

.method public getPool()Lorg/jbox2d/pooling/IWorldPool;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->pool:Lorg/jbox2d/pooling/IWorldPool;

    return-object v0
.end method

.method public getProfile()Lorg/jbox2d/dynamics/Profile;
    .registers 2

    .prologue
    .line 955
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_profile:Lorg/jbox2d/dynamics/Profile;

    return-object v0
.end method

.method public getProxyCount()I
    .registers 2

    .prologue
    .line 839
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    invoke-virtual {v0}, Lorg/jbox2d/collision/broadphase/BroadPhase;->getProxyCount()I

    move-result v0

    return v0
.end method

.method public getTreeBalance()I
    .registers 2

    .prologue
    .line 884
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    invoke-virtual {v0}, Lorg/jbox2d/collision/broadphase/BroadPhase;->getTreeBalance()I

    move-result v0

    return v0
.end method

.method public getTreeHeight()I
    .registers 2

    .prologue
    .line 875
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    invoke-virtual {v0}, Lorg/jbox2d/collision/broadphase/BroadPhase;->getTreeHeight()I

    move-result v0

    return v0
.end method

.method public getTreeQuality()F
    .registers 2

    .prologue
    .line 893
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    invoke-virtual {v0}, Lorg/jbox2d/collision/broadphase/BroadPhase;->getTreeQuality()F

    move-result v0

    return v0
.end method

.method public isAllowSleep()Z
    .registers 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/World;->m_allowSleep:Z

    return v0
.end method

.method public isContinuousPhysics()Z
    .registers 2

    .prologue
    .line 828
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/World;->m_continuousPhysics:Z

    return v0
.end method

.method public isLocked()Z
    .registers 3

    .prologue
    .line 920
    iget v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSleepingAllowed()Z
    .registers 2

    .prologue
    .line 798
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/World;->m_allowSleep:Z

    return v0
.end method

.method public isSubStepping()Z
    .registers 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/World;->m_subStepping:Z

    return v0
.end method

.method public isWarmStarting()Z
    .registers 2

    .prologue
    .line 815
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/World;->m_warmStarting:Z

    return v0
.end method

.method public popContact(Lorg/jbox2d/dynamics/Fixture;ILorg/jbox2d/dynamics/Fixture;I)Lorg/jbox2d/dynamics/contacts/Contact;
    .registers 12
    .param p1, "fixtureA"    # Lorg/jbox2d/dynamics/Fixture;
    .param p2, "indexA"    # I
    .param p3, "fixtureB"    # Lorg/jbox2d/dynamics/Fixture;
    .param p4, "indexB"    # I

    .prologue
    .line 221
    invoke-virtual {p1}, Lorg/jbox2d/dynamics/Fixture;->getType()Lorg/jbox2d/collision/shapes/ShapeType;

    move-result-object v3

    .line 222
    .local v3, "type1":Lorg/jbox2d/collision/shapes/ShapeType;
    invoke-virtual {p3}, Lorg/jbox2d/dynamics/Fixture;->getType()Lorg/jbox2d/collision/shapes/ShapeType;

    move-result-object v4

    .line 224
    .local v4, "type2":Lorg/jbox2d/collision/shapes/ShapeType;
    iget-object v5, p0, Lorg/jbox2d/dynamics/World;->contactStacks:[[Lorg/jbox2d/dynamics/contacts/ContactRegister;

    invoke-virtual {v3}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v6

    aget-object v2, v5, v6

    .line 225
    .local v2, "reg":Lorg/jbox2d/dynamics/contacts/ContactRegister;
    iget-object v1, v2, Lorg/jbox2d/dynamics/contacts/ContactRegister;->creator:Lorg/jbox2d/pooling/IDynamicStack;

    .line 226
    .local v1, "creator":Lorg/jbox2d/pooling/IDynamicStack;, "Lorg/jbox2d/pooling/IDynamicStack<Lorg/jbox2d/dynamics/contacts/Contact;>;"
    if-eqz v1, :cond_32

    .line 227
    iget-boolean v5, v2, Lorg/jbox2d/dynamics/contacts/ContactRegister;->primary:Z

    if-eqz v5, :cond_28

    .line 228
    invoke-interface {v1}, Lorg/jbox2d/pooling/IDynamicStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/dynamics/contacts/Contact;

    .line 229
    .local v0, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jbox2d/dynamics/contacts/Contact;->init(Lorg/jbox2d/dynamics/Fixture;ILorg/jbox2d/dynamics/Fixture;I)V

    .line 237
    .end local v0    # "c":Lorg/jbox2d/dynamics/contacts/Contact;
    :goto_27
    return-object v0

    .line 232
    :cond_28
    invoke-interface {v1}, Lorg/jbox2d/pooling/IDynamicStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/dynamics/contacts/Contact;

    .line 233
    .restart local v0    # "c":Lorg/jbox2d/dynamics/contacts/Contact;
    invoke-virtual {v0, p3, p4, p1, p2}, Lorg/jbox2d/dynamics/contacts/Contact;->init(Lorg/jbox2d/dynamics/Fixture;ILorg/jbox2d/dynamics/Fixture;I)V

    goto :goto_27

    .line 237
    .end local v0    # "c":Lorg/jbox2d/dynamics/contacts/Contact;
    :cond_32
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public pushContact(Lorg/jbox2d/dynamics/contacts/Contact;)V
    .registers 9
    .param p1, "contact"    # Lorg/jbox2d/dynamics/contacts/Contact;

    .prologue
    const/4 v6, 0x1

    .line 242
    invoke-virtual {p1}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureA()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v1

    .line 243
    .local v1, "fixtureA":Lorg/jbox2d/dynamics/Fixture;
    invoke-virtual {p1}, Lorg/jbox2d/dynamics/contacts/Contact;->getFixtureB()Lorg/jbox2d/dynamics/Fixture;

    move-result-object v2

    .line 245
    .local v2, "fixtureB":Lorg/jbox2d/dynamics/Fixture;
    iget-object v5, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget v5, v5, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-lez v5, :cond_29

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Fixture;->isSensor()Z

    move-result v5

    if-nez v5, :cond_29

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Fixture;->isSensor()Z

    move-result v5

    if-nez v5, :cond_29

    .line 246
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 247
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Fixture;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 250
    :cond_29
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Fixture;->getType()Lorg/jbox2d/collision/shapes/ShapeType;

    move-result-object v3

    .line 251
    .local v3, "type1":Lorg/jbox2d/collision/shapes/ShapeType;
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Fixture;->getType()Lorg/jbox2d/collision/shapes/ShapeType;

    move-result-object v4

    .line 253
    .local v4, "type2":Lorg/jbox2d/collision/shapes/ShapeType;
    iget-object v5, p0, Lorg/jbox2d/dynamics/World;->contactStacks:[[Lorg/jbox2d/dynamics/contacts/ContactRegister;

    invoke-virtual {v3}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    iget-object v0, v5, Lorg/jbox2d/dynamics/contacts/ContactRegister;->creator:Lorg/jbox2d/pooling/IDynamicStack;

    .line 254
    .local v0, "creator":Lorg/jbox2d/pooling/IDynamicStack;, "Lorg/jbox2d/pooling/IDynamicStack<Lorg/jbox2d/dynamics/contacts/Contact;>;"
    invoke-interface {v0, p1}, Lorg/jbox2d/pooling/IDynamicStack;->push(Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public queryAABB(Lorg/jbox2d/callbacks/QueryCallback;Lorg/jbox2d/collision/AABB;)V
    .registers 5
    .param p1, "callback"    # Lorg/jbox2d/callbacks/QueryCallback;
    .param p2, "aabb"    # Lorg/jbox2d/collision/AABB;

    .prologue
    .line 739
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->wqwrapper:Lorg/jbox2d/dynamics/WorldQueryWrapper;

    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v1, v1, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    iput-object v1, v0, Lorg/jbox2d/dynamics/WorldQueryWrapper;->broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    .line 740
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->wqwrapper:Lorg/jbox2d/dynamics/WorldQueryWrapper;

    iput-object p1, v0, Lorg/jbox2d/dynamics/WorldQueryWrapper;->callback:Lorg/jbox2d/callbacks/QueryCallback;

    .line 741
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->wqwrapper:Lorg/jbox2d/dynamics/WorldQueryWrapper;

    invoke-virtual {v0, v1, p2}, Lorg/jbox2d/collision/broadphase/BroadPhase;->query(Lorg/jbox2d/callbacks/TreeCallback;Lorg/jbox2d/collision/AABB;)V

    .line 742
    return-void
.end method

.method public raycast(Lorg/jbox2d/callbacks/RayCastCallback;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 7
    .param p1, "callback"    # Lorg/jbox2d/callbacks/RayCastCallback;
    .param p2, "point1"    # Lorg/jbox2d/common/Vec2;
    .param p3, "point2"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 757
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->wrcwrapper:Lorg/jbox2d/dynamics/WorldRayCastWrapper;

    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v1, v1, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    iput-object v1, v0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;->broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    .line 758
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->wrcwrapper:Lorg/jbox2d/dynamics/WorldRayCastWrapper;

    iput-object p1, v0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;->callback:Lorg/jbox2d/callbacks/RayCastCallback;

    .line 759
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->input:Lorg/jbox2d/collision/RayCastInput;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lorg/jbox2d/collision/RayCastInput;->maxFraction:F

    .line 760
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->input:Lorg/jbox2d/collision/RayCastInput;

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 761
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->input:Lorg/jbox2d/collision/RayCastInput;

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastInput;->p2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 762
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->wrcwrapper:Lorg/jbox2d/dynamics/WorldRayCastWrapper;

    iget-object v2, p0, Lorg/jbox2d/dynamics/World;->input:Lorg/jbox2d/collision/RayCastInput;

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/broadphase/BroadPhase;->raycast(Lorg/jbox2d/callbacks/TreeRayCastCallback;Lorg/jbox2d/collision/RayCastInput;)V

    .line 763
    return-void
.end method

.method public setAllowSleep(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .prologue
    .line 172
    iget-boolean v1, p0, Lorg/jbox2d/dynamics/World;->m_allowSleep:Z

    if-ne p1, v1, :cond_5

    .line 182
    :cond_4
    return-void

    .line 176
    :cond_5
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/World;->m_allowSleep:Z

    .line 177
    iget-boolean v1, p0, Lorg/jbox2d/dynamics/World;->m_allowSleep:Z

    if-nez v1, :cond_4

    .line 178
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .local v0, "b":Lorg/jbox2d/dynamics/Body;
    :goto_d
    if-eqz v0, :cond_4

    .line 179
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 178
    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    goto :goto_d
.end method

.method public setAutoClearForces(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 929
    if-eqz p1, :cond_9

    .line 930
    iget v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    .line 934
    :goto_8
    return-void

    .line 932
    :cond_9
    iget v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    goto :goto_8
.end method

.method public setContactFilter(Lorg/jbox2d/callbacks/ContactFilter;)V
    .registers 3
    .param p1, "filter"    # Lorg/jbox2d/callbacks/ContactFilter;

    .prologue
    .line 277
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iput-object p1, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactFilter:Lorg/jbox2d/callbacks/ContactFilter;

    .line 278
    return-void
.end method

.method public setContactListener(Lorg/jbox2d/callbacks/ContactListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/jbox2d/callbacks/ContactListener;

    .prologue
    .line 286
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iput-object p1, v0, Lorg/jbox2d/dynamics/ContactManager;->m_contactListener:Lorg/jbox2d/callbacks/ContactListener;

    .line 287
    return-void
.end method

.method public setContinuousPhysics(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 824
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/World;->m_continuousPhysics:Z

    .line 825
    return-void
.end method

.method public setDebugDraw(Lorg/jbox2d/callbacks/DebugDraw;)V
    .registers 2
    .param p1, "debugDraw"    # Lorg/jbox2d/callbacks/DebugDraw;

    .prologue
    .line 296
    iput-object p1, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/callbacks/DebugDraw;

    .line 297
    return-void
.end method

.method public setDestructionListener(Lorg/jbox2d/callbacks/DestructionListener;)V
    .registers 2
    .param p1, "listener"    # Lorg/jbox2d/callbacks/DestructionListener;

    .prologue
    .line 267
    iput-object p1, p0, Lorg/jbox2d/dynamics/World;->m_destructionListener:Lorg/jbox2d/callbacks/DestructionListener;

    .line 268
    return-void
.end method

.method public setGravity(Lorg/jbox2d/common/Vec2;)V
    .registers 3
    .param p1, "gravity"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 902
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_gravity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 903
    return-void
.end method

.method public setSleepingAllowed(Z)V
    .registers 2
    .param p1, "sleepingAllowed"    # Z

    .prologue
    .line 802
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/World;->m_allowSleep:Z

    .line 803
    return-void
.end method

.method public setSubStepping(Z)V
    .registers 2
    .param p1, "subStepping"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/World;->m_subStepping:Z

    .line 186
    return-void
.end method

.method public setWarmStarting(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 811
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/World;->m_warmStarting:Z

    .line 812
    return-void
.end method

.method public step(FII)V
    .registers 7
    .param p1, "dt"    # F
    .param p2, "velocityIterations"    # I
    .param p3, "positionIterations"    # I

    .prologue
    const/4 v2, 0x0

    .line 566
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->stepTimer:Lorg/jbox2d/common/Timer;

    invoke-virtual {v0}, Lorg/jbox2d/common/Timer;->reset()V

    .line 569
    iget v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 571
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/ContactManager;->findNewContacts()V

    .line 572
    iget v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    .line 575
    :cond_18
    iget v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    .line 577
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->step:Lorg/jbox2d/dynamics/TimeStep;

    iput p1, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    .line 578
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->step:Lorg/jbox2d/dynamics/TimeStep;

    iput p2, v0, Lorg/jbox2d/dynamics/TimeStep;->velocityIterations:I

    .line 579
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->step:Lorg/jbox2d/dynamics/TimeStep;

    iput p3, v0, Lorg/jbox2d/dynamics/TimeStep;->positionIterations:I

    .line 580
    cmpl-float v0, p1, v2

    if-lez v0, :cond_bf

    .line 581
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->step:Lorg/jbox2d/dynamics/TimeStep;

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    iput v1, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    .line 586
    :goto_35
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->step:Lorg/jbox2d/dynamics/TimeStep;

    iget v1, p0, Lorg/jbox2d/dynamics/World;->m_inv_dt0:F

    mul-float/2addr v1, p1

    iput v1, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    .line 588
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->step:Lorg/jbox2d/dynamics/TimeStep;

    iget-boolean v1, p0, Lorg/jbox2d/dynamics/World;->m_warmStarting:Z

    iput-boolean v1, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    .line 591
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->tempTimer:Lorg/jbox2d/common/Timer;

    invoke-virtual {v0}, Lorg/jbox2d/common/Timer;->reset()V

    .line 592
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/ContactManager;->collide()V

    .line 593
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_profile:Lorg/jbox2d/dynamics/Profile;

    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->tempTimer:Lorg/jbox2d/common/Timer;

    invoke-virtual {v1}, Lorg/jbox2d/common/Timer;->getMilliseconds()F

    move-result v1

    iput v1, v0, Lorg/jbox2d/dynamics/Profile;->collide:F

    .line 596
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/World;->m_stepComplete:Z

    if-eqz v0, :cond_76

    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->step:Lorg/jbox2d/dynamics/TimeStep;

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_76

    .line 597
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->tempTimer:Lorg/jbox2d/common/Timer;

    invoke-virtual {v0}, Lorg/jbox2d/common/Timer;->reset()V

    .line 598
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->step:Lorg/jbox2d/dynamics/TimeStep;

    invoke-direct {p0, v0}, Lorg/jbox2d/dynamics/World;->solve(Lorg/jbox2d/dynamics/TimeStep;)V

    .line 599
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_profile:Lorg/jbox2d/dynamics/Profile;

    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->tempTimer:Lorg/jbox2d/common/Timer;

    invoke-virtual {v1}, Lorg/jbox2d/common/Timer;->getMilliseconds()F

    move-result v1

    iput v1, v0, Lorg/jbox2d/dynamics/Profile;->solve:F

    .line 603
    :cond_76
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/World;->m_continuousPhysics:Z

    if-eqz v0, :cond_96

    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->step:Lorg/jbox2d/dynamics/TimeStep;

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_96

    .line 604
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->tempTimer:Lorg/jbox2d/common/Timer;

    invoke-virtual {v0}, Lorg/jbox2d/common/Timer;->reset()V

    .line 605
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->step:Lorg/jbox2d/dynamics/TimeStep;

    invoke-direct {p0, v0}, Lorg/jbox2d/dynamics/World;->solveTOI(Lorg/jbox2d/dynamics/TimeStep;)V

    .line 606
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_profile:Lorg/jbox2d/dynamics/Profile;

    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->tempTimer:Lorg/jbox2d/common/Timer;

    invoke-virtual {v1}, Lorg/jbox2d/common/Timer;->getMilliseconds()F

    move-result v1

    iput v1, v0, Lorg/jbox2d/dynamics/Profile;->solveTOI:F

    .line 609
    :cond_96
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->step:Lorg/jbox2d/dynamics/TimeStep;

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_a4

    .line 610
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->step:Lorg/jbox2d/dynamics/TimeStep;

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    iput v0, p0, Lorg/jbox2d/dynamics/World;->m_inv_dt0:F

    .line 613
    :cond_a4
    iget v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_ae

    .line 614
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->clearForces()V

    .line 617
    :cond_ae
    iget v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/jbox2d/dynamics/World;->m_flags:I

    .line 620
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_profile:Lorg/jbox2d/dynamics/Profile;

    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->stepTimer:Lorg/jbox2d/common/Timer;

    invoke-virtual {v1}, Lorg/jbox2d/common/Timer;->getMilliseconds()F

    move-result v1

    iput v1, v0, Lorg/jbox2d/dynamics/Profile;->step:F

    .line 621
    return-void

    .line 583
    :cond_bf
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->step:Lorg/jbox2d/dynamics/TimeStep;

    iput v2, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    goto/16 :goto_35
.end method

###### Class org.jbox2d.dynamics.World.AnonymousClass1 (org.jbox2d.dynamics.World$1)
.class synthetic Lorg/jbox2d/dynamics/World$1;
.super Ljava/lang/Object;
.source "World.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/dynamics/World;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jbox2d$collision$shapes$ShapeType:[I

.field static final synthetic $SwitchMap$org$jbox2d$dynamics$joints$JointType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1467
    invoke-static {}, Lorg/jbox2d/collision/shapes/ShapeType;->values()[Lorg/jbox2d/collision/shapes/ShapeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jbox2d/dynamics/World$1;->$SwitchMap$org$jbox2d$collision$shapes$ShapeType:[I

    :try_start_9
    sget-object v0, Lorg/jbox2d/dynamics/World$1;->$SwitchMap$org$jbox2d$collision$shapes$ShapeType:[I

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->CIRCLE:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-virtual {v1}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_79

    :goto_14
    :try_start_14
    sget-object v0, Lorg/jbox2d/dynamics/World$1;->$SwitchMap$org$jbox2d$collision$shapes$ShapeType:[I

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->POLYGON:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-virtual {v1}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_77

    :goto_1f
    :try_start_1f
    sget-object v0, Lorg/jbox2d/dynamics/World$1;->$SwitchMap$org$jbox2d$collision$shapes$ShapeType:[I

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->EDGE:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-virtual {v1}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_75

    :goto_2a
    :try_start_2a
    sget-object v0, Lorg/jbox2d/dynamics/World$1;->$SwitchMap$org$jbox2d$collision$shapes$ShapeType:[I

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->CHAIN:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-virtual {v1}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_73

    .line 1424
    :goto_35
    invoke-static {}, Lorg/jbox2d/dynamics/joints/JointType;->values()[Lorg/jbox2d/dynamics/joints/JointType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jbox2d/dynamics/World$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    :try_start_3e
    sget-object v0, Lorg/jbox2d/dynamics/World$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->DISTANCE:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_71

    :goto_49
    :try_start_49
    sget-object v0, Lorg/jbox2d/dynamics/World$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->PULLEY:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_6f

    :goto_54
    :try_start_54
    sget-object v0, Lorg/jbox2d/dynamics/World$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->CONSTANT_VOLUME:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_6d

    :goto_5f
    :try_start_5f
    sget-object v0, Lorg/jbox2d/dynamics/World$1;->$SwitchMap$org$jbox2d$dynamics$joints$JointType:[I

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->MOUSE:Lorg/jbox2d/dynamics/joints/JointType;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/joints/JointType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_6b

    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    goto :goto_6a

    :catch_6d
    move-exception v0

    goto :goto_5f

    :catch_6f
    move-exception v0

    goto :goto_54

    :catch_71
    move-exception v0

    goto :goto_49

    .line 1467
    :catch_73
    move-exception v0

    goto :goto_35

    :catch_75
    move-exception v0

    goto :goto_2a

    :catch_77
    move-exception v0

    goto :goto_1f

    :catch_79
    move-exception v0

    goto :goto_14
.end method
