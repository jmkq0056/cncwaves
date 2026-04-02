.class public final Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;
.super Ljava/lang/Object;
.source "ReaderMaker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;,
        Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;,
        Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderMaker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderMaker.kt\ncom/stripe/stripeterminal/internal/common/makers/ReaderMaker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,211:1\n1#2:212\n1747#3,3:213\n1747#3,3:216\n1747#3,3:219\n1747#3,3:222\n1747#3,3:225\n*S KotlinDebug\n*F\n+ 1 ReaderMaker.kt\ncom/stripe/stripeterminal/internal/common/makers/ReaderMaker\n*L\n117#1:213,3\n121#1:216,3\n125#1:219,3\n129#1:222,3\n133#1:225,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007J\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00042\u000e\u0010\u0005\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u000e\u0010\u0005\u001a\n\u0018\u00010\u0017j\u0004\u0018\u0001`\u0018J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\n\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;",
        "",
        "()V",
        "fromBluetoothDevice",
        "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "Lcom/stripe/stripeterminal/external/models/BluetoothDevice;",
        "fromBluetoothDeviceOrNull",
        "fromCotsDescriptor",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "cotsDescriptor",
        "Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;",
        "fromDiscoveredReader",
        "discoveredReader",
        "Lcom/stripe/proto/api/sdk/DiscoveredReader;",
        "fromReaderInfoSimulated",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "readerInfo",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "fromUsbDeviceOrNull",
        "Lcom/stripe/core/hardware/Reader$UsbReader;",
        "Landroid/hardware/usb/UsbDevice;",
        "Lcom/stripe/stripeterminal/external/models/UsbDevice;",
        "simulatedLocation",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "toHardwareReader",
        "Lcom/stripe/core/hardware/Reader;",
        "reader",
        "ReaderNamePrefixes",
        "UsbDeviceFilter",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/stripe/core/hardware/Reader$BluetoothReader;
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->fromBluetoothDeviceOrNull(Landroid/bluetooth/BluetoothDevice;)Lcom/stripe/core/hardware/Reader$BluetoothReader;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper2xReader;

    invoke-direct {v0, p1}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper2xReader;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    check-cast v0, Lcom/stripe/core/hardware/Reader$BluetoothReader;

    :cond_0
    return-object v0
.end method

.method public final fromBluetoothDeviceOrNull(Landroid/bluetooth/BluetoothDevice;)Lcom/stripe/core/hardware/Reader$BluetoothReader;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 115
    sget-object v1, Lcom/stripe/core/hardware/Reader$BluetoothReader;->Companion:Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;->nameFromDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 117
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->getChipper1x()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 213
    instance-of v3, v2, Ljava/util/Collection;

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 117
    invoke-static {v1, v3, v5, v4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    new-instance v0, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper1xReader;

    invoke-direct {v0, p1}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper1xReader;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    check-cast v0, Lcom/stripe/core/hardware/Reader$BluetoothReader;

    return-object v0

    .line 121
    :cond_2
    :goto_0
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->getChipper2x()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 216
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 217
    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 121
    invoke-static {v1, v3, v5, v4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    new-instance v0, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper2xReader;

    invoke-direct {v0, p1}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper2xReader;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    check-cast v0, Lcom/stripe/core/hardware/Reader$BluetoothReader;

    return-object v0

    .line 125
    :cond_5
    :goto_1
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->getStripeM2()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 219
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_6

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 220
    :cond_6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    invoke-static {v1, v3, v5, v4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 126
    new-instance v0, Lcom/stripe/core/hardware/Reader$BluetoothReader$StripeM2Reader;

    invoke-direct {v0, p1}, Lcom/stripe/core/hardware/Reader$BluetoothReader$StripeM2Reader;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    check-cast v0, Lcom/stripe/core/hardware/Reader$BluetoothReader;

    return-object v0

    .line 129
    :cond_8
    :goto_2
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->getWisecube()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 222
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_9

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    .line 223
    :cond_9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 129
    invoke-static {v1, v3, v5, v4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 130
    new-instance v0, Lcom/stripe/core/hardware/Reader$BluetoothReader$WisecubeReader;

    invoke-direct {v0, p1}, Lcom/stripe/core/hardware/Reader$BluetoothReader$WisecubeReader;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    check-cast v0, Lcom/stripe/core/hardware/Reader$BluetoothReader;

    return-object v0

    .line 133
    :cond_b
    :goto_3
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->getWisepad3()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 225
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_c

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_4

    .line 226
    :cond_c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    invoke-static {v1, v3, v5, v4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 134
    new-instance v0, Lcom/stripe/core/hardware/Reader$BluetoothReader$Wisepad3Reader;

    invoke-direct {v0, p1}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Wisepad3Reader;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    check-cast v0, Lcom/stripe/core/hardware/Reader$BluetoothReader;

    :cond_e
    :goto_4
    return-object v0
.end method

.method public final fromCotsDescriptor(Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 41

    const-string v0, "cotsDescriptor"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v2, Lcom/stripe/stripeterminal/external/models/DeviceType;->TAP_TO_PAY_DEVICE:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 77
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;->getCotsUuid()Ljava/lang/String;

    move-result-object v8

    .line 78
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;->isSimulated()Z

    move-result v6

    .line 79
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;->isSimulated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->simulatedLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v16, v0

    .line 74
    new-instance v1, Lcom/stripe/stripeterminal/external/models/Reader;

    const/16 v39, 0xf

    const/16 v40, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, -0x405a

    invoke-direct/range {v1 .. v40}, Lcom/stripe/stripeterminal/external/models/Reader;-><init>(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Lcom/stripe/stripeterminal/external/models/LocationStatus;Ljava/lang/String;ZLcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/Location;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final fromDiscoveredReader(Lcom/stripe/proto/api/sdk/DiscoveredReader;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 45

    move-object/from16 v0, p1

    const-string v1, "discoveredReader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v1, v0, Lcom/stripe/proto/api/sdk/DiscoveredReader;->expandedLocationReader:Lcom/stripe/proto/model/rest/ExpandedLocationReader;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 28
    :cond_0
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/json/DeviceTypeJsonAdapter;

    invoke-direct {v3}, Lcom/stripe/stripeterminal/internal/common/json/DeviceTypeJsonAdapter;-><init>()V

    .line 29
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/json/NetworkStatusJsonAdapter;

    invoke-direct {v4}, Lcom/stripe/stripeterminal/internal/common/json/NetworkStatusJsonAdapter;-><init>()V

    .line 30
    iget-object v5, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_type:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v3, v5}, Lcom/stripe/stripeterminal/internal/common/json/DeviceTypeJsonAdapter;->fromJson(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    sget-object v3, Lcom/stripe/stripeterminal/external/models/DeviceType;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

    :cond_2
    move-object v6, v3

    .line 31
    iget-object v3, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v3, :cond_3

    .line 32
    new-instance v5, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;

    sget-object v7, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v7, v3}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkLocation(Lcom/stripe/proto/model/merchant/ApiLocationPb;)Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;-><init>(Lcom/stripe/stripeterminal/external/models/Location;)V

    goto :goto_0

    :cond_3
    move-object v5, v2

    :goto_0
    if-eqz v5, :cond_4

    .line 35
    sget-object v3, Lcom/stripe/stripeterminal/external/models/LocationStatus;->SET:Lcom/stripe/stripeterminal/external/models/LocationStatus;

    goto :goto_1

    .line 37
    :cond_4
    sget-object v3, Lcom/stripe/stripeterminal/external/models/LocationStatus;->NOT_SET:Lcom/stripe/stripeterminal/external/models/LocationStatus;

    :goto_1
    move-object v8, v3

    .line 40
    iget-object v0, v0, Lcom/stripe/proto/api/sdk/DiscoveredReader;->readerInfo:Lcom/stripe/proto/api/sdk/ReaderInfo;

    if-eqz v0, :cond_5

    sget-object v3, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v3, v0}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkReaderInfo(Lcom/stripe/proto/api/sdk/ReaderInfo;)Lcom/stripe/hardware/status/ReaderInfo;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_7

    move-object v3, v5

    .line 42
    sget-object v5, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;

    .line 45
    iget-object v13, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->id:Ljava/lang/String;

    .line 47
    iget-object v7, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->status:Ljava/lang/String;

    if-eqz v7, :cond_6

    invoke-virtual {v4, v7}, Lcom/stripe/stripeterminal/internal/common/json/NetworkStatusJsonAdapter;->fromJson(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    move-result-object v2

    :cond_6
    move-object v14, v2

    .line 48
    iget-object v15, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->serial_number:Ljava/lang/String;

    .line 49
    iget-object v2, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->label:Ljava/lang/String;

    .line 50
    iget-object v4, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_sw_version:Ljava/lang/String;

    .line 51
    iget-object v7, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->base_url:Ljava/lang/String;

    .line 52
    iget-object v9, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->ip_address:Ljava/lang/String;

    .line 53
    iget-object v1, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->livemode:Ljava/lang/Boolean;

    .line 44
    move-object v12, v3

    check-cast v12, Lcom/stripe/stripeterminal/external/models/ExpandableLocation;

    const v22, 0x802c

    const/16 v23, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move-object/from16 v19, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v7

    move-object v7, v6

    move-object v6, v0

    .line 42
    invoke-static/range {v5 .. v23}, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;->withReaderInfo$default(Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/stripeterminal/external/models/DeviceType;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/LocationStatus;Lcom/stripe/stripeterminal/external/models/Location;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    return-object v0

    :cond_7
    move-object v3, v5

    move-object v10, v8

    .line 60
    iget-object v9, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->id:Ljava/lang/String;

    .line 62
    iget-object v0, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->status:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v4, v0}, Lcom/stripe/stripeterminal/internal/common/json/NetworkStatusJsonAdapter;->fromJson(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    move-result-object v2

    :cond_8
    move-object v11, v2

    .line 63
    iget-object v12, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->serial_number:Ljava/lang/String;

    .line 64
    iget-object v13, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->label:Ljava/lang/String;

    .line 65
    iget-object v14, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_sw_version:Ljava/lang/String;

    .line 66
    iget-object v15, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->base_url:Ljava/lang/String;

    .line 67
    iget-object v0, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->ip_address:Ljava/lang/String;

    .line 68
    iget-object v1, v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->livemode:Ljava/lang/Boolean;

    .line 57
    new-instance v5, Lcom/stripe/stripeterminal/external/models/Reader;

    .line 59
    move-object v7, v3

    check-cast v7, Lcom/stripe/stripeterminal/external/models/ExpandableLocation;

    const/16 v43, 0xf

    const/16 v44, 0x0

    move-object v8, v10

    const/4 v10, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, -0xff0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 57
    invoke-direct/range {v5 .. v44}, Lcom/stripe/stripeterminal/external/models/Reader;-><init>(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Lcom/stripe/stripeterminal/external/models/LocationStatus;Ljava/lang/String;ZLcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/Location;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5
.end method

.method public final fromReaderInfoSimulated(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/hardware/status/ReaderInfo;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 20

    const-string v0, "deviceType"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerInfo"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->simulatedLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v7

    const/16 v18, 0x7f5c

    const/16 v19, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 84
    invoke-static/range {v1 .. v19}, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;->withReaderInfo$default(Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/stripeterminal/external/models/DeviceType;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/LocationStatus;Lcom/stripe/stripeterminal/external/models/Location;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    return-object v0
.end method

.method public final fromUsbDeviceOrNull(Landroid/hardware/usb/UsbDevice;)Lcom/stripe/core/hardware/Reader$UsbReader;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 146
    :cond_0
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 147
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    invoke-virtual {v3, p1}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    check-cast v2, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    if-eqz v2, :cond_8

    .line 149
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 154
    new-instance v0, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;

    invoke-direct {v0, p1}, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast v0, Lcom/stripe/core/hardware/Reader$UsbReader;

    return-object v0

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 153
    :cond_4
    new-instance v0, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3Reader;

    invoke-direct {v0, p1}, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3Reader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast v0, Lcom/stripe/core/hardware/Reader$UsbReader;

    return-object v0

    .line 152
    :cond_5
    new-instance v0, Lcom/stripe/core/hardware/Reader$UsbReader$WisecubeReader;

    invoke-direct {v0, p1}, Lcom/stripe/core/hardware/Reader$UsbReader$WisecubeReader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast v0, Lcom/stripe/core/hardware/Reader$UsbReader;

    return-object v0

    .line 151
    :cond_6
    new-instance v0, Lcom/stripe/core/hardware/Reader$UsbReader$StripeM2Reader;

    invoke-direct {v0, p1}, Lcom/stripe/core/hardware/Reader$UsbReader$StripeM2Reader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast v0, Lcom/stripe/core/hardware/Reader$UsbReader;

    return-object v0

    .line 150
    :cond_7
    new-instance v0, Lcom/stripe/core/hardware/Reader$UsbReader$Chipper2xReader;

    invoke-direct {v0, p1}, Lcom/stripe/core/hardware/Reader$UsbReader$Chipper2xReader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast v0, Lcom/stripe/core/hardware/Reader$UsbReader;

    :cond_8
    return-object v0
.end method

.method public final simulatedLocation()Lcom/stripe/stripeterminal/external/models/Location;
    .locals 8

    .line 94
    new-instance v0, Lcom/stripe/stripeterminal/external/models/Location;

    const/4 v1, 0x0

    .line 97
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v6, 0x12

    const/4 v7, 0x0

    .line 94
    const-string v1, "tml_simulated"

    const/4 v2, 0x0

    const-string v3, "Simulated Location"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/stripeterminal/external/models/Location;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Address;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final toHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader;
    .locals 1

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->fromBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/stripe/core/hardware/Reader$BluetoothReader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    check-cast v0, Lcom/stripe/core/hardware/Reader;

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->fromUsbDeviceOrNull(Landroid/hardware/usb/UsbDevice;)Lcom/stripe/core/hardware/Reader$UsbReader;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 102
    check-cast p1, Lcom/stripe/core/hardware/Reader;

    return-object p1

    .line 105
    :cond_2
    sget-object p1, Lcom/stripe/core/hardware/Reader$SerialReader;->INSTANCE:Lcom/stripe/core/hardware/Reader$SerialReader;

    check-cast p1, Lcom/stripe/core/hardware/Reader;

    return-object p1
.end method
