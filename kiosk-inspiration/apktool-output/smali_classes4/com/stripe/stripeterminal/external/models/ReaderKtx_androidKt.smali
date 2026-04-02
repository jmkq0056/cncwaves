.class public final Lcom/stripe/stripeterminal/external/models/ReaderKtx_androidKt;
.super Ljava/lang/Object;
.source "ReaderKtx.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0000*\n\u0010\u0002\"\u00020\u00032\u00020\u0003*\n\u0010\u0004\"\u00020\u00052\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "cotsHardware",
        "Lcom/stripe/proto/model/common/COTSHardware;",
        "BluetoothDevice",
        "Landroid/bluetooth/BluetoothDevice;",
        "UsbDevice",
        "Landroid/hardware/usb/UsbDevice;",
        "public_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final cotsHardware()Lcom/stripe/proto/model/common/COTSHardware;
    .locals 8

    .line 15
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 16
    sget-object v4, Lcom/stripe/proto/model/common/MobileOS;->ANDROID:Lcom/stripe/proto/model/common/MobileOS;

    .line 17
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/stripe/proto/model/common/COTSHardware;

    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v6, 0x12

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/common/COTSHardware;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/MobileOS;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
