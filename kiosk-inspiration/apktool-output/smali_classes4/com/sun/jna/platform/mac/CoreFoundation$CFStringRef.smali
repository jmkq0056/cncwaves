.class public Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;
.super Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;
.source "CoreFoundation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/CoreFoundation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CFStringRef"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 458
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;-><init>(Lcom/sun/jna/Pointer;)V

    .line 459
    sget-object p1, Lcom/sun/jna/platform/mac/CoreFoundation;->STRING_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->isTypeID(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 460
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to cast to CFString. Type ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->getTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createCFString(Ljava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;
    .locals 4

    .line 478
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 479
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    new-instance v1, Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;

    array-length v2, p0

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;-><init>(J)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, p0, v1}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFStringCreateWithCharacters(Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;[CLcom/sun/jna/platform/mac/CoreFoundation$CFIndex;)Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public stringValue()Ljava/lang/String;
    .locals 7

    .line 490
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFStringGetLength(Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;

    move-result-object v0

    .line 491
    sget-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    const v2, 0x8000100

    invoke-interface {v1, v0, v2}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFStringGetMaximumSizeForEncoding(Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;I)Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;->intValue()I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    return-object v4

    .line 495
    :cond_0
    new-instance v1, Lcom/sun/jna/Memory;

    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;->longValue()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 496
    sget-object v3, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    invoke-interface {v3, p0, v1, v0, v2}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFStringGetCString(Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;I)B

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    .line 497
    const-string v0, "UTF8"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/jna/Memory;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v4
.end method
