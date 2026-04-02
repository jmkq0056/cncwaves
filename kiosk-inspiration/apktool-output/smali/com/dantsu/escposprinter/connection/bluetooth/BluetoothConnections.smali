.class public Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnections;
.super Ljava/lang/Object;
.source "BluetoothConnections.java"


# instance fields
.field protected bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnections;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public getList()[Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;
    .locals 6

    .line 28
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnections;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnections;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;

    .line 39
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 41
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    add-int/lit8 v4, v2, 0x1

    .line 42
    new-instance v5, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;

    invoke-direct {v5, v3}, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    aput-object v5, v1, v2

    move v2, v4

    goto :goto_0

    :cond_2
    return-object v1
.end method
