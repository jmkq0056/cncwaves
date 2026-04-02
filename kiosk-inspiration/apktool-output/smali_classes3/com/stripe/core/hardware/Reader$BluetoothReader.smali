.class public abstract Lcom/stripe/core/hardware/Reader$BluetoothReader;
.super Lcom/stripe/core/hardware/Reader;
.source "Reader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/hardware/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BluetoothReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper1xReader;,
        Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper2xReader;,
        Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;,
        Lcom/stripe/core/hardware/Reader$BluetoothReader$StripeM2Reader;,
        Lcom/stripe/core/hardware/Reader$BluetoothReader$WisecubeReader;,
        Lcom/stripe/core/hardware/Reader$BluetoothReader$Wisepad3Reader;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00112\u00020\u0001:\u0006\u000f\u0010\u0011\u0012\u0013\u0014BA\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u0082\u0001\u0005\u0015\u0016\u0017\u0018\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
        "Lcom/stripe/core/hardware/Reader;",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "firmwareCanHandleSelection",
        "",
        "checkForCardBehavior",
        "Lcom/stripe/hardware/emv/CheckForCardBehavior;",
        "needsOtaUpdate",
        "needsReconnectAfterConfigUpdate",
        "needsSplashScreenUpdate",
        "quickEmvAutoResponse",
        "(Landroid/bluetooth/BluetoothDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZ)V",
        "getDevice",
        "()Landroid/bluetooth/BluetoothDevice;",
        "Chipper1xReader",
        "Chipper2xReader",
        "Companion",
        "StripeM2Reader",
        "WisecubeReader",
        "Wisepad3Reader",
        "Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper1xReader;",
        "Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper2xReader;",
        "Lcom/stripe/core/hardware/Reader$BluetoothReader$StripeM2Reader;",
        "Lcom/stripe/core/hardware/Reader$BluetoothReader$WisecubeReader;",
        "Lcom/stripe/core/hardware/Reader$BluetoothReader$Wisepad3Reader;",
        "hardware_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;


# instance fields
.field private final device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/hardware/Reader$BluetoothReader;->Companion:Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 47
    invoke-direct/range {v0 .. v7}, Lcom/stripe/core/hardware/Reader;-><init>(ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    iput-object p1, v0, Lcom/stripe/core/hardware/Reader$BluetoothReader;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    .line 39
    invoke-direct/range {v1 .. v9}, Lcom/stripe/core/hardware/Reader$BluetoothReader;-><init>(Landroid/bluetooth/BluetoothDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/stripe/core/hardware/Reader$BluetoothReader;-><init>(Landroid/bluetooth/BluetoothDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZ)V

    return-void
.end method


# virtual methods
.method public final getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/stripe/core/hardware/Reader$BluetoothReader;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method
