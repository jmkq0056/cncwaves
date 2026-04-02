.class public Lcom/sun/jna/platform/win32/WinNT$SYSTEM_BATTERY_STATE;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "AcOnLine",
        "BatteryPresent",
        "Charging",
        "Discharging",
        "Spare1",
        "Tag",
        "MaxCapacity",
        "RemainingCapacity",
        "Rate",
        "EstimatedTime",
        "DefaultAlert1",
        "DefaultAlert2"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SYSTEM_BATTERY_STATE"
.end annotation


# instance fields
.field public AcOnLine:B

.field public BatteryPresent:B

.field public Charging:B

.field public DefaultAlert1:I

.field public DefaultAlert2:I

.field public Discharging:B

.field public EstimatedTime:I

.field public MaxCapacity:I

.field public Rate:I

.field public RemainingCapacity:I

.field public Spare1:[B

.field public Tag:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3452
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x3

    .line 3437
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_BATTERY_STATE;->Spare1:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 3447
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/4 p1, 0x3

    .line 3437
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_BATTERY_STATE;->Spare1:[B

    .line 3448
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_BATTERY_STATE;->read()V

    return-void
.end method
