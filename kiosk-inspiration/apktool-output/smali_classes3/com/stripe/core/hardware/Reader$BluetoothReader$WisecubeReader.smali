.class public final Lcom/stripe/core/hardware/Reader$BluetoothReader$WisecubeReader;
.super Lcom/stripe/core/hardware/Reader$BluetoothReader;
.source "Reader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/hardware/Reader$BluetoothReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WisecubeReader"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/core/hardware/Reader$BluetoothReader$WisecubeReader;",
        "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "(Landroid/bluetooth/BluetoothDevice;)V",
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


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 10

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v4, Lcom/stripe/hardware/emv/CheckForCardBehavior;->DO_NOT_POLL:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 95
    invoke-direct/range {v1 .. v9}, Lcom/stripe/core/hardware/Reader$BluetoothReader;-><init>(Landroid/bluetooth/BluetoothDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
