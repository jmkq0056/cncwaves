.class public final Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "DeviceAssetVersionMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceAssetVersionMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceAssetVersionMetadata.kt\ncom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,445:1\n463#2,7:446\n1#3:453\n*S KotlinDebug\n*F\n+ 1 DeviceAssetVersionMetadata.kt\ncom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion$ADAPTER$1\n*L\n399#1:446,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;",
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
            "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 347
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/common/device_model.proto"

    .line 341
    const-string v3, "type.googleapis.com/com.stripe.proto.model.common.DeviceAssetVersionMetadata"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;
    .locals 23

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const-string v3, ""

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v4, v3

    .line 448
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    packed-switch v12, :pswitch_data_0

    .line 410
    invoke-virtual {v0, v12}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 409
    :pswitch_0
    sget-object v11, Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_0

    .line 408
    :pswitch_1
    sget-object v10, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 407
    :pswitch_2
    sget-object v9, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 406
    :pswitch_3
    sget-object v8, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 402
    :pswitch_4
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 405
    :pswitch_5
    sget-object v7, Lcom/stripe/proto/model/common/FirmwareMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 404
    :pswitch_6
    sget-object v6, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 403
    :pswitch_7
    sget-object v5, Lcom/stripe/proto/model/common/AndroidPackageMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 401
    :pswitch_8
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v22

    .line 413
    new-instance v12, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    .line 414
    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    .line 415
    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    .line 416
    move-object v15, v5

    check-cast v15, Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    .line 417
    move-object/from16 v16, v6

    check-cast v16, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    .line 418
    move-object/from16 v17, v7

    check-cast v17, Lcom/stripe/proto/model/common/FirmwareMetadata;

    .line 419
    move-object/from16 v18, v8

    check-cast v18, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    .line 420
    move-object/from16 v19, v9

    check-cast v19, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    .line 421
    move-object/from16 v20, v10

    check-cast v20, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    .line 422
    move-object/from16 v21, v11

    check-cast v21, Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    .line 413
    invoke-direct/range {v12 .. v22}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lcom/stripe/proto/model/common/FirmwareMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;Lokio/ByteString;)V

    return-object v12

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

    .line 341
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->md5_checksum:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->md5_checksum:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 365
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->sha256_checksum:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->sha256_checksum:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 366
    :cond_1
    sget-object v0, Lcom/stripe/proto/model/common/AndroidPackageMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 367
    sget-object v0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 368
    sget-object v0, Lcom/stripe/proto/model/common/FirmwareMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 369
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 370
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 371
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 372
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 373
    invoke-virtual {p2}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 341
    check-cast p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 378
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 379
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 380
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 381
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 382
    sget-object v0, Lcom/stripe/proto/model/common/FirmwareMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 383
    sget-object v0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 384
    sget-object v0, Lcom/stripe/proto/model/common/AndroidPackageMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 385
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->sha256_checksum:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->sha256_checksum:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 386
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->md5_checksum:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->md5_checksum:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 341
    check-cast p2, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 351
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->md5_checksum:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->md5_checksum:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->sha256_checksum:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->sha256_checksum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_1
    sget-object v1, Lcom/stripe/proto/model/common/AndroidPackageMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 354
    sget-object v1, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    sget-object v1, Lcom/stripe/proto/model/common/FirmwareMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 357
    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object p1, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 341
    check-cast p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;
    .locals 13

    const-string v1, "value"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/stripe/proto/model/common/AndroidPackageMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 429
    :goto_0
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    if-eqz v1, :cond_1

    sget-object v4, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 430
    :goto_1
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    if-eqz v1, :cond_2

    sget-object v5, Lcom/stripe/proto/model/common/FirmwareMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/common/FirmwareMetadata;

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, v2

    .line 431
    :goto_2
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    if-eqz v1, :cond_3

    sget-object v6, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object v6, v2

    .line 432
    :goto_3
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    if-eqz v1, :cond_4

    sget-object v7, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    move-object v7, v1

    goto :goto_4

    :cond_4
    move-object v7, v2

    .line 433
    :goto_4
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    if-eqz v1, :cond_5

    sget-object v8, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    move-object v8, v1

    goto :goto_5

    :cond_5
    move-object v8, v2

    .line 434
    :goto_5
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    if-eqz v1, :cond_6

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    :cond_6
    move-object v9, v2

    .line 435
    sget-object v10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    .line 427
    invoke-static/range {v0 .. v12}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->copy$default(Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lcom/stripe/proto/model/common/FirmwareMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 341
    check-cast p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    move-result-object p1

    return-object p1
.end method
