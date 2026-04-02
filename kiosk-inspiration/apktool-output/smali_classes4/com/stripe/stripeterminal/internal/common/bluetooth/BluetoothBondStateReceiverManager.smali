.class public final Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;
.super Ljava/lang/Object;
.source "BluetoothBondStateReceiverManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$BluetoothBondStateReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothBondStateReceiverManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothBondStateReceiverManager.kt\ncom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,89:1\n16#2:90\n*S KotlinDebug\n*F\n+ 1 BluetoothBondStateReceiverManager.kt\ncom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager\n*L\n30#1:90\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0016B\u0019\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J*\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0013J\u0006\u0010\u0015\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008j\u0002`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Landroid/content/Context;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "receiver",
        "Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$BluetoothBondStateReceiver;",
        "startListening",
        "",
        "bluetoothDevice",
        "Landroid/bluetooth/BluetoothDevice;",
        "onBonded",
        "Lkotlin/Function0;",
        "onError",
        "stopListening",
        "BluetoothBondStateReceiver",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$BluetoothBondStateReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->context:Landroid/content/Context;

    .line 90
    const-class p1, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$BluetoothBondStateReceiver;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final startListening(Landroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bluetoothDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBonded"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "startListening"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 70
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->receiver:Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$BluetoothBondStateReceiver;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1;-><init>(Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 75
    new-instance p2, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$BluetoothBondStateReceiver;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-direct {v1, p1, v0, p3, v2}, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$BluetoothBondStateReceiver;-><init>(Landroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->receiver:Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$BluetoothBondStateReceiver;

    .line 77
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->context:Landroid/content/Context;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final stopListening()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "stopListening"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 83
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->receiver:Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$BluetoothBondStateReceiver;

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->receiver:Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$BluetoothBondStateReceiver;

    :cond_0
    return-void
.end method
