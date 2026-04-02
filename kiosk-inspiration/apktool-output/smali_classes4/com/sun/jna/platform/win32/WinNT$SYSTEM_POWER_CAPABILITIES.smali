.class public Lcom/sun/jna/platform/win32/WinNT$SYSTEM_POWER_CAPABILITIES;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "PowerButtonPresent",
        "SleepButtonPresent",
        "LidPresent",
        "SystemS1",
        "SystemS2",
        "SystemS3",
        "SystemS4",
        "SystemS5",
        "HiberFilePresent",
        "FullWake",
        "VideoDimPresent",
        "ApmPresent",
        "UpsPresent",
        "ThermalControl",
        "ProcessorThrottle",
        "ProcessorMinThrottle",
        "ProcessorMaxThrottle",
        "FastSystemS4",
        "Hiberboot",
        "WakeAlarmPresent",
        "AoAc",
        "DiskSpinDown",
        "HiberFileType",
        "AoAcConnectivitySupported",
        "spare3",
        "SystemBatteriesPresent",
        "BatteriesAreShortTerm",
        "BatteryScale",
        "AcOnLineWake",
        "SoftLidWake",
        "RtcWake",
        "MinDeviceWakeState",
        "DefaultLowLatencyWake"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SYSTEM_POWER_CAPABILITIES"
.end annotation


# instance fields
.field public AcOnLineWake:I

.field public AoAc:B

.field public AoAcConnectivitySupported:B

.field public ApmPresent:B

.field public BatteriesAreShortTerm:B

.field public BatteryScale:[Lcom/sun/jna/platform/win32/WinNT$BATTERY_REPORTING_SCALE;

.field public DefaultLowLatencyWake:I

.field public DiskSpinDown:B

.field public FastSystemS4:B

.field public FullWake:B

.field public HiberFilePresent:B

.field public HiberFileType:B

.field public Hiberboot:B

.field public LidPresent:B

.field public MinDeviceWakeState:I

.field public PowerButtonPresent:B

.field public ProcessorMaxThrottle:B

.field public ProcessorMinThrottle:B

.field public ProcessorThrottle:B

.field public RtcWake:I

.field public SleepButtonPresent:B

.field public SoftLidWake:I

.field public SystemBatteriesPresent:B

.field public SystemS1:B

.field public SystemS2:B

.field public SystemS3:B

.field public SystemS4:B

.field public SystemS5:B

.field public ThermalControl:B

.field public UpsPresent:B

.field public VideoDimPresent:B

.field public WakeAlarmPresent:B

.field public spare3:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3644
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x6

    .line 3624
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_POWER_CAPABILITIES;->spare3:[B

    const/4 v0, 0x3

    .line 3629
    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinNT$BATTERY_REPORTING_SCALE;

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_POWER_CAPABILITIES;->BatteryScale:[Lcom/sun/jna/platform/win32/WinNT$BATTERY_REPORTING_SCALE;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 3639
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/4 p1, 0x6

    .line 3624
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_POWER_CAPABILITIES;->spare3:[B

    const/4 p1, 0x3

    .line 3629
    new-array p1, p1, [Lcom/sun/jna/platform/win32/WinNT$BATTERY_REPORTING_SCALE;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_POWER_CAPABILITIES;->BatteryScale:[Lcom/sun/jna/platform/win32/WinNT$BATTERY_REPORTING_SCALE;

    .line 3640
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_POWER_CAPABILITIES;->read()V

    return-void
.end method
