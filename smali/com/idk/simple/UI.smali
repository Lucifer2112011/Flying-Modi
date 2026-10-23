###### Class com.idk.simple.UI (com.idk.simple.UI)
.class public Lcom/idk/simple/UI;
.super Lcom/idk/core/ObjectModifier;
.source "UI.java"


# annotations
.annotation runtime Lcom/idk/core/Tag;
    value = "editable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idk/simple/UI$MeasureUnit;,
        Lcom/idk/simple/UI$OriginType;
    }
.end annotation


# instance fields
.field public color:Lcom/idk/math/Color;

.field public originType:Lcom/idk/simple/UI$OriginType;

.field public positionUnit:Lcom/idk/simple/UI$MeasureUnit;

.field private rect:Lcom/idk/math/Rect;

.field public scaleUnit:Lcom/idk/simple/UI$MeasureUnit;

.field public texture:Lcom/idk/gl/Texture;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    invoke-direct {p0}, Lcom/idk/core/ObjectModifier;-><init>()V

    .line 17
    sget-object v0, Lcom/idk/simple/UI$MeasureUnit;->PIXEL:Lcom/idk/simple/UI$MeasureUnit;

    iput-object v0, p0, Lcom/idk/simple/UI;->positionUnit:Lcom/idk/simple/UI$MeasureUnit;

    .line 18
    sget-object v0, Lcom/idk/simple/UI$MeasureUnit;->MIN_SCREEN:Lcom/idk/simple/UI$MeasureUnit;

    iput-object v0, p0, Lcom/idk/simple/UI;->scaleUnit:Lcom/idk/simple/UI$MeasureUnit;

    .line 19
    sget-object v0, Lcom/idk/simple/UI$OriginType;->CENTER:Lcom/idk/simple/UI$OriginType;

    iput-object v0, p0, Lcom/idk/simple/UI;->originType:Lcom/idk/simple/UI$OriginType;

    .line 21
    new-instance v0, Lcom/idk/math/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/idk/math/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/idk/simple/UI;->color:Lcom/idk/math/Color;

    .line 22
    new-instance v0, Lcom/idk/math/Rect;

    invoke-direct {v0}, Lcom/idk/math/Rect;-><init>()V

    iput-object v0, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    return-void
.end method


# virtual methods
.method public calculateScreenSpace()V
    .registers 15

    .prologue
    const/high16 v13, 0x3f000000    # 0.5f

    const v12, 0x3c23d70a    # 0.01f

    .line 26
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v10, v10, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    invoke-interface {v10}, Lcom/idk/core/EngineInterface;->getLastWidth()I

    move-result v9

    .line 27
    .local v9, "w":I
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v10, v10, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    invoke-interface {v10}, Lcom/idk/core/EngineInterface;->getLastHeight()I

    move-result v0

    .line 28
    .local v0, "h":I
    const/high16 v7, 0x42c80000    # 100.0f

    .line 29
    .local v7, "sx":F
    const/high16 v8, 0x42c80000    # 100.0f

    .line 30
    .local v8, "sy":F
    iget-object v10, p0, Lcom/idk/simple/UI;->scaleUnit:Lcom/idk/simple/UI$MeasureUnit;

    invoke-virtual {v10}, Lcom/idk/simple/UI$MeasureUnit;->ordinal()I

    move-result v10

    packed-switch v10, :pswitch_data_1d8

    .line 65
    :goto_26
    const/4 v5, 0x0

    .line 66
    .local v5, "px":F
    const/4 v6, 0x0

    .line 67
    .local v6, "py":F
    iget-object v10, p0, Lcom/idk/simple/UI;->positionUnit:Lcom/idk/simple/UI$MeasureUnit;

    invoke-virtual {v10}, Lcom/idk/simple/UI$MeasureUnit;->ordinal()I

    move-result v10

    packed-switch v10, :pswitch_data_1e8

    .line 103
    :goto_31
    iget-object v10, p0, Lcom/idk/simple/UI;->originType:Lcom/idk/simple/UI$OriginType;

    invoke-virtual {v10}, Lcom/idk/simple/UI$OriginType;->ordinal()I

    move-result v10

    packed-switch v10, :pswitch_data_1f8

    .line 144
    :goto_3a
    return-void

    .line 32
    .end local v5    # "px":F
    .end local v6    # "py":F
    :pswitch_3b
    int-to-float v10, v9

    iget-object v11, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v11, v11, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v11, v11, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v11, v11, Lcom/idk/math/Vector2;->x:F

    mul-float/2addr v11, v12

    mul-float v7, v10, v11

    .line 33
    int-to-float v10, v0

    iget-object v11, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v11, v11, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v11, v11, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v11, v11, Lcom/idk/math/Vector2;->y:F

    mul-float/2addr v11, v12

    mul-float v8, v10, v11

    .line 34
    goto :goto_26

    .line 37
    :pswitch_54
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v7, v10, Lcom/idk/math/Vector2;->x:F

    .line 38
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v8, v10, Lcom/idk/math/Vector2;->y:F

    .line 39
    goto :goto_26

    .line 42
    :pswitch_65
    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v4, v10

    .line 43
    .local v4, "min":F
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v10, v10, Lcom/idk/math/Vector2;->x:F

    mul-float/2addr v10, v12

    mul-float v7, v4, v10

    .line 44
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v10, v10, Lcom/idk/math/Vector2;->y:F

    mul-float/2addr v10, v12

    mul-float v8, v4, v10

    .line 45
    goto :goto_26

    .line 48
    .end local v4    # "min":F
    :pswitch_81
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v3, v10

    .line 49
    .local v3, "max":F
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v10, v10, Lcom/idk/math/Vector2;->x:F

    mul-float/2addr v10, v12

    mul-float v7, v3, v10

    .line 50
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v10, v10, Lcom/idk/math/Vector2;->y:F

    mul-float/2addr v10, v12

    mul-float v8, v3, v10

    .line 51
    goto :goto_26

    .line 54
    .end local v3    # "max":F
    :pswitch_9d
    int-to-float v10, v9

    iget-object v11, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v11, v11, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v11, v11, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v11, v11, Lcom/idk/math/Vector2;->x:F

    mul-float/2addr v11, v12

    mul-float v7, v10, v11

    .line 55
    int-to-float v10, v9

    iget-object v11, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v11, v11, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v11, v11, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v11, v11, Lcom/idk/math/Vector2;->y:F

    mul-float/2addr v11, v12

    mul-float v8, v10, v11

    .line 56
    goto/16 :goto_26

    .line 59
    :pswitch_b7
    int-to-float v10, v0

    iget-object v11, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v11, v11, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v11, v11, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v11, v11, Lcom/idk/math/Vector2;->x:F

    mul-float/2addr v11, v12

    mul-float v7, v10, v11

    .line 60
    int-to-float v10, v0

    iget-object v11, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v11, v11, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v11, v11, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v11, v11, Lcom/idk/math/Vector2;->y:F

    mul-float/2addr v11, v12

    mul-float v8, v10, v11

    goto/16 :goto_26

    .line 69
    .restart local v5    # "px":F
    .restart local v6    # "py":F
    :pswitch_d1
    int-to-float v10, v9

    iget-object v11, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v11, v11, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v11, v11, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v11, v11, Lcom/idk/math/Vector2;->x:F

    mul-float/2addr v11, v12

    mul-float v5, v10, v11

    .line 70
    int-to-float v10, v0

    iget-object v11, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v11, v11, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v11, v11, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v11, v11, Lcom/idk/math/Vector2;->y:F

    mul-float/2addr v11, v12

    mul-float v6, v10, v11

    .line 71
    goto/16 :goto_31

    .line 74
    :pswitch_eb
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v5, v10, Lcom/idk/math/Vector2;->x:F

    .line 75
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v6, v10, Lcom/idk/math/Vector2;->y:F

    .line 76
    goto/16 :goto_31

    .line 79
    :pswitch_fd
    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v4, v10

    .line 80
    .restart local v4    # "min":F
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v10, v10, Lcom/idk/math/Vector2;->x:F

    mul-float v5, v4, v10

    .line 81
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v10, v10, Lcom/idk/math/Vector2;->y:F

    mul-float v6, v4, v10

    .line 82
    goto/16 :goto_31

    .line 85
    .end local v4    # "min":F
    :pswitch_118
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v3, v10

    .line 86
    .restart local v3    # "max":F
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v10, v10, Lcom/idk/math/Vector2;->x:F

    mul-float v5, v3, v10

    .line 87
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v10, v10, Lcom/idk/math/Vector2;->y:F

    mul-float v6, v3, v10

    .line 88
    goto/16 :goto_31

    .line 91
    .end local v3    # "max":F
    :pswitch_133
    int-to-float v3, v9

    .line 92
    .restart local v3    # "max":F
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v10, v10, Lcom/idk/math/Vector2;->x:F

    mul-float v5, v3, v10

    .line 93
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v10, v10, Lcom/idk/math/Vector2;->y:F

    mul-float v6, v3, v10

    .line 94
    goto/16 :goto_31

    .line 97
    .end local v3    # "max":F
    :pswitch_14a
    int-to-float v3, v0

    .line 98
    .restart local v3    # "max":F
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v10, v10, Lcom/idk/math/Vector2;->x:F

    mul-float v5, v3, v10

    .line 99
    iget-object v10, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v10, v10, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v10, v10, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v10, v10, Lcom/idk/math/Vector2;->y:F

    mul-float v6, v3, v10

    .line 100
    goto/16 :goto_31

    .line 105
    .end local v3    # "max":F
    :pswitch_161
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    sub-float v11, v6, v8

    iput v11, v10, Lcom/idk/math/Rect;->bottom:F

    .line 106
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    iput v6, v10, Lcom/idk/math/Rect;->top:F

    .line 107
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    iput v5, v10, Lcom/idk/math/Rect;->left:F

    .line 108
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    add-float v11, v5, v7

    iput v11, v10, Lcom/idk/math/Rect;->right:F

    goto/16 :goto_3a

    .line 112
    :pswitch_177
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    sub-float v11, v6, v8

    iput v11, v10, Lcom/idk/math/Rect;->bottom:F

    .line 113
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    iput v6, v10, Lcom/idk/math/Rect;->top:F

    .line 114
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    sub-float v11, v5, v7

    iput v11, v10, Lcom/idk/math/Rect;->left:F

    .line 115
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    iput v5, v10, Lcom/idk/math/Rect;->right:F

    goto/16 :goto_3a

    .line 119
    :pswitch_18d
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    iput v6, v10, Lcom/idk/math/Rect;->bottom:F

    .line 120
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    add-float v11, v6, v7

    iput v11, v10, Lcom/idk/math/Rect;->top:F

    .line 121
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    iput v5, v10, Lcom/idk/math/Rect;->left:F

    .line 122
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    add-float v11, v5, v7

    iput v11, v10, Lcom/idk/math/Rect;->right:F

    goto/16 :goto_3a

    .line 126
    :pswitch_1a3
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    iput v6, v10, Lcom/idk/math/Rect;->bottom:F

    .line 127
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    add-float v11, v6, v5

    iput v11, v10, Lcom/idk/math/Rect;->top:F

    .line 128
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    sub-float v11, v5, v7

    iput v11, v10, Lcom/idk/math/Rect;->left:F

    .line 129
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    iput v5, v10, Lcom/idk/math/Rect;->right:F

    goto/16 :goto_3a

    .line 133
    :pswitch_1b9
    mul-float v1, v7, v13

    .line 134
    .local v1, "hsx":F
    mul-float v2, v8, v13

    .line 135
    .local v2, "hsy":F
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    add-float v11, v5, v1

    iput v11, v10, Lcom/idk/math/Rect;->right:F

    .line 136
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    sub-float v11, v5, v1

    iput v11, v10, Lcom/idk/math/Rect;->left:F

    .line 137
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    add-float v11, v6, v2

    iput v11, v10, Lcom/idk/math/Rect;->top:F

    .line 138
    iget-object v10, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    sub-float v11, v6, v2

    iput v11, v10, Lcom/idk/math/Rect;->bottom:F

    goto/16 :goto_3a

    .line 30
    nop

    :pswitch_data_1d8
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_54
        :pswitch_65
        :pswitch_81
        :pswitch_9d
        :pswitch_b7
    .end packed-switch

    .line 67
    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_eb
        :pswitch_fd
        :pswitch_118
        :pswitch_133
        :pswitch_14a
    .end packed-switch

    .line 103
    :pswitch_data_1f8
    .packed-switch 0x0
        :pswitch_161
        :pswitch_177
        :pswitch_18d
        :pswitch_1a3
        :pswitch_1b9
    .end packed-switch
.end method

.method public calculateTouch()Z
    .registers 7

    .prologue
    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v2, v2, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    invoke-interface {v2}, Lcom/idk/core/EngineInterface;->getTouchManager()Lcom/idk/core/TouchManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idk/core/TouchManager;->getTouchCount()I

    move-result v2

    if-ge v0, v2, :cond_35

    .line 156
    iget-object v2, p0, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v2, v2, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    invoke-interface {v2}, Lcom/idk/core/EngineInterface;->getTouchManager()Lcom/idk/core/TouchManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/idk/core/TouchManager;->getTouchAt(I)Lcom/idk/core/TouchData;

    move-result-object v1

    .line 157
    .local v1, "touchData":Lcom/idk/core/TouchData;
    iget-object v2, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    new-instance v3, Lcom/idk/math/Vector2;

    iget v4, v1, Lcom/idk/core/TouchData;->currentX:F

    iget v5, v1, Lcom/idk/core/TouchData;->currentY:F

    invoke-direct {v3, v4, v5}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {v2, v3}, Lcom/idk/math/Rect;->isInside(Lcom/idk/math/Vector2;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 158
    const/4 v2, 0x1

    .line 161
    .end local v1    # "touchData":Lcom/idk/core/TouchData;
    :goto_31
    return v2

    .line 155
    .restart local v1    # "touchData":Lcom/idk/core/TouchData;
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    .end local v1    # "touchData":Lcom/idk/core/TouchData;
    :cond_35
    const/4 v2, 0x0

    goto :goto_31
.end method

.method public getGlobalRect()Lcom/idk/math/Rect;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/idk/simple/UI;->rect:Lcom/idk/math/Rect;

    return-object v0
.end method

.method public onDown(Lcom/idk/core/TouchData;)V
    .registers 2
    .param p1, "ts"    # Lcom/idk/core/TouchData;

    .prologue
    .line 147
    return-void
.end method

.method public onDrag(Lcom/idk/core/TouchData;)V
    .registers 2
    .param p1, "ts"    # Lcom/idk/core/TouchData;

    .prologue
    .line 150
    return-void
.end method

.method public onUp(Lcom/idk/core/TouchData;)V
    .registers 2
    .param p1, "ts"    # Lcom/idk/core/TouchData;

    .prologue
    .line 153
    return-void
.end method

###### Class com.idk.simple.UI.MeasureUnit (com.idk.simple.UI$MeasureUnit)
.class public final enum Lcom/idk/simple/UI$MeasureUnit;
.super Ljava/lang/Enum;
.source "UI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/simple/UI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeasureUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/idk/simple/UI$MeasureUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idk/simple/UI$MeasureUnit;

.field public static final enum HEIGHT:Lcom/idk/simple/UI$MeasureUnit;

.field public static final enum MAX_SCREEN:Lcom/idk/simple/UI$MeasureUnit;

.field public static final enum MIN_SCREEN:Lcom/idk/simple/UI$MeasureUnit;

.field public static final enum PERCENTAGE:Lcom/idk/simple/UI$MeasureUnit;

.field public static final enum PIXEL:Lcom/idk/simple/UI$MeasureUnit;

.field public static final enum WIDTH:Lcom/idk/simple/UI$MeasureUnit;


# direct methods
.method private static synthetic $values()[Lcom/idk/simple/UI$MeasureUnit;
    .registers 3

    .prologue
    .line 167
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/idk/simple/UI$MeasureUnit;

    const/4 v1, 0x0

    sget-object v2, Lcom/idk/simple/UI$MeasureUnit;->PERCENTAGE:Lcom/idk/simple/UI$MeasureUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/idk/simple/UI$MeasureUnit;->PIXEL:Lcom/idk/simple/UI$MeasureUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/idk/simple/UI$MeasureUnit;->MIN_SCREEN:Lcom/idk/simple/UI$MeasureUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/idk/simple/UI$MeasureUnit;->MAX_SCREEN:Lcom/idk/simple/UI$MeasureUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/idk/simple/UI$MeasureUnit;->WIDTH:Lcom/idk/simple/UI$MeasureUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/idk/simple/UI$MeasureUnit;->HEIGHT:Lcom/idk/simple/UI$MeasureUnit;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 168
    new-instance v0, Lcom/idk/simple/UI$MeasureUnit;

    const-string v1, "PERCENTAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idk/simple/UI$MeasureUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/simple/UI$MeasureUnit;->PERCENTAGE:Lcom/idk/simple/UI$MeasureUnit;

    new-instance v0, Lcom/idk/simple/UI$MeasureUnit;

    const-string v1, "PIXEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idk/simple/UI$MeasureUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/simple/UI$MeasureUnit;->PIXEL:Lcom/idk/simple/UI$MeasureUnit;

    new-instance v0, Lcom/idk/simple/UI$MeasureUnit;

    const-string v1, "MIN_SCREEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idk/simple/UI$MeasureUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/simple/UI$MeasureUnit;->MIN_SCREEN:Lcom/idk/simple/UI$MeasureUnit;

    new-instance v0, Lcom/idk/simple/UI$MeasureUnit;

    const-string v1, "MAX_SCREEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/idk/simple/UI$MeasureUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/simple/UI$MeasureUnit;->MAX_SCREEN:Lcom/idk/simple/UI$MeasureUnit;

    new-instance v0, Lcom/idk/simple/UI$MeasureUnit;

    const-string v1, "WIDTH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/idk/simple/UI$MeasureUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/simple/UI$MeasureUnit;->WIDTH:Lcom/idk/simple/UI$MeasureUnit;

    new-instance v0, Lcom/idk/simple/UI$MeasureUnit;

    const-string v1, "HEIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/idk/simple/UI$MeasureUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/simple/UI$MeasureUnit;->HEIGHT:Lcom/idk/simple/UI$MeasureUnit;

    .line 167
    invoke-static {}, Lcom/idk/simple/UI$MeasureUnit;->$values()[Lcom/idk/simple/UI$MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/idk/simple/UI$MeasureUnit;->$VALUES:[Lcom/idk/simple/UI$MeasureUnit;

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
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idk/simple/UI$MeasureUnit;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    const-class v0, Lcom/idk/simple/UI$MeasureUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/idk/simple/UI$MeasureUnit;

    return-object v0
.end method

.method public static values()[Lcom/idk/simple/UI$MeasureUnit;
    .registers 1

    .prologue
    .line 167
    sget-object v0, Lcom/idk/simple/UI$MeasureUnit;->$VALUES:[Lcom/idk/simple/UI$MeasureUnit;

    invoke-virtual {v0}, [Lcom/idk/simple/UI$MeasureUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idk/simple/UI$MeasureUnit;

    return-object v0
.end method

###### Class com.idk.simple.UI.OriginType (com.idk.simple.UI$OriginType)
.class public final enum Lcom/idk/simple/UI$OriginType;
.super Ljava/lang/Enum;
.source "UI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/simple/UI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OriginType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/idk/simple/UI$OriginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idk/simple/UI$OriginType;

.field public static final enum BOTTOM_LEFT:Lcom/idk/simple/UI$OriginType;

.field public static final enum BOTTOM_RIGHT:Lcom/idk/simple/UI$OriginType;

.field public static final enum CENTER:Lcom/idk/simple/UI$OriginType;

.field public static final enum TOP_LEFT:Lcom/idk/simple/UI$OriginType;

.field public static final enum TOP_RIGHT:Lcom/idk/simple/UI$OriginType;


# direct methods
.method private static synthetic $values()[Lcom/idk/simple/UI$OriginType;
    .registers 3

    .prologue
    .line 170
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/idk/simple/UI$OriginType;

    const/4 v1, 0x0

    sget-object v2, Lcom/idk/simple/UI$OriginType;->TOP_LEFT:Lcom/idk/simple/UI$OriginType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/idk/simple/UI$OriginType;->TOP_RIGHT:Lcom/idk/simple/UI$OriginType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/idk/simple/UI$OriginType;->BOTTOM_LEFT:Lcom/idk/simple/UI$OriginType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/idk/simple/UI$OriginType;->BOTTOM_RIGHT:Lcom/idk/simple/UI$OriginType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/idk/simple/UI$OriginType;->CENTER:Lcom/idk/simple/UI$OriginType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 171
    new-instance v0, Lcom/idk/simple/UI$OriginType;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idk/simple/UI$OriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/simple/UI$OriginType;->TOP_LEFT:Lcom/idk/simple/UI$OriginType;

    new-instance v0, Lcom/idk/simple/UI$OriginType;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idk/simple/UI$OriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/simple/UI$OriginType;->TOP_RIGHT:Lcom/idk/simple/UI$OriginType;

    new-instance v0, Lcom/idk/simple/UI$OriginType;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idk/simple/UI$OriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/simple/UI$OriginType;->BOTTOM_LEFT:Lcom/idk/simple/UI$OriginType;

    new-instance v0, Lcom/idk/simple/UI$OriginType;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/idk/simple/UI$OriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/simple/UI$OriginType;->BOTTOM_RIGHT:Lcom/idk/simple/UI$OriginType;

    new-instance v0, Lcom/idk/simple/UI$OriginType;

    const-string v1, "CENTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/idk/simple/UI$OriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/simple/UI$OriginType;->CENTER:Lcom/idk/simple/UI$OriginType;

    .line 170
    invoke-static {}, Lcom/idk/simple/UI$OriginType;->$values()[Lcom/idk/simple/UI$OriginType;

    move-result-object v0

    sput-object v0, Lcom/idk/simple/UI$OriginType;->$VALUES:[Lcom/idk/simple/UI$OriginType;

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
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idk/simple/UI$OriginType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    const-class v0, Lcom/idk/simple/UI$OriginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/idk/simple/UI$OriginType;

    return-object v0
.end method

.method public static values()[Lcom/idk/simple/UI$OriginType;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lcom/idk/simple/UI$OriginType;->$VALUES:[Lcom/idk/simple/UI$OriginType;

    invoke-virtual {v0}, [Lcom/idk/simple/UI$OriginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idk/simple/UI$OriginType;

    return-object v0
.end method
