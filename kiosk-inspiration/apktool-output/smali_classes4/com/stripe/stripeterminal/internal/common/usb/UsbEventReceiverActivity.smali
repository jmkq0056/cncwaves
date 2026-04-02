.class public final Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity;
.super Landroid/app/Activity;
.source "UsbEventReceiverActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity;",
        "Landroid/app/Activity;",
        "()V",
        "onResume",
        "",
        "Companion",
        "common_publish"
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
.field private static final ACTION_USB_DEVICE_ATTACHED:Ljava/lang/String; = "com.stripe.stripeterminal.ACTION_USB_DEVICE_ATTACHED"

.field private static final Companion:Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity;->Companion:Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 5

    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 25
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Landroid/hardware/usb/UsbDevice;

    const-string v2, "device"

    invoke-static {v0, v2, v1}, Landroidx/core/content/IntentCompat;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 29
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.stripe.stripeterminal.ACTION_USB_DEVICE_ATTACHED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v1}, Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity;->finish()V

    return-void
.end method
