###### Class com.idk.core.Tag (com.idk.core.Tag)
.class public interface abstract annotation Lcom/idk/core/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/idk/core/Tag;
        value = "none"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method
