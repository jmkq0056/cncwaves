.class public interface abstract Lcom/sun/jna/platform/win32/COM/IEnumVariant;
.super Ljava/lang/Object;
.source "IEnumVariant.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IUnknown;


# virtual methods
.method public abstract Clone()Lcom/sun/jna/platform/win32/COM/IEnumVariant;
.end method

.method public abstract Next(I)[Lcom/sun/jna/platform/win32/Variant$VARIANT;
.end method

.method public abstract Reset()V
.end method

.method public abstract Skip(I)V
.end method
