.class public Lcom/sun/jna/platform/win32/Psapi$PERFORMANCE_INFORMATION;
.super Lcom/sun/jna/Structure;
.source "Psapi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cb",
        "CommitTotal",
        "CommitLimit",
        "CommitPeak",
        "PhysicalTotal",
        "PhysicalAvailable",
        "SystemCache",
        "KernelTotal",
        "KernelPaged",
        "KernelNonpaged",
        "PageSize",
        "HandleCount",
        "ProcessCount",
        "ThreadCount"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Psapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PERFORMANCE_INFORMATION"
.end annotation


# instance fields
.field public CommitLimit:Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;

.field public CommitPeak:Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;

.field public CommitTotal:Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;

.field public HandleCount:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public KernelNonpaged:Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;

.field public KernelPaged:Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;

.field public KernelTotal:Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;

.field public PageSize:Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;

.field public PhysicalAvailable:Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;

.field public PhysicalTotal:Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;

.field public ProcessCount:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public SystemCache:Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;

.field public ThreadCount:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public cb:Lcom/sun/jna/platform/win32/WinDef$DWORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
