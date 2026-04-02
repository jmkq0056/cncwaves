.class public Lcom/sun/jna/platform/win32/Winspool$JOB_INFO_1;
.super Lcom/sun/jna/Structure;
.source "Winspool.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "JobId",
        "pPrinterName",
        "pMachineName",
        "pUserName",
        "pDocument",
        "pDatatype",
        "pStatus",
        "Status",
        "Priority",
        "Position",
        "TotalPages",
        "PagesPrinted",
        "Submitted"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winspool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JOB_INFO_1"
.end annotation


# instance fields
.field public JobId:I

.field public PagesPrinted:I

.field public Position:I

.field public Priority:I

.field public Status:I

.field public Submitted:Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;

.field public TotalPages:I

.field public pDatatype:Ljava/lang/String;

.field public pDocument:Ljava/lang/String;

.field public pMachineName:Ljava/lang/String;

.field public pPrinterName:Ljava/lang/String;

.field public pStatus:Ljava/lang/String;

.field public pUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 862
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 866
    new-instance v0, Lcom/sun/jna/Memory;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
