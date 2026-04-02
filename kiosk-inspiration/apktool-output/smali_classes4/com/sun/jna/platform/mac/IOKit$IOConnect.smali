.class public Lcom/sun/jna/platform/mac/IOKit$IOConnect;
.super Lcom/sun/jna/platform/mac/IOKit$IOService;
.source "IOKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/IOKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IOConnect"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 472
    invoke-direct {p0}, Lcom/sun/jna/platform/mac/IOKit$IOService;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 476
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/mac/IOKit$IOService;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
