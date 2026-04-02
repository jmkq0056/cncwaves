.class public Lcom/sun/jna/platform/win32/WinRas$RAS_STATS;
.super Lcom/sun/jna/Structure;
.source "WinRas.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwSize",
        "dwBytesXmited",
        "dwBytesRcved",
        "dwFramesXmited",
        "dwFramesRcved",
        "dwCrcErr",
        "dwTimeoutErr",
        "dwAlignmentErr",
        "dwHardwareOverrunErr",
        "dwFramingErr",
        "dwBufferOverrunErr",
        "dwCompressionRatioIn",
        "dwCompressionRatioOut",
        "dwBps",
        "dwConnectDuration"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinRas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RAS_STATS"
.end annotation


# instance fields
.field public dwAlignmentErr:I

.field public dwBps:I

.field public dwBufferOverrunErr:I

.field public dwBytesRcved:I

.field public dwBytesXmited:I

.field public dwCompressionRatioIn:I

.field public dwCompressionRatioOut:I

.field public dwConnectDuration:I

.field public dwCrcErr:I

.field public dwFramesRcved:I

.field public dwFramesXmited:I

.field public dwFramingErr:I

.field public dwHardwareOverrunErr:I

.field public dwSize:I

.field public dwTimeoutErr:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 396
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 397
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RAS_STATS;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinRas$RAS_STATS;->dwSize:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 401
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 402
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RAS_STATS;->read()V

    return-void
.end method
