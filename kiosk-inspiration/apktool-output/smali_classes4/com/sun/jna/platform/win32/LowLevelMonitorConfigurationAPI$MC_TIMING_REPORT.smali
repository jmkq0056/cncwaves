.class public Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI$MC_TIMING_REPORT;
.super Lcom/sun/jna/Structure;
.source "LowLevelMonitorConfigurationAPI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwHorizontalFrequencyInHZ",
        "dwVerticalFrequencyInHZ",
        "bTimingStatusByte"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MC_TIMING_REPORT"
.end annotation


# instance fields
.field public bTimingStatusByte:Lcom/sun/jna/platform/win32/WinDef$BYTE;

.field public dwHorizontalFrequencyInHZ:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwVerticalFrequencyInHZ:Lcom/sun/jna/platform/win32/WinDef$DWORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
