.class public Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;
.super Lcom/sun/jna/PointerType;
.source "CoreFoundation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/CoreFoundation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CFTypeRef"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/sun/jna/PointerType;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public getTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;-><init>(J)V

    return-object v0

    .line 100
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFGetTypeID(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    move-result-object v0

    return-object v0
.end method

.method public isTypeID(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;)Z
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;->getTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 1

    .line 125
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFRelease(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;)V

    return-void
.end method

.method public retain()V
    .locals 1

    .line 118
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFRetain(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;

    return-void
.end method
