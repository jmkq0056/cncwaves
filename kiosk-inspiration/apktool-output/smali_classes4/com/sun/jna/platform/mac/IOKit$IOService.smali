.class public Lcom/sun/jna/platform/mac/IOKit$IOService;
.super Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;
.source "IOKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/IOKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IOService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 457
    invoke-direct {p0}, Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 461
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
