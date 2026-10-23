###### Class org.jbox2d.callbacks.ContactImpulse (org.jbox2d.callbacks.ContactImpulse)
.class public Lorg/jbox2d/callbacks/ContactImpulse;
.super Ljava/lang/Object;
.source "ContactImpulse.java"


# instance fields
.field public count:I

.field public normalImpulses:[F

.field public tangentImpulses:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/jbox2d/callbacks/ContactImpulse;->normalImpulses:[F

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/jbox2d/callbacks/ContactImpulse;->tangentImpulses:[F

    return-void
.end method
