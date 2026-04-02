.class final Lcom/stripe/bbpos/bbdevice/aaa006zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;
    }
.end annotation


# instance fields
.field private final aaa000:Landroid/content/Context;

.field private final aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

.field private aaa002:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

.field private final aaa003:Landroid/bluetooth/BluetoothAdapter;

.field private aaa004:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/aaa003zz;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    .line 18
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    .line 21
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa003:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/aaa006zz;)Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    return-object p0
.end method

.method private aaa000(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 3
    const-string v0, "[registerReceivers]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa004:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    :cond_0
    new-instance v0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;

    invoke-direct {v0, p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa006zz;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa004:Landroid/content/BroadcastReceiver;

    .line 44
    new-instance v3, Landroid/content/IntentFilter;

    const-string p1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v3, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    const-string p1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string p1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string p1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string p1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_2

    if-lt p1, v2, :cond_2

    const/16 p1, 0x22

    if-lt v0, p1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000:Landroid/content/Context;

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa004:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v4, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000:Landroid/content/Context;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa004:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000:Landroid/content/Context;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa004:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/aaa006zz;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Ljava/lang/String;)V

    return-void
.end method

.method private aaa000(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic aaa001(Lcom/stripe/bbpos/bbdevice/aaa006zz;)Lcom/stripe/bbpos/bbdevice/aaa003zz;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    return-object p0
.end method

.method static synthetic aaa002(Lcom/stripe/bbpos/bbdevice/aaa006zz;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa003:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method


# virtual methods
.method aaa000()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    if-ne v0, v1, :cond_1

    .line 67
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    .line 69
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa004:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa004:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa043()V

    :cond_1
    return-void
.end method

.method aaa000(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[connectBTv2] bluetoothDevice : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bluetoothSocket : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    if-ne v0, v1, :cond_0

    .line 61
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    .line 62
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Landroid/bluetooth/BluetoothDevice;)V

    .line 63
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Landroid/bluetooth/BluetoothSocket;)V

    return-void

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa012:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void
.end method

.method aaa000(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/PipedInputStream;Ljava/lang/Object;Ljava/lang/Object;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 8

    .line 77
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    if-ne v0, v1, :cond_0

    .line 78
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    .line 79
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/PipedInputStream;Ljava/lang/Object;Ljava/lang/Object;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa012:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void
.end method

.method aaa001()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa045()V

    :cond_0
    return-void
.end method
