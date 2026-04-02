.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "EventData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventData.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1501:1\n463#2,7:1502\n1#3:1509\n*S KotlinDebug\n*F\n+ 1 EventData.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Companion$ADAPTER$1\n*L\n1405#1:1502,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "decode",
        "reader",
        "Lcom/squareup/wire/ProtoReader;",
        "encode",
        "",
        "writer",
        "Lcom/squareup/wire/ProtoWriter;",
        "value",
        "Lcom/squareup/wire/ReverseProtoWriter;",
        "encodedSize",
        "",
        "redact",
        "terminal_release"
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
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 1289
    const-string v6, "src/proto/com/stripe/terminal/clientlogger/pub/message/observability_schema/observability_schema_model.proto"

    .line 1283
    const-string v3, "type.googleapis.com/com.stripe.terminal.clientlogger.pub.message.observability_schema.EventData"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;
    .locals 56

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1502
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    .line 1504
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    move-object/from16 v29, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 1432
    invoke-virtual {v0, v3}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 1431
    :pswitch_0
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v27, v3

    goto/16 :goto_1

    .line 1430
    :pswitch_1
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    goto/16 :goto_1

    .line 1429
    :pswitch_2
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    goto/16 :goto_1

    .line 1428
    :pswitch_3
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    goto/16 :goto_1

    .line 1427
    :pswitch_4
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    goto/16 :goto_1

    .line 1426
    :pswitch_5
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    goto/16 :goto_1

    .line 1425
    :pswitch_6
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    goto/16 :goto_1

    .line 1424
    :pswitch_7
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    goto/16 :goto_1

    .line 1423
    :pswitch_8
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    goto/16 :goto_1

    .line 1422
    :pswitch_9
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    goto/16 :goto_1

    .line 1421
    :pswitch_a
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    goto/16 :goto_1

    .line 1420
    :pswitch_b
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    goto/16 :goto_1

    .line 1419
    :pswitch_c
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    goto/16 :goto_1

    .line 1418
    :pswitch_d
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    goto/16 :goto_1

    .line 1417
    :pswitch_e
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    .line 1416
    :pswitch_f
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    .line 1415
    :pswitch_10
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    .line 1414
    :pswitch_11
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    .line 1413
    :pswitch_12
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    .line 1412
    :pswitch_13
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    goto :goto_1

    .line 1411
    :pswitch_14
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    goto :goto_1

    .line 1410
    :pswitch_15
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    .line 1409
    :pswitch_16
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    goto :goto_1

    .line 1408
    :pswitch_17
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_0

    .line 1407
    :pswitch_18
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v28, v3

    :goto_1
    move-object/from16 v4, v29

    goto/16 :goto_0

    .line 1508
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v55

    move-object/from16 v3, v29

    .line 1435
    new-instance v29, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    .line 1436
    move-object/from16 v30, v28

    check-cast v30, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 1437
    move-object/from16 v31, v3

    check-cast v31, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 1438
    move-object/from16 v32, v5

    check-cast v32, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 1439
    move-object/from16 v33, v6

    check-cast v33, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 1440
    move-object/from16 v34, v7

    check-cast v34, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 1441
    move-object/from16 v35, v8

    check-cast v35, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 1442
    move-object/from16 v36, v9

    check-cast v36, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 1443
    move-object/from16 v37, v10

    check-cast v37, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 1444
    move-object/from16 v38, v11

    check-cast v38, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 1445
    move-object/from16 v39, v12

    check-cast v39, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 1446
    move-object/from16 v40, v13

    check-cast v40, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 1447
    move-object/from16 v41, v14

    check-cast v41, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 1448
    move-object/from16 v42, v15

    check-cast v42, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 1449
    move-object/from16 v43, v16

    check-cast v43, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 1450
    move-object/from16 v44, v17

    check-cast v44, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 1451
    move-object/from16 v45, v18

    check-cast v45, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 1452
    move-object/from16 v46, v19

    check-cast v46, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 1453
    move-object/from16 v47, v20

    check-cast v47, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 1454
    move-object/from16 v48, v21

    check-cast v48, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 1455
    move-object/from16 v49, v22

    check-cast v49, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 1456
    move-object/from16 v50, v23

    check-cast v50, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 1457
    move-object/from16 v51, v24

    check-cast v51, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 1458
    move-object/from16 v52, v25

    check-cast v52, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 1459
    move-object/from16 v53, v26

    check-cast v53, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 1460
    move-object/from16 v54, v27

    check-cast v54, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    .line 1435
    invoke-direct/range {v29 .. v55}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;Lokio/ByteString;)V

    return-object v29

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 1283
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1322
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1323
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1324
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1325
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1326
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1327
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1328
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1329
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1330
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1331
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1332
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1333
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1334
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1335
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1336
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1337
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1338
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1339
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1340
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1341
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1342
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1343
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x16

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1344
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x17

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1345
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1346
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1347
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1283
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 1352
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1353
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1354
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x17

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1355
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x16

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1356
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1357
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1358
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1359
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1360
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1361
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1362
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1363
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1364
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1365
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1366
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1367
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1368
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1369
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1370
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1371
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1372
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1373
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1374
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1375
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1376
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1283
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1292
    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 1293
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1294
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1295
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1296
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1297
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1298
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1299
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1300
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1301
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1302
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1303
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1304
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1305
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1306
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1307
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1308
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1309
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x11

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1310
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x12

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1311
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x13

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1312
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x14

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1313
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x15

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1314
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x16

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1315
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x17

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1316
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x18

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1317
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x19

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 1283
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;
    .locals 28

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1466
    iget-object v0, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1467
    :goto_0
    iget-object v3, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1468
    :goto_1
    iget-object v4, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 1469
    :goto_2
    iget-object v5, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 1470
    :goto_3
    iget-object v6, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    if-eqz v6, :cond_4

    sget-object v7, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    .line 1471
    :goto_4
    iget-object v7, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    if-eqz v7, :cond_5

    sget-object v8, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v7}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    .line 1472
    :goto_5
    iget-object v8, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    if-eqz v8, :cond_6

    sget-object v9, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v8}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    .line 1473
    :goto_6
    iget-object v9, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    if-eqz v9, :cond_7

    sget-object v10, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v9}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    .line 1474
    :goto_7
    iget-object v10, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    if-eqz v10, :cond_8

    sget-object v11, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    .line 1475
    :goto_8
    iget-object v11, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    if-eqz v11, :cond_9

    sget-object v12, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v12, v11}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    goto :goto_9

    :cond_9
    const/4 v11, 0x0

    .line 1476
    :goto_9
    iget-object v12, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    if-eqz v12, :cond_a

    sget-object v13, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v12}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    goto :goto_a

    :cond_a
    const/4 v12, 0x0

    .line 1477
    :goto_a
    iget-object v13, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    if-eqz v13, :cond_b

    sget-object v14, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v14, v13}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    goto :goto_b

    :cond_b
    const/4 v13, 0x0

    .line 1478
    :goto_b
    iget-object v14, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    if-eqz v14, :cond_c

    sget-object v15, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v15, v14}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    goto :goto_c

    :cond_c
    const/4 v14, 0x0

    .line 1479
    :goto_c
    iget-object v15, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    if-eqz v15, :cond_d

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    move-object v15, v2

    goto :goto_d

    :cond_d
    const/4 v15, 0x0

    .line 1480
    :goto_d
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    move-object/from16 v17, v0

    if-eqz v2, :cond_e

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    .line 1481
    :goto_e
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    move-object/from16 v18, v0

    if-eqz v2, :cond_f

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    .line 1482
    :goto_f
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    move-object/from16 v19, v0

    if-eqz v2, :cond_10

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    goto :goto_10

    :cond_10
    const/4 v0, 0x0

    .line 1483
    :goto_10
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    move-object/from16 v20, v0

    if-eqz v2, :cond_11

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    goto :goto_11

    :cond_11
    const/4 v0, 0x0

    .line 1484
    :goto_11
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    move-object/from16 v21, v0

    if-eqz v2, :cond_12

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    goto :goto_12

    :cond_12
    const/4 v0, 0x0

    .line 1485
    :goto_12
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    move-object/from16 v22, v0

    if-eqz v2, :cond_13

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    goto :goto_13

    :cond_13
    const/4 v0, 0x0

    .line 1486
    :goto_13
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    move-object/from16 v23, v0

    if-eqz v2, :cond_14

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    goto :goto_14

    :cond_14
    const/4 v0, 0x0

    .line 1487
    :goto_14
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    move-object/from16 v24, v0

    if-eqz v2, :cond_15

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    goto :goto_15

    :cond_15
    const/4 v0, 0x0

    .line 1488
    :goto_15
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    move-object/from16 v25, v0

    if-eqz v2, :cond_16

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    goto :goto_16

    :cond_16
    const/4 v0, 0x0

    .line 1489
    :goto_16
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    move-object/from16 v26, v0

    if-eqz v2, :cond_17

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    goto :goto_17

    :cond_17
    const/4 v0, 0x0

    .line 1490
    :goto_17
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    if-eqz v2, :cond_18

    move-object/from16 v27, v0

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    move-object/from16 v0, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    goto :goto_18

    :cond_18
    move-object/from16 v2, v25

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v2

    const/4 v2, 0x0

    .line 1491
    :goto_18
    sget-object v27, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v2

    move-object v2, v0

    .line 1465
    invoke-virtual/range {v1 .. v27}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;->copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1283
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    move-result-object p1

    return-object p1
.end method
