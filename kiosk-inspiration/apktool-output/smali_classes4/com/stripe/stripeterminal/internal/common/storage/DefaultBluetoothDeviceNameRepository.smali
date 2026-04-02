.class public final Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;
.super Ljava/lang/Object;
.source "DefaultBluetoothDeviceNameRepository.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultBluetoothDeviceNameRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultBluetoothDeviceNameRepository.kt\ncom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,46:1\n1#2:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000fH\u0016R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;",
        "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;",
        "sharedPrefs",
        "Lcom/stripe/jvmcore/storage/SharedPrefs;",
        "(Lcom/stripe/jvmcore/storage/SharedPrefs;)V",
        "value",
        "Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;",
        "bluetoothDeviceNameToSerialMap",
        "getBluetoothDeviceNameToSerialMap",
        "()Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;",
        "setBluetoothDeviceNameToSerialMap",
        "(Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)V",
        "clear",
        "",
        "getDeviceSerialFromName",
        "",
        "deviceName",
        "saveDeviceSerialMapping",
        "serialNumber",
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
.field private final sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/storage/SharedPrefs;)V
    .locals 1

    const-string v0, "sharedPrefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    return-void
.end method

.method public static final synthetic access$getBluetoothDeviceNameToSerialMap(Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;)Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;->getBluetoothDeviceNameToSerialMap()Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setBluetoothDeviceNameToSerialMap(Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;->setBluetoothDeviceNameToSerialMap(Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)V

    return-void
.end method

.method private final declared-synchronized getBluetoothDeviceNameToSerialMap()Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;
    .locals 5

    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    .line 23
    const-string v1, "bluetooth_device_to_serial_mapping"

    .line 24
    new-instance v2, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v4}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;-><init>(Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/squareup/wire/Message;

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final declared-synchronized setBluetoothDeviceNameToSerialMap(Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)V
    .locals 2

    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    const-string v1, "bluetooth_device_to_serial_mapping"

    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {v0, v1, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 43
    new-instance v0, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;-><init>(Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;->setBluetoothDeviceNameToSerialMap(Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)V

    return-void
.end method

.method public getDeviceSerialFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "deviceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;->getBluetoothDeviceNameToSerialMap()Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public saveDeviceSerialMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "deviceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialNumber"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;->getBluetoothDeviceNameToSerialMap()Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;->map:Ljava/util/Map;

    .line 32
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, v0, v1}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;-><init>(Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository$saveDeviceSerialMapping$3;

    invoke-direct {p1, p0}, Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository$saveDeviceSerialMapping$3;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/reflect/KMutableProperty0;

    invoke-interface {p1, p2}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
