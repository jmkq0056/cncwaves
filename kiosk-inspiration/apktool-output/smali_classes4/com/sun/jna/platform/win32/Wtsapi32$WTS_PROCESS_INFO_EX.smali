.class public Lcom/sun/jna/platform/win32/Wtsapi32$WTS_PROCESS_INFO_EX;
.super Lcom/sun/jna/Structure;
.source "Wtsapi32.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "SessionId",
        "ProcessId",
        "pProcessName",
        "pUserSid",
        "NumberOfThreads",
        "HandleCount",
        "PagefileUsage",
        "PeakPagefileUsage",
        "WorkingSetSize",
        "PeakWorkingSetSize",
        "UserTime",
        "KernelTime"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Wtsapi32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WTS_PROCESS_INFO_EX"
.end annotation


# instance fields
.field public HandleCount:I

.field public KernelTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

.field public NumberOfThreads:I

.field public PagefileUsage:I

.field public PeakPagefileUsage:I

.field public PeakWorkingSetSize:I

.field public ProcessId:I

.field public SessionId:I

.field public UserTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

.field public WorkingSetSize:I

.field public pProcessName:Ljava/lang/String;

.field public pUserSid:Lcom/sun/jna/platform/win32/WinNT$PSID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 144
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 148
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    .line 149
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Wtsapi32$WTS_PROCESS_INFO_EX;->read()V

    return-void
.end method
