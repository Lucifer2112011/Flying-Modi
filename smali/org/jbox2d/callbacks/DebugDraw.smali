###### Class org.jbox2d.callbacks.DebugDraw (org.jbox2d.callbacks.DebugDraw)
.class public abstract Lorg/jbox2d/callbacks/DebugDraw;
.super Ljava/lang/Object;
.source "DebugDraw.java"


# static fields
.field public static final e_aabbBit:I = 0x4

.field public static final e_centerOfMassBit:I = 0x10

.field public static final e_dynamicTreeBit:I = 0x20

.field public static final e_jointBit:I = 0x2

.field public static final e_pairBit:I = 0x8

.field public static final e_shapeBit:I = 0x1


# instance fields
.field protected m_drawFlags:I

.field protected final viewportTransform:Lorg/jbox2d/common/IViewportTransform;


# direct methods
.method public constructor <init>(Lorg/jbox2d/common/IViewportTransform;)V
    .registers 3
    .param p1, "viewport"    # Lorg/jbox2d/common/IViewportTransform;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/callbacks/DebugDraw;->m_drawFlags:I

    .line 56
    iput-object p1, p0, Lorg/jbox2d/callbacks/DebugDraw;->viewportTransform:Lorg/jbox2d/common/IViewportTransform;

    .line 57
    return-void
.end method


# virtual methods
.method public appendFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 68
    iget v0, p0, Lorg/jbox2d/callbacks/DebugDraw;->m_drawFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/callbacks/DebugDraw;->m_drawFlags:I

    .line 69
    return-void
.end method

.method public clearFlags(I)V
    .registers 4
    .param p1, "flags"    # I

    .prologue
    .line 72
    iget v0, p0, Lorg/jbox2d/callbacks/DebugDraw;->m_drawFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/callbacks/DebugDraw;->m_drawFlags:I

    .line 73
    return-void
.end method

.method public abstract drawCircle(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Color3f;)V
.end method

.method public abstract drawPoint(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Color3f;)V
.end method

.method public drawPolygon([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Color3f;)V
    .registers 8
    .param p1, "vertices"    # [Lorg/jbox2d/common/Vec2;
    .param p2, "vertexCount"    # I
    .param p3, "color"    # Lorg/jbox2d/common/Color3f;

    .prologue
    const/4 v3, 0x0

    .line 84
    const/4 v1, 0x1

    if-ne p2, v1, :cond_c

    .line 85
    aget-object v1, p1, v3

    aget-object v2, p1, v3

    invoke-virtual {p0, v1, v2, p3}, Lorg/jbox2d/callbacks/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 96
    :cond_b
    :goto_b
    return-void

    .line 89
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_1d

    .line 90
    aget-object v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {p0, v1, v2, p3}, Lorg/jbox2d/callbacks/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 93
    :cond_1d
    const/4 v1, 0x2

    if-le p2, v1, :cond_b

    .line 94
    add-int/lit8 v1, p2, -0x1

    aget-object v1, p1, v1

    aget-object v2, p1, v3

    invoke-virtual {p0, v1, v2, p3}, Lorg/jbox2d/callbacks/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    goto :goto_b
.end method

.method public abstract drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V
.end method

.method public abstract drawSolidCircle(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V
.end method

.method public abstract drawSolidPolygon([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Color3f;)V
.end method

.method public abstract drawString(FFLjava/lang/String;Lorg/jbox2d/common/Color3f;)V
.end method

.method public drawString(Lorg/jbox2d/common/Vec2;Ljava/lang/String;Lorg/jbox2d/common/Color3f;)V
    .registers 6
    .param p1, "pos"    # Lorg/jbox2d/common/Vec2;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "color"    # Lorg/jbox2d/common/Color3f;

    .prologue
    .line 149
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/jbox2d/callbacks/DebugDraw;->drawString(FFLjava/lang/String;Lorg/jbox2d/common/Color3f;)V

    .line 150
    return-void
.end method

.method public abstract drawTransform(Lorg/jbox2d/common/Transform;)V
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lorg/jbox2d/callbacks/DebugDraw;->m_drawFlags:I

    return v0
.end method

.method public getScreenToWorld(FF)Lorg/jbox2d/common/Vec2;
    .registers 5
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F

    .prologue
    .line 250
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, p1, p2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 251
    .local v0, "screen":Lorg/jbox2d/common/Vec2;
    iget-object v1, p0, Lorg/jbox2d/callbacks/DebugDraw;->viewportTransform:Lorg/jbox2d/common/IViewportTransform;

    invoke-interface {v1, v0, v0}, Lorg/jbox2d/common/IViewportTransform;->getScreenToWorld(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 252
    return-object v0
.end method

.method public getScreenToWorld(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 4
    .param p1, "argScreen"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 238
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 239
    .local v0, "world":Lorg/jbox2d/common/Vec2;
    iget-object v1, p0, Lorg/jbox2d/callbacks/DebugDraw;->viewportTransform:Lorg/jbox2d/common/IViewportTransform;

    invoke-interface {v1, p1, v0}, Lorg/jbox2d/common/IViewportTransform;->getScreenToWorld(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 240
    return-object v0
.end method

.method public getScreenToWorldToOut(FFLorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F
    .param p3, "argWorld"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 228
    invoke-virtual {p3, p1, p2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 229
    iget-object v0, p0, Lorg/jbox2d/callbacks/DebugDraw;->viewportTransform:Lorg/jbox2d/common/IViewportTransform;

    invoke-interface {v0, p3, p3}, Lorg/jbox2d/common/IViewportTransform;->getScreenToWorld(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 230
    return-void
.end method

.method public getScreenToWorldToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argScreen"    # Lorg/jbox2d/common/Vec2;
    .param p2, "argWorld"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 173
    iget-object v0, p0, Lorg/jbox2d/callbacks/DebugDraw;->viewportTransform:Lorg/jbox2d/common/IViewportTransform;

    invoke-interface {v0, p1, p2}, Lorg/jbox2d/common/IViewportTransform;->getScreenToWorld(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 174
    return-void
.end method

.method public getViewportTranform()Lorg/jbox2d/common/IViewportTransform;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/jbox2d/callbacks/DebugDraw;->viewportTransform:Lorg/jbox2d/common/IViewportTransform;

    return-object v0
.end method

.method public getWorldToScreen(FF)Lorg/jbox2d/common/Vec2;
    .registers 5
    .param p1, "worldX"    # F
    .param p2, "worldY"    # F

    .prologue
    .line 215
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, p1, p2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 216
    .local v0, "argScreen":Lorg/jbox2d/common/Vec2;
    iget-object v1, p0, Lorg/jbox2d/callbacks/DebugDraw;->viewportTransform:Lorg/jbox2d/common/IViewportTransform;

    invoke-interface {v1, v0, v0}, Lorg/jbox2d/common/IViewportTransform;->getWorldToScreen(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 217
    return-object v0
.end method

.method public getWorldToScreen(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 4
    .param p1, "argWorld"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 203
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 204
    .local v0, "screen":Lorg/jbox2d/common/Vec2;
    iget-object v1, p0, Lorg/jbox2d/callbacks/DebugDraw;->viewportTransform:Lorg/jbox2d/common/IViewportTransform;

    invoke-interface {v1, p1, v0}, Lorg/jbox2d/common/IViewportTransform;->getWorldToScreen(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 205
    return-object v0
.end method

.method public getWorldToScreenToOut(FFLorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "worldX"    # F
    .param p2, "worldY"    # F
    .param p3, "argScreen"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 193
    invoke-virtual {p3, p1, p2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 194
    iget-object v0, p0, Lorg/jbox2d/callbacks/DebugDraw;->viewportTransform:Lorg/jbox2d/common/IViewportTransform;

    invoke-interface {v0, p3, p3}, Lorg/jbox2d/common/IViewportTransform;->getWorldToScreen(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 195
    return-void
.end method

.method public getWorldToScreenToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argWorld"    # Lorg/jbox2d/common/Vec2;
    .param p2, "argScreen"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 182
    iget-object v0, p0, Lorg/jbox2d/callbacks/DebugDraw;->viewportTransform:Lorg/jbox2d/common/IViewportTransform;

    invoke-interface {v0, p1, p2}, Lorg/jbox2d/common/IViewportTransform;->getWorldToScreen(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 183
    return-void
.end method

.method public setCamera(FFF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "scale"    # F

    .prologue
    .line 163
    iget-object v0, p0, Lorg/jbox2d/callbacks/DebugDraw;->viewportTransform:Lorg/jbox2d/common/IViewportTransform;

    invoke-interface {v0, p1, p2, p3}, Lorg/jbox2d/common/IViewportTransform;->setCamera(FFF)V

    .line 164
    return-void
.end method

.method public setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/jbox2d/callbacks/DebugDraw;->m_drawFlags:I

    .line 61
    return-void
.end method
