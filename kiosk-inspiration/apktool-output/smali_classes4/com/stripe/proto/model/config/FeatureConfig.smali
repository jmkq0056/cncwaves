.class public final Lcom/stripe/proto/model/config/FeatureConfig;
.super Lcom/squareup/wire/Message;
.source "FeatureConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/config/FeatureConfig$Builder;,
        Lcom/stripe/proto/model/config/FeatureConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/config/FeatureConfig;",
        "Lcom/stripe/proto/model/config/FeatureConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000  2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001f Bg\u0012\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014Jh\u0010\u0015\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0002H\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/FeatureConfig;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/config/FeatureConfig$Builder;",
        "device_type_specific_feature_configs",
        "",
        "Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;",
        "tipping_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "reboot_schedule",
        "Lcom/stripe/proto/model/config/ApiTimeWindowConfig;",
        "offline_config",
        "Lcom/stripe/proto/model/config/OfflineConfig;",
        "dynamic_currency_conversion_config",
        "Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;",
        "wifi_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;",
        "app_theme_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/ApiTimeWindowConfig;Lcom/stripe/proto/model/config/OfflineConfig;Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/config/FeatureConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/config/FeatureConfig$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiAppThemeConfig#ADAPTER"
        jsonName = "appThemeConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final device_type_specific_feature_configs:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.DeviceTypeSpecificFeatureConfig#ADAPTER"
        jsonName = "deviceTypeSpecificFeatureConfigs"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.DynamicCurrencyConversionConfig#ADAPTER"
        jsonName = "dynamicCurrencyConversionConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final offline_config:Lcom/stripe/proto/model/config/OfflineConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.OfflineConfig#ADAPTER"
        jsonName = "offlineConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.ApiTimeWindowConfig#ADAPTER"
        jsonName = "rebootSchedule"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb#ADAPTER"
        jsonName = "tippingConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig#ADAPTER"
        jsonName = "wifiConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/config/FeatureConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/config/FeatureConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/config/FeatureConfig;->Companion:Lcom/stripe/proto/model/config/FeatureConfig$Companion;

    .line 258
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 257
    const-class v1, Lcom/stripe/proto/model/config/FeatureConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 261
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 257
    new-instance v3, Lcom/stripe/proto/model/config/FeatureConfig$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/config/FeatureConfig$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/config/FeatureConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/model/config/FeatureConfig;-><init>(Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/ApiTimeWindowConfig;Lcom/stripe/proto/model/config/OfflineConfig;Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/ApiTimeWindowConfig;Lcom/stripe/proto/model/config/OfflineConfig;Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;",
            ">;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
            "Lcom/stripe/proto/model/config/ApiTimeWindowConfig;",
            "Lcom/stripe/proto/model/config/OfflineConfig;",
            "Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "device_type_specific_feature_configs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v1, Lcom/stripe/proto/model/config/FeatureConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p8}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 42
    iput-object p2, p0, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    .line 51
    iput-object p3, p0, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    .line 60
    iput-object p4, p0, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    .line 69
    iput-object p5, p0, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    .line 78
    iput-object p6, p0, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    .line 87
    iput-object p7, p0, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    .line 110
    invoke-static {v0, p1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->device_type_specific_feature_configs:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/ApiTimeWindowConfig;Lcom/stripe/proto/model/config/OfflineConfig;Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    .line 38
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p10, p9, 0x2

    const/4 v0, 0x0

    if-eqz p10, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 96
    sget-object p8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 37
    invoke-direct/range {p2 .. p10}, Lcom/stripe/proto/model/config/FeatureConfig;-><init>(Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/ApiTimeWindowConfig;Lcom/stripe/proto/model/config/OfflineConfig;Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/config/FeatureConfig;Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/ApiTimeWindowConfig;Lcom/stripe/proto/model/config/OfflineConfig;Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/FeatureConfig;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    .line 168
    iget-object p1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->device_type_specific_feature_configs:Ljava/util/List;

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    .line 169
    iget-object p2, p0, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    .line 170
    iget-object p3, p0, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    .line 171
    iget-object p4, p0, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    .line 172
    iget-object p5, p0, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    .line 173
    iget-object p6, p0, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    .line 174
    iget-object p7, p0, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 175
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/FeatureConfig;->unknownFields()Lokio/ByteString;

    move-result-object p8

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 167
    invoke-virtual/range {p2 .. p10}, Lcom/stripe/proto/model/config/FeatureConfig;->copy(Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/ApiTimeWindowConfig;Lcom/stripe/proto/model/config/OfflineConfig;Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)Lcom/stripe/proto/model/config/FeatureConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/ApiTimeWindowConfig;Lcom/stripe/proto/model/config/OfflineConfig;Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)Lcom/stripe/proto/model/config/FeatureConfig;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;",
            ">;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
            "Lcom/stripe/proto/model/config/ApiTimeWindowConfig;",
            "Lcom/stripe/proto/model/config/OfflineConfig;",
            "Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/config/FeatureConfig;"
        }
    .end annotation

    const-string v0, "device_type_specific_feature_configs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v1, Lcom/stripe/proto/model/config/FeatureConfig;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/stripe/proto/model/config/FeatureConfig;-><init>(Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/ApiTimeWindowConfig;Lcom/stripe/proto/model/config/OfflineConfig;Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 127
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/config/FeatureConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/FeatureConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/config/FeatureConfig;

    invoke-virtual {p1}, Lcom/stripe/proto/model/config/FeatureConfig;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->device_type_specific_feature_configs:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/model/config/FeatureConfig;->device_type_specific_feature_configs:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 131
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 132
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 133
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 134
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 135
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    iget-object p1, p1, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 140
    iget v0, p0, Lcom/stripe/proto/model/config/FeatureConfig;->hashCode:I

    if-nez v0, :cond_6

    .line 142
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/FeatureConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 143
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->device_type_specific_feature_configs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 144
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 145
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/ApiTimeWindowConfig;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 146
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/OfflineConfig;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 147
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 148
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 149
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    .line 150
    iput v0, p0, Lcom/stripe/proto/model/config/FeatureConfig;->hashCode:I

    :cond_6
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/FeatureConfig;->newBuilder()Lcom/stripe/proto/model/config/FeatureConfig$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/config/FeatureConfig$Builder;
    .locals 2

    .line 113
    new-instance v0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/config/FeatureConfig$Builder;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->device_type_specific_feature_configs:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->device_type_specific_feature_configs:Ljava/util/List;

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    .line 120
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    .line 121
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/FeatureConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/config/FeatureConfig$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 157
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->device_type_specific_feature_configs:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_type_specific_feature_configs="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/FeatureConfig;->device_type_specific_feature_configs:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tipping_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/FeatureConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reboot_schedule="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/FeatureConfig;->reboot_schedule:Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/FeatureConfig;->offline_config:Lcom/stripe/proto/model/config/OfflineConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dynamic_currency_conversion_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/FeatureConfig;->dynamic_currency_conversion_config:Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wifi_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/FeatureConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "app_theme_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/FeatureConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_6
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "FeatureConfig{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
