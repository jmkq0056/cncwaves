.class public Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;
.super Lcom/sun/jna/Structure;
.source "Winsvc.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwServiceType",
        "dwCurrentState",
        "dwControlsAccepted",
        "dwWin32ExitCode",
        "dwServiceSpecificExitCode",
        "dwCheckPoint",
        "dwWaitHint",
        "dwProcessId",
        "dwServiceFlags"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SERVICE_STATUS_PROCESS"
.end annotation


# instance fields
.field public dwCheckPoint:I

.field public dwControlsAccepted:I

.field public dwCurrentState:I

.field public dwProcessId:I

.field public dwServiceFlags:I

.field public dwServiceSpecificExitCode:I

.field public dwServiceType:I

.field public dwWaitHint:I

.field public dwWin32ExitCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 206
    new-instance v0, Lcom/sun/jna/Memory;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
