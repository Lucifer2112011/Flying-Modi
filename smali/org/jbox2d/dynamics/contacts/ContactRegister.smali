###### Class org.jbox2d.dynamics.contacts.ContactRegister (org.jbox2d.dynamics.contacts.ContactRegister)
.class public Lorg/jbox2d/dynamics/contacts/ContactRegister;
.super Ljava/lang/Object;
.source "ContactRegister.java"


# instance fields
.field public creator:Lorg/jbox2d/pooling/IDynamicStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public primary:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
