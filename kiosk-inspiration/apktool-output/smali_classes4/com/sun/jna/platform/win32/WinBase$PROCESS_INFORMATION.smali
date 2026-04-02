.class public Lcom/sun/jna/platform/win32/WinBase$PROCESS_INFORMATION;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "hProcess",
        "hThread",
        "dwProcessId",
        "dwThreadId"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PROCESS_INFORMATION"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinBase$PROCESS_INFORMATION$ByReference;
    }
.end annotation


# instance fields
.field public dwProcessId:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwThreadId:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public hProcess:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public hThread:Lcom/sun/jna/platform/win32/WinNT$HANDLE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1547
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1551
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1552
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$PROCESS_INFORMATION;->read()V

    return-void
.end method
