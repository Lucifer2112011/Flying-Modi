###### Class defpackage.MyText (MyText)
.class public LMyText;
.super Lcom/idk/core/ObjectModifier;
.source "MyText.java"


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private map:Landroid/graphics/Bitmap;

.field private paint:Landroid/text/TextPaint;

.field private text:Ljava/lang/String;
    .annotation runtime Lcom/idk/parser/ForceEditor;
    .end annotation

    .annotation runtime Lcom/idk/parser/Save;
    .end annotation
.end field

.field private texture:Lcom/idk/gl/Texture;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/idk/core/ObjectModifier;-><init>()V

    .line 14
    const-string v0, "hello world"

    iput-object v0, p0, LMyText;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, LMyText;->text:Ljava/lang/String;

    return-object v0
.end method

.method public onPreUpdate()V
    .registers 4

    .line 49
    invoke-super {p0}, Lcom/idk/core/ObjectModifier;->onPreUpdate()V

    .line 50
    iget-object v0, p0, LMyText;->targetObject:Lcom/idk/core/GameObject;

    iget-object v0, v0, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v0, v0, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v0, v0, Lcom/idk/math/Vector2;->x:F

    float-to-int v0, v0

    add-int/lit16 v0, v0, 0xb1

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83e\udeb7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LMyText;->setText(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, LMyText;->setText()V

    .line 53
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 22
    invoke-super {p0}, Lcom/idk/core/ObjectModifier;->onStart()V

    .line 23
    new-instance v0, Lcom/idk/gl/Texture;

    invoke-direct {v0}, Lcom/idk/gl/Texture;-><init>()V

    iput-object v0, p0, LMyText;->texture:Lcom/idk/gl/Texture;

    .line 24
    iget-object v0, p0, LMyText;->targetObject:Lcom/idk/core/GameObject;

    const-class v1, Lcom/idk/simple/SpriteRenderer;

    invoke-virtual {v0, v1}, Lcom/idk/core/GameObject;->getModifierAssignable(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/simple/SpriteRenderer;

    iget-object v1, p0, LMyText;->texture:Lcom/idk/gl/Texture;

    iput-object v1, v0, Lcom/idk/simple/SpriteRenderer;->texture:Lcom/idk/gl/Texture;

    .line 25
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, LMyText;->paint:Landroid/text/TextPaint;

    .line 26
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 27
    iget-object v0, p0, LMyText;->paint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 28
    invoke-virtual {p0}, LMyText;->setText()V

    .line 29
    return-void
.end method

.method public setText()V
    .registers 6

    .line 41
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x190

    const/16 v2, 0x32

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LMyText;->map:Landroid/graphics/Bitmap;

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 43
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, LMyText;->map:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, LMyText;->canvas:Landroid/graphics/Canvas;

    .line 44
    iget-object v1, p0, LMyText;->text:Ljava/lang/String;

    iget-object v2, p0, LMyText;->paint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 45
    iget-object v0, p0, LMyText;->texture:Lcom/idk/gl/Texture;

    iget-object v1, p0, LMyText;->map:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/idk/gl/Texture;->setData(Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, LMyText;->text:Ljava/lang/String;

    .line 33
    return-void
.end method
