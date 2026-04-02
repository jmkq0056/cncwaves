.class public Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;
.super Lcom/sun/jna/NativeLong;
.source "CoreFoundation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/CoreFoundation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CFTypeID"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 532
    invoke-direct {p0}, Lcom/sun/jna/NativeLong;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 536
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/NativeLong;-><init>(J)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 541
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->ARRAY_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    const-string v0, "CFArray"

    return-object v0

    .line 543
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->BOOLEAN_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    const-string v0, "CFBoolean"

    return-object v0

    .line 545
    :cond_1
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->DATA_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    const-string v0, "CFData"

    return-object v0

    .line 547
    :cond_2
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->DATE_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    const-string v0, "CFDate"

    return-object v0

    .line 549
    :cond_3
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->DICTIONARY_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 550
    const-string v0, "CFDictionary"

    return-object v0

    .line 551
    :cond_4
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->NUMBER_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 552
    const-string v0, "CFNumber"

    return-object v0

    .line 553
    :cond_5
    sget-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->STRING_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 554
    const-string v0, "CFString"

    return-object v0

    .line 556
    :cond_6
    invoke-super {p0}, Lcom/sun/jna/NativeLong;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
