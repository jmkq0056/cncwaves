.class public Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;
.super Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;
.source "CoreFoundation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/CoreFoundation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CFDictionaryRef"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 381
    invoke-direct {p0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 385
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;-><init>(Lcom/sun/jna/Pointer;)V

    .line 386
    sget-object p1, Lcom/sun/jna/platform/mac/CoreFoundation;->DICTIONARY_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;->isTypeID(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 387
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to cast to CFDictionary. Type ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;->getTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getValue(Lcom/sun/jna/PointerType;)Lcom/sun/jna/Pointer;
    .locals 1

    .line 401
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    invoke-interface {v0, p0, p1}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFDictionaryGetValue(Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;Lcom/sun/jna/PointerType;)Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1
.end method

.method public getValueIfPresent(Lcom/sun/jna/PointerType;Lcom/sun/jna/ptr/PointerByReference;)Z
    .locals 1

    .line 417
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    invoke-interface {v0, p0, p1, p2}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFDictionaryGetValueIfPresent(Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;Lcom/sun/jna/PointerType;Lcom/sun/jna/ptr/PointerByReference;)B

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
