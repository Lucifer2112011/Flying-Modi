###### Class org.jbox2d.dynamics.contacts.ContactEdge (org.jbox2d.dynamics.contacts.ContactEdge)
.class public Lorg/jbox2d/dynamics/contacts/ContactEdge;
.super Ljava/lang/Object;
.source "ContactEdge.java"


# instance fields
.field public contact:Lorg/jbox2d/dynamics/contacts/Contact;

.field public next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

.field public other:Lorg/jbox2d/dynamics/Body;

.field public prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 45
    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 50
    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 55
    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    return-void
.end method
