.class public final Lcom/stripe/proto/model/config/BBPOSConfig$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "BBPOSConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/BBPOSConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/config/BBPOSConfig;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBBPOSConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BBPOSConfig.kt\ncom/stripe/proto/model/config/BBPOSConfig$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,412:1\n463#2,7:413\n1#3:420\n*S KotlinDebug\n*F\n+ 1 BBPOSConfig.kt\ncom/stripe/proto/model/config/BBPOSConfig$Companion$ADAPTER$1\n*L\n364#1:413,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/config/BBPOSConfig$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/config/BBPOSConfig;",
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
            "Lcom/stripe/proto/model/config/BBPOSConfig;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 308
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/config/armada_config.proto"

    .line 302
    const-string v3, "type.googleapis.com/com.stripe.proto.model.config.BBPOSConfig"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/BBPOSConfig;
    .locals 25

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    const-string v4, ""

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v4

    move-object v11, v10

    move-object v12, v11

    move-object v4, v9

    .line 415
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    packed-switch v13, :pswitch_data_0

    .line 376
    invoke-virtual {v0, v13}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 375
    :pswitch_0
    sget-object v9, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 374
    :pswitch_1
    sget-object v8, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 372
    :pswitch_2
    sget-object v6, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 371
    :pswitch_3
    sget-object v12, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v12, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_0

    .line 373
    :pswitch_4
    sget-object v7, Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 370
    :pswitch_5
    sget-object v11, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_0

    .line 369
    :pswitch_6
    sget-object v10, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 368
    :pswitch_7
    sget-object v5, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 367
    :pswitch_8
    sget-object v4, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 366
    :pswitch_9
    sget-object v3, Lcom/stripe/proto/model/config/PinpadImageAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v24

    .line 379
    new-instance v13, Lcom/stripe/proto/model/config/BBPOSConfig;

    .line 380
    move-object v14, v3

    check-cast v14, Lcom/stripe/proto/model/config/PinpadImageAssets;

    .line 381
    move-object v15, v4

    check-cast v15, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 382
    move-object/from16 v16, v5

    check-cast v16, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 383
    move-object/from16 v17, v10

    check-cast v17, Ljava/lang/String;

    .line 384
    move-object/from16 v18, v11

    check-cast v18, Ljava/lang/String;

    .line 385
    move-object/from16 v19, v12

    check-cast v19, Ljava/lang/String;

    .line 386
    move-object/from16 v20, v6

    check-cast v20, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    .line 387
    move-object/from16 v21, v7

    check-cast v21, Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    .line 388
    move-object/from16 v22, v8

    check-cast v22, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 389
    move-object/from16 v23, v9

    check-cast v23, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 379
    invoke-direct/range {v13 .. v24}, Lcom/stripe/proto/model/config/BBPOSConfig;-><init>(Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;)V

    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 302
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/BBPOSConfig$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/BBPOSConfig;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/BBPOSConfig;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/config/PinpadImageAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 327
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 328
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 329
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 330
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 331
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 332
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 333
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 334
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 335
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 336
    :cond_9
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/BBPOSConfig;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 302
    check-cast p2, Lcom/stripe/proto/model/config/BBPOSConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/BBPOSConfig$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/BBPOSConfig;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/BBPOSConfig;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/BBPOSConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 341
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 342
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 343
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 344
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 345
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 346
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 347
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 348
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 349
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 350
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/model/config/PinpadImageAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 302
    check-cast p2, Lcom/stripe/proto/model/config/BBPOSConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/BBPOSConfig$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/BBPOSConfig;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/config/BBPOSConfig;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Lcom/stripe/proto/model/config/BBPOSConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 312
    iget-object v1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/model/config/PinpadImageAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 313
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 314
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 315
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 316
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object p1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_9
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 302
    check-cast p1, Lcom/stripe/proto/model/config/BBPOSConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/BBPOSConfig$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/config/BBPOSConfig;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/config/BBPOSConfig;)Lcom/stripe/proto/model/config/BBPOSConfig;
    .locals 14

    const-string v1, "value"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    iget-object v1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/stripe/proto/model/config/PinpadImageAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/config/PinpadImageAssets;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 396
    :goto_0
    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 397
    :goto_1
    iget-object v4, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 398
    :goto_2
    iget-object v5, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    move-object v7, v5

    goto :goto_3

    :cond_3
    move-object v7, v2

    .line 399
    :goto_3
    iget-object v5, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    if-eqz v5, :cond_4

    sget-object v6, Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    move-object v8, v5

    goto :goto_4

    :cond_4
    move-object v8, v2

    .line 400
    :goto_4
    iget-object v5, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v5, :cond_5

    sget-object v6, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-object v9, v5

    goto :goto_5

    :cond_5
    move-object v9, v2

    .line 401
    :goto_5
    iget-object v5, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v5, :cond_6

    sget-object v2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    :cond_6
    move-object v10, v2

    .line 402
    sget-object v11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v12, 0x38

    const/4 v13, 0x0

    move-object v2, v3

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 394
    invoke-static/range {v0 .. v13}, Lcom/stripe/proto/model/config/BBPOSConfig;->copy$default(Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/BBPOSConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 302
    check-cast p1, Lcom/stripe/proto/model/config/BBPOSConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/BBPOSConfig$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/config/BBPOSConfig;)Lcom/stripe/proto/model/config/BBPOSConfig;

    move-result-object p1

    return-object p1
.end method
