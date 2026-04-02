.class public final Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;
.super Ljava/lang/Object;
.source "DeviceInfoMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceInfoMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceInfoMapper.kt\ncom/stripe/core/bbpos/mappers/DeviceInfoMapperKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\u001a\u0016\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0002*\u0004\u0018\u00010\u0002H\u0002\u001a \u0010\u0006\u001a\u00020\u0007*\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u00a8\u0006\t"
    }
    d2 = {
        "getDeviceInfoFields",
        "",
        "",
        "deviceInfoCache",
        "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
        "nullIfEmpty",
        "toDeviceInfo",
        "Lcom/stripe/bbpos/sdk/DeviceInfo;",
        "",
        "sdk_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getDeviceInfoFields(Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "deviceInfoCache"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    .line 55
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pinKsn"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 56
    const-string v3, "batteryPercentage"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 57
    const-string v3, "terminalSettingVersion"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 58
    const-string v3, "deviceSettingVersion"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 59
    const-string v3, "bootloaderVersion"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 60
    const-string v3, "emvKeyProfileID"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 61
    const-string v3, "firmwareVersion"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 62
    const-string v3, "hardwareVersion"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 63
    const-string v3, "macKeyProfileID"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 64
    const-string v3, "pinKeyProfileID"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 65
    const-string v3, "serialNumber"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 66
    const-string v3, "trackKeyProfileID"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 67
    const-string v3, "isCharging"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 68
    const-string v3, "firmwareID"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 69
    const-string v3, "isUsbConnected"

    aput-object v3, v1, v2

    .line 54
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    invoke-interface {p0}, Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;->getCoinCellBatteryVoltage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 74
    const-string p0, "coinCellBatteryVoltage"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 78
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toDeviceInfo(Ljava/util/Map;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;)Lcom/stripe/bbpos/sdk/DeviceInfo;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
            ")",
            "Lcom/stripe/bbpos/sdk/DeviceInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "deviceInfoCache"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;->getCoinCellBatteryVoltage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 22
    const-string v2, "coinCellBatteryVoltage"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 23
    invoke-interface {v1, v2}, Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;->setCoinCellBatteryVoltage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 27
    :cond_1
    :goto_0
    const-string v1, "pinKsn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    const-string v1, "macKsn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 29
    const-string v1, "emvKsn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 30
    const-string v1, "trackKsn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 31
    const-string v1, "batteryPercentage"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    const-string v1, "terminalSettingVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 33
    const-string v1, "deviceSettingVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 34
    const-string v1, "bootloaderVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 35
    const-string v1, "emvKeyProfileID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 36
    const-string v1, "firmwareVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 37
    const-string v1, "hardwareVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 38
    const-string v1, "macKeyProfileID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 39
    const-string v1, "pinKeyProfileID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 40
    const-string v1, "serialNumber"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 41
    const-string v1, "trackKeyProfileID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 42
    const-string v1, "isCharging"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 43
    const-string v1, "firmwareID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 44
    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 45
    const-string v1, "isUsbConnected"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 26
    new-instance v3, Lcom/stripe/bbpos/sdk/DeviceInfo;

    const/high16 v24, 0x80000

    const/16 v25, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v3 .. v25}, Lcom/stripe/bbpos/sdk/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method
