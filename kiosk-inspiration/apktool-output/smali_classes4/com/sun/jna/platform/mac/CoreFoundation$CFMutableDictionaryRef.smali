.class public Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;
.super Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;
.source "CoreFoundation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/CoreFoundation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CFMutableDictionaryRef"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 426
    invoke-direct {p0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 430
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public setValue(Lcom/sun/jna/PointerType;Lcom/sun/jna/PointerType;)V
    .locals 1

    .line 443
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    invoke-interface {v0, p0, p1, p2}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFDictionarySetValue(Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;Lcom/sun/jna/PointerType;Lcom/sun/jna/PointerType;)V

    return-void
.end method
