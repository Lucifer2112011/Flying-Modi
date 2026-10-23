###### Class org.jbox2d.common.OBBViewportTransform (org.jbox2d.common.OBBViewportTransform)
.class public Lorg/jbox2d/common/OBBViewportTransform;
.super Ljava/lang/Object;
.source "OBBViewportTransform.java"

# interfaces
.implements Lorg/jbox2d/common/IViewportTransform;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/common/OBBViewportTransform$OBB;
    }
.end annotation


# instance fields
.field protected final box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

.field private final inv:Lorg/jbox2d/common/Mat22;

.field private final inv2:Lorg/jbox2d/common/Mat22;

.field private yFlip:Z

.field private final yFlipMat:Lorg/jbox2d/common/Mat22;

.field private final yFlipMatInv:Lorg/jbox2d/common/Mat22;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;

    invoke-direct {v0}, Lorg/jbox2d/common/OBBViewportTransform$OBB;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlip:Z

    .line 41
    new-instance v0, Lorg/jbox2d/common/Mat22;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/jbox2d/common/Mat22;-><init>(FFFF)V

    iput-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlipMat:Lorg/jbox2d/common/Mat22;

    .line 42
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlipMat:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0}, Lorg/jbox2d/common/Mat22;->invert()Lorg/jbox2d/common/Mat22;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlipMatInv:Lorg/jbox2d/common/Mat22;

    .line 147
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->inv:Lorg/jbox2d/common/Mat22;

    .line 182
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->inv2:Lorg/jbox2d/common/Mat22;

    .line 45
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0}, Lorg/jbox2d/common/Mat22;->setIdentity()V

    .line 46
    return-void
.end method


# virtual methods
.method public getCenter()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->center:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getExtents()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->extents:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getScreenToWorld(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "argScreen"    # Lorg/jbox2d/common/Vec2;
    .param p2, "argWorld"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 188
    invoke-virtual {p2, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 189
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->extents:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v0}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 190
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->R:Lorg/jbox2d/common/Mat22;

    iget-object v1, p0, Lorg/jbox2d/common/OBBViewportTransform;->inv2:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Mat22;->invertToOut(Lorg/jbox2d/common/Mat22;)V

    .line 191
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->inv2:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0, p2, p2}, Lorg/jbox2d/common/Mat22;->mulToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 192
    iget-boolean v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlip:Z

    if-eqz v0, :cond_21

    .line 193
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlipMatInv:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0, p2, p2}, Lorg/jbox2d/common/Mat22;->mulToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 195
    :cond_21
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v0}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 196
    return-void
.end method

.method public getScreenVectorToWorld(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "argScreen"    # Lorg/jbox2d/common/Vec2;
    .param p2, "argWorld"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 153
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->inv:Lorg/jbox2d/common/Mat22;

    iget-object v1, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v1, v1, Lorg/jbox2d/common/OBBViewportTransform$OBB;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Mat22;->set(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;

    .line 154
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->inv:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0}, Lorg/jbox2d/common/Mat22;->invertLocal()Lorg/jbox2d/common/Mat22;

    .line 155
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->inv:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0, p1, p2}, Lorg/jbox2d/common/Mat22;->mulToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 156
    iget-boolean v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlip:Z

    if-eqz v0, :cond_1c

    .line 157
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlipMatInv:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0, p2, p2}, Lorg/jbox2d/common/Mat22;->mulToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 159
    :cond_1c
    return-void
.end method

.method public getTransform()Lorg/jbox2d/common/Mat22;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->R:Lorg/jbox2d/common/Mat22;

    return-object v0
.end method

.method public getWorldToScreen(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "argWorld"    # Lorg/jbox2d/common/Vec2;
    .param p2, "argScreen"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 172
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v1, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v1, v1, Lorg/jbox2d/common/OBBViewportTransform$OBB;->center:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 173
    iget v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v1, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v1, v1, Lorg/jbox2d/common/OBBViewportTransform$OBB;->center:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 174
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0, p2, p2}, Lorg/jbox2d/common/Mat22;->mulToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 175
    iget-boolean v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlip:Z

    if-eqz v0, :cond_26

    .line 176
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlipMat:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0, p2, p2}, Lorg/jbox2d/common/Mat22;->mulToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 178
    :cond_26
    iget v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v1, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v1, v1, Lorg/jbox2d/common/OBBViewportTransform$OBB;->extents:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 179
    iget v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v1, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v1, v1, Lorg/jbox2d/common/OBBViewportTransform$OBB;->extents:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 180
    return-void
.end method

.method public getWorldVectorToScreen(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argWorld"    # Lorg/jbox2d/common/Vec2;
    .param p2, "argScreen"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0, p1, p2}, Lorg/jbox2d/common/Mat22;->mulToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 166
    iget-boolean v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlip:Z

    if-eqz v0, :cond_10

    .line 167
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlipMatInv:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0, p2, p2}, Lorg/jbox2d/common/Mat22;->mulToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 169
    :cond_10
    return-void
.end method

.method public isYFlip()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlip:Z

    return v0
.end method

.method public mulByTransform(Lorg/jbox2d/common/Mat22;)V
    .registers 3
    .param p1, "argTransform"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Mat22;->mulLocal(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;

    .line 130
    return-void
.end method

.method public set(Lorg/jbox2d/common/OBBViewportTransform;)V
    .registers 4
    .param p1, "vpt"    # Lorg/jbox2d/common/OBBViewportTransform;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->center:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v1, v1, Lorg/jbox2d/common/OBBViewportTransform$OBB;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 50
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->extents:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v1, v1, Lorg/jbox2d/common/OBBViewportTransform$OBB;->extents:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 51
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->R:Lorg/jbox2d/common/Mat22;

    iget-object v1, p1, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v1, v1, Lorg/jbox2d/common/OBBViewportTransform$OBB;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Mat22;->set(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;

    .line 52
    iget-boolean v0, p1, Lorg/jbox2d/common/OBBViewportTransform;->yFlip:Z

    iput-boolean v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlip:Z

    .line 53
    return-void
.end method

.method public setCamera(FFF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "scale"    # F

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1, p2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 60
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->R:Lorg/jbox2d/common/Mat22;

    invoke-static {p3, v0}, Lorg/jbox2d/common/Mat22;->createScaleTransform(FLorg/jbox2d/common/Mat22;)V

    .line 61
    return-void
.end method

.method public setCenter(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 102
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1, p2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 103
    return-void
.end method

.method public setCenter(Lorg/jbox2d/common/Vec2;)V
    .registers 3
    .param p1, "argPos"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 95
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 96
    return-void
.end method

.method public setExtents(FF)V
    .registers 4
    .param p1, "argHalfWidth"    # F
    .param p2, "argHalfHeight"    # F

    .prologue
    .line 81
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->extents:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1, p2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 82
    return-void
.end method

.method public setExtents(Lorg/jbox2d/common/Vec2;)V
    .registers 3
    .param p1, "argExtents"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->extents:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 75
    return-void
.end method

.method public setTransform(Lorg/jbox2d/common/Mat22;)V
    .registers 3
    .param p1, "transform"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform;->box:Lorg/jbox2d/common/OBBViewportTransform$OBB;

    iget-object v0, v0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Mat22;->set(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;

    .line 121
    return-void
.end method

.method public setYFlip(Z)V
    .registers 2
    .param p1, "yFlip"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lorg/jbox2d/common/OBBViewportTransform;->yFlip:Z

    .line 144
    return-void
.end method

###### Class org.jbox2d.common.OBBViewportTransform.OBB (org.jbox2d.common.OBBViewportTransform$OBB)
.class public Lorg/jbox2d/common/OBBViewportTransform$OBB;
.super Ljava/lang/Object;
.source "OBBViewportTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/common/OBBViewportTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OBB"
.end annotation


# instance fields
.field public final R:Lorg/jbox2d/common/Mat22;

.field public final center:Lorg/jbox2d/common/Vec2;

.field public final extents:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->R:Lorg/jbox2d/common/Mat22;

    .line 35
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->center:Lorg/jbox2d/common/Vec2;

    .line 36
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/OBBViewportTransform$OBB;->extents:Lorg/jbox2d/common/Vec2;

    return-void
.end method
