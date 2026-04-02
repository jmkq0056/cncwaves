.class public final Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RabbitClientConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/RabbitClientConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/RabbitClientConfig;",
        "Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u00105\u001a\u00020\u0002H\u0016J\u0014\u0010\u0008\u001a\u00020\u00002\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0016\u0010\u0013\u001a\u00020\u00002\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\tH\u0007J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010\u001b\u001a\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u0010\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u0010\u0010\u001f\u001a\u00020\u00002\u0008\u0010\u001f\u001a\u0004\u0018\u00010 J\u0010\u0010!\u001a\u00020\u00002\u0008\u0010!\u001a\u0004\u0018\u00010\"J\u0012\u0010#\u001a\u00020\u00002\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0007J\u0010\u0010%\u001a\u00020\u00002\u0008\u0010%\u001a\u0004\u0018\u00010&J\u0010\u0010\'\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020(H\u0007J\u0010\u0010)\u001a\u00020\u00002\u0006\u0010)\u001a\u00020(H\u0007J\u0010\u0010*\u001a\u00020\u00002\u0008\u0010*\u001a\u0004\u0018\u00010+J\u0010\u0010,\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u00010-J\u0010\u0010.\u001a\u00020\u00002\u0008\u0010.\u001a\u0004\u0018\u00010/J\u0010\u00100\u001a\u00020\u00002\u0006\u00100\u001a\u000201H\u0007J\u0010\u00102\u001a\u00020\u00002\u0006\u00102\u001a\u000201H\u0007J\u0010\u00103\u001a\u00020\u00002\u0008\u00103\u001a\u0004\u0018\u000104R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00020\u001e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\'\u001a\u00020(8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010)\u001a\u00020(8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u0004\u0018\u00010+8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010,\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010.\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00100\u001a\u0002018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00102\u001a\u0002018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00103\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/RabbitClientConfig;",
        "()V",
        "app_theme_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;",
        "bin_config_rule_checksum",
        "",
        "card_bin_entries",
        "",
        "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;",
        "client_checkout_options",
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
        "client_visual_config",
        "Lcom/stripe/proto/model/config/ClientVisualConfig;",
        "emv_processor",
        "Lcom/stripe/proto/model/payments/PaymentProcessor;",
        "forms_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;",
        "gift_card_bin_entries",
        "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
        "heartbeat_interval_seconds",
        "",
        "lpm_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;",
        "magstripe_config",
        "Lcom/stripe/proto/model/config/MagstripeConfig;",
        "offline_configuration",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;",
        "payment_processor",
        "Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;",
        "pinpad_image_assets",
        "Lcom/stripe/proto/model/config/PinpadImageAssets;",
        "reboot_schedule",
        "Lcom/stripe/proto/model/config/TimeWindowConfig;",
        "reboot_time_window",
        "Lcom/stripe/proto/model/config/RebootTimeWindowConfig;",
        "reset_window",
        "Lcom/stripe/proto/model/common/IntervalPb;",
        "return_cardholder_name",
        "",
        "return_identity_token",
        "tipping_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "uptime_reset_parameters",
        "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;",
        "ux_assets",
        "Lcom/stripe/proto/model/config/RabbitUxAssets;",
        "ux_options_assets",
        "Lokio/ByteString;",
        "ux_options_flags",
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

.field public bin_config_rule_checksum:Ljava/lang/String;

.field public card_bin_entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;",
            ">;"
        }
    .end annotation
.end field

.field public client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

.field public client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

.field public emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

.field public forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

.field public gift_card_bin_entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
            ">;"
        }
    .end annotation
.end field

.field public heartbeat_interval_seconds:I

.field public lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

.field public magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

.field public offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

.field public payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

.field public pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

.field public reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

.field public reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

.field public reset_window:Lcom/stripe/proto/model/common/IntervalPb;

.field public return_cardholder_name:Z

.field public return_identity_token:Z

.field public tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

.field public uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

.field public ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

.field public ux_options_assets:Lokio/ByteString;

.field public ux_options_flags:Lokio/ByteString;

.field public wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 471
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 476
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->ux_options_assets:Lokio/ByteString;

    .line 482
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->ux_options_flags:Lokio/ByteString;

    .line 491
    sget-object v0, Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;->UNKNOWN:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    iput-object v0, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    .line 500
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->gift_card_bin_entries:Ljava/util/List;

    .line 512
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->bin_config_rule_checksum:Ljava/lang/String;

    .line 515
    sget-object v0, Lcom/stripe/proto/model/payments/PaymentProcessor;->UNKNOWN_PROCESSOR:Lcom/stripe/proto/model/payments/PaymentProcessor;

    iput-object v0, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    .line 518
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->card_bin_entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final app_theme_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    return-object p0
.end method

.method public final bin_config_rule_checksum(Ljava/lang/String;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 1

    const-string v0, "bin_config_rule_checksum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->bin_config_rule_checksum:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 471
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->build()Lcom/stripe/proto/model/config/RabbitClientConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/RabbitClientConfig;
    .locals 29

    move-object/from16 v0, p0

    .line 710
    new-instance v1, Lcom/stripe/proto/model/config/RabbitClientConfig;

    .line 711
    iget-object v2, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    .line 712
    iget-object v3, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->ux_options_assets:Lokio/ByteString;

    .line 713
    iget-object v4, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    .line 714
    iget-object v5, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->ux_options_flags:Lokio/ByteString;

    .line 715
    iget-object v6, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    .line 716
    iget v7, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->heartbeat_interval_seconds:I

    .line 717
    iget-object v8, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    .line 718
    iget-boolean v9, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->return_identity_token:Z

    .line 719
    iget-boolean v10, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->return_cardholder_name:Z

    .line 720
    iget-object v11, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->gift_card_bin_entries:Ljava/util/List;

    .line 721
    iget-object v12, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    .line 722
    iget-object v13, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    .line 723
    iget-object v14, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    .line 724
    iget-object v15, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->bin_config_rule_checksum:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 725
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    move-object/from16 v17, v1

    .line 726
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->card_bin_entries:Ljava/util/List;

    move-object/from16 v18, v1

    .line 727
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    move-object/from16 v19, v1

    .line 728
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    move-object/from16 v20, v1

    .line 729
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    move-object/from16 v21, v1

    .line 730
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    move-object/from16 v22, v1

    .line 731
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    move-object/from16 v23, v1

    .line 732
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    move-object/from16 v24, v1

    .line 733
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    move-object/from16 v25, v1

    .line 734
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    move-object/from16 v26, v1

    .line 735
    iget-object v1, v0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    .line 736
    invoke-virtual {v0}, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v27

    move-object/from16 v28, v26

    move-object/from16 v26, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v28

    .line 710
    invoke-direct/range {v1 .. v27}, Lcom/stripe/proto/model/config/RabbitClientConfig;-><init>(Lcom/stripe/proto/model/config/RabbitUxAssets;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientVisualConfig;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientCheckoutOptions;ILcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;ZZLjava/util/List;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/IntervalPb;Lcom/stripe/proto/model/config/PinpadImageAssets;Ljava/lang/String;Lcom/stripe/proto/model/payments/PaymentProcessor;Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/RebootTimeWindowConfig;Lcom/stripe/proto/model/config/TimeWindowConfig;Lcom/stripe/proto/model/config/MagstripeConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final card_bin_entries(Ljava/util/List;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;",
            ">;)",
            "Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;"
        }
    .end annotation

    const-string v0, "card_bin_entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 654
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->card_bin_entries:Ljava/util/List;

    return-object p0
.end method

.method public final client_checkout_options(Lcom/stripe/proto/model/config/ClientCheckoutOptions;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    return-object p0
.end method

.method public final client_visual_config(Lcom/stripe/proto/model/config/ClientVisualConfig;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    return-object p0
.end method

.method public final emv_processor(Lcom/stripe/proto/model/payments/PaymentProcessor;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 1

    const-string v0, "emv_processor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    return-object p0
.end method

.method public final forms_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    return-object p0
.end method

.method public final gift_card_bin_entries(Ljava/util/List;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
            ">;)",
            "Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "gift_card_bin_entries is deprecated"
    .end annotation

    const-string v0, "gift_card_bin_entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 614
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->gift_card_bin_entries:Ljava/util/List;

    return-object p0
.end method

.method public final heartbeat_interval_seconds(I)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "heartbeat_interval_seconds is deprecated"
    .end annotation

    .line 586
    iput p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->heartbeat_interval_seconds:I

    return-object p0
.end method

.method public final lpm_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    return-object p0
.end method

.method public final magstripe_config(Lcom/stripe/proto/model/config/MagstripeConfig;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    return-object p0
.end method

.method public final offline_configuration(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    return-object p0
.end method

.method public final payment_processor(Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "payment_processor is deprecated"
    .end annotation

    const-string v0, "payment_processor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    return-object p0
.end method

.method public final pinpad_image_assets(Lcom/stripe/proto/model/config/PinpadImageAssets;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    return-object p0
.end method

.method public final reboot_schedule(Lcom/stripe/proto/model/config/TimeWindowConfig;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    return-object p0
.end method

.method public final reboot_time_window(Lcom/stripe/proto/model/config/RebootTimeWindowConfig;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "reboot_time_window is deprecated"
    .end annotation

    .line 668
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    return-object p0
.end method

.method public final reset_window(Lcom/stripe/proto/model/common/IntervalPb;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    return-object p0
.end method

.method public final return_cardholder_name(Z)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "return_cardholder_name is deprecated"
    .end annotation

    .line 607
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->return_cardholder_name:Z

    return-object p0
.end method

.method public final return_identity_token(Z)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "return_identity_token is deprecated"
    .end annotation

    .line 601
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->return_identity_token:Z

    return-object p0
.end method

.method public final tipping_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    return-object p0
.end method

.method public final uptime_reset_parameters(Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    return-object p0
.end method

.method public final ux_assets(Lcom/stripe/proto/model/config/RabbitUxAssets;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    return-object p0
.end method

.method public final ux_options_assets(Lokio/ByteString;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "ux_options_assets is deprecated"
    .end annotation

    const-string v0, "ux_options_assets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->ux_options_assets:Lokio/ByteString;

    return-object p0
.end method

.method public final ux_options_flags(Lokio/ByteString;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "ux_options_flags is deprecated"
    .end annotation

    const-string v0, "ux_options_flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->ux_options_flags:Lokio/ByteString;

    return-object p0
.end method

.method public final wifi_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;)Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    return-object p0
.end method
