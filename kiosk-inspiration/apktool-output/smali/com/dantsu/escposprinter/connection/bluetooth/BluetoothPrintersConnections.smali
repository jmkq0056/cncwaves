.class public Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothPrintersConnections;
.super Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnections;
.source "BluetoothPrintersConnections.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnections;-><init>()V

    return-void
.end method

.method public static selectFirstPaired()Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;
    .locals 4

    .line 20
    new-instance v0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothPrintersConnections;

    invoke-direct {v0}, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothPrintersConnections;-><init>()V

    .line 21
    invoke-virtual {v0}, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothPrintersConnections;->getList()[Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    array-length v1, v0

    if-lez v1, :cond_0

    .line 24
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 26
    :try_start_0
    invoke-virtual {v3}, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->connect()Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;

    move-result-object v0
    :try_end_0
    .catch Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    .line 28
    invoke-virtual {v3}, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;->printStackTrace()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getList()[Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;
    .locals 10

    .line 43
    invoke-super {p0}, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnections;->getList()[Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;

    .line 51
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v6, v0, v4

    .line 52
    invoke-virtual {v6}, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 54
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    .line 55
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v8

    const/16 v9, 0x600

    if-ne v7, v9, :cond_2

    const/16 v7, 0x680

    if-eq v8, v7, :cond_1

    if-ne v8, v9, :cond_2

    :cond_1
    add-int/lit8 v7, v5, 0x1

    .line 58
    new-instance v8, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;

    invoke-direct {v8, v6}, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    aput-object v8, v1, v5

    move v5, v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    :cond_3
    new-array v0, v5, [Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;

    .line 62
    invoke-static {v1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
