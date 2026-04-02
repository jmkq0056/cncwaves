.class public final Lcom/stripe/proto/model/common/ClientVersionSpecPb$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ClientVersionSpecPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/ClientVersionSpecPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClientVersionSpecPb.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClientVersionSpecPb.kt\ncom/stripe/proto/model/common/ClientVersionSpecPb$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,413:1\n463#2,7:414\n1#3:421\n*S KotlinDebug\n*F\n+ 1 ClientVersionSpecPb.kt\ncom/stripe/proto/model/common/ClientVersionSpecPb$Companion$ADAPTER$1\n*L\n331#1:414,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/common/ClientVersionSpecPb$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
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
            "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 287
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/common/device_model.proto"

    .line 281
    const-string v3, "type.googleapis.com/com.stripe.proto.model.common.ClientVersionSpecPb"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .locals 20

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;->INCREMENTAL:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    .line 414
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :goto_0
    move-object v4, v0

    .line 416
    :goto_1
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v11

    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    packed-switch v11, :pswitch_data_0

    .line 344
    :pswitch_0
    invoke-virtual {v1, v11}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 343
    :pswitch_1
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    .line 342
    :pswitch_2
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    .line 338
    :pswitch_3
    :try_start_0
    sget-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 340
    sget-object v12, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v13, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v11, v12, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 336
    :pswitch_4
    sget-object v0, Lcom/stripe/proto/model/common/UrlPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    .line 335
    :pswitch_5
    sget-object v0, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    .line 334
    :pswitch_6
    sget-object v0, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 333
    :pswitch_7
    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 420
    :cond_0
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v19

    .line 347
    new-instance v11, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 348
    move-object v12, v5

    check-cast v12, Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 349
    move-object v13, v6

    check-cast v13, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    .line 350
    move-object v14, v7

    check-cast v14, Lcom/stripe/proto/model/common/SignedAssetPb;

    .line 351
    move-object v15, v8

    check-cast v15, Lcom/stripe/proto/model/common/UrlPb;

    .line 352
    move-object/from16 v16, v4

    check-cast v16, Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    .line 353
    move-object/from16 v17, v9

    check-cast v17, Lcom/stripe/proto/model/common/DeviceAssetInfo;

    .line 354
    move-object/from16 v18, v10

    check-cast v18, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    .line 347
    invoke-direct/range {v11 .. v19}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;)V

    return-object v11

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 281
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/common/ClientVersionSpecPb;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iget-object v0, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 303
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 304
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 305
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/common/UrlPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 306
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    sget-object v1, Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;->INCREMENTAL:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 307
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 308
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 309
    :cond_6
    invoke-virtual {p2}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 281
    check-cast p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/common/ClientVersionSpecPb;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/common/ClientVersionSpecPb;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 314
    iget-object v0, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 315
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 316
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    sget-object v1, Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;->INCREMENTAL:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 317
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/common/UrlPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 318
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 319
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 320
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 281
    check-cast p2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/common/ClientVersionSpecPb;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 291
    iget-object v1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/stripe/proto/model/common/UrlPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 295
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    sget-object v2, Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;->INCREMENTAL:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    if-eq v1, v2, :cond_4

    sget-object v1, Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object p1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_6
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 281
    check-cast p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .locals 13

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    iget-object v0, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/VersionInfoPb;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 361
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 362
    :goto_1
    iget-object v0, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/stripe/proto/model/common/SignedAssetPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/SignedAssetPb;

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 363
    :goto_2
    iget-object v0, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/stripe/proto/model/common/UrlPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/UrlPb;

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v1

    .line 364
    :goto_3
    iget-object v0, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/DeviceAssetInfo;

    move-object v8, v0

    goto :goto_4

    :cond_4
    move-object v8, v1

    .line 365
    :goto_4
    iget-object v0, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    if-eqz v0, :cond_5

    sget-object v1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    :cond_5
    move-object v9, v1

    .line 366
    sget-object v10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    .line 359
    invoke-static/range {v2 .. v12}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->copy$default(Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 281
    check-cast p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object p1

    return-object p1
.end method
