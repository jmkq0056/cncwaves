.class public final Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;
.super Ljava/lang/Object;
.source "BbposDiscoveryModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposDiscoveryModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposDiscoveryModule.kt\ncom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,87:1\n1#2:88\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J*\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010H\u0007J\"\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007J\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0019H\u0007J*\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020!H\u0007\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;",
        "",
        "()V",
        "provideBbposBluetoothDiscoveryController",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;",
        "bbposDeviceController",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "discoveryFilter",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;",
        "provideBbposBluetoothScanner",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "readerStatusListener",
        "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
        "scannerProvider",
        "Ljavax/inject/Provider;",
        "Landroid/bluetooth/le/BluetoothLeScanner;",
        "provideBbposUsbDiscoveryController",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "provideBluetoothAdapter",
        "Landroid/bluetooth/BluetoothAdapter;",
        "provideBluetoothLeScanner",
        "adapter",
        "provideDefaultBluetoothDiscoveryController",
        "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;",
        "io",
        "bluetoothScanner",
        "clock",
        "Lcom/stripe/time/Clock;",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideBbposBluetoothDiscoveryController(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;)Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "bbposDeviceController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discoveryFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;-><init>(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;)V

    return-object v0
.end method

.method public final provideBbposBluetoothScanner(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/status/ReaderStatusListener;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;
    .locals 1
    .param p1    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            "Ljavax/inject/Provider<",
            "Landroid/bluetooth/le/BluetoothLeScanner;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerStatusListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scannerProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/status/ReaderStatusListener;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public final provideBbposUsbDiscoveryController(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/hardware/status/ReaderStatusListener;Landroid/hardware/usb/UsbManager;)Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;
    .locals 1
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "appScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerStatusListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/hardware/status/ReaderStatusListener;Landroid/hardware/usb/UsbManager;)V

    return-object v0
.end method

.method public final provideBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 27
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final provideBluetoothLeScanner(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final provideDefaultBluetoothDiscoveryController(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/time/Clock;)Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;
    .locals 1
    .param p1    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "io"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bluetoothScanner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerStatusListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;

    .line 56
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    .line 55
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/time/Clock;)V

    return-object v0
.end method
