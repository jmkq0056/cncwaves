.class public Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;
.super Lcom/sun/jna/NativeLong;
.source "CoreFoundation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/CoreFoundation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CFIndex"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 511
    invoke-direct {p0}, Lcom/sun/jna/NativeLong;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 515
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/NativeLong;-><init>(J)V

    return-void
.end method
