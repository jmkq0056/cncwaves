.class public final Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;
.super Ljava/lang/Object;
.source "UsbPermissionReceiverManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$Companion;,
        Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$UsbPermissionReceiver;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0002\u0017\u0018B!\u0008\u0017\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u001f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ0\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000f0\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0015J\u0006\u0010\u0016\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "buildValues",
        "Lcom/stripe/core/device/BuildValues;",
        "(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/stripe/core/device/BuildValues;)V",
        "sdkInt",
        "Lcom/stripe/core/device/SdkInt;",
        "(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/stripe/core/device/SdkInt;)V",
        "receiver",
        "Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$UsbPermissionReceiver;",
        "startListening",
        "",
        "usbDevice",
        "Landroid/hardware/usb/UsbDevice;",
        "onGranted",
        "Lkotlin/Function1;",
        "onDenied",
        "Lkotlin/Function0;",
        "stopListening",
        "Companion",
        "UsbPermissionReceiver",
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
.field public static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.stripe.terminal.USB_PERMISSION"

.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private receiver:Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$UsbPermissionReceiver;

.field private final sdkInt:Lcom/stripe/core/device/SdkInt;

.field private final usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->Companion:Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/stripe/core/device/BuildValues;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildValues"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p3}, Lcom/stripe/core/device/BuildValues;->getSdkInt()Lcom/stripe/core/device/SdkInt;

    move-result-object p3

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;-><init>(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/stripe/core/device/SdkInt;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/stripe/core/device/SdkInt;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkInt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 25
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->sdkInt:Lcom/stripe/core/device/SdkInt;

    return-void
.end method


# virtual methods
.method public final startListening(Landroid/hardware/usb/UsbDevice;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/hardware/usb/UsbDevice;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "usbDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onGranted"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDenied"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->receiver:Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$UsbPermissionReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->stopListening()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->sdkInt:Lcom/stripe/core/device/SdkInt;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/stripe/core/device/SdkInt;->isAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0xa000000

    goto :goto_0

    :cond_2
    const/high16 v0, 0x8000000

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->context:Landroid/content/Context;

    .line 82
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.stripe.terminal.USB_PERMISSION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    .line 79
    invoke-static {v1, v3, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->sdkInt:Lcom/stripe/core/device/SdkInt;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lcom/stripe/core/device/SdkInt;->isAtLeast(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x2

    .line 91
    :cond_3
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$UsbPermissionReceiver;

    invoke-direct {v1, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$UsbPermissionReceiver;-><init>(Landroid/hardware/usb/UsbDevice;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->receiver:Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$UsbPermissionReceiver;

    .line 93
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->context:Landroid/content/Context;

    check-cast v1, Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v2, "com.stripe.terminal.USB_PERMISSION"

    invoke-direct {p3, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, p3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 94
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p2, p1, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 96
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final stopListening()V
    .locals 2

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->receiver:Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$UsbPermissionReceiver;

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->receiver:Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$UsbPermissionReceiver;

    .line 101
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
