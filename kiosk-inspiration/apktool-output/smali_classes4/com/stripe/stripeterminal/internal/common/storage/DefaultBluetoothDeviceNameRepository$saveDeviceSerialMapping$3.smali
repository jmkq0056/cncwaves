.class final synthetic Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository$saveDeviceSerialMapping$3;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "DefaultBluetoothDeviceNameRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;->saveDeviceSerialMapping(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const-class v2, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;

    const-string v4, "getBluetoothDeviceNameToSerialMap()Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;"

    const/4 v5, 0x0

    const-string v3, "bluetoothDeviceNameToSerialMap"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository$saveDeviceSerialMapping$3;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;->access$getBluetoothDeviceNameToSerialMap(Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;)Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository$saveDeviceSerialMapping$3;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;

    check-cast p1, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    invoke-static {v0, p1}, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;->access$setBluetoothDeviceNameToSerialMap(Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)V

    return-void
.end method
