.class public Lcom/sun/jna/platform/win32/WinNT$IO_COUNTERS;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "ReadOperationCount",
        "WriteOperationCount",
        "OtherOperationCount",
        "ReadTransferCount",
        "WriteTransferCount",
        "OtherTransferCount"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IO_COUNTERS"
.end annotation


# instance fields
.field public OtherOperationCount:J

.field public OtherTransferCount:J

.field public ReadOperationCount:J

.field public ReadTransferCount:J

.field public WriteOperationCount:J

.field public WriteTransferCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4262
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 4266
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
