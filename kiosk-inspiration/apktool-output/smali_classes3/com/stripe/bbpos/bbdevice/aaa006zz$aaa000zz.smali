.class Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aaa000:Landroid/bluetooth/BluetoothDevice;

.field final synthetic aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa006zz;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa000:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[registerReceivers] [onReceive] intent.getAction() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa006zz;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 3
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    const-string p2, "[registerReceivers] [onReceive] ACTION_DISCOVERY_FINISHED"

    invoke-static {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa006zz;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    const-string v0, "[registerReceivers] [onReceive] ACTION_ACL_DISCONNECTED"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa006zz;Ljava/lang/String;)V

    .line 7
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 8
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[registerReceivers] [onReceive] ACTION_ACL_DISCONNECTED bluetoothDevice : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa006zz;Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[registerReceivers] [onReceive] ACTION_ACL_DISCONNECTED state : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa006zz;)Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa006zz;Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa006zz;)Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    move-result-object p2

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    if-ne p2, v0, :cond_4

    .line 11
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa000:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa006zz;)Lcom/stripe/bbpos/bbdevice/aaa003zz;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string p2, "Unknown BT disconnection (3050)"

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    .line 13
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa006zz;)Lcom/stripe/bbpos/bbdevice/aaa003zz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014()V

    return-void

    .line 16
    :cond_1
    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[registerReceivers] [onReceive] ACTION_STATE_CHANGED bluetoothAdapter.getState() : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa002(Lcom/stripe/bbpos/bbdevice/aaa006zz;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa006zz;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa006zz;)Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa006zz;)Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa001zz;

    if-ne p1, p2, :cond_4

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa002(Lcom/stripe/bbpos/bbdevice/aaa006zz;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_3

    const/16 p2, 0xd

    if-ne p1, p2, :cond_4

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa006zz;)Lcom/stripe/bbpos/bbdevice/aaa003zz;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string p2, "Android/iOS Bluetooth is off (3051)"

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    .line 22
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa006zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa006zz;)Lcom/stripe/bbpos/bbdevice/aaa003zz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014()V

    :cond_4
    return-void
.end method
