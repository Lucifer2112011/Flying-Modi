###### Class org.jbox2d.dynamics.contacts.Velocity (org.jbox2d.dynamics.contacts.Velocity)
.class public Lorg/jbox2d/dynamics/contacts/Velocity;
.super Ljava/lang/Object;
.source "Velocity.java"


# instance fields
.field public final v:Lorg/jbox2d/common/Vec2;

.field public w:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    return-void
.end method
