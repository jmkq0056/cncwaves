.class public Lcom/sun/jna/platform/win32/WinPerf$PERF_COUNTER_BLOCK;
.super Lcom/sun/jna/Structure;
.source "WinPerf.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "ByteLength"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinPerf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PERF_COUNTER_BLOCK"
.end annotation


# instance fields
.field public ByteLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 556
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 560
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 561
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinPerf$PERF_COUNTER_BLOCK;->read()V

    return-void
.end method
