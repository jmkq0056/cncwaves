.class public final Lcom/stripe/proto/model/config/FeatureConfig$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "FeatureConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/FeatureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/config/FeatureConfig;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeatureConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureConfig.kt\ncom/stripe/proto/model/config/FeatureConfig$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,349:1\n463#2,7:350\n1#3:357\n*S KotlinDebug\n*F\n+ 1 FeatureConfig.kt\ncom/stripe/proto/model/config/FeatureConfig$Companion$ADAPTER$1\n*L\n307#1:350,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/config/FeatureConfig$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/config/FeatureConfig;",
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
            "Lcom/stripe/proto/model/config/FeatureConfig;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 263
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/config/config_model.proto"

    .line 257
    const-string v3, "type.googleapis.com/com.stripe.proto.model.config.FeatureConfig"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/FeatureConfig;
    .locals 11

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 350
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 352
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    packed-switch v9, :pswitch_data_0

    .line 316
    invoke-virtual {p1, v9}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 315
    :pswitch_0
    sget-object v8, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 314
    :pswitch_1
    sget-object v7, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 313
    :pswitch_2
    sget-object v6, Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 312
    :pswitch_3
    sget-object v5, Lcom/stripe/proto/model/config/OfflineConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 311
    :pswitch_4
    sget-object v4, Lcom/stripe/proto/model/config/ApiTimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 310
    :pswitch_5
    sget-object v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 309
    :pswitch_6
    sget-object v9, Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v9

    .line 319
    new-instance v1, Lcom/stripe/proto/model/config/FeatureConfig;

    .line 321
    check-cast v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    .line 322
    check-cast v4, Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    .line 323
    check-cast v5, Lcom/stripe/proto/model/config/OfflineConfig;

    .line 324
    check-cast v6, Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    .line 325
    check-cast v7, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    .line 326
    check-cast v8, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    .line 319
    invoke-direct/range {v1 .. v9}, Lcom/stripe/proto/model/config/FeatureConfig;-><init>(Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/ApiTimeWindowConfig;Lcom/stripe/proto/model/config/OfflineConfig;Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 257
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/FeatureConfig$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/FeatureConfig;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/FeatureConfig;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/config/FeatureConfig;->device_type_specific_feature_configs:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 279
    iget-object v0, p2, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 280
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/config/ApiTimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 281
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/config/OfflineConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 282
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 283
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 284
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 285
    :cond_5
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/FeatureConfig;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 257
    check-cast p2, Lcom/stripe/proto/model/config/FeatureConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/FeatureConfig$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/FeatureConfig;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/FeatureConfig;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/FeatureConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 290
    iget-object v0, p2, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 291
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 292
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 293
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/config/OfflineConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 294
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/model/config/ApiTimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 295
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 296
    :cond_5
    sget-object v0, Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/config/FeatureConfig;->device_type_specific_feature_configs:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 257
    check-cast p2, Lcom/stripe/proto/model/config/FeatureConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/FeatureConfig$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/FeatureConfig;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/config/FeatureConfig;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Lcom/stripe/proto/model/config/FeatureConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 267
    sget-object v1, Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/config/FeatureConfig;->device_type_specific_feature_configs:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 268
    iget-object v1, p1, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/config/ApiTimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 270
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/model/config/OfflineConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 271
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 273
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object p1, p1, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_5
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 257
    check-cast p1, Lcom/stripe/proto/model/config/FeatureConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/FeatureConfig$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/config/FeatureConfig;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/config/FeatureConfig;)Lcom/stripe/proto/model/config/FeatureConfig;
    .locals 11

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object v0, p1, Lcom/stripe/proto/model/config/FeatureConfig;->device_type_specific_feature_configs:Ljava/util/List;

    sget-object v1, Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v3

    .line 333
    iget-object v0, p1, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 334
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/stripe/proto/model/config/ApiTimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 335
    :goto_1
    iget-object v0, p1, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/stripe/proto/model/config/OfflineConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/OfflineConfig;

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v1

    .line 336
    :goto_2
    iget-object v0, p1, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    move-object v7, v0

    goto :goto_3

    :cond_3
    move-object v7, v1

    .line 337
    :goto_3
    iget-object v0, p1, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    move-object v8, v0

    goto :goto_4

    :cond_4
    move-object v8, v1

    .line 338
    :goto_4
    iget-object v0, p1, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    if-eqz v0, :cond_5

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    :cond_5
    move-object v9, v1

    .line 339
    sget-object v10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v2, p1

    .line 331
    invoke-virtual/range {v2 .. v10}, Lcom/stripe/proto/model/config/FeatureConfig;->copy(Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/ApiTimeWindowConfig;Lcom/stripe/proto/model/config/OfflineConfig;Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)Lcom/stripe/proto/model/config/FeatureConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 257
    check-cast p1, Lcom/stripe/proto/model/config/FeatureConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/FeatureConfig$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/config/FeatureConfig;)Lcom/stripe/proto/model/config/FeatureConfig;

    move-result-object p1

    return-object p1
.end method
