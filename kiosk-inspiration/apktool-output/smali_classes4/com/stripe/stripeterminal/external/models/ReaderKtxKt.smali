.class public final Lcom/stripe/stripeterminal/external/models/ReaderKtxKt;
.super Ljava/lang/Object;
.source "ReaderKtx.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/ReaderKtxKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderKtx.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderKtx.kt\ncom/stripe/stripeterminal/external/models/ReaderKtxKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n1#2:146\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a%\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0000\u00a2\u0006\u0002\u0010\u0008\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "FIRMWARE_CONFIG_KEY",
        "",
        "createDeviceInfo",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "isDebug",
        "",
        "isDevKit",
        "(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/stripe/proto/model/common/DeviceInfo;",
        "public_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final FIRMWARE_CONFIG_KEY:Ljava/lang/String; = "firmware-config-key"


# direct methods
.method public static final createDeviceInfo(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/stripe/proto/model/common/DeviceInfo;
    .locals 43

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v5, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->READER:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    .line 23
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    const-string v23, ""

    if-nez v2, :cond_0

    move-object/from16 v6, v23

    goto :goto_0

    :cond_0
    move-object v6, v2

    .line 24
    :goto_0
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getHardwareVersion()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object/from16 v10, v23

    goto :goto_1

    :cond_1
    move-object v10, v2

    .line 25
    :goto_1
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Location;->getAddress()Lcom/stripe/stripeterminal/external/models/Address;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Address;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v8, Lcom/stripe/proto/model/common/Location;

    invoke-direct {v8, v2, v7, v4, v7}, Lcom/stripe/proto/model/common/Location;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v8

    goto :goto_2

    :cond_2
    move-object/from16 v19, v7

    .line 26
    :goto_2
    new-instance v8, Lcom/stripe/proto/model/common/ApplicationModel;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x5

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v11, v8

    invoke-direct/range {v11 .. v16}, Lcom/stripe/proto/model/common/ApplicationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move-object/from16 v9, v23

    goto :goto_3

    :cond_3
    move-object v9, v2

    .line 21
    :goto_3
    new-instance v24, Lcom/stripe/proto/model/common/DeviceInfo;

    const v21, 0xbfc4

    const/16 v22, 0x0

    move-object v2, v7

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move v3, v4

    move-object/from16 v4, v24

    invoke-direct/range {v4 .. v22}, Lcom/stripe/proto/model/common/DeviceInfo;-><init>(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v5

    sget-object v6, Lcom/stripe/stripeterminal/external/models/ReaderKtxKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/DeviceType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 119
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v6, Lcom/stripe/proto/model/common/HardwareModel;

    .line 120
    new-instance v7, Lcom/stripe/proto/model/common/UnknownHardware;

    const-string v0, "Unknown hardware"

    invoke-direct {v7, v0, v2, v3, v2}, Lcom/stripe/proto/model/common/UnknownHardware;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v16, 0x1fe

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 119
    invoke-direct/range {v6 .. v17}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_4
    move-object v2, v4

    move-object v5, v6

    goto/16 :goto_d

    .line 116
    :pswitch_1
    new-instance v7, Lcom/stripe/proto/model/common/HardwareModel;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/ReaderKtx_androidKt;->cotsHardware()Lcom/stripe/proto/model/common/COTSHardware;

    move-result-object v13

    const/16 v17, 0x1df

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v18}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v4

    move-object v5, v7

    goto/16 :goto_d

    .line 108
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/Reader;->isSimulated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    new-instance v5, Lcom/stripe/proto/model/common/HardwareModel;

    new-instance v6, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v7, Lcom/stripe/proto/model/common/VerifoneHardware;->P400:Lcom/stripe/proto/model/common/VerifoneHardware;

    const/16 v11, 0xe

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v15, 0x1ef

    const/16 v16, 0x0

    move-object v10, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v16}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v4

    goto/16 :goto_d

    .line 111
    :cond_4
    new-instance v6, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v8, Lcom/stripe/proto/model/common/VerifoneHardware;->P400:Lcom/stripe/proto/model/common/VerifoneHardware;

    const/16 v16, 0x1fd

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v6 .. v17}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    .line 45
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/Reader;->getPinKeysetId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move-object/from16 v36, v23

    goto :goto_5

    :cond_5
    move-object/from16 v36, v3

    .line 46
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/Reader;->getConfigVersion()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move-object/from16 v35, v23

    goto :goto_6

    :cond_6
    move-object/from16 v35, v3

    .line 47
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/Reader;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    move-object/from16 v34, v23

    goto :goto_7

    :cond_7
    move-object/from16 v34, v3

    .line 48
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/Reader;->getSettingsVersion()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move-object/from16 v38, v23

    goto :goto_8

    :cond_8
    move-object/from16 v38, v3

    .line 49
    :goto_8
    iget-object v5, v4, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    if-eqz v5, :cond_9

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v6, "firmware-config-key"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/stripe/proto/model/common/ApplicationModel;->copy$default(Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/ApplicationModel;

    move-result-object v7

    move-object/from16 v28, v7

    goto :goto_9

    :cond_9
    move-object/from16 v28, v2

    :goto_9
    const v41, 0xd1f7

    const/16 v42, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v24, v4

    .line 44
    invoke-static/range {v24 .. v42}, Lcom/stripe/proto/model/common/DeviceInfo;->copy$default(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v24

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v2

    sget-object v3, Lcom/stripe/stripeterminal/external/models/ReaderKtxKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/DeviceType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_1

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getHardwareModel()Lcom/stripe/proto/model/common/HardwareModel;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    goto :goto_a

    .line 93
    :pswitch_4
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S710_DEVKIT:Lcom/stripe/proto/model/common/BBPosHardware;

    goto :goto_a

    .line 84
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 85
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S710_DEVKIT:Lcom/stripe/proto/model/common/BBPosHardware;

    goto :goto_a

    .line 86
    :cond_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 87
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S710_DEBUG:Lcom/stripe/proto/model/common/BBPosHardware;

    goto :goto_a

    .line 89
    :cond_b
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S710:Lcom/stripe/proto/model/common/BBPosHardware;

    goto :goto_a

    .line 82
    :pswitch_6
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S700_DEVKIT:Lcom/stripe/proto/model/common/BBPosHardware;

    goto :goto_a

    .line 73
    :pswitch_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 74
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S700_DEVKIT:Lcom/stripe/proto/model/common/BBPosHardware;

    goto :goto_a

    .line 75
    :cond_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 76
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S700_DEBUG:Lcom/stripe/proto/model/common/BBPosHardware;

    goto :goto_a

    .line 78
    :cond_d
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S700:Lcom/stripe/proto/model/common/BBPosHardware;

    goto :goto_a

    .line 65
    :pswitch_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 66
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->SHOPIFY_ETNA_DEBUG:Lcom/stripe/proto/model/common/BBPosHardware;

    goto :goto_a

    .line 68
    :cond_e
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->SHOPIFY_ETNA:Lcom/stripe/proto/model/common/BBPosHardware;

    goto :goto_a

    .line 63
    :pswitch_9
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->WISEPOS_E_DEVKIT:Lcom/stripe/proto/model/common/BBPosHardware;

    :goto_a
    move-object v3, v0

    goto :goto_b

    .line 54
    :pswitch_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 55
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->WISEPOS_E_DEVKIT:Lcom/stripe/proto/model/common/BBPosHardware;

    goto :goto_a

    .line 56
    :cond_f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 57
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->WISEPOS_E_DEBUG:Lcom/stripe/proto/model/common/BBPosHardware;

    goto :goto_a

    .line 59
    :cond_10
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->WISEPOS_E:Lcom/stripe/proto/model/common/BBPosHardware;

    goto :goto_a

    .line 98
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/Reader;->isSimulated()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 99
    new-instance v0, Lcom/stripe/proto/model/common/HardwareModel;

    .line 100
    new-instance v1, Lcom/stripe/proto/model/common/SimulatedHardware;

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v14, 0x1ef

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, v0

    move-object v9, v1

    .line 99
    invoke-direct/range {v4 .. v15}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v4

    goto :goto_c

    .line 103
    :cond_11
    new-instance v1, Lcom/stripe/proto/model/common/HardwareModel;

    const/16 v11, 0x1f7

    const/4 v12, 0x0

    const/4 v2, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v1

    :goto_c
    move-object/from16 v2, v24

    :goto_d
    const v19, 0xfffb

    const/16 v20, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 124
    invoke-static/range {v2 .. v20}, Lcom/stripe/proto/model/common/DeviceInfo;->copy$default(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
