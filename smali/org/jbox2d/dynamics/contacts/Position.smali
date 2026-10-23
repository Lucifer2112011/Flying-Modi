###### Class org.jbox2d.dynamics.contacts.Position (org.jbox2d.dynamics.contacts.Position)
.class public Lorg/jbox2d/dynamics/contacts/Position;
.super Ljava/lang/Object;
.source "Position.java"


# instance fields
.field public a:F

.field public final c:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    return-void
.end method
