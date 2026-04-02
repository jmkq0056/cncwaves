.class public Lcom/sun/jna/platform/win32/WinNT$SYSTEM_POWER_LEVEL;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Enable",
        "Spare",
        "BatteryLevel",
        "PowerPolicy",
        "MinSystemState"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SYSTEM_POWER_LEVEL"
.end annotation


# instance fields
.field public BatteryLevel:I

.field public Enable:B

.field public MinSystemState:I

.field public PowerPolicy:Lcom/sun/jna/platform/win32/WinNT$POWER_ACTION_POLICY;

.field public Spare:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3522
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x3

    .line 3524
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_POWER_LEVEL;->Spare:[B

    return-void
.end method
