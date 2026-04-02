.class public final Lcom/stripe/proto/model/config/FeatureConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FeatureConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/FeatureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/FeatureConfig;",
        "Lcom/stripe/proto/model/config/FeatureConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0014\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/FeatureConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/FeatureConfig;",
        "()V",
        "app_theme_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;",
        "device_type_specific_feature_configs",
        "",
        "Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;",
        "dynamic_currency_conversion_config",
        "Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;",
        "offline_config",
        "Lcom/stripe/proto/model/config/OfflineConfig;",
        "reboot_schedule",
        "Lcom/stripe/proto/model/config/ApiTimeWindowConfig;",
        "tipping_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "wifi_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;",
        "build",
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


# instance fields
.field public app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

.field public device_type_specific_feature_configs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;",
            ">;"
        }
    .end annotation
.end field

.field public dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

.field public offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

.field public reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

.field public tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

.field public wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 181
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->device_type_specific_feature_configs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final app_theme_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;)Lcom/stripe/proto/model/config/FeatureConfig$Builder;
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->build()Lcom/stripe/proto/model/config/FeatureConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/FeatureConfig;
    .locals 9

    .line 243
    new-instance v0, Lcom/stripe/proto/model/config/FeatureConfig;

    .line 244
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->device_type_specific_feature_configs:Ljava/util/List;

    .line 245
    iget-object v2, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    .line 246
    iget-object v3, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    .line 247
    iget-object v4, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    .line 248
    iget-object v5, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    .line 249
    iget-object v6, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    .line 250
    iget-object v7, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    .line 251
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v8

    .line 243
    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/config/FeatureConfig;-><init>(Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/ApiTimeWindowConfig;Lcom/stripe/proto/model/config/OfflineConfig;Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_type_specific_feature_configs(Ljava/util/List;)Lcom/stripe/proto/model/config/FeatureConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;",
            ">;)",
            "Lcom/stripe/proto/model/config/FeatureConfig$Builder;"
        }
    .end annotation

    const-string v0, "device_type_specific_feature_configs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 206
    iput-object p1, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->device_type_specific_feature_configs:Ljava/util/List;

    return-object p0
.end method

.method public final dynamic_currency_conversion_config(Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;)Lcom/stripe/proto/model/config/FeatureConfig$Builder;
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    return-object p0
.end method

.method public final offline_config(Lcom/stripe/proto/model/config/OfflineConfig;)Lcom/stripe/proto/model/config/FeatureConfig$Builder;
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    return-object p0
.end method

.method public final reboot_schedule(Lcom/stripe/proto/model/config/ApiTimeWindowConfig;)Lcom/stripe/proto/model/config/FeatureConfig$Builder;
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    return-object p0
.end method

.method public final tipping_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;)Lcom/stripe/proto/model/config/FeatureConfig$Builder;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    return-object p0
.end method

.method public final wifi_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;)Lcom/stripe/proto/model/config/FeatureConfig$Builder;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    return-object p0
.end method
