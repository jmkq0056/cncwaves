.class Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa027()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 3
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 9
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 18
    :cond_0
    const-string v0, "LE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    monitor-exit p1

    return-void

    .line 24
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v2, :cond_2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    monitor-exit p1

    return-void

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    move-result-object v0

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    if-ne v0, v5, :cond_f

    .line 31
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 32
    monitor-exit p1

    return-void

    .line 36
    :cond_3
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa005()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v4, v1

    .line 37
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa023(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 38
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa023(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6, p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 40
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    :cond_5
    :try_start_4
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa032(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_6

    .line 46
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz;Ljava/util/List;)Ljava/util/List;

    :cond_6
    move v4, v1

    .line 48
    :goto_1
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa032(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 49
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa032(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6, p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 51
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa032(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :cond_7
    add-int/2addr v4, v2

    goto :goto_1

    .line 56
    :cond_8
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa034(Lcom/stripe/bbpos/bbdevice/ccc055zz;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa034(Lcom/stripe/bbpos/bbdevice/ccc055zz;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_9

    goto :goto_3

    .line 64
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa034(Lcom/stripe/bbpos/bbdevice/ccc055zz;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 65
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa034(Lcom/stripe/bbpos/bbdevice/ccc055zz;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 66
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    if-ne v1, v2, :cond_a

    .line 67
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa023(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa032(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v1, p2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa032(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Ljava/util/List;)V

    .line 71
    :cond_a
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 75
    :cond_c
    :try_start_6
    monitor-exit v0

    goto :goto_4

    .line 76
    :cond_d
    :goto_3
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    if-ne v1, v2, :cond_e

    .line 77
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa023(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa032(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v1, p2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa032(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Ljava/util/List;)V

    .line 81
    :cond_e
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void

    :catchall_0
    move-exception p2

    .line 94
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p2

    .line 96
    :cond_f
    :goto_4
    monitor-exit p1

    return-void

    .line 97
    :cond_10
    :goto_5
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    .line 162
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p2

    .line 163
    :cond_11
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 164
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    if-ne p1, p2, :cond_1e

    .line 167
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa005()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 168
    :try_start_b
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa032(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_6
    if-ltz p2, :cond_14

    .line 169
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa032(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 170
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa023(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 171
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa023(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_7

    .line 175
    :cond_12
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa035(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 176
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa035(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_7

    .line 180
    :cond_13
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa032(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    .line 182
    :cond_14
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Ljava/util/List;)Ljava/util/List;

    .line 183
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002(Lcom/stripe/bbpos/bbdevice/ccc055zz;Ljava/util/List;)Ljava/util/List;

    .line 184
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 185
    :try_start_c
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa036(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    return-void

    :catchall_2
    move-exception p2

    .line 186
    :try_start_d
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw p2

    .line 189
    :cond_15
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0xa

    if-eqz v0, :cond_19

    .line 191
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    const/16 v0, 0xd

    if-ne p1, p2, :cond_17

    .line 192
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa036(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    if-eq p1, v3, :cond_16

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    .line 193
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa036(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    if-eq p1, v0, :cond_16

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    .line 194
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa036(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    if-nez p1, :cond_1e

    .line 197
    :cond_16
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa036()V

    .line 198
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015()V

    .line 200
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa034(Lcom/stripe/bbpos/bbdevice/ccc055zz;)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001([Ljava/lang/String;I)V

    return-void

    .line 203
    :cond_17
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa036(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    if-eq p1, v3, :cond_18

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    .line 204
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa036(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    if-eq p1, v0, :cond_18

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    .line 205
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa036(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    if-nez p1, :cond_1e

    .line 208
    :cond_18
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    move-result-object p1

    .line 209
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;

    invoke-virtual {p2, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;)V

    .line 210
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015()V

    .line 217
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa036(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p2

    if-ne p2, v0, :cond_1e

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v0, p2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa008:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1e

    .line 218
    iget-object p2, p2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object p2, p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string v0, "Android/iOS Bluetooth is off (3151)"

    invoke-virtual {p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    .line 219
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa032()V

    .line 220
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    if-ne p1, p2, :cond_1e

    .line 221
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "Bluetooth (error code - 3025)"

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_19
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 228
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 230
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa067:Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_1e

    .line 231
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 232
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa007:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    if-eq p1, p2, :cond_1e

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    if-eq p1, p2, :cond_1e

    .line 233
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;)V

    .line 234
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015()V

    .line 235
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string p2, "Connection drop (3059)"

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    return-void

    .line 239
    :cond_1a
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 240
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa007:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    if-eq p1, p2, :cond_1e

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    if-eq p1, p2, :cond_1e

    .line 241
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;)V

    .line 242
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015()V

    .line 243
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string p2, "Connection drop (3060)"

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    return-void

    .line 245
    :cond_1b
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 246
    const-string p1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 247
    const-string v1, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1e

    const/16 p1, 0xc

    if-eq p2, p1, :cond_1c

    if-ne p2, v3, :cond_1e

    .line 252
    :cond_1c
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 253
    :try_start_f
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iput-boolean v2, p2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000:Z

    .line 254
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 255
    monitor-exit p1

    return-void

    :catchall_3
    move-exception p2

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw p2

    .line 258
    :cond_1d
    const-string v0, "android.bluetooth.device.action.UUID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 259
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :catch_0
    :cond_1e
    return-void
.end method
