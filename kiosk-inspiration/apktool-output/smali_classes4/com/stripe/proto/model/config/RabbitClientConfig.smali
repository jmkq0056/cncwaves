.class public final Lcom/stripe/proto/model/config/RabbitClientConfig;
.super Lcom/squareup/wire/Message;
.source "RabbitClientConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;,
        Lcom/stripe/proto/model/config/RabbitClientConfig$Companion;,
        Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/config/RabbitClientConfig;",
        "Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0018\u0000 G2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003FGHB\u00b3\u0002\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011\u0012\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f\u0012\u000e\u0008\u0002\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u0014\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010%\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\'\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010)\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010+\u0012\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010-\u0012\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/\u0012\n\u0008\u0002\u00100\u001a\u0004\u0018\u000101\u0012\n\u0008\u0002\u00102\u001a\u0004\u0018\u000103\u0012\u0008\u0008\u0002\u00104\u001a\u00020\u0006\u00a2\u0006\u0002\u00105J\u00b4\u0002\u0010?\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00112\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u000e\u0008\u0002\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u00142\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\'2\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010)2\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010+2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010-2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/2\n\u0008\u0002\u00100\u001a\u0004\u0018\u0001012\n\u0008\u0002\u00102\u001a\u0004\u0018\u0001032\u0008\u0008\u0002\u00104\u001a\u00020\u0006J\u0013\u0010@\u001a\u00020\u00112\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0096\u0002J\u0008\u0010C\u001a\u00020\rH\u0016J\u0008\u0010D\u001a\u00020\u0002H\u0016J\u0008\u0010E\u001a\u00020\u001dH\u0016R\u0012\u00102\u001a\u0004\u0018\u0001038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u00020\u001d8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u00020\u001f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010,\u001a\u0004\u0018\u00010-8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u00086\u00107R\u0016\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u00088\u00107R\u0012\u0010.\u001a\u0004\u0018\u00010/8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u0004\u0018\u00010)8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010*\u001a\u0004\u0018\u00010+8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u00089\u00107R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010&\u001a\u0004\u0018\u00010\'8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010$\u001a\u0004\u0018\u00010%8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008:\u00107R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u00020\u00118\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008;\u00107R\u0016\u0010\u0010\u001a\u00020\u00118\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008<\u00107R\u0012\u0010\"\u001a\u0004\u0018\u00010#8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008=\u00107R\u0016\u0010\t\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008>\u00107R\u0012\u00100\u001a\u0004\u0018\u0001018\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/RabbitClientConfig;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;",
        "ux_assets",
        "Lcom/stripe/proto/model/config/RabbitUxAssets;",
        "ux_options_assets",
        "Lokio/ByteString;",
        "client_visual_config",
        "Lcom/stripe/proto/model/config/ClientVisualConfig;",
        "ux_options_flags",
        "client_checkout_options",
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
        "heartbeat_interval_seconds",
        "",
        "payment_processor",
        "Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;",
        "return_identity_token",
        "",
        "return_cardholder_name",
        "gift_card_bin_entries",
        "",
        "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
        "uptime_reset_parameters",
        "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;",
        "reset_window",
        "Lcom/stripe/proto/model/common/IntervalPb;",
        "pinpad_image_assets",
        "Lcom/stripe/proto/model/config/PinpadImageAssets;",
        "bin_config_rule_checksum",
        "",
        "emv_processor",
        "Lcom/stripe/proto/model/payments/PaymentProcessor;",
        "card_bin_entries",
        "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;",
        "tipping_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "reboot_time_window",
        "Lcom/stripe/proto/model/config/RebootTimeWindowConfig;",
        "reboot_schedule",
        "Lcom/stripe/proto/model/config/TimeWindowConfig;",
        "magstripe_config",
        "Lcom/stripe/proto/model/config/MagstripeConfig;",
        "offline_configuration",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;",
        "forms_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;",
        "lpm_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;",
        "wifi_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;",
        "app_theme_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;",
        "unknownFields",
        "(Lcom/stripe/proto/model/config/RabbitUxAssets;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientVisualConfig;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientCheckoutOptions;ILcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;ZZLjava/util/List;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/IntervalPb;Lcom/stripe/proto/model/config/PinpadImageAssets;Ljava/lang/String;Lcom/stripe/proto/model/payments/PaymentProcessor;Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/RebootTimeWindowConfig;Lcom/stripe/proto/model/config/TimeWindowConfig;Lcom/stripe/proto/model/config/MagstripeConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)V",
        "getGift_card_bin_entries$annotations",
        "()V",
        "getHeartbeat_interval_seconds$annotations",
        "getPayment_processor$annotations",
        "getReboot_time_window$annotations",
        "getReturn_cardholder_name$annotations",
        "getReturn_identity_token$annotations",
        "getUx_options_assets$annotations",
        "getUx_options_flags$annotations",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "DeprecatedPaymentProcessor",
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
            "Lcom/stripe/proto/model/config/RabbitClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/config/RabbitClientConfig$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiAppThemeConfig#ADAPTER"
        jsonName = "appThemeConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x18
        tag = 0x1c
    .end annotation
.end field

.field public final bin_config_rule_checksum:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "binConfigRuleChecksum"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xd
        tag = 0xf
    .end annotation
.end field

.field public final card_bin_entries:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.BinTablePb$CardBinEntry#ADAPTER"
        jsonName = "cardBinEntries"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xf
        tag = 0x11
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.ClientCheckoutOptions#ADAPTER"
        jsonName = "clientCheckoutOptions"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0xb
    .end annotation
.end field

.field public final client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.ClientVisualConfig#ADAPTER"
        jsonName = "clientVisualConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0xa
    .end annotation
.end field

.field public final emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.PaymentProcessor#ADAPTER"
        jsonName = "emvProcessor"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xe
        tag = 0x10
    .end annotation
.end field

.field public final forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb#ADAPTER"
        jsonName = "formsConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x15
        tag = 0x19
    .end annotation
.end field

.field public final gift_card_bin_entries:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.BinTablePb$BinEntry#ADAPTER"
        jsonName = "giftCardBinEntries"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final heartbeat_interval_seconds:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "heartbeatIntervalSeconds"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x5
    .end annotation
.end field

.field public final lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.LpmConfigPb#ADAPTER"
        jsonName = "lpmConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x16
        tag = 0x1a
    .end annotation
.end field

.field public final magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.MagstripeConfig#ADAPTER"
        jsonName = "magstripeConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x13
        tag = 0x17
    .end annotation
.end field

.field public final offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb#ADAPTER"
        jsonName = "offlineConfiguration"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x14
        tag = 0x18
    .end annotation
.end field

.field public final payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.RabbitClientConfig$DeprecatedPaymentProcessor#ADAPTER"
        jsonName = "paymentProcessor"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x6
    .end annotation
.end field

.field public final pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.PinpadImageAssets#ADAPTER"
        jsonName = "pinpadImageAssets"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xe
    .end annotation
.end field

.field public final reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.TimeWindowConfig#ADAPTER"
        jsonName = "rebootSchedule"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x12
        tag = 0x15
    .end annotation
.end field

.field public final reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.RebootTimeWindowConfig#ADAPTER"
        jsonName = "rebootTimeWindow"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x11
        tag = 0x14
    .end annotation
.end field

.field public final reset_window:Lcom/stripe/proto/model/common/IntervalPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.IntervalPb#ADAPTER"
        jsonName = "resetWindow"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xd
    .end annotation
.end field

.field public final return_cardholder_name:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "returnCardholderName"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final return_identity_token:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "returnIdentityToken"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x7
    .end annotation
.end field

.field public final tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb#ADAPTER"
        jsonName = "tippingConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x10
        tag = 0x13
    .end annotation
.end field

.field public final uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ClientUpgradeArgumentPb#ADAPTER"
        jsonName = "uptimeResetParameters"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xc
    .end annotation
.end field

.field public final ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.RabbitUxAssets#ADAPTER"
        jsonName = "uxAssets"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final ux_options_assets:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BYTES"
        jsonName = "uxOptionsAssets"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final ux_options_flags:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BYTES"
        jsonName = "uxOptionsFlags"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x3
    .end annotation
.end field

.field public final wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig#ADAPTER"
        jsonName = "wifiConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x17
        tag = 0x1b
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/config/RabbitClientConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->Companion:Lcom/stripe/proto/model/config/RabbitClientConfig$Companion;

    .line 744
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 743
    const-class v1, Lcom/stripe/proto/model/config/RabbitClientConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 747
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 743
    new-instance v3, Lcom/stripe/proto/model/config/RabbitClientConfig$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/config/RabbitClientConfig$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/config/RabbitClientConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 29

    const v27, 0x3ffffff

    const/16 v28, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v28}, Lcom/stripe/proto/model/config/RabbitClientConfig;-><init>(Lcom/stripe/proto/model/config/RabbitUxAssets;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientVisualConfig;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientCheckoutOptions;ILcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;ZZLjava/util/List;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/IntervalPb;Lcom/stripe/proto/model/config/PinpadImageAssets;Ljava/lang/String;Lcom/stripe/proto/model/payments/PaymentProcessor;Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/RebootTimeWindowConfig;Lcom/stripe/proto/model/config/TimeWindowConfig;Lcom/stripe/proto/model/config/MagstripeConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/config/RabbitUxAssets;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientVisualConfig;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientCheckoutOptions;ILcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;ZZLjava/util/List;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/IntervalPb;Lcom/stripe/proto/model/config/PinpadImageAssets;Ljava/lang/String;Lcom/stripe/proto/model/payments/PaymentProcessor;Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/RebootTimeWindowConfig;Lcom/stripe/proto/model/config/TimeWindowConfig;Lcom/stripe/proto/model/config/MagstripeConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/config/RabbitUxAssets;",
            "Lokio/ByteString;",
            "Lcom/stripe/proto/model/config/ClientVisualConfig;",
            "Lokio/ByteString;",
            "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
            "I",
            "Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
            ">;",
            "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;",
            "Lcom/stripe/proto/model/common/IntervalPb;",
            "Lcom/stripe/proto/model/config/PinpadImageAssets;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/payments/PaymentProcessor;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;",
            ">;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
            "Lcom/stripe/proto/model/config/RebootTimeWindowConfig;",
            "Lcom/stripe/proto/model/config/TimeWindowConfig;",
            "Lcom/stripe/proto/model/config/MagstripeConfig;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p7

    move-object/from16 v1, p10

    move-object/from16 v2, p14

    move-object/from16 v3, p15

    move-object/from16 v4, p16

    move-object/from16 v5, p26

    const-string v6, "ux_options_assets"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "ux_options_flags"

    invoke-static {p4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "payment_processor"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "gift_card_bin_entries"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "bin_config_rule_checksum"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "emv_processor"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "card_bin_entries"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "unknownFields"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    sget-object v8, Lcom/stripe/proto/model/config/RabbitClientConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v8, v5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 46
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    .line 60
    iput-object p2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_assets:Lokio/ByteString;

    .line 70
    iput-object p3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    .line 84
    iput-object p4, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_flags:Lokio/ByteString;

    .line 94
    iput-object p5, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    .line 103
    iput p6, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->heartbeat_interval_seconds:I

    .line 116
    iput-object v0, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    move/from16 p1, p8

    .line 126
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_identity_token:Z

    move/from16 p1, p9

    .line 136
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_cardholder_name:Z

    move-object/from16 p1, p11

    .line 156
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    move-object/from16 p1, p12

    .line 165
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    move-object/from16 p1, p13

    .line 174
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    .line 183
    iput-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->bin_config_rule_checksum:Ljava/lang/String;

    .line 192
    iput-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    move-object/from16 p1, p17

    .line 202
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    move-object/from16 p1, p18

    .line 214
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    move-object/from16 p1, p19

    .line 227
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    move-object/from16 p1, p20

    .line 236
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    move-object/from16 p1, p21

    .line 245
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    move-object/from16 p1, p22

    .line 254
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    move-object/from16 p1, p23

    .line 263
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    move-object/from16 p1, p24

    .line 272
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    move-object/from16 p1, p25

    .line 281
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    .line 302
    invoke-static {v6, v1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->gift_card_bin_entries:Ljava/util/List;

    .line 313
    invoke-static {v7, v4}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->card_bin_entries:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/config/RabbitUxAssets;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientVisualConfig;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientCheckoutOptions;ILcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;ZZLjava/util/List;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/IntervalPb;Lcom/stripe/proto/model/config/PinpadImageAssets;Ljava/lang/String;Lcom/stripe/proto/model/payments/PaymentProcessor;Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/RebootTimeWindowConfig;Lcom/stripe/proto/model/config/TimeWindowConfig;Lcom/stripe/proto/model/config/MagstripeConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p27

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 69
    sget-object v3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 93
    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    move v7, v8

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    .line 125
    sget-object v9, Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;->UNKNOWN:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move v10, v8

    goto :goto_7

    :cond_7
    move/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v8, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    .line 146
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    .line 191
    const-string v15, ""

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    .line 200
    sget-object v2, Lcom/stripe/proto/model/payments/PaymentProcessor;->UNKNOWN_PROCESSOR:Lcom/stripe/proto/model/payments/PaymentProcessor;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    .line 201
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v16

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_18

    const/16 v25, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v25, p25

    :goto_18
    const/high16 v26, 0x2000000

    and-int v0, v0, v26

    if-eqz v0, :cond_19

    .line 290
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p27, v0

    goto :goto_19

    :cond_19
    move-object/from16 p27, p26

    :goto_19
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move/from16 p7, v7

    move/from16 p10, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    .line 45
    invoke-direct/range {p1 .. p27}, Lcom/stripe/proto/model/config/RabbitClientConfig;-><init>(Lcom/stripe/proto/model/config/RabbitUxAssets;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientVisualConfig;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientCheckoutOptions;ILcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;ZZLjava/util/List;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/IntervalPb;Lcom/stripe/proto/model/config/PinpadImageAssets;Ljava/lang/String;Lcom/stripe/proto/model/payments/PaymentProcessor;Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/RebootTimeWindowConfig;Lcom/stripe/proto/model/config/TimeWindowConfig;Lcom/stripe/proto/model/config/MagstripeConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/config/RabbitClientConfig;Lcom/stripe/proto/model/config/RabbitUxAssets;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientVisualConfig;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientCheckoutOptions;ILcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;ZZLjava/util/List;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/IntervalPb;Lcom/stripe/proto/model/config/PinpadImageAssets;Ljava/lang/String;Lcom/stripe/proto/model/payments/PaymentProcessor;Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/RebootTimeWindowConfig;Lcom/stripe/proto/model/config/TimeWindowConfig;Lcom/stripe/proto/model/config/MagstripeConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/RabbitClientConfig;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p27

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 444
    iget-object v3, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_assets:Lokio/ByteString;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 445
    iget-object v4, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 446
    iget-object v5, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_flags:Lokio/ByteString;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 447
    iget-object v6, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 448
    iget v7, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->heartbeat_interval_seconds:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 449
    iget-object v8, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 450
    iget-boolean v9, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_identity_token:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 451
    iget-boolean v10, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_cardholder_name:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 452
    iget-object v11, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->gift_card_bin_entries:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 453
    iget-object v12, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 454
    iget-object v13, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 455
    iget-object v14, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 456
    iget-object v15, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->bin_config_rule_checksum:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 457
    iget-object v2, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 458
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->card_bin_entries:Ljava/util/List;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p27, v16

    move-object/from16 p2, v1

    if-eqz v16, :cond_10

    .line 459
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p27, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_11

    .line 460
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p27, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_12

    .line 461
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p27, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_13

    .line 462
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p27, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_14

    .line 463
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p27, v16

    move-object/from16 p7, v1

    if-eqz v16, :cond_15

    .line 464
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p27, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_16

    .line 465
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p27, v16

    move-object/from16 p9, v1

    if-eqz v16, :cond_17

    .line 466
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p27, v16

    move-object/from16 p10, v1

    if-eqz v16, :cond_18

    .line 467
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, p27, v16

    if-eqz v16, :cond_19

    .line 468
    invoke-virtual {v0}, Lcom/stripe/proto/model/config/RabbitClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p27, v16

    goto :goto_19

    :cond_19
    move-object/from16 p27, p26

    :goto_19
    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p25, p10

    move-object/from16 p26, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    .line 442
    invoke-virtual/range {p1 .. p27}, Lcom/stripe/proto/model/config/RabbitClientConfig;->copy(Lcom/stripe/proto/model/config/RabbitUxAssets;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientVisualConfig;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientCheckoutOptions;ILcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;ZZLjava/util/List;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/IntervalPb;Lcom/stripe/proto/model/config/PinpadImageAssets;Ljava/lang/String;Lcom/stripe/proto/model/payments/PaymentProcessor;Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/RebootTimeWindowConfig;Lcom/stripe/proto/model/config/TimeWindowConfig;Lcom/stripe/proto/model/config/MagstripeConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)Lcom/stripe/proto/model/config/RabbitClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getGift_card_bin_entries$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "gift_card_bin_entries is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getHeartbeat_interval_seconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "heartbeat_interval_seconds is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getPayment_processor$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "payment_processor is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getReboot_time_window$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "reboot_time_window is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getReturn_cardholder_name$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "return_cardholder_name is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getReturn_identity_token$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "return_identity_token is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getUx_options_assets$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "ux_options_assets is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getUx_options_flags$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "ux_options_flags is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/config/RabbitUxAssets;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientVisualConfig;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientCheckoutOptions;ILcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;ZZLjava/util/List;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/IntervalPb;Lcom/stripe/proto/model/config/PinpadImageAssets;Ljava/lang/String;Lcom/stripe/proto/model/payments/PaymentProcessor;Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/RebootTimeWindowConfig;Lcom/stripe/proto/model/config/TimeWindowConfig;Lcom/stripe/proto/model/config/MagstripeConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)Lcom/stripe/proto/model/config/RabbitClientConfig;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/config/RabbitUxAssets;",
            "Lokio/ByteString;",
            "Lcom/stripe/proto/model/config/ClientVisualConfig;",
            "Lokio/ByteString;",
            "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
            "I",
            "Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
            ">;",
            "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;",
            "Lcom/stripe/proto/model/common/IntervalPb;",
            "Lcom/stripe/proto/model/config/PinpadImageAssets;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/payments/PaymentProcessor;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;",
            ">;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
            "Lcom/stripe/proto/model/config/RebootTimeWindowConfig;",
            "Lcom/stripe/proto/model/config/TimeWindowConfig;",
            "Lcom/stripe/proto/model/config/MagstripeConfig;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/config/RabbitClientConfig;"
        }
    .end annotation

    const-string v0, "ux_options_assets"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ux_options_flags"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment_processor"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gift_card_bin_entries"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bin_config_rule_checksum"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emv_processor"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card_bin_entries"

    move-object/from16 v2, p16

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v4, p26

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    new-instance v1, Lcom/stripe/proto/model/config/RabbitClientConfig;

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v17, v2

    move-object/from16 v27, v4

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v27}, Lcom/stripe/proto/model/config/RabbitClientConfig;-><init>(Lcom/stripe/proto/model/config/RabbitUxAssets;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientVisualConfig;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientCheckoutOptions;ILcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;ZZLjava/util/List;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/IntervalPb;Lcom/stripe/proto/model/config/PinpadImageAssets;Ljava/lang/String;Lcom/stripe/proto/model/payments/PaymentProcessor;Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/RebootTimeWindowConfig;Lcom/stripe/proto/model/config/TimeWindowConfig;Lcom/stripe/proto/model/config/MagstripeConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 348
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/RabbitClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/config/RabbitClientConfig;

    invoke-virtual {p1}, Lcom/stripe/proto/model/config/RabbitClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 350
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 351
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_assets:Lokio/ByteString;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_assets:Lokio/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 352
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 353
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_flags:Lokio/ByteString;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_flags:Lokio/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 354
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 355
    :cond_7
    iget v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->heartbeat_interval_seconds:I

    iget v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->heartbeat_interval_seconds:I

    if-eq v1, v3, :cond_8

    return v2

    .line 356
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    if-eq v1, v3, :cond_9

    return v2

    .line 357
    :cond_9
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_identity_token:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_identity_token:Z

    if-eq v1, v3, :cond_a

    return v2

    .line 358
    :cond_a
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_cardholder_name:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_cardholder_name:Z

    if-eq v1, v3, :cond_b

    return v2

    .line 359
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->gift_card_bin_entries:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->gift_card_bin_entries:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 360
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 361
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 362
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 363
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->bin_config_rule_checksum:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->bin_config_rule_checksum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 364
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    if-eq v1, v3, :cond_11

    return v2

    .line 365
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->card_bin_entries:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->card_bin_entries:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 366
    :cond_12
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 367
    :cond_13
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 368
    :cond_14
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    .line 369
    :cond_15
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    .line 370
    :cond_16
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 371
    :cond_17
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    .line 372
    :cond_18
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    .line 373
    :cond_19
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    .line 374
    :cond_1a
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    iget-object p1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    return v2

    :cond_1b
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 379
    iget v0, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->hashCode:I

    if-nez v0, :cond_f

    .line 381
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/RabbitClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 382
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/RabbitUxAssets;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 383
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_assets:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 384
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/ClientVisualConfig;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 385
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_flags:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 386
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 387
    iget v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->heartbeat_interval_seconds:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 388
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 389
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_identity_token:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 390
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_cardholder_name:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 391
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->gift_card_bin_entries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 392
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 393
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/IntervalPb;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 394
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/PinpadImageAssets;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 395
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->bin_config_rule_checksum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 396
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/PaymentProcessor;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 397
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->card_bin_entries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 398
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 399
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/RebootTimeWindowConfig;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 400
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/TimeWindowConfig;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 401
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/MagstripeConfig;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 402
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 403
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 404
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 405
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 406
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;->hashCode()I

    move-result v2

    :cond_e
    add-int/2addr v0, v2

    .line 407
    iput v0, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->hashCode:I

    :cond_f
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/RabbitClientConfig;->newBuilder()Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 2

    .line 316
    new-instance v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    .line 318
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_assets:Lokio/ByteString;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->ux_options_assets:Lokio/ByteString;

    .line 319
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    .line 320
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_flags:Lokio/ByteString;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->ux_options_flags:Lokio/ByteString;

    .line 321
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    .line 322
    iget v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->heartbeat_interval_seconds:I

    iput v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->heartbeat_interval_seconds:I

    .line 323
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    .line 324
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_identity_token:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->return_identity_token:Z

    .line 325
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_cardholder_name:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->return_cardholder_name:Z

    .line 326
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->gift_card_bin_entries:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->gift_card_bin_entries:Ljava/util/List;

    .line 327
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    .line 328
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    .line 329
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    .line 330
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->bin_config_rule_checksum:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->bin_config_rule_checksum:Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    .line 332
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->card_bin_entries:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->card_bin_entries:Ljava/util/List;

    .line 333
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    .line 334
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    .line 335
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    .line 336
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    .line 337
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    .line 338
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    .line 339
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    .line 340
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    .line 341
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    .line 342
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/RabbitClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 414
    iget-object v1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ux_assets="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ux_options_assets="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_assets:Lokio/ByteString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client_visual_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ux_options_flags="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_flags:Lokio/ByteString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client_checkout_options="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "heartbeat_interval_seconds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->heartbeat_interval_seconds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_processor="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return_identity_token="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_identity_token:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return_cardholder_name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_cardholder_name:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->gift_card_bin_entries:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gift_card_bin_entries="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->gift_card_bin_entries:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uptime_reset_parameters="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reset_window="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_5
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pinpad_image_assets="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bin_config_rule_checksum="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->bin_config_rule_checksum:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "emv_processor="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->card_bin_entries:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card_bin_entries="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->card_bin_entries:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_7
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tipping_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_8
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reboot_time_window="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_9
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reboot_schedule="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_a
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "magstripe_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_b
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_configuration="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_c
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "forms_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_d
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lpm_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_e
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wifi_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_f
    iget-object v2, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "app_theme_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_10
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "RabbitClientConfig{"

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
