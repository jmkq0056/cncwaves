.class public Lcom/sun/jna/platform/mac/CoreFoundation$CFDataRef;
.super Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;
.source "CoreFoundation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/CoreFoundation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CFDataRef"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 350
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;-><init>(Lcom/sun/jna/Pointer;)V

    .line 351
    sget-object p1, Lcom/sun/jna/platform/mac/CoreFoundation;->DATA_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFDataRef;->isTypeID(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 352
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to cast to CFData. Type ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFDataRef;->getTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBytePtr()Lcom/sun/jna/Pointer;
    .locals 1

    .line 372
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFDataGetBytePtr(Lcom/sun/jna/platform/mac/CoreFoundation$CFDataRef;)Lcom/sun/jna/Pointer;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 363
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFDataGetLength(Lcom/sun/jna/platform/mac/CoreFoundation$CFDataRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;->intValue()I

    move-result v0

    return v0
.end method
