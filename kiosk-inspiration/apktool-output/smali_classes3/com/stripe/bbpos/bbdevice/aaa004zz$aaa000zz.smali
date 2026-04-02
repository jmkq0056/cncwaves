.class Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa000zz;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/aaa004zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa004zz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "[onReceive] permission denied for device "

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2
    const-string v2, "com.stripe.bbpos.usbhost.USB_PERMISSION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "device"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 5
    const-string v2, "permission"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz v1, :cond_0

    .line 8
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    const-string v0, "[onReceive] USB EmvSwipe can connect"

    invoke-static {p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-virtual {p2, v1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;

    move-result-object p2

    .line 10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-virtual {v0, v1, p2}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 18
    :cond_1
    :try_start_2
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :try_start_3
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    :catch_0
    :try_start_4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/aaa003zz;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa020:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 26
    :catch_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 27
    :cond_2
    const-string p1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 28
    const-string p1, "device"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 29
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onReceive] USB Device "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " attached"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_3
    const-string p1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 31
    const-string p1, "device"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 32
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onReceive] USB Device "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " detached"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
