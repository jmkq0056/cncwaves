.class public final Lcom/stripe/proto/model/common/DeviceInfo$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "DeviceInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceInfo.kt\ncom/stripe/proto/model/common/DeviceInfo$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,652:1\n463#2,7:653\n1#3:660\n*S KotlinDebug\n*F\n+ 1 DeviceInfo.kt\ncom/stripe/proto/model/common/DeviceInfo$Companion$ADAPTER$1\n*L\n560#1:653,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/common/DeviceInfo$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
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
        "common_release"
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
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 484
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/common/device_model.proto"

    .line 478
    const-string v3, "type.googleapis.com/com.stripe.proto.model.common.DeviceInfo"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/common/DeviceInfo;
    .locals 37

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->INVALID:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    .line 553
    sget-object v2, Lcom/stripe/proto/model/common/InternetConnectionSource;->UNKNOWN:Lcom/stripe/proto/model/common/InternetConnectionSource;

    .line 653
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v3

    const-string v5, ""

    const/4 v6, 0x0

    move-object/from16 v19, v0

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v6

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object v5, v2

    move-object v6, v15

    .line 655
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    packed-switch v2, :pswitch_data_0

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 585
    invoke-virtual {v1, v2}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 584
    :pswitch_0
    sget-object v0, Lcom/stripe/proto/model/common/Location;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_0

    .line 583
    :pswitch_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    goto :goto_0

    .line 582
    :pswitch_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    goto :goto_0

    .line 581
    :pswitch_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    .line 580
    :pswitch_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 579
    :pswitch_5
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    .line 575
    :pswitch_6
    :try_start_0
    sget-object v0, Lcom/stripe/proto/model/common/InternetConnectionSource;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v20, v5

    .line 577
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v5, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 573
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :pswitch_8
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 569
    sget-object v0, Lcom/stripe/proto/model/common/ApplicationModel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_0

    :pswitch_9
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 572
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 571
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .line 570
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 568
    sget-object v0, Lcom/stripe/proto/model/common/HardwareModel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v20, v5

    move-object/from16 v22, v7

    .line 567
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 563
    :try_start_1
    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v19, v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 565
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v5, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    :goto_1
    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    goto/16 :goto_0

    :cond_0
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 659
    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v36

    move-object/from16 v2, v20

    .line 588
    new-instance v20, Lcom/stripe/proto/model/common/DeviceInfo;

    .line 589
    check-cast v19, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    .line 590
    move-object/from16 v6, v21

    check-cast v6, Ljava/lang/String;

    .line 591
    move-object/from16 v23, v16

    check-cast v23, Lcom/stripe/proto/model/common/HardwareModel;

    .line 592
    move-object/from16 v24, v17

    check-cast v24, Lcom/stripe/proto/model/common/ApplicationModel;

    .line 593
    move-object/from16 v25, v22

    check-cast v25, Ljava/lang/String;

    .line 594
    move-object/from16 v26, v8

    check-cast v26, Ljava/lang/String;

    .line 595
    move-object/from16 v27, v9

    check-cast v27, Ljava/lang/String;

    .line 596
    move-object/from16 v28, v10

    check-cast v28, Ljava/lang/String;

    .line 597
    move-object/from16 v29, v2

    check-cast v29, Lcom/stripe/proto/model/common/InternetConnectionSource;

    .line 598
    move-object/from16 v30, v11

    check-cast v30, Ljava/lang/String;

    .line 599
    move-object/from16 v31, v12

    check-cast v31, Ljava/lang/String;

    .line 600
    move-object/from16 v32, v13

    check-cast v32, Ljava/lang/String;

    .line 601
    move-object/from16 v33, v14

    check-cast v33, Ljava/lang/String;

    .line 602
    move-object/from16 v34, v15

    check-cast v34, Ljava/lang/String;

    .line 603
    move-object/from16 v35, v18

    check-cast v35, Lcom/stripe/proto/model/common/Location;

    move-object/from16 v22, v6

    move-object/from16 v21, v19

    .line 588
    invoke-direct/range {v20 .. v36}, Lcom/stripe/proto/model/common/DeviceInfo;-><init>(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;)V

    return-object v20

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 478
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/DeviceInfo$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/common/DeviceInfo;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->INVALID:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceInfo;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 508
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 509
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/common/HardwareModel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 510
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/common/ApplicationModel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 511
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->device_ip:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->device_ip:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 512
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->host_hw_version:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->host_hw_version:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 513
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->host_os_version:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->host_os_version:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 514
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->hostname:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->hostname:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 515
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    sget-object v2, Lcom/stripe/proto/model/common/InternetConnectionSource;->UNKNOWN:Lcom/stripe/proto/model/common/InternetConnectionSource;

    if-eq v0, v2, :cond_8

    sget-object v0, Lcom/stripe/proto/model/common/InternetConnectionSource;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 516
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_firmware:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_firmware:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 517
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_base_config:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_base_config:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 518
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_key_profile:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_key_profile:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 519
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_rom:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_rom:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 520
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->stripe_config_hash:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceInfo;->stripe_config_hash:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 521
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/stripe/proto/model/common/Location;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 522
    :cond_e
    invoke-virtual {p2}, Lcom/stripe/proto/model/common/DeviceInfo;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 478
    check-cast p2, Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/common/DeviceInfo$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/common/DeviceInfo;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/common/DeviceInfo;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Lcom/stripe/proto/model/common/DeviceInfo;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 527
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/common/Location;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 528
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->stripe_config_hash:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->stripe_config_hash:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 529
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_rom:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_rom:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 530
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_key_profile:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_key_profile:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 531
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_base_config:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_base_config:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 532
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_firmware:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_firmware:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 533
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    sget-object v2, Lcom/stripe/proto/model/common/InternetConnectionSource;->UNKNOWN:Lcom/stripe/proto/model/common/InternetConnectionSource;

    if-eq v0, v2, :cond_6

    sget-object v0, Lcom/stripe/proto/model/common/InternetConnectionSource;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 534
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->hostname:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->hostname:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 535
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->host_os_version:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->host_os_version:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 536
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->host_hw_version:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->host_hw_version:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 537
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->device_ip:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->device_ip:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 538
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/stripe/proto/model/common/ApplicationModel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 539
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/stripe/proto/model/common/HardwareModel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 540
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 541
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceInfo;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->INVALID:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    if-eq v0, v1, :cond_e

    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/common/DeviceInfo;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 478
    check-cast p2, Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/common/DeviceInfo$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/common/DeviceInfo;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/common/DeviceInfo;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p1}, Lcom/stripe/proto/model/common/DeviceInfo;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 488
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    sget-object v2, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->INVALID:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 489
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 490
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/model/common/HardwareModel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 491
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/stripe/proto/model/common/ApplicationModel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 492
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->device_ip:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/stripe/proto/model/common/DeviceInfo;->device_ip:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 493
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->host_hw_version:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/stripe/proto/model/common/DeviceInfo;->host_hw_version:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 494
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->host_os_version:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/stripe/proto/model/common/DeviceInfo;->host_os_version:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->hostname:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/stripe/proto/model/common/DeviceInfo;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 496
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    sget-object v3, Lcom/stripe/proto/model/common/InternetConnectionSource;->UNKNOWN:Lcom/stripe/proto/model/common/InternetConnectionSource;

    if-eq v1, v3, :cond_8

    sget-object v1, Lcom/stripe/proto/model/common/InternetConnectionSource;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/stripe/proto/model/common/DeviceInfo;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 497
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_firmware:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xa

    iget-object v4, p1, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_firmware:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 498
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_base_config:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_base_config:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 499
    :cond_a
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_key_profile:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_key_profile:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 500
    :cond_b
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_rom:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xd

    iget-object v4, p1, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_rom:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 501
    :cond_c
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->stripe_config_hash:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->stripe_config_hash:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 502
    :cond_d
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/stripe/proto/model/common/Location;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object p1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_e
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 478
    check-cast p1, Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/DeviceInfo$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/common/DeviceInfo;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/model/common/DeviceInfo;
    .locals 20

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    iget-object v0, v1, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/stripe/proto/model/common/HardwareModel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/HardwareModel;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 610
    :goto_0
    iget-object v0, v1, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/stripe/proto/model/common/ApplicationModel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/ApplicationModel;

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 611
    :goto_1
    iget-object v0, v1, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/stripe/proto/model/common/Location;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/proto/model/common/Location;

    :cond_2
    move-object/from16 v16, v2

    .line 612
    sget-object v17, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v18, 0x3ff3

    const/16 v19, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

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

    .line 608
    invoke-static/range {v1 .. v19}, Lcom/stripe/proto/model/common/DeviceInfo;->copy$default(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 478
    check-cast p1, Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/DeviceInfo$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object p1

    return-object p1
.end method
