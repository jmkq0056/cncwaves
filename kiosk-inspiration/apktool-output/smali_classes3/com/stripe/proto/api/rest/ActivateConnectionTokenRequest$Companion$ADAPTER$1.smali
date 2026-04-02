.class public final Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ActivateConnectionTokenRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivateConnectionTokenRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivateConnectionTokenRequest.kt\ncom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,573:1\n463#2,7:574\n1#3:581\n*S KotlinDebug\n*F\n+ 1 ActivateConnectionTokenRequest.kt\ncom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion$ADAPTER$1\n*L\n511#1:574,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
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
        "internal_release"
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
            "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 443
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/rest/mainland_requests.proto"

    .line 437
    const-string v3, "type.googleapis.com/com.stripe.proto.api.rest.ActivateConnectionTokenRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;
    .locals 21

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    check-cast v13, Ljava/util/List;

    .line 574
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const/4 v0, 0x0

    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    .line 576
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v0, :cond_0

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 530
    invoke-virtual {v1, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 529
    :pswitch_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_0

    .line 528
    :pswitch_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_1

    .line 527
    :pswitch_3
    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    goto :goto_0

    .line 523
    :pswitch_4
    :try_start_0
    sget-object v0, Lcom/stripe/proto/api/rest/ConnectionType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v18, v5

    .line 525
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 521
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    :pswitch_6
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 520
    sget-object v0, Lcom/stripe/proto/api/rest/ReportedReaderConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :pswitch_7
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 519
    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :pswitch_8
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 518
    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 517
    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 516
    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v18, v5

    move-object/from16 v20, v7

    .line 515
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 514
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 513
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    goto/16 :goto_0

    :goto_1
    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto/16 :goto_0

    :cond_0
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 580
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    .line 533
    new-instance v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    .line 534
    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    .line 535
    move-object/from16 v3, v18

    check-cast v3, Ljava/lang/String;

    .line 536
    move-object/from16 v4, v19

    check-cast v4, Ljava/lang/String;

    .line 537
    move-object/from16 v5, v20

    check-cast v5, Lcom/stripe/proto/model/common/DeviceInfo;

    .line 538
    move-object v6, v8

    check-cast v6, Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 539
    move-object v7, v9

    check-cast v7, Lcom/stripe/proto/model/common/DeviceInfo;

    .line 540
    move-object v8, v10

    check-cast v8, Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 541
    move-object v9, v11

    check-cast v9, Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    .line 542
    move-object v10, v12

    check-cast v10, Ljava/lang/String;

    .line 543
    move-object v11, v14

    check-cast v11, Lcom/stripe/proto/api/rest/ConnectionType;

    .line 544
    move-object v12, v15

    check-cast v12, Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 546
    move-object/from16 v14, v16

    check-cast v14, Ljava/lang/Boolean;

    move-object v15, v0

    .line 533
    invoke-direct/range {v1 .. v15}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
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
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 437
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 465
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 466
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 467
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 468
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 469
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 470
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 471
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/proto/api/rest/ReportedReaderConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 472
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 473
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 474
    :cond_9
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->expand:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 475
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 476
    :cond_a
    sget-object v0, Lcom/stripe/proto/api/rest/ConnectionType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 477
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 437
    check-cast p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 482
    sget-object v0, Lcom/stripe/proto/api/rest/ConnectionType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 483
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 484
    :cond_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->expand:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 485
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 486
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 487
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/api/rest/ReportedReaderConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 488
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 489
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 490
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 491
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 492
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 493
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 494
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 437
    check-cast p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 447
    iget-object v1, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 449
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 450
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 451
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 454
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/stripe/proto/api/rest/ReportedReaderConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 455
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_8
    sget-object v1, Lcom/stripe/proto/api/rest/ConnectionType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 457
    iget-object v1, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 458
    :cond_9
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->expand:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 459
    iget-object v1, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object p1, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_a
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 437
    check-cast p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;
    .locals 18

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    iget-object v0, v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 553
    :goto_0
    iget-object v3, v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 554
    :goto_1
    iget-object v4, v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 555
    :goto_2
    iget-object v5, v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/common/DeviceInfo;

    goto :goto_3

    :cond_3
    move-object v5, v2

    .line 556
    :goto_3
    iget-object v6, v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v6, :cond_4

    sget-object v7, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/proto/model/common/VersionInfoPb;

    goto :goto_4

    :cond_4
    move-object v6, v2

    .line 557
    :goto_4
    iget-object v7, v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v7, :cond_5

    sget-object v8, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v7}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/proto/model/common/DeviceInfo;

    goto :goto_5

    :cond_5
    move-object v7, v2

    .line 558
    :goto_5
    iget-object v8, v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v8, :cond_6

    sget-object v9, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v8}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/proto/model/common/VersionInfoPb;

    goto :goto_6

    :cond_6
    move-object v8, v2

    .line 559
    :goto_6
    iget-object v9, v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    if-eqz v9, :cond_7

    sget-object v10, Lcom/stripe/proto/api/rest/ReportedReaderConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v9}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    goto :goto_7

    :cond_7
    move-object v9, v2

    .line 560
    :goto_7
    iget-object v10, v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    if-eqz v10, :cond_8

    sget-object v11, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object v10, v2

    .line 561
    :goto_8
    iget-object v11, v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v11, :cond_9

    sget-object v12, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v12, v11}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/stripe/proto/model/common/VersionInfoPb;

    move-object v12, v11

    goto :goto_9

    :cond_9
    move-object v12, v2

    .line 562
    :goto_9
    iget-object v11, v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    if-eqz v11, :cond_a

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v11}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    :cond_a
    move-object v14, v2

    .line 563
    sget-object v15, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v16, 0xa00

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v2, v0

    .line 551
    invoke-static/range {v1 .. v17}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->copy$default(Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 437
    check-cast p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    move-result-object p1

    return-object p1
.end method
