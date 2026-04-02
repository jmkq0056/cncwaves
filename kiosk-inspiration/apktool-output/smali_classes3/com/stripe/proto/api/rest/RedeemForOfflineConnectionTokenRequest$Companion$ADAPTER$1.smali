.class public final Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "RedeemForOfflineConnectionTokenRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRedeemForOfflineConnectionTokenRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RedeemForOfflineConnectionTokenRequest.kt\ncom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,439:1\n463#2,7:440\n1#3:447\n*S KotlinDebug\n*F\n+ 1 RedeemForOfflineConnectionTokenRequest.kt\ncom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion$ADAPTER$1\n*L\n388#1:440,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
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
            "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 336
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/rest/mainland_requests.proto"

    .line 330
    const-string v3, "type.googleapis.com/com.stripe.proto.api.rest.RedeemForOfflineConnectionTokenRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;
    .locals 24

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const/4 v0, 0x0

    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    .line 442
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v13

    const/4 v0, -0x1

    if-eq v13, v0, :cond_0

    packed-switch v13, :pswitch_data_0

    move-object v15, v4

    move-object/from16 v16, v5

    .line 403
    invoke-virtual {v1, v13}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 399
    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/stripe/proto/api/rest/ConnectionType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 401
    sget-object v14, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object v15, v4

    move-object/from16 v16, v5

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v13, v14, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    move-object v15, v4

    move-object/from16 v16, v5

    .line 397
    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :pswitch_2
    move-object v15, v4

    move-object/from16 v16, v5

    .line 396
    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :pswitch_3
    move-object v15, v4

    move-object/from16 v16, v5

    .line 395
    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :pswitch_4
    move-object v15, v4

    move-object/from16 v16, v5

    .line 394
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :pswitch_5
    move-object v15, v4

    move-object/from16 v16, v5

    .line 393
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :pswitch_6
    move-object v15, v4

    move-object/from16 v16, v5

    .line 392
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :pswitch_7
    move-object v15, v4

    .line 391
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :pswitch_8
    move-object/from16 v16, v5

    .line 390
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_0

    :goto_1
    move-object v4, v15

    move-object/from16 v5, v16

    goto/16 :goto_0

    :cond_0
    move-object v15, v4

    move-object/from16 v16, v5

    .line 446
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v23

    .line 406
    new-instance v13, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    .line 407
    move-object v14, v15

    check-cast v14, Ljava/lang/String;

    .line 408
    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/String;

    .line 409
    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/String;

    .line 410
    move-object/from16 v17, v7

    check-cast v17, Ljava/lang/Long;

    .line 411
    move-object/from16 v18, v8

    check-cast v18, Ljava/lang/String;

    .line 412
    move-object/from16 v19, v9

    check-cast v19, Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 413
    move-object/from16 v20, v10

    check-cast v20, Lcom/stripe/proto/model/common/DeviceInfo;

    .line 414
    move-object/from16 v21, v11

    check-cast v21, Lcom/stripe/proto/model/common/DeviceInfo;

    .line 415
    move-object/from16 v22, v12

    check-cast v22, Lcom/stripe/proto/api/rest/ConnectionType;

    .line 406
    invoke-direct/range {v13 .. v23}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;)V

    return-object v13

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 330
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 354
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 355
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 356
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 357
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 358
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 359
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 360
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 361
    :cond_7
    sget-object v0, Lcom/stripe/proto/api/rest/ConnectionType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 362
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 330
    check-cast p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 367
    sget-object v0, Lcom/stripe/proto/api/rest/ConnectionType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 368
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 369
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 370
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 371
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 372
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 373
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 374
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 375
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 330
    check-cast p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 340
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 342
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 343
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 346
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 348
    :cond_7
    sget-object v1, Lcom/stripe/proto/api/rest/ConnectionType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object p1, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 330
    check-cast p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;
    .locals 13

    const-string v1, "value"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 422
    :goto_0
    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 423
    :goto_1
    iget-object v4, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 424
    :goto_2
    iget-object v5, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    goto :goto_3

    :cond_3
    move-object v5, v2

    .line 425
    :goto_3
    iget-object v6, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, v2

    .line 426
    :goto_4
    iget-object v7, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v7, :cond_5

    sget-object v8, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v7}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/proto/model/common/VersionInfoPb;

    goto :goto_5

    :cond_5
    move-object v7, v2

    .line 427
    :goto_5
    iget-object v8, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v8, :cond_6

    sget-object v9, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v8}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/proto/model/common/DeviceInfo;

    goto :goto_6

    :cond_6
    move-object v8, v2

    .line 428
    :goto_6
    iget-object v9, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v9, :cond_7

    sget-object v2, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v9}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/model/common/DeviceInfo;

    .line 429
    :cond_7
    sget-object v10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v11, 0x100

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v0, v8

    move-object v8, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v0

    move-object v0, p1

    .line 420
    invoke-static/range {v0 .. v12}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->copy$default(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 330
    check-cast p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    move-result-object p1

    return-object p1
.end method
