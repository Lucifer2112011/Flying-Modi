###### Class org.jbox2d.dynamics.contacts.ContactCreator (org.jbox2d.dynamics.contacts.ContactCreator)
.class public interface abstract Lorg/jbox2d/dynamics/contacts/ContactCreator;
.super Ljava/lang/Object;
.source "ContactCreator.java"


# virtual methods
.method public abstract contactCreateFcn(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/Fixture;Lorg/jbox2d/dynamics/Fixture;)Lorg/jbox2d/dynamics/contacts/Contact;
.end method

.method public abstract contactDestroyFcn(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/contacts/Contact;)V
.end method
