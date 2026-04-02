.class public final Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "DownloadPosConfigResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadPosConfigResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadPosConfigResponse.kt\ncom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,393:1\n463#2,7:394\n1#3:401\n*S KotlinDebug\n*F\n+ 1 DownloadPosConfigResponse.kt\ncom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion$ADAPTER$1\n*L\n346#1:394,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/armada/DownloadPosConfigResponse$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;",
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
            "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 298
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/api/armada/armada_service.proto"

    .line 292
    const-string v3, "type.googleapis.com/com.stripe.proto.api.armada.DownloadPosConfigResponse"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;
    .locals 22

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/stripe/proto/model/common/TimeZone;->TIME_ZONE_INVALID:Lcom/stripe/proto/model/common/TimeZone;

    .line 394
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const/4 v4, 0x0

    const-string v5, ""

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v5

    move-object v4, v0

    move-object v5, v10

    .line 396
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v12

    const/4 v0, -0x1

    if-eq v12, v0, :cond_0

    packed-switch v12, :pswitch_data_0

    .line 360
    :pswitch_0
    invoke-virtual {v1, v12}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 351
    :pswitch_1
    :try_start_0
    sget-object v0, Lcom/stripe/proto/model/common/TimeZone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 353
    sget-object v13, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v12, v13, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 359
    :pswitch_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    .line 358
    :pswitch_3
    sget-object v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 357
    :pswitch_4
    sget-object v0, Lcom/stripe/proto/api/armada/ReaderMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 356
    :pswitch_5
    sget-object v0, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 355
    :pswitch_6
    sget-object v0, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 349
    :pswitch_7
    sget-object v0, Lcom/stripe/proto/model/common/DateTimePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 348
    :pswitch_8
    sget-object v0, Lcom/stripe/proto/model/config/PosConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v21

    .line 363
    new-instance v12, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    .line 364
    move-object v13, v5

    check-cast v13, Lcom/stripe/proto/model/config/PosConfig;

    .line 365
    move-object v14, v6

    check-cast v14, Lcom/stripe/proto/model/common/DateTimePb;

    .line 366
    move-object v15, v4

    check-cast v15, Lcom/stripe/proto/model/common/TimeZone;

    .line 367
    move-object/from16 v16, v7

    check-cast v16, Lcom/stripe/proto/model/common/SignedAssetPb;

    .line 368
    move-object/from16 v17, v8

    check-cast v17, Lcom/stripe/proto/model/common/SignedAssetPb;

    .line 369
    move-object/from16 v18, v9

    check-cast v18, Lcom/stripe/proto/api/armada/ReaderMetadata;

    .line 370
    move-object/from16 v19, v10

    check-cast v19, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    .line 371
    move-object/from16 v20, v11

    check-cast v20, Ljava/lang/String;

    .line 363
    invoke-direct/range {v12 .. v21}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;-><init>(Lcom/stripe/proto/model/config/PosConfig;Lcom/stripe/proto/model/common/DateTimePb;Lcom/stripe/proto/model/common/TimeZone;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Ljava/lang/String;Lokio/ByteString;)V

    return-object v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_0
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

    .line 292
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/config/PosConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 315
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/DateTimePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 316
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->TIME_ZONE_INVALID:Lcom/stripe/proto/model/common/TimeZone;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/proto/model/common/TimeZone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 317
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 318
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 319
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/api/armada/ReaderMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 320
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 321
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->checksum:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->checksum:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 322
    :cond_7
    invoke-virtual {p2}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 292
    check-cast p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 327
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->checksum:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->checksum:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 328
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 329
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/api/armada/ReaderMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 330
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 331
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 332
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->TIME_ZONE_INVALID:Lcom/stripe/proto/model/common/TimeZone;

    if-eq v0, v1, :cond_5

    sget-object v0, Lcom/stripe/proto/model/common/TimeZone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 333
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/common/DateTimePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 334
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/proto/model/config/PosConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 292
    check-cast p2, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 302
    iget-object v1, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/model/config/PosConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/common/DateTimePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 304
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    sget-object v2, Lcom/stripe/proto/model/common/TimeZone;->TIME_ZONE_INVALID:Lcom/stripe/proto/model/common/TimeZone;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 305
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/proto/api/armada/ReaderMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 308
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->checksum:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object p1, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->checksum:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_7
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 292
    check-cast p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;
    .locals 14

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    iget-object v0, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/model/config/PosConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/PosConfig;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 378
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/stripe/proto/model/common/DateTimePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/DateTimePb;

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 379
    :goto_1
    iget-object v0, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/SignedAssetPb;

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v1

    .line 380
    :goto_2
    iget-object v0, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/SignedAssetPb;

    move-object v7, v0

    goto :goto_3

    :cond_3
    move-object v7, v1

    .line 381
    :goto_3
    iget-object v0, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/stripe/proto/api/armada/ReaderMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/armada/ReaderMetadata;

    move-object v8, v0

    goto :goto_4

    :cond_4
    move-object v8, v1

    .line 382
    :goto_4
    iget-object v0, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    if-eqz v0, :cond_5

    sget-object v1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    :cond_5
    move-object v9, v1

    .line 383
    sget-object v11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v12, 0x84

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    .line 376
    invoke-static/range {v2 .. v13}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->copy$default(Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;Lcom/stripe/proto/model/config/PosConfig;Lcom/stripe/proto/model/common/DateTimePb;Lcom/stripe/proto/model/common/TimeZone;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 292
    check-cast p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    move-result-object p1

    return-object p1
.end method
