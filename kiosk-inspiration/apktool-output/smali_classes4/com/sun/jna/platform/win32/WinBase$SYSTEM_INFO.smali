.class public Lcom/sun/jna/platform/win32/WinBase$SYSTEM_INFO;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "processorArchitecture",
        "dwPageSize",
        "lpMinimumApplicationAddress",
        "lpMaximumApplicationAddress",
        "dwActiveProcessorMask",
        "dwNumberOfProcessors",
        "dwProcessorType",
        "dwAllocationGranularity",
        "wProcessorLevel",
        "wProcessorRevision"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SYSTEM_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinBase$SYSTEM_INFO$UNION;,
        Lcom/sun/jna/platform/win32/WinBase$SYSTEM_INFO$PI;
    }
.end annotation


# instance fields
.field public dwActiveProcessorMask:Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;

.field public dwAllocationGranularity:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwNumberOfProcessors:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwPageSize:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwProcessorType:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public lpMaximumApplicationAddress:Lcom/sun/jna/Pointer;

.field public lpMinimumApplicationAddress:Lcom/sun/jna/Pointer;

.field public processorArchitecture:Lcom/sun/jna/platform/win32/WinBase$SYSTEM_INFO$UNION;

.field public wProcessorLevel:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public wProcessorRevision:Lcom/sun/jna/platform/win32/WinDef$WORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1135
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
