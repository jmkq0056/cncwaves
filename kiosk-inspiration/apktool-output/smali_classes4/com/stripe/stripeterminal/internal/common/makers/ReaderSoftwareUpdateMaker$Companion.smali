.class public final Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;
.super Ljava/lang/Object;
.source "ReaderSoftwareUpdateMaker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JH\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010j\u0002`\u0013J0\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010j\u0002`\u0013Jx\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010j\u0002`\u0013H\u0002J#\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0002\u0010#J\u0018\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0018\u0010(\u001a\u00020%2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u000e\u0010)\u001a\u00020%*\u0004\u0018\u00010\u0019H\u0002J\u0018\u0010*\u001a\u00020%*\u0004\u0018\u00010\u00192\u0008\u0010+\u001a\u0004\u0018\u00010\u001cH\u0002\u00a8\u0006,"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;",
        "",
        "()V",
        "create",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "clientConfigData",
        "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;",
        "config",
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "readerInfoRepository",
        "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "targetVersion",
        "Lcom/stripe/core/hardware/updates/ReaderVersion;",
        "requiredAt",
        "Ljava/util/Date;",
        "configToUpdateTo",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "firmwareToUpdateTo",
        "keyProfileId",
        "",
        "keyProfileName",
        "settings",
        "imageRef",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
        "getNearestRequiredUpdateTimeMS",
        "",
        "(Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/Long;",
        "keyProfilesMatch",
        "",
        "bbposConfig",
        "Lcom/stripe/proto/model/config/BBPOSConfig;",
        "shouldForceKeyInjectionIfNoPinKeyProfileId",
        "isUpdateRequired",
        "shouldUpdateTo",
        "version",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;-><init>()V

    return-void
.end method

.method private final create(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/util/Date;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Ljava/util/Date;",
            "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
            "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
            "Lcom/stripe/proto/model/config/MobileClientConfig;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;"
        }
    .end annotation

    move-object/from16 v0, p10

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_0

    iget-object v2, p4, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/stripe/proto/model/common/VersionInfoPb;->client_version:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_2

    .line 232
    iget-object v3, p3, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/stripe/proto/model/common/VersionInfoPb;->client_version:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getConfigVersion()Ljava/lang/String;

    move-result-object v3

    .line 231
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p5, :cond_4

    .line 233
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getPinKeysetId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object/from16 p1, p5

    .line 231
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Creating update for "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    invoke-interface {v0, p1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    if-eqz p4, :cond_5

    .line 238
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;->FIVE_TO_FIFTEEN_MINUTES:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;

    :goto_1
    move-object v3, p1

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_7

    if-eqz p6, :cond_6

    .line 241
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;->TWO_TO_FIVE_MINUTES:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;

    goto :goto_1

    .line 243
    :cond_6
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;->ONE_TO_TWO_MINUTES:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;

    goto :goto_1

    :cond_7
    if-nez p6, :cond_9

    if-nez p7, :cond_9

    if-eqz p8, :cond_8

    goto :goto_2

    .line 249
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No updates needed for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 p1, 0x0

    return-object p1

    .line 246
    :cond_9
    :goto_2
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;->LESS_THAN_ONE_MINUTE:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;

    goto :goto_1

    .line 253
    :goto_3
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    .line 254
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 253
    invoke-direct/range {v0 .. v10}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;-><init>(JLcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/model/config/MobileClientConfig;)V

    return-object v0
.end method

.method private final getNearestRequiredUpdateTimeMS(Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/Long;
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->time_to_upgrade:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/stripe/proto/model/common/InstantPb;->millis:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 211
    iget-object p1, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->time_to_upgrade:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz p1, :cond_1

    iget-wide p1, p1, Lcom/stripe/proto/model/common/InstantPb;->millis:J

    goto :goto_1

    :cond_1
    move-wide p1, v0

    .line 209
    :goto_1
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 214
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private final isUpdateRequired(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Z
    .locals 3

    .line 273
    new-instance v0, Ljava/util/Date;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->time_to_upgrade:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v1, :cond_0

    iget-wide v1, v1, Lcom/stripe/proto/model/common/InstantPb;->millis:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_1

    .line 274
    iget-object p1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->upgrade_predicate:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb$UpgradeTimeArgument;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    sget-object v0, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb$UpgradeTimeArgument;->FORCE_IMMEDIATE:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb$UpgradeTimeArgument;

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method private final keyProfilesMatch(Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/stripeterminal/external/models/Reader;)Z
    .locals 2

    .line 278
    iget-object v0, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/Reader;->getEmvKeyProfileId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/Reader;->getMacKeyProfileId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/Reader;->getPinKeyProfileId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object p1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/Reader;->getTrackKeyProfileId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final shouldForceKeyInjectionIfNoPinKeyProfileId(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)Z
    .locals 4

    const/4 v0, 0x2

    .line 200
    new-array v0, v0, [Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPAD_3:Lcom/stripe/stripeterminal/external/models/DeviceType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISECUBE:Lcom/stripe/stripeterminal/external/models/DeviceType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p2}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object p1

    iget-boolean p1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_sdk_force_key_injection_when_unknown_keys:Z

    if-nez p1, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method private final shouldUpdateTo(Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 267
    iget-object p1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/stripe/proto/model/common/VersionInfoPb;->client_version:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 268
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "US"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public final create(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;",
            "Lcom/stripe/proto/model/config/MobileClientConfig;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p3

    move-object/from16 v2, p4

    const-string v3, "reader"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "clientConfigData"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "config"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "featureFlagsRepository"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "readerInfoRepository"

    move-object/from16 v5, p5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "logger"

    move-object/from16 v10, p6

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 96
    iget-object v6, v9, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    const/4 v7, -0x1

    const/4 v8, 0x3

    if-eqz v6, :cond_5

    .line 98
    iget-object v12, v6, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    .line 99
    iget-object v13, v6, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_3

    .line 101
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getPinKeyProfileId()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    if-eqz v13, :cond_0

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 102
    :cond_0
    sget-object v13, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker;->Companion:Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;

    invoke-direct {v13, v1, v2}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;->shouldForceKeyInjectionIfNoPinKeyProfileId(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    :cond_1
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker;->Companion:Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;

    invoke-direct {v2, v6, v1}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;->keyProfilesMatch(Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/stripeterminal/external/models/Reader;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v5}, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->isReaderMissingKey()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    :cond_2
    invoke-virtual {v3, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 108
    iget-object v2, v6, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v2

    sget-object v5, Lcom/stripe/stripeterminal/external/models/DeviceType;->CHIPPER_2X:Lcom/stripe/stripeterminal/external/models/DeviceType;

    if-ne v2, v5, :cond_4

    iget-object v2, v6, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 112
    iget-object v2, v6, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getPinKeysetId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 114
    invoke-virtual {v3, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 115
    iget-object v2, v6, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    move-object v6, v2

    move-object v5, v12

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 120
    :goto_1
    iget-object v2, v9, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 121
    :goto_2
    iget-object v12, v9, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    if-eqz v12, :cond_7

    iget-object v12, v12, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    .line 123
    :goto_3
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getConfigVersion()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v2, v13}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;->shouldUpdateTo(Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    .line 124
    :goto_4
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;->shouldUpdateTo(Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    :goto_5
    if-eqz v2, :cond_a

    .line 126
    invoke-direct {v0, v2}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;->isUpdateRequired(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Z

    move-result v14

    goto :goto_6

    :cond_a
    const/4 v14, 0x0

    :goto_6
    if-eqz v12, :cond_b

    .line 127
    invoke-direct {v0, v12}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;->isUpdateRequired(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Z

    move-result v15

    goto :goto_7

    :cond_b
    const/4 v15, 0x0

    :goto_7
    if-nez v2, :cond_c

    if-eqz v12, :cond_f

    :cond_c
    if-nez v6, :cond_f

    if-nez v14, :cond_e

    if-eqz v15, :cond_d

    goto :goto_8

    .line 139
    :cond_d
    invoke-direct {v0, v2, v12}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;->getNearestRequiredUpdateTimeMS(Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/Long;

    move-result-object v16

    if-eqz v16, :cond_f

    .line 142
    check-cast v16, Ljava/lang/Number;

    move-object/from16 p4, v12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    .line 143
    invoke-virtual {v3, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_9

    :cond_e
    :goto_8
    move-object/from16 p4, v12

    .line 137
    invoke-virtual {v3, v8, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_9

    :cond_f
    move-object/from16 p4, v12

    .line 155
    :goto_9
    iget-object v11, v9, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    .line 156
    move-object v12, v11

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x1

    if-lez v12, :cond_10

    move v12, v13

    goto :goto_a

    :cond_10
    const/4 v12, 0x0

    :goto_a
    if-eqz v2, :cond_11

    move/from16 v16, v13

    goto :goto_b

    :cond_11
    const/16 v16, 0x0

    .line 158
    :goto_b
    invoke-virtual {v4}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->getConfigHash()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 161
    sget-object v8, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->isShopifyDevice(Lcom/stripe/stripeterminal/external/models/DeviceType;)Z

    move-result v8

    if-nez v8, :cond_12

    if-eqz v12, :cond_12

    if-eqz v7, :cond_13

    if-eqz v16, :cond_12

    goto :goto_c

    :cond_12
    const/4 v11, 0x0

    .line 165
    :cond_13
    :goto_c
    iget-object v8, v9, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    if-eqz v8, :cond_14

    iget-object v8, v8, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    if-eqz v8, :cond_14

    iget-object v8, v8, Lcom/stripe/proto/model/config/PinpadImageAssets;->splash_screen:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    goto :goto_d

    :cond_14
    const/4 v8, 0x0

    :goto_d
    if-eqz v8, :cond_15

    .line 166
    iget-object v12, v8, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_id:Ljava/lang/String;

    goto :goto_e

    :cond_15
    const/4 v12, 0x0

    :goto_e
    if-nez v12, :cond_16

    const-string v12, ""

    .line 167
    :cond_16
    move-object v13, v12

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_17

    const/4 v13, 0x1

    goto :goto_f

    :cond_17
    const/4 v13, 0x0

    :goto_f
    if-eqz v2, :cond_18

    const/16 v16, 0x1

    goto :goto_10

    :cond_18
    const/16 v16, 0x0

    .line 169
    :goto_10
    invoke-virtual {v4}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->getImageId()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    invoke-static {v12, v4, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 172
    sget-object v4, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->isShopifyDevice(Lcom/stripe/stripeterminal/external/models/DeviceType;)Z

    move-result v4

    if-nez v4, :cond_19

    if-eqz v13, :cond_19

    if-eqz v0, :cond_1a

    if-eqz v16, :cond_19

    goto :goto_11

    :cond_19
    const/4 v8, 0x0

    :cond_1a
    :goto_11
    if-eqz v11, :cond_1b

    if-eqz v7, :cond_1c

    :cond_1b
    if-eqz v8, :cond_20

    if-nez v0, :cond_20

    .line 178
    :cond_1c
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_1d

    if-nez v2, :cond_20

    if-nez p4, :cond_20

    :cond_1d
    if-nez v15, :cond_1e

    const/4 v12, 0x0

    goto :goto_12

    :cond_1e
    move-object/from16 v12, p4

    :goto_12
    if-nez v14, :cond_1f

    const/16 v17, 0x0

    goto :goto_13

    :cond_1f
    move-object/from16 v17, v2

    .line 181
    :goto_13
    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    const/4 v0, -0x1

    const/4 v2, 0x3

    .line 182
    invoke-virtual {v3, v2, v0}, Ljava/util/Calendar;->add(II)V

    move-object v4, v12

    move-object/from16 v2, v17

    goto :goto_14

    :cond_20
    move-object/from16 v4, p4

    .line 187
    :goto_14
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const-string v3, "getTime(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    move-object v7, v11

    move-object v2, v0

    move-object/from16 v0, p0

    .line 186
    invoke-direct/range {v0 .. v10}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;->create(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/util/Date;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    move-result-object v1

    return-object v1
.end method

.method public final create(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/core/hardware/updates/ReaderVersion;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;"
        }
    .end annotation

    const-string v0, "reader"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetVersion"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    move-object/from16 v11, p3

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Lcom/stripe/core/hardware/updates/ReaderVersion;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    .line 39
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "toLowerCase(...)"

    const-string v5, "US"

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getConfigVersion()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_0
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v14, v0

    goto :goto_2

    :cond_2
    :goto_1
    move-object v14, v6

    :goto_2
    if-eqz v14, :cond_3

    .line 41
    new-instance v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 42
    new-instance v12, Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 43
    sget-object v13, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->BBPOS_CONFIGURATION:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const/16 v17, 0xc

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 42
    invoke-direct/range {v12 .. v18}, Lcom/stripe/proto/model/common/VersionInfoPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;Ljava/lang/String;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v24, 0xfe

    const/16 v25, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v15, v0

    move-object/from16 v16, v12

    .line 41
    invoke-direct/range {v15 .. v25}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_3
    move-object v0, v6

    .line 48
    :goto_3
    invoke-virtual {v1}, Lcom/stripe/core/hardware/updates/ReaderVersion;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    .line 49
    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_5

    :cond_4
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v8, v6

    :goto_4
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    move-object v14, v3

    goto :goto_6

    :cond_6
    :goto_5
    move-object v14, v6

    :goto_6
    if-eqz v14, :cond_7

    .line 51
    new-instance v3, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 52
    new-instance v12, Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 53
    sget-object v13, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->BBPOS_FIRMWARE:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const/16 v17, 0xc

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 52
    invoke-direct/range {v12 .. v18}, Lcom/stripe/proto/model/common/VersionInfoPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;Ljava/lang/String;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v24, 0xfe

    const/16 v25, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v15, v3

    move-object/from16 v16, v12

    .line 51
    invoke-direct/range {v15 .. v25}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    :cond_7
    move-object v3, v6

    .line 58
    :goto_7
    invoke-virtual {v1}, Lcom/stripe/core/hardware/updates/ReaderVersion;->getKeyProfileId()Ljava/lang/String;

    move-result-object v7

    .line 59
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_a

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_8

    goto :goto_9

    :cond_8
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getPinKeyProfileId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    move-object v5, v6

    :goto_8
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_a

    :cond_a
    :goto_9
    move-object v7, v6

    .line 61
    :goto_a
    invoke-virtual {v1}, Lcom/stripe/core/hardware/updates/ReaderVersion;->getKeyProfileName()Ljava/lang/String;

    move-result-object v1

    .line 62
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_b

    goto :goto_b

    :cond_b
    move-object v4, v7

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_c

    goto :goto_b

    :cond_c
    move-object v6, v1

    .line 66
    :cond_d
    :goto_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v4, 0x3

    const/4 v5, -0x1

    .line 67
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 69
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const-string v4, "getTime(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v4, v7

    move-object v7, v6

    move-object v6, v4

    move-object v4, v0

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;->create(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/util/Date;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    move-result-object v0

    return-object v0
.end method
