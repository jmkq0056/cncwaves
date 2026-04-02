.class public final Lcom/stripe/proto/model/config/MobileClientConfig$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "MobileClientConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/MobileClientConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMobileClientConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MobileClientConfig.kt\ncom/stripe/proto/model/config/MobileClientConfig$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,421:1\n463#2,7:422\n1#3:429\n*S KotlinDebug\n*F\n+ 1 MobileClientConfig.kt\ncom/stripe/proto/model/config/MobileClientConfig$Companion$ADAPTER$1\n*L\n371#1:422,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/config/MobileClientConfig$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
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
            "Lcom/stripe/proto/model/config/MobileClientConfig;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 315
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/config/armada_config.proto"

    .line 309
    const-string v3, "type.googleapis.com/com.stripe.proto.model.config.MobileClientConfig"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/MobileClientConfig;
    .locals 25

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    const-string v4, ""

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v4

    move-object v4, v11

    .line 424
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    packed-switch v13, :pswitch_data_0

    .line 383
    invoke-virtual {v0, v13}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 382
    :pswitch_0
    sget-object v11, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_0

    .line 381
    :pswitch_1
    sget-object v10, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 380
    :pswitch_2
    sget-object v9, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 379
    :pswitch_3
    sget-object v8, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 378
    :pswitch_4
    sget-object v7, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 377
    :pswitch_5
    sget-object v6, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 376
    :pswitch_6
    sget-object v5, Lcom/stripe/proto/model/config/BBPOSConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 375
    :pswitch_7
    sget-object v12, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v12, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_0

    .line 374
    :pswitch_8
    sget-object v4, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 373
    :pswitch_9
    sget-object v3, Lcom/stripe/proto/model/config/ClientVisualConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v24

    .line 386
    new-instance v13, Lcom/stripe/proto/model/config/MobileClientConfig;

    .line 387
    move-object v14, v3

    check-cast v14, Lcom/stripe/proto/model/config/ClientVisualConfig;

    .line 388
    move-object v15, v4

    check-cast v15, Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    .line 389
    move-object/from16 v16, v12

    check-cast v16, Ljava/lang/String;

    .line 390
    move-object/from16 v17, v5

    check-cast v17, Lcom/stripe/proto/model/config/BBPOSConfig;

    .line 391
    move-object/from16 v18, v6

    check-cast v18, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    .line 392
    move-object/from16 v19, v7

    check-cast v19, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    .line 393
    move-object/from16 v20, v8

    check-cast v20, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    .line 394
    move-object/from16 v21, v9

    check-cast v21, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    .line 395
    move-object/from16 v22, v10

    check-cast v22, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    .line 396
    move-object/from16 v23, v11

    check-cast v23, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    .line 386
    invoke-direct/range {v13 .. v24}, Lcom/stripe/proto/model/config/MobileClientConfig;-><init>(Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;)V

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

    .line 309
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/MobileClientConfig$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/MobileClientConfig;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/config/ClientVisualConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 334
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 335
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 336
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 337
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 338
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 339
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 340
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 341
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 342
    :cond_8
    sget-object v0, Lcom/stripe/proto/model/config/BBPOSConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 343
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/MobileClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 309
    check-cast p2, Lcom/stripe/proto/model/config/MobileClientConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/MobileClientConfig$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/MobileClientConfig;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/MobileClientConfig;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/MobileClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 348
    sget-object v0, Lcom/stripe/proto/model/config/BBPOSConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 349
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 350
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 351
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 352
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 353
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 354
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 355
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 356
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 357
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/stripe/proto/model/config/ClientVisualConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 309
    check-cast p2, Lcom/stripe/proto/model/config/MobileClientConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/MobileClientConfig$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/MobileClientConfig;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/config/MobileClientConfig;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lcom/stripe/proto/model/config/MobileClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 319
    iget-object v1, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/model/config/ClientVisualConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    :cond_2
    sget-object v1, Lcom/stripe/proto/model/config/BBPOSConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 323
    iget-object v1, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 325
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object p1, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_8
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 309
    check-cast p1, Lcom/stripe/proto/model/config/MobileClientConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/MobileClientConfig$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/config/MobileClientConfig;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/config/MobileClientConfig;)Lcom/stripe/proto/model/config/MobileClientConfig;
    .locals 14

    const-string v1, "value"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    iget-object v1, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/stripe/proto/model/config/ClientVisualConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/config/ClientVisualConfig;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 403
    :goto_0
    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 404
    :goto_1
    iget-object v4, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/stripe/proto/model/config/BBPOSConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/config/BBPOSConfig;

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 405
    :goto_2
    iget-object v5, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    goto :goto_3

    :cond_3
    move-object v5, v2

    .line 406
    :goto_3
    iget-object v6, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    if-eqz v6, :cond_4

    sget-object v7, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    goto :goto_4

    :cond_4
    move-object v6, v2

    .line 407
    :goto_4
    iget-object v7, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    if-eqz v7, :cond_5

    sget-object v8, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v7}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    goto :goto_5

    :cond_5
    move-object v7, v2

    .line 408
    :goto_5
    iget-object v8, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    if-eqz v8, :cond_6

    sget-object v9, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v8}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    goto :goto_6

    :cond_6
    move-object v8, v2

    .line 409
    :goto_6
    iget-object v9, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    if-eqz v9, :cond_7

    sget-object v10, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v9}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    goto :goto_7

    :cond_7
    move-object v9, v2

    .line 410
    :goto_7
    iget-object v10, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    if-eqz v10, :cond_8

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    :cond_8
    move-object v10, v2

    .line 411
    sget-object v11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v2, v3

    const/4 v3, 0x0

    move-object v0, p1

    .line 401
    invoke-static/range {v0 .. v13}, Lcom/stripe/proto/model/config/MobileClientConfig;->copy$default(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 309
    check-cast p1, Lcom/stripe/proto/model/config/MobileClientConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/MobileClientConfig$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/config/MobileClientConfig;)Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object p1

    return-object p1
.end method
