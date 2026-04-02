.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2$subscription$1;
.super Ljava/lang/Object;
.source "BbposUsbAdapter.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/core/hardware/Optional$Present;",
        "Lkotlin/Pair;",
        "Landroid/hardware/usb/UsbDevice;",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "it",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $usbDevice:Landroid/hardware/usb/UsbDevice;


# direct methods
.method constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2$subscription$1;->$usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/stripe/hardware/status/ReaderInfo;)Lcom/stripe/core/hardware/Optional$Present;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ")",
            "Lcom/stripe/core/hardware/Optional$Present<",
            "Lkotlin/Pair<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    sget-object v0, Lcom/stripe/core/hardware/Optional;->Companion:Lcom/stripe/core/hardware/Optional$Companion;

    new-instance v1, Lkotlin/Pair;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2$subscription$1;->$usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/stripe/core/hardware/Optional$Companion;->of(Ljava/lang/Object;)Lcom/stripe/core/hardware/Optional$Present;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 604
    check-cast p1, Lcom/stripe/hardware/status/ReaderInfo;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2$subscription$1;->apply(Lcom/stripe/hardware/status/ReaderInfo;)Lcom/stripe/core/hardware/Optional$Present;

    move-result-object p1

    return-object p1
.end method
