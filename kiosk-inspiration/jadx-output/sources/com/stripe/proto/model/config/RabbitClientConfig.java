package com.stripe.proto.model.config;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.common.ClientUpgradeArgumentPb;
import com.stripe.proto.model.common.IntervalPb;
import com.stripe.proto.model.config.RabbitClientConfig;
import com.stripe.proto.model.payments.BinTablePb;
import com.stripe.proto.model.payments.PaymentProcessor;
import com.stripe.proto.terminal.terminal.pub.message.config.ApiAppThemeConfig;
import com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig;
import com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.LpmConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: RabbitClientConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\u0007\u0018\u0000 G2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003FGHB³\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u0012\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001d\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u001f\u0012\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u0014\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u000101\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u000103\u0012\b\b\u0002\u00104\u001a\u00020\u0006¢\u0006\u0002\u00105J´\u0002\u0010?\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00112\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u00142\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/2\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u00020\u0006J\u0013\u0010@\u001a\u00020\u00112\b\u0010A\u001a\u0004\u0018\u00010BH\u0096\u0002J\b\u0010C\u001a\u00020\rH\u0016J\b\u0010D\u001a\u00020\u0002H\u0016J\b\u0010E\u001a\u00020\u001dH\u0016R\u0012\u00102\u001a\u0004\u0018\u0001038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u00020\u001d8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u00020\u001f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010,\u001a\u0004\u0018\u00010-8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b6\u00107R\u0016\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b8\u00107R\u0012\u0010.\u001a\u0004\u0018\u00010/8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u0004\u0018\u00010)8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010*\u001a\u0004\u0018\u00010+8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b9\u00107R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010&\u001a\u0004\u0018\u00010'8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010$\u001a\u0004\u0018\u00010%8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b:\u00107R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b;\u00107R\u0016\u0010\u0010\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b<\u00107R\u0012\u0010\"\u001a\u0004\u0018\u00010#8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b=\u00107R\u0016\u0010\t\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b>\u00107R\u0012\u00100\u001a\u0004\u0018\u0001018\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006I"}, d2 = {"Lcom/stripe/proto/model/config/RabbitClientConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;", "ux_assets", "Lcom/stripe/proto/model/config/RabbitUxAssets;", "ux_options_assets", "Lokio/ByteString;", "client_visual_config", "Lcom/stripe/proto/model/config/ClientVisualConfig;", "ux_options_flags", "client_checkout_options", "Lcom/stripe/proto/model/config/ClientCheckoutOptions;", "heartbeat_interval_seconds", "", "payment_processor", "Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;", "return_identity_token", "", "return_cardholder_name", "gift_card_bin_entries", "", "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;", "uptime_reset_parameters", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;", "reset_window", "Lcom/stripe/proto/model/common/IntervalPb;", "pinpad_image_assets", "Lcom/stripe/proto/model/config/PinpadImageAssets;", "bin_config_rule_checksum", "", "emv_processor", "Lcom/stripe/proto/model/payments/PaymentProcessor;", "card_bin_entries", "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;", "tipping_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "reboot_time_window", "Lcom/stripe/proto/model/config/RebootTimeWindowConfig;", "reboot_schedule", "Lcom/stripe/proto/model/config/TimeWindowConfig;", "magstripe_config", "Lcom/stripe/proto/model/config/MagstripeConfig;", "offline_configuration", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "forms_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;", "lpm_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;", "wifi_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;", "app_theme_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;", "unknownFields", "(Lcom/stripe/proto/model/config/RabbitUxAssets;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientVisualConfig;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientCheckoutOptions;ILcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;ZZLjava/util/List;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/IntervalPb;Lcom/stripe/proto/model/config/PinpadImageAssets;Ljava/lang/String;Lcom/stripe/proto/model/payments/PaymentProcessor;Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/RebootTimeWindowConfig;Lcom/stripe/proto/model/config/TimeWindowConfig;Lcom/stripe/proto/model/config/MagstripeConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)V", "getGift_card_bin_entries$annotations", "()V", "getHeartbeat_interval_seconds$annotations", "getPayment_processor$annotations", "getReboot_time_window$annotations", "getReturn_cardholder_name$annotations", "getReturn_identity_token$annotations", "getUx_options_assets$annotations", "getUx_options_flags$annotations", "copy", "equals", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "DeprecatedPaymentProcessor", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RabbitClientConfig extends Message<RabbitClientConfig, Builder> {
    public static final ProtoAdapter<RabbitClientConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiAppThemeConfig#ADAPTER", jsonName = "appThemeConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 24, tag = 28)
    public final ApiAppThemeConfig app_theme_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "binConfigRuleChecksum", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 15)
    public final String bin_config_rule_checksum;

    @WireField(adapter = "com.stripe.proto.model.payments.BinTablePb$CardBinEntry#ADAPTER", jsonName = "cardBinEntries", label = WireField.Label.REPEATED, schemaIndex = 15, tag = 17)
    public final List<BinTablePb.CardBinEntry> card_bin_entries;

    @WireField(adapter = "com.stripe.proto.model.config.ClientCheckoutOptions#ADAPTER", jsonName = "clientCheckoutOptions", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 11)
    public final ClientCheckoutOptions client_checkout_options;

    @WireField(adapter = "com.stripe.proto.model.config.ClientVisualConfig#ADAPTER", jsonName = "clientVisualConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 10)
    public final ClientVisualConfig client_visual_config;

    @WireField(adapter = "com.stripe.proto.model.payments.PaymentProcessor#ADAPTER", jsonName = "emvProcessor", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 16)
    public final PaymentProcessor emv_processor;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb#ADAPTER", jsonName = "formsConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 21, tag = 25)
    public final FormsConfigPb forms_config;

    @WireField(adapter = "com.stripe.proto.model.payments.BinTablePb$BinEntry#ADAPTER", jsonName = "giftCardBinEntries", label = WireField.Label.REPEATED, schemaIndex = 9, tag = 8)
    public final List<BinTablePb.BinEntry> gift_card_bin_entries;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "heartbeatIntervalSeconds", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 5)
    public final int heartbeat_interval_seconds;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.LpmConfigPb#ADAPTER", jsonName = "lpmConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 22, tag = 26)
    public final LpmConfigPb lpm_config;

    @WireField(adapter = "com.stripe.proto.model.config.MagstripeConfig#ADAPTER", jsonName = "magstripeConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 19, tag = 23)
    public final MagstripeConfig magstripe_config;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb#ADAPTER", jsonName = "offlineConfiguration", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 20, tag = 24)
    public final OfflineConfigPb offline_configuration;

    @WireField(adapter = "com.stripe.proto.model.config.RabbitClientConfig$DeprecatedPaymentProcessor#ADAPTER", jsonName = "paymentProcessor", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 6)
    public final DeprecatedPaymentProcessor payment_processor;

    @WireField(adapter = "com.stripe.proto.model.config.PinpadImageAssets#ADAPTER", jsonName = "pinpadImageAssets", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 14)
    public final PinpadImageAssets pinpad_image_assets;

    @WireField(adapter = "com.stripe.proto.model.config.TimeWindowConfig#ADAPTER", jsonName = "rebootSchedule", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 18, tag = 21)
    public final TimeWindowConfig reboot_schedule;

    @WireField(adapter = "com.stripe.proto.model.config.RebootTimeWindowConfig#ADAPTER", jsonName = "rebootTimeWindow", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 17, tag = 20)
    public final RebootTimeWindowConfig reboot_time_window;

    @WireField(adapter = "com.stripe.proto.model.common.IntervalPb#ADAPTER", jsonName = "resetWindow", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 13)
    public final IntervalPb reset_window;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "returnCardholderName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final boolean return_cardholder_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "returnIdentityToken", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 7)
    public final boolean return_identity_token;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb#ADAPTER", jsonName = "tippingConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 16, tag = 19)
    public final TippingConfigPb tipping_config;

    @WireField(adapter = "com.stripe.proto.model.common.ClientUpgradeArgumentPb#ADAPTER", jsonName = "uptimeResetParameters", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 12)
    public final ClientUpgradeArgumentPb uptime_reset_parameters;

    @WireField(adapter = "com.stripe.proto.model.config.RabbitUxAssets#ADAPTER", jsonName = "uxAssets", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final RabbitUxAssets ux_assets;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", jsonName = "uxOptionsAssets", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ByteString ux_options_assets;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", jsonName = "uxOptionsFlags", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 3)
    public final ByteString ux_options_flags;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig#ADAPTER", jsonName = "wifiConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 23, tag = 27)
    public final ApiWifiConfig wifi_config;

    public RabbitClientConfig() {
        this(null, null, null, null, null, 0, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 67108863, null);
    }

    @Deprecated(message = "gift_card_bin_entries is deprecated")
    public static /* synthetic */ void getGift_card_bin_entries$annotations() {
    }

    @Deprecated(message = "heartbeat_interval_seconds is deprecated")
    public static /* synthetic */ void getHeartbeat_interval_seconds$annotations() {
    }

    @Deprecated(message = "payment_processor is deprecated")
    public static /* synthetic */ void getPayment_processor$annotations() {
    }

    @Deprecated(message = "reboot_time_window is deprecated")
    public static /* synthetic */ void getReboot_time_window$annotations() {
    }

    @Deprecated(message = "return_cardholder_name is deprecated")
    public static /* synthetic */ void getReturn_cardholder_name$annotations() {
    }

    @Deprecated(message = "return_identity_token is deprecated")
    public static /* synthetic */ void getReturn_identity_token$annotations() {
    }

    @Deprecated(message = "ux_options_assets is deprecated")
    public static /* synthetic */ void getUx_options_assets$annotations() {
    }

    @Deprecated(message = "ux_options_flags is deprecated")
    public static /* synthetic */ void getUx_options_flags$annotations() {
    }

    public /* synthetic */ RabbitClientConfig(RabbitUxAssets rabbitUxAssets, ByteString byteString, ClientVisualConfig clientVisualConfig, ByteString byteString2, ClientCheckoutOptions clientCheckoutOptions, int i, DeprecatedPaymentProcessor deprecatedPaymentProcessor, boolean z, boolean z2, List list, ClientUpgradeArgumentPb clientUpgradeArgumentPb, IntervalPb intervalPb, PinpadImageAssets pinpadImageAssets, String str, PaymentProcessor paymentProcessor, List list2, TippingConfigPb tippingConfigPb, RebootTimeWindowConfig rebootTimeWindowConfig, TimeWindowConfig timeWindowConfig, MagstripeConfig magstripeConfig, OfflineConfigPb offlineConfigPb, FormsConfigPb formsConfigPb, LpmConfigPb lpmConfigPb, ApiWifiConfig apiWifiConfig, ApiAppThemeConfig apiAppThemeConfig, ByteString byteString3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : rabbitUxAssets, (i2 & 2) != 0 ? ByteString.EMPTY : byteString, (i2 & 4) != 0 ? null : clientVisualConfig, (i2 & 8) != 0 ? ByteString.EMPTY : byteString2, (i2 & 16) != 0 ? null : clientCheckoutOptions, (i2 & 32) != 0 ? 0 : i, (i2 & 64) != 0 ? DeprecatedPaymentProcessor.UNKNOWN : deprecatedPaymentProcessor, (i2 & 128) != 0 ? false : z, (i2 & 256) == 0 ? z2 : false, (i2 & 512) != 0 ? CollectionsKt.emptyList() : list, (i2 & 1024) != 0 ? null : clientUpgradeArgumentPb, (i2 & 2048) != 0 ? null : intervalPb, (i2 & 4096) != 0 ? null : pinpadImageAssets, (i2 & 8192) != 0 ? "" : str, (i2 & 16384) != 0 ? PaymentProcessor.UNKNOWN_PROCESSOR : paymentProcessor, (i2 & 32768) != 0 ? CollectionsKt.emptyList() : list2, (i2 & 65536) != 0 ? null : tippingConfigPb, (i2 & 131072) != 0 ? null : rebootTimeWindowConfig, (i2 & 262144) != 0 ? null : timeWindowConfig, (i2 & 524288) != 0 ? null : magstripeConfig, (i2 & 1048576) != 0 ? null : offlineConfigPb, (i2 & 2097152) != 0 ? null : formsConfigPb, (i2 & 4194304) != 0 ? null : lpmConfigPb, (i2 & 8388608) != 0 ? null : apiWifiConfig, (i2 & 16777216) != 0 ? null : apiAppThemeConfig, (i2 & 33554432) != 0 ? ByteString.EMPTY : byteString3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RabbitClientConfig(RabbitUxAssets rabbitUxAssets, ByteString ux_options_assets, ClientVisualConfig clientVisualConfig, ByteString ux_options_flags, ClientCheckoutOptions clientCheckoutOptions, int i, DeprecatedPaymentProcessor payment_processor, boolean z, boolean z2, List<BinTablePb.BinEntry> gift_card_bin_entries, ClientUpgradeArgumentPb clientUpgradeArgumentPb, IntervalPb intervalPb, PinpadImageAssets pinpadImageAssets, String bin_config_rule_checksum, PaymentProcessor emv_processor, List<BinTablePb.CardBinEntry> card_bin_entries, TippingConfigPb tippingConfigPb, RebootTimeWindowConfig rebootTimeWindowConfig, TimeWindowConfig timeWindowConfig, MagstripeConfig magstripeConfig, OfflineConfigPb offlineConfigPb, FormsConfigPb formsConfigPb, LpmConfigPb lpmConfigPb, ApiWifiConfig apiWifiConfig, ApiAppThemeConfig apiAppThemeConfig, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(ux_options_assets, "ux_options_assets");
        Intrinsics.checkNotNullParameter(ux_options_flags, "ux_options_flags");
        Intrinsics.checkNotNullParameter(payment_processor, "payment_processor");
        Intrinsics.checkNotNullParameter(gift_card_bin_entries, "gift_card_bin_entries");
        Intrinsics.checkNotNullParameter(bin_config_rule_checksum, "bin_config_rule_checksum");
        Intrinsics.checkNotNullParameter(emv_processor, "emv_processor");
        Intrinsics.checkNotNullParameter(card_bin_entries, "card_bin_entries");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.ux_assets = rabbitUxAssets;
        this.ux_options_assets = ux_options_assets;
        this.client_visual_config = clientVisualConfig;
        this.ux_options_flags = ux_options_flags;
        this.client_checkout_options = clientCheckoutOptions;
        this.heartbeat_interval_seconds = i;
        this.payment_processor = payment_processor;
        this.return_identity_token = z;
        this.return_cardholder_name = z2;
        this.uptime_reset_parameters = clientUpgradeArgumentPb;
        this.reset_window = intervalPb;
        this.pinpad_image_assets = pinpadImageAssets;
        this.bin_config_rule_checksum = bin_config_rule_checksum;
        this.emv_processor = emv_processor;
        this.tipping_config = tippingConfigPb;
        this.reboot_time_window = rebootTimeWindowConfig;
        this.reboot_schedule = timeWindowConfig;
        this.magstripe_config = magstripeConfig;
        this.offline_configuration = offlineConfigPb;
        this.forms_config = formsConfigPb;
        this.lpm_config = lpmConfigPb;
        this.wifi_config = apiWifiConfig;
        this.app_theme_config = apiAppThemeConfig;
        this.gift_card_bin_entries = Internal.immutableCopyOf("gift_card_bin_entries", gift_card_bin_entries);
        this.card_bin_entries = Internal.immutableCopyOf("card_bin_entries", card_bin_entries);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.ux_assets = this.ux_assets;
        builder.ux_options_assets = this.ux_options_assets;
        builder.client_visual_config = this.client_visual_config;
        builder.ux_options_flags = this.ux_options_flags;
        builder.client_checkout_options = this.client_checkout_options;
        builder.heartbeat_interval_seconds = this.heartbeat_interval_seconds;
        builder.payment_processor = this.payment_processor;
        builder.return_identity_token = this.return_identity_token;
        builder.return_cardholder_name = this.return_cardholder_name;
        builder.gift_card_bin_entries = this.gift_card_bin_entries;
        builder.uptime_reset_parameters = this.uptime_reset_parameters;
        builder.reset_window = this.reset_window;
        builder.pinpad_image_assets = this.pinpad_image_assets;
        builder.bin_config_rule_checksum = this.bin_config_rule_checksum;
        builder.emv_processor = this.emv_processor;
        builder.card_bin_entries = this.card_bin_entries;
        builder.tipping_config = this.tipping_config;
        builder.reboot_time_window = this.reboot_time_window;
        builder.reboot_schedule = this.reboot_schedule;
        builder.magstripe_config = this.magstripe_config;
        builder.offline_configuration = this.offline_configuration;
        builder.forms_config = this.forms_config;
        builder.lpm_config = this.lpm_config;
        builder.wifi_config = this.wifi_config;
        builder.app_theme_config = this.app_theme_config;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RabbitClientConfig)) {
            return false;
        }
        RabbitClientConfig rabbitClientConfig = (RabbitClientConfig) other;
        return Intrinsics.areEqual(unknownFields(), rabbitClientConfig.unknownFields()) && Intrinsics.areEqual(this.ux_assets, rabbitClientConfig.ux_assets) && Intrinsics.areEqual(this.ux_options_assets, rabbitClientConfig.ux_options_assets) && Intrinsics.areEqual(this.client_visual_config, rabbitClientConfig.client_visual_config) && Intrinsics.areEqual(this.ux_options_flags, rabbitClientConfig.ux_options_flags) && Intrinsics.areEqual(this.client_checkout_options, rabbitClientConfig.client_checkout_options) && this.heartbeat_interval_seconds == rabbitClientConfig.heartbeat_interval_seconds && this.payment_processor == rabbitClientConfig.payment_processor && this.return_identity_token == rabbitClientConfig.return_identity_token && this.return_cardholder_name == rabbitClientConfig.return_cardholder_name && Intrinsics.areEqual(this.gift_card_bin_entries, rabbitClientConfig.gift_card_bin_entries) && Intrinsics.areEqual(this.uptime_reset_parameters, rabbitClientConfig.uptime_reset_parameters) && Intrinsics.areEqual(this.reset_window, rabbitClientConfig.reset_window) && Intrinsics.areEqual(this.pinpad_image_assets, rabbitClientConfig.pinpad_image_assets) && Intrinsics.areEqual(this.bin_config_rule_checksum, rabbitClientConfig.bin_config_rule_checksum) && this.emv_processor == rabbitClientConfig.emv_processor && Intrinsics.areEqual(this.card_bin_entries, rabbitClientConfig.card_bin_entries) && Intrinsics.areEqual(this.tipping_config, rabbitClientConfig.tipping_config) && Intrinsics.areEqual(this.reboot_time_window, rabbitClientConfig.reboot_time_window) && Intrinsics.areEqual(this.reboot_schedule, rabbitClientConfig.reboot_schedule) && Intrinsics.areEqual(this.magstripe_config, rabbitClientConfig.magstripe_config) && Intrinsics.areEqual(this.offline_configuration, rabbitClientConfig.offline_configuration) && Intrinsics.areEqual(this.forms_config, rabbitClientConfig.forms_config) && Intrinsics.areEqual(this.lpm_config, rabbitClientConfig.lpm_config) && Intrinsics.areEqual(this.wifi_config, rabbitClientConfig.wifi_config) && Intrinsics.areEqual(this.app_theme_config, rabbitClientConfig.app_theme_config);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        RabbitUxAssets rabbitUxAssets = this.ux_assets;
        int iHashCode2 = (((iHashCode + (rabbitUxAssets != null ? rabbitUxAssets.hashCode() : 0)) * 37) + this.ux_options_assets.hashCode()) * 37;
        ClientVisualConfig clientVisualConfig = this.client_visual_config;
        int iHashCode3 = (((iHashCode2 + (clientVisualConfig != null ? clientVisualConfig.hashCode() : 0)) * 37) + this.ux_options_flags.hashCode()) * 37;
        ClientCheckoutOptions clientCheckoutOptions = this.client_checkout_options;
        int iHashCode4 = (((((((((((iHashCode3 + (clientCheckoutOptions != null ? clientCheckoutOptions.hashCode() : 0)) * 37) + Integer.hashCode(this.heartbeat_interval_seconds)) * 37) + this.payment_processor.hashCode()) * 37) + Boolean.hashCode(this.return_identity_token)) * 37) + Boolean.hashCode(this.return_cardholder_name)) * 37) + this.gift_card_bin_entries.hashCode()) * 37;
        ClientUpgradeArgumentPb clientUpgradeArgumentPb = this.uptime_reset_parameters;
        int iHashCode5 = (iHashCode4 + (clientUpgradeArgumentPb != null ? clientUpgradeArgumentPb.hashCode() : 0)) * 37;
        IntervalPb intervalPb = this.reset_window;
        int iHashCode6 = (iHashCode5 + (intervalPb != null ? intervalPb.hashCode() : 0)) * 37;
        PinpadImageAssets pinpadImageAssets = this.pinpad_image_assets;
        int iHashCode7 = (((((((iHashCode6 + (pinpadImageAssets != null ? pinpadImageAssets.hashCode() : 0)) * 37) + this.bin_config_rule_checksum.hashCode()) * 37) + this.emv_processor.hashCode()) * 37) + this.card_bin_entries.hashCode()) * 37;
        TippingConfigPb tippingConfigPb = this.tipping_config;
        int iHashCode8 = (iHashCode7 + (tippingConfigPb != null ? tippingConfigPb.hashCode() : 0)) * 37;
        RebootTimeWindowConfig rebootTimeWindowConfig = this.reboot_time_window;
        int iHashCode9 = (iHashCode8 + (rebootTimeWindowConfig != null ? rebootTimeWindowConfig.hashCode() : 0)) * 37;
        TimeWindowConfig timeWindowConfig = this.reboot_schedule;
        int iHashCode10 = (iHashCode9 + (timeWindowConfig != null ? timeWindowConfig.hashCode() : 0)) * 37;
        MagstripeConfig magstripeConfig = this.magstripe_config;
        int iHashCode11 = (iHashCode10 + (magstripeConfig != null ? magstripeConfig.hashCode() : 0)) * 37;
        OfflineConfigPb offlineConfigPb = this.offline_configuration;
        int iHashCode12 = (iHashCode11 + (offlineConfigPb != null ? offlineConfigPb.hashCode() : 0)) * 37;
        FormsConfigPb formsConfigPb = this.forms_config;
        int iHashCode13 = (iHashCode12 + (formsConfigPb != null ? formsConfigPb.hashCode() : 0)) * 37;
        LpmConfigPb lpmConfigPb = this.lpm_config;
        int iHashCode14 = (iHashCode13 + (lpmConfigPb != null ? lpmConfigPb.hashCode() : 0)) * 37;
        ApiWifiConfig apiWifiConfig = this.wifi_config;
        int iHashCode15 = (iHashCode14 + (apiWifiConfig != null ? apiWifiConfig.hashCode() : 0)) * 37;
        ApiAppThemeConfig apiAppThemeConfig = this.app_theme_config;
        int iHashCode16 = iHashCode15 + (apiAppThemeConfig != null ? apiAppThemeConfig.hashCode() : 0);
        this.hashCode = iHashCode16;
        return iHashCode16;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.ux_assets != null) {
            arrayList.add("ux_assets=" + this.ux_assets);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("ux_options_assets=" + this.ux_options_assets);
        if (this.client_visual_config != null) {
            arrayList2.add("client_visual_config=" + this.client_visual_config);
        }
        arrayList2.add("ux_options_flags=" + this.ux_options_flags);
        if (this.client_checkout_options != null) {
            arrayList2.add("client_checkout_options=" + this.client_checkout_options);
        }
        arrayList2.add("heartbeat_interval_seconds=" + this.heartbeat_interval_seconds);
        arrayList2.add("payment_processor=" + this.payment_processor);
        arrayList2.add("return_identity_token=" + this.return_identity_token);
        arrayList2.add("return_cardholder_name=" + this.return_cardholder_name);
        if (!this.gift_card_bin_entries.isEmpty()) {
            arrayList2.add("gift_card_bin_entries=" + this.gift_card_bin_entries);
        }
        if (this.uptime_reset_parameters != null) {
            arrayList2.add("uptime_reset_parameters=" + this.uptime_reset_parameters);
        }
        if (this.reset_window != null) {
            arrayList2.add("reset_window=" + this.reset_window);
        }
        if (this.pinpad_image_assets != null) {
            arrayList2.add("pinpad_image_assets=" + this.pinpad_image_assets);
        }
        arrayList2.add("bin_config_rule_checksum=" + Internal.sanitize(this.bin_config_rule_checksum));
        arrayList2.add("emv_processor=" + this.emv_processor);
        if (!this.card_bin_entries.isEmpty()) {
            arrayList2.add("card_bin_entries=" + this.card_bin_entries);
        }
        if (this.tipping_config != null) {
            arrayList2.add("tipping_config=" + this.tipping_config);
        }
        if (this.reboot_time_window != null) {
            arrayList2.add("reboot_time_window=" + this.reboot_time_window);
        }
        if (this.reboot_schedule != null) {
            arrayList2.add("reboot_schedule=" + this.reboot_schedule);
        }
        if (this.magstripe_config != null) {
            arrayList2.add("magstripe_config=" + this.magstripe_config);
        }
        if (this.offline_configuration != null) {
            arrayList2.add("offline_configuration=" + this.offline_configuration);
        }
        if (this.forms_config != null) {
            arrayList2.add("forms_config=" + this.forms_config);
        }
        if (this.lpm_config != null) {
            arrayList2.add("lpm_config=" + this.lpm_config);
        }
        if (this.wifi_config != null) {
            arrayList2.add("wifi_config=" + this.wifi_config);
        }
        if (this.app_theme_config != null) {
            arrayList2.add("app_theme_config=" + this.app_theme_config);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "RabbitClientConfig{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RabbitClientConfig copy$default(RabbitClientConfig rabbitClientConfig, RabbitUxAssets rabbitUxAssets, ByteString byteString, ClientVisualConfig clientVisualConfig, ByteString byteString2, ClientCheckoutOptions clientCheckoutOptions, int i, DeprecatedPaymentProcessor deprecatedPaymentProcessor, boolean z, boolean z2, List list, ClientUpgradeArgumentPb clientUpgradeArgumentPb, IntervalPb intervalPb, PinpadImageAssets pinpadImageAssets, String str, PaymentProcessor paymentProcessor, List list2, TippingConfigPb tippingConfigPb, RebootTimeWindowConfig rebootTimeWindowConfig, TimeWindowConfig timeWindowConfig, MagstripeConfig magstripeConfig, OfflineConfigPb offlineConfigPb, FormsConfigPb formsConfigPb, LpmConfigPb lpmConfigPb, ApiWifiConfig apiWifiConfig, ApiAppThemeConfig apiAppThemeConfig, ByteString byteString3, int i2, Object obj) {
        RabbitUxAssets rabbitUxAssets2 = (i2 & 1) != 0 ? rabbitClientConfig.ux_assets : rabbitUxAssets;
        return rabbitClientConfig.copy(rabbitUxAssets2, (i2 & 2) != 0 ? rabbitClientConfig.ux_options_assets : byteString, (i2 & 4) != 0 ? rabbitClientConfig.client_visual_config : clientVisualConfig, (i2 & 8) != 0 ? rabbitClientConfig.ux_options_flags : byteString2, (i2 & 16) != 0 ? rabbitClientConfig.client_checkout_options : clientCheckoutOptions, (i2 & 32) != 0 ? rabbitClientConfig.heartbeat_interval_seconds : i, (i2 & 64) != 0 ? rabbitClientConfig.payment_processor : deprecatedPaymentProcessor, (i2 & 128) != 0 ? rabbitClientConfig.return_identity_token : z, (i2 & 256) != 0 ? rabbitClientConfig.return_cardholder_name : z2, (i2 & 512) != 0 ? rabbitClientConfig.gift_card_bin_entries : list, (i2 & 1024) != 0 ? rabbitClientConfig.uptime_reset_parameters : clientUpgradeArgumentPb, (i2 & 2048) != 0 ? rabbitClientConfig.reset_window : intervalPb, (i2 & 4096) != 0 ? rabbitClientConfig.pinpad_image_assets : pinpadImageAssets, (i2 & 8192) != 0 ? rabbitClientConfig.bin_config_rule_checksum : str, (i2 & 16384) != 0 ? rabbitClientConfig.emv_processor : paymentProcessor, (i2 & 32768) != 0 ? rabbitClientConfig.card_bin_entries : list2, (i2 & 65536) != 0 ? rabbitClientConfig.tipping_config : tippingConfigPb, (i2 & 131072) != 0 ? rabbitClientConfig.reboot_time_window : rebootTimeWindowConfig, (i2 & 262144) != 0 ? rabbitClientConfig.reboot_schedule : timeWindowConfig, (i2 & 524288) != 0 ? rabbitClientConfig.magstripe_config : magstripeConfig, (i2 & 1048576) != 0 ? rabbitClientConfig.offline_configuration : offlineConfigPb, (i2 & 2097152) != 0 ? rabbitClientConfig.forms_config : formsConfigPb, (i2 & 4194304) != 0 ? rabbitClientConfig.lpm_config : lpmConfigPb, (i2 & 8388608) != 0 ? rabbitClientConfig.wifi_config : apiWifiConfig, (i2 & 16777216) != 0 ? rabbitClientConfig.app_theme_config : apiAppThemeConfig, (i2 & 33554432) != 0 ? rabbitClientConfig.unknownFields() : byteString3);
    }

    public final RabbitClientConfig copy(RabbitUxAssets ux_assets, ByteString ux_options_assets, ClientVisualConfig client_visual_config, ByteString ux_options_flags, ClientCheckoutOptions client_checkout_options, int heartbeat_interval_seconds, DeprecatedPaymentProcessor payment_processor, boolean return_identity_token, boolean return_cardholder_name, List<BinTablePb.BinEntry> gift_card_bin_entries, ClientUpgradeArgumentPb uptime_reset_parameters, IntervalPb reset_window, PinpadImageAssets pinpad_image_assets, String bin_config_rule_checksum, PaymentProcessor emv_processor, List<BinTablePb.CardBinEntry> card_bin_entries, TippingConfigPb tipping_config, RebootTimeWindowConfig reboot_time_window, TimeWindowConfig reboot_schedule, MagstripeConfig magstripe_config, OfflineConfigPb offline_configuration, FormsConfigPb forms_config, LpmConfigPb lpm_config, ApiWifiConfig wifi_config, ApiAppThemeConfig app_theme_config, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(ux_options_assets, "ux_options_assets");
        Intrinsics.checkNotNullParameter(ux_options_flags, "ux_options_flags");
        Intrinsics.checkNotNullParameter(payment_processor, "payment_processor");
        Intrinsics.checkNotNullParameter(gift_card_bin_entries, "gift_card_bin_entries");
        Intrinsics.checkNotNullParameter(bin_config_rule_checksum, "bin_config_rule_checksum");
        Intrinsics.checkNotNullParameter(emv_processor, "emv_processor");
        Intrinsics.checkNotNullParameter(card_bin_entries, "card_bin_entries");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RabbitClientConfig(ux_assets, ux_options_assets, client_visual_config, ux_options_flags, client_checkout_options, heartbeat_interval_seconds, payment_processor, return_identity_token, return_cardholder_name, gift_card_bin_entries, uptime_reset_parameters, reset_window, pinpad_image_assets, bin_config_rule_checksum, emv_processor, card_bin_entries, tipping_config, reboot_time_window, reboot_schedule, magstripe_config, offline_configuration, forms_config, lpm_config, wifi_config, app_theme_config, unknownFields);
    }

    /* JADX INFO: compiled from: RabbitClientConfig.kt */
    @Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\b\u00105\u001a\u00020\u0002H\u0016J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0016\u0010\u0013\u001a\u00020\u00002\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\tH\u0007J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010\u001b\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u0010\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u0010\u0010\u001f\u001a\u00020\u00002\b\u0010\u001f\u001a\u0004\u0018\u00010 J\u0010\u0010!\u001a\u00020\u00002\b\u0010!\u001a\u0004\u0018\u00010\"J\u0012\u0010#\u001a\u00020\u00002\b\u0010#\u001a\u0004\u0018\u00010$H\u0007J\u0010\u0010%\u001a\u00020\u00002\b\u0010%\u001a\u0004\u0018\u00010&J\u0010\u0010'\u001a\u00020\u00002\u0006\u0010'\u001a\u00020(H\u0007J\u0010\u0010)\u001a\u00020\u00002\u0006\u0010)\u001a\u00020(H\u0007J\u0010\u0010*\u001a\u00020\u00002\b\u0010*\u001a\u0004\u0018\u00010+J\u0010\u0010,\u001a\u00020\u00002\b\u0010,\u001a\u0004\u0018\u00010-J\u0010\u0010.\u001a\u00020\u00002\b\u0010.\u001a\u0004\u0018\u00010/J\u0010\u00100\u001a\u00020\u00002\u0006\u00100\u001a\u000201H\u0007J\u0010\u00102\u001a\u00020\u00002\u0006\u00102\u001a\u000201H\u0007J\u0010\u00103\u001a\u00020\u00002\b\u00103\u001a\u0004\u0018\u000104R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00020\u001e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010'\u001a\u00020(8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010)\u001a\u00020(8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u0004\u0018\u00010+8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010,\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010.\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00100\u001a\u0002018\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00102\u001a\u0002018\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u00103\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/RabbitClientConfig;", "()V", "app_theme_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;", "bin_config_rule_checksum", "", "card_bin_entries", "", "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;", "client_checkout_options", "Lcom/stripe/proto/model/config/ClientCheckoutOptions;", "client_visual_config", "Lcom/stripe/proto/model/config/ClientVisualConfig;", "emv_processor", "Lcom/stripe/proto/model/payments/PaymentProcessor;", "forms_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;", "gift_card_bin_entries", "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;", "heartbeat_interval_seconds", "", "lpm_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;", "magstripe_config", "Lcom/stripe/proto/model/config/MagstripeConfig;", "offline_configuration", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "payment_processor", "Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;", "pinpad_image_assets", "Lcom/stripe/proto/model/config/PinpadImageAssets;", "reboot_schedule", "Lcom/stripe/proto/model/config/TimeWindowConfig;", "reboot_time_window", "Lcom/stripe/proto/model/config/RebootTimeWindowConfig;", "reset_window", "Lcom/stripe/proto/model/common/IntervalPb;", "return_cardholder_name", "", "return_identity_token", "tipping_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "uptime_reset_parameters", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;", "ux_assets", "Lcom/stripe/proto/model/config/RabbitUxAssets;", "ux_options_assets", "Lokio/ByteString;", "ux_options_flags", "wifi_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RabbitClientConfig, Builder> {
        public ApiAppThemeConfig app_theme_config;
        public ClientCheckoutOptions client_checkout_options;
        public ClientVisualConfig client_visual_config;
        public FormsConfigPb forms_config;
        public int heartbeat_interval_seconds;
        public LpmConfigPb lpm_config;
        public MagstripeConfig magstripe_config;
        public OfflineConfigPb offline_configuration;
        public PinpadImageAssets pinpad_image_assets;
        public TimeWindowConfig reboot_schedule;
        public RebootTimeWindowConfig reboot_time_window;
        public IntervalPb reset_window;
        public boolean return_cardholder_name;
        public boolean return_identity_token;
        public TippingConfigPb tipping_config;
        public ClientUpgradeArgumentPb uptime_reset_parameters;
        public RabbitUxAssets ux_assets;
        public ApiWifiConfig wifi_config;
        public ByteString ux_options_assets = ByteString.EMPTY;
        public ByteString ux_options_flags = ByteString.EMPTY;
        public DeprecatedPaymentProcessor payment_processor = DeprecatedPaymentProcessor.UNKNOWN;
        public List<BinTablePb.BinEntry> gift_card_bin_entries = CollectionsKt.emptyList();
        public String bin_config_rule_checksum = "";
        public PaymentProcessor emv_processor = PaymentProcessor.UNKNOWN_PROCESSOR;
        public List<BinTablePb.CardBinEntry> card_bin_entries = CollectionsKt.emptyList();

        public final Builder ux_assets(RabbitUxAssets ux_assets) {
            this.ux_assets = ux_assets;
            return this;
        }

        @Deprecated(message = "ux_options_assets is deprecated")
        public final Builder ux_options_assets(ByteString ux_options_assets) {
            Intrinsics.checkNotNullParameter(ux_options_assets, "ux_options_assets");
            this.ux_options_assets = ux_options_assets;
            return this;
        }

        public final Builder client_visual_config(ClientVisualConfig client_visual_config) {
            this.client_visual_config = client_visual_config;
            return this;
        }

        @Deprecated(message = "ux_options_flags is deprecated")
        public final Builder ux_options_flags(ByteString ux_options_flags) {
            Intrinsics.checkNotNullParameter(ux_options_flags, "ux_options_flags");
            this.ux_options_flags = ux_options_flags;
            return this;
        }

        public final Builder client_checkout_options(ClientCheckoutOptions client_checkout_options) {
            this.client_checkout_options = client_checkout_options;
            return this;
        }

        @Deprecated(message = "heartbeat_interval_seconds is deprecated")
        public final Builder heartbeat_interval_seconds(int heartbeat_interval_seconds) {
            this.heartbeat_interval_seconds = heartbeat_interval_seconds;
            return this;
        }

        @Deprecated(message = "payment_processor is deprecated")
        public final Builder payment_processor(DeprecatedPaymentProcessor payment_processor) {
            Intrinsics.checkNotNullParameter(payment_processor, "payment_processor");
            this.payment_processor = payment_processor;
            return this;
        }

        @Deprecated(message = "return_identity_token is deprecated")
        public final Builder return_identity_token(boolean return_identity_token) {
            this.return_identity_token = return_identity_token;
            return this;
        }

        @Deprecated(message = "return_cardholder_name is deprecated")
        public final Builder return_cardholder_name(boolean return_cardholder_name) {
            this.return_cardholder_name = return_cardholder_name;
            return this;
        }

        @Deprecated(message = "gift_card_bin_entries is deprecated")
        public final Builder gift_card_bin_entries(List<BinTablePb.BinEntry> gift_card_bin_entries) {
            Intrinsics.checkNotNullParameter(gift_card_bin_entries, "gift_card_bin_entries");
            Internal.checkElementsNotNull(gift_card_bin_entries);
            this.gift_card_bin_entries = gift_card_bin_entries;
            return this;
        }

        public final Builder uptime_reset_parameters(ClientUpgradeArgumentPb uptime_reset_parameters) {
            this.uptime_reset_parameters = uptime_reset_parameters;
            return this;
        }

        public final Builder reset_window(IntervalPb reset_window) {
            this.reset_window = reset_window;
            return this;
        }

        public final Builder pinpad_image_assets(PinpadImageAssets pinpad_image_assets) {
            this.pinpad_image_assets = pinpad_image_assets;
            return this;
        }

        public final Builder bin_config_rule_checksum(String bin_config_rule_checksum) {
            Intrinsics.checkNotNullParameter(bin_config_rule_checksum, "bin_config_rule_checksum");
            this.bin_config_rule_checksum = bin_config_rule_checksum;
            return this;
        }

        public final Builder emv_processor(PaymentProcessor emv_processor) {
            Intrinsics.checkNotNullParameter(emv_processor, "emv_processor");
            this.emv_processor = emv_processor;
            return this;
        }

        public final Builder card_bin_entries(List<BinTablePb.CardBinEntry> card_bin_entries) {
            Intrinsics.checkNotNullParameter(card_bin_entries, "card_bin_entries");
            Internal.checkElementsNotNull(card_bin_entries);
            this.card_bin_entries = card_bin_entries;
            return this;
        }

        public final Builder tipping_config(TippingConfigPb tipping_config) {
            this.tipping_config = tipping_config;
            return this;
        }

        @Deprecated(message = "reboot_time_window is deprecated")
        public final Builder reboot_time_window(RebootTimeWindowConfig reboot_time_window) {
            this.reboot_time_window = reboot_time_window;
            return this;
        }

        public final Builder reboot_schedule(TimeWindowConfig reboot_schedule) {
            this.reboot_schedule = reboot_schedule;
            return this;
        }

        public final Builder magstripe_config(MagstripeConfig magstripe_config) {
            this.magstripe_config = magstripe_config;
            return this;
        }

        public final Builder offline_configuration(OfflineConfigPb offline_configuration) {
            this.offline_configuration = offline_configuration;
            return this;
        }

        public final Builder forms_config(FormsConfigPb forms_config) {
            this.forms_config = forms_config;
            return this;
        }

        public final Builder lpm_config(LpmConfigPb lpm_config) {
            this.lpm_config = lpm_config;
            return this;
        }

        public final Builder wifi_config(ApiWifiConfig wifi_config) {
            this.wifi_config = wifi_config;
            return this;
        }

        public final Builder app_theme_config(ApiAppThemeConfig app_theme_config) {
            this.app_theme_config = app_theme_config;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RabbitClientConfig build() {
            return new RabbitClientConfig(this.ux_assets, this.ux_options_assets, this.client_visual_config, this.ux_options_flags, this.client_checkout_options, this.heartbeat_interval_seconds, this.payment_processor, this.return_identity_token, this.return_cardholder_name, this.gift_card_bin_entries, this.uptime_reset_parameters, this.reset_window, this.pinpad_image_assets, this.bin_config_rule_checksum, this.emv_processor, this.card_bin_entries, this.tipping_config, this.reboot_time_window, this.reboot_schedule, this.magstripe_config, this.offline_configuration, this.forms_config, this.lpm_config, this.wifi_config, this.app_theme_config, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RabbitClientConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/RabbitClientConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/RabbitClientConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/RabbitClientConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RabbitClientConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RabbitClientConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RabbitClientConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.RabbitClientConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RabbitClientConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.ux_assets != null) {
                    size += RabbitUxAssets.ADAPTER.encodedSizeWithTag(1, value.ux_assets);
                }
                if (!Intrinsics.areEqual(value.ux_options_assets, ByteString.EMPTY)) {
                    size += ProtoAdapter.BYTES.encodedSizeWithTag(2, value.ux_options_assets);
                }
                if (value.client_visual_config != null) {
                    size += ClientVisualConfig.ADAPTER.encodedSizeWithTag(10, value.client_visual_config);
                }
                if (!Intrinsics.areEqual(value.ux_options_flags, ByteString.EMPTY)) {
                    size += ProtoAdapter.BYTES.encodedSizeWithTag(3, value.ux_options_flags);
                }
                if (value.client_checkout_options != null) {
                    size += ClientCheckoutOptions.ADAPTER.encodedSizeWithTag(11, value.client_checkout_options);
                }
                if (value.heartbeat_interval_seconds != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(5, Integer.valueOf(value.heartbeat_interval_seconds));
                }
                if (value.payment_processor != RabbitClientConfig.DeprecatedPaymentProcessor.UNKNOWN) {
                    size += RabbitClientConfig.DeprecatedPaymentProcessor.ADAPTER.encodedSizeWithTag(6, value.payment_processor);
                }
                if (value.return_identity_token) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(7, Boolean.valueOf(value.return_identity_token));
                }
                if (value.return_cardholder_name) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(9, Boolean.valueOf(value.return_cardholder_name));
                }
                int iEncodedSizeWithTag = size + BinTablePb.BinEntry.ADAPTER.asRepeated().encodedSizeWithTag(8, value.gift_card_bin_entries);
                if (value.uptime_reset_parameters != null) {
                    iEncodedSizeWithTag += ClientUpgradeArgumentPb.ADAPTER.encodedSizeWithTag(12, value.uptime_reset_parameters);
                }
                if (value.reset_window != null) {
                    iEncodedSizeWithTag += IntervalPb.ADAPTER.encodedSizeWithTag(13, value.reset_window);
                }
                if (value.pinpad_image_assets != null) {
                    iEncodedSizeWithTag += PinpadImageAssets.ADAPTER.encodedSizeWithTag(14, value.pinpad_image_assets);
                }
                if (!Intrinsics.areEqual(value.bin_config_rule_checksum, "")) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING.encodedSizeWithTag(15, value.bin_config_rule_checksum);
                }
                if (value.emv_processor != PaymentProcessor.UNKNOWN_PROCESSOR) {
                    iEncodedSizeWithTag += PaymentProcessor.ADAPTER.encodedSizeWithTag(16, value.emv_processor);
                }
                int iEncodedSizeWithTag2 = iEncodedSizeWithTag + BinTablePb.CardBinEntry.ADAPTER.asRepeated().encodedSizeWithTag(17, value.card_bin_entries);
                if (value.tipping_config != null) {
                    iEncodedSizeWithTag2 += TippingConfigPb.ADAPTER.encodedSizeWithTag(19, value.tipping_config);
                }
                if (value.reboot_time_window != null) {
                    iEncodedSizeWithTag2 += RebootTimeWindowConfig.ADAPTER.encodedSizeWithTag(20, value.reboot_time_window);
                }
                if (value.reboot_schedule != null) {
                    iEncodedSizeWithTag2 += TimeWindowConfig.ADAPTER.encodedSizeWithTag(21, value.reboot_schedule);
                }
                if (value.magstripe_config != null) {
                    iEncodedSizeWithTag2 += MagstripeConfig.ADAPTER.encodedSizeWithTag(23, value.magstripe_config);
                }
                if (value.offline_configuration != null) {
                    iEncodedSizeWithTag2 += OfflineConfigPb.ADAPTER.encodedSizeWithTag(24, value.offline_configuration);
                }
                if (value.forms_config != null) {
                    iEncodedSizeWithTag2 += FormsConfigPb.ADAPTER.encodedSizeWithTag(25, value.forms_config);
                }
                if (value.lpm_config != null) {
                    iEncodedSizeWithTag2 += LpmConfigPb.ADAPTER.encodedSizeWithTag(26, value.lpm_config);
                }
                if (value.wifi_config != null) {
                    iEncodedSizeWithTag2 += ApiWifiConfig.ADAPTER.encodedSizeWithTag(27, value.wifi_config);
                }
                return value.app_theme_config != null ? iEncodedSizeWithTag2 + ApiAppThemeConfig.ADAPTER.encodedSizeWithTag(28, value.app_theme_config) : iEncodedSizeWithTag2;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RabbitClientConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.ux_assets != null) {
                    RabbitUxAssets.ADAPTER.encodeWithTag(writer, 1, value.ux_assets);
                }
                if (!Intrinsics.areEqual(value.ux_options_assets, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 2, value.ux_options_assets);
                }
                if (value.client_visual_config != null) {
                    ClientVisualConfig.ADAPTER.encodeWithTag(writer, 10, value.client_visual_config);
                }
                if (!Intrinsics.areEqual(value.ux_options_flags, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 3, value.ux_options_flags);
                }
                if (value.client_checkout_options != null) {
                    ClientCheckoutOptions.ADAPTER.encodeWithTag(writer, 11, value.client_checkout_options);
                }
                if (value.heartbeat_interval_seconds != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.heartbeat_interval_seconds));
                }
                if (value.payment_processor != RabbitClientConfig.DeprecatedPaymentProcessor.UNKNOWN) {
                    RabbitClientConfig.DeprecatedPaymentProcessor.ADAPTER.encodeWithTag(writer, 6, value.payment_processor);
                }
                if (value.return_identity_token) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.return_identity_token));
                }
                if (value.return_cardholder_name) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 9, Boolean.valueOf(value.return_cardholder_name));
                }
                BinTablePb.BinEntry.ADAPTER.asRepeated().encodeWithTag(writer, 8, value.gift_card_bin_entries);
                if (value.uptime_reset_parameters != null) {
                    ClientUpgradeArgumentPb.ADAPTER.encodeWithTag(writer, 12, value.uptime_reset_parameters);
                }
                if (value.reset_window != null) {
                    IntervalPb.ADAPTER.encodeWithTag(writer, 13, value.reset_window);
                }
                if (value.pinpad_image_assets != null) {
                    PinpadImageAssets.ADAPTER.encodeWithTag(writer, 14, value.pinpad_image_assets);
                }
                if (!Intrinsics.areEqual(value.bin_config_rule_checksum, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 15, value.bin_config_rule_checksum);
                }
                if (value.emv_processor != PaymentProcessor.UNKNOWN_PROCESSOR) {
                    PaymentProcessor.ADAPTER.encodeWithTag(writer, 16, value.emv_processor);
                }
                BinTablePb.CardBinEntry.ADAPTER.asRepeated().encodeWithTag(writer, 17, value.card_bin_entries);
                if (value.tipping_config != null) {
                    TippingConfigPb.ADAPTER.encodeWithTag(writer, 19, value.tipping_config);
                }
                if (value.reboot_time_window != null) {
                    RebootTimeWindowConfig.ADAPTER.encodeWithTag(writer, 20, value.reboot_time_window);
                }
                if (value.reboot_schedule != null) {
                    TimeWindowConfig.ADAPTER.encodeWithTag(writer, 21, value.reboot_schedule);
                }
                if (value.magstripe_config != null) {
                    MagstripeConfig.ADAPTER.encodeWithTag(writer, 23, value.magstripe_config);
                }
                if (value.offline_configuration != null) {
                    OfflineConfigPb.ADAPTER.encodeWithTag(writer, 24, value.offline_configuration);
                }
                if (value.forms_config != null) {
                    FormsConfigPb.ADAPTER.encodeWithTag(writer, 25, value.forms_config);
                }
                if (value.lpm_config != null) {
                    LpmConfigPb.ADAPTER.encodeWithTag(writer, 26, value.lpm_config);
                }
                if (value.wifi_config != null) {
                    ApiWifiConfig.ADAPTER.encodeWithTag(writer, 27, value.wifi_config);
                }
                if (value.app_theme_config != null) {
                    ApiAppThemeConfig.ADAPTER.encodeWithTag(writer, 28, value.app_theme_config);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RabbitClientConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.app_theme_config != null) {
                    ApiAppThemeConfig.ADAPTER.encodeWithTag(writer, 28, value.app_theme_config);
                }
                if (value.wifi_config != null) {
                    ApiWifiConfig.ADAPTER.encodeWithTag(writer, 27, value.wifi_config);
                }
                if (value.lpm_config != null) {
                    LpmConfigPb.ADAPTER.encodeWithTag(writer, 26, value.lpm_config);
                }
                if (value.forms_config != null) {
                    FormsConfigPb.ADAPTER.encodeWithTag(writer, 25, value.forms_config);
                }
                if (value.offline_configuration != null) {
                    OfflineConfigPb.ADAPTER.encodeWithTag(writer, 24, value.offline_configuration);
                }
                if (value.magstripe_config != null) {
                    MagstripeConfig.ADAPTER.encodeWithTag(writer, 23, value.magstripe_config);
                }
                if (value.reboot_schedule != null) {
                    TimeWindowConfig.ADAPTER.encodeWithTag(writer, 21, value.reboot_schedule);
                }
                if (value.reboot_time_window != null) {
                    RebootTimeWindowConfig.ADAPTER.encodeWithTag(writer, 20, value.reboot_time_window);
                }
                if (value.tipping_config != null) {
                    TippingConfigPb.ADAPTER.encodeWithTag(writer, 19, value.tipping_config);
                }
                BinTablePb.CardBinEntry.ADAPTER.asRepeated().encodeWithTag(writer, 17, value.card_bin_entries);
                if (value.emv_processor != PaymentProcessor.UNKNOWN_PROCESSOR) {
                    PaymentProcessor.ADAPTER.encodeWithTag(writer, 16, value.emv_processor);
                }
                if (!Intrinsics.areEqual(value.bin_config_rule_checksum, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 15, value.bin_config_rule_checksum);
                }
                if (value.pinpad_image_assets != null) {
                    PinpadImageAssets.ADAPTER.encodeWithTag(writer, 14, value.pinpad_image_assets);
                }
                if (value.reset_window != null) {
                    IntervalPb.ADAPTER.encodeWithTag(writer, 13, value.reset_window);
                }
                if (value.uptime_reset_parameters != null) {
                    ClientUpgradeArgumentPb.ADAPTER.encodeWithTag(writer, 12, value.uptime_reset_parameters);
                }
                BinTablePb.BinEntry.ADAPTER.asRepeated().encodeWithTag(writer, 8, value.gift_card_bin_entries);
                if (value.return_cardholder_name) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 9, Boolean.valueOf(value.return_cardholder_name));
                }
                if (value.return_identity_token) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.return_identity_token));
                }
                if (value.payment_processor != RabbitClientConfig.DeprecatedPaymentProcessor.UNKNOWN) {
                    RabbitClientConfig.DeprecatedPaymentProcessor.ADAPTER.encodeWithTag(writer, 6, value.payment_processor);
                }
                if (value.heartbeat_interval_seconds != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.heartbeat_interval_seconds));
                }
                if (value.client_checkout_options != null) {
                    ClientCheckoutOptions.ADAPTER.encodeWithTag(writer, 11, value.client_checkout_options);
                }
                if (!Intrinsics.areEqual(value.ux_options_flags, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 3, value.ux_options_flags);
                }
                if (value.client_visual_config != null) {
                    ClientVisualConfig.ADAPTER.encodeWithTag(writer, 10, value.client_visual_config);
                }
                if (!Intrinsics.areEqual(value.ux_options_assets, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 2, value.ux_options_assets);
                }
                if (value.ux_assets != null) {
                    RabbitUxAssets.ADAPTER.encodeWithTag(writer, 1, value.ux_assets);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RabbitClientConfig decode(ProtoReader reader) throws IOException {
                ByteString byteString;
                RabbitClientConfig.DeprecatedPaymentProcessor deprecatedPaymentProcessor;
                ArrayList arrayList;
                Intrinsics.checkNotNullParameter(reader, "reader");
                ByteString byteString2 = ByteString.EMPTY;
                ByteString byteString3 = ByteString.EMPTY;
                RabbitClientConfig.DeprecatedPaymentProcessor deprecatedPaymentProcessor2 = RabbitClientConfig.DeprecatedPaymentProcessor.UNKNOWN;
                ArrayList arrayList2 = new ArrayList();
                PaymentProcessor paymentProcessor = PaymentProcessor.UNKNOWN_PROCESSOR;
                ArrayList arrayList3 = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                ByteString byteStringDecode = byteString2;
                ClientCheckoutOptions clientCheckoutOptionsDecode = null;
                ClientUpgradeArgumentPb clientUpgradeArgumentPbDecode = null;
                IntervalPb intervalPbDecode = null;
                PinpadImageAssets pinpadImageAssetsDecode = null;
                TippingConfigPb tippingConfigPbDecode = null;
                RebootTimeWindowConfig rebootTimeWindowConfigDecode = null;
                TimeWindowConfig timeWindowConfigDecode = null;
                MagstripeConfig magstripeConfigDecode = null;
                OfflineConfigPb offlineConfigPbDecode = null;
                FormsConfigPb formsConfigPbDecode = null;
                LpmConfigPb lpmConfigPbDecode = null;
                ApiWifiConfig apiWifiConfigDecode = null;
                ApiAppThemeConfig apiAppThemeConfigDecode = null;
                int iIntValue = 0;
                boolean zBooleanValue = false;
                boolean zBooleanValue2 = false;
                String strDecode = "";
                PaymentProcessor paymentProcessorDecode = paymentProcessor;
                RabbitUxAssets rabbitUxAssetsDecode = null;
                ClientVisualConfig clientVisualConfigDecode = null;
                RabbitClientConfig.DeprecatedPaymentProcessor deprecatedPaymentProcessorDecode = deprecatedPaymentProcessor2;
                ByteString byteStringDecode2 = byteString3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                arrayList = arrayList3;
                                rabbitUxAssetsDecode = RabbitUxAssets.ADAPTER.decode(reader);
                                break;
                            case 2:
                                arrayList = arrayList3;
                                byteStringDecode = ProtoAdapter.BYTES.decode(reader);
                                break;
                            case 3:
                                arrayList = arrayList3;
                                byteStringDecode2 = ProtoAdapter.BYTES.decode(reader);
                                break;
                            case 4:
                            case 18:
                            case 22:
                            default:
                                byteString = byteStringDecode2;
                                deprecatedPaymentProcessor = deprecatedPaymentProcessorDecode;
                                arrayList = arrayList3;
                                reader.readUnknownField(iNextTag);
                                byteStringDecode2 = byteString;
                                deprecatedPaymentProcessorDecode = deprecatedPaymentProcessor;
                                break;
                            case 5:
                                arrayList = arrayList3;
                                iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                break;
                            case 6:
                                byteString = byteStringDecode2;
                                deprecatedPaymentProcessor = deprecatedPaymentProcessorDecode;
                                arrayList = arrayList3;
                                try {
                                    deprecatedPaymentProcessorDecode = RabbitClientConfig.DeprecatedPaymentProcessor.ADAPTER.decode(reader);
                                    byteStringDecode2 = byteString;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    byteStringDecode2 = byteString;
                                    deprecatedPaymentProcessorDecode = deprecatedPaymentProcessor;
                                }
                                break;
                            case 7:
                                arrayList = arrayList3;
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 8:
                                byteString = byteStringDecode2;
                                deprecatedPaymentProcessor = deprecatedPaymentProcessorDecode;
                                arrayList = arrayList3;
                                arrayList2.add(BinTablePb.BinEntry.ADAPTER.decode(reader));
                                byteStringDecode2 = byteString;
                                deprecatedPaymentProcessorDecode = deprecatedPaymentProcessor;
                                break;
                            case 9:
                                arrayList = arrayList3;
                                zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 10:
                                arrayList = arrayList3;
                                clientVisualConfigDecode = ClientVisualConfig.ADAPTER.decode(reader);
                                break;
                            case 11:
                                arrayList = arrayList3;
                                clientCheckoutOptionsDecode = ClientCheckoutOptions.ADAPTER.decode(reader);
                                break;
                            case 12:
                                arrayList = arrayList3;
                                clientUpgradeArgumentPbDecode = ClientUpgradeArgumentPb.ADAPTER.decode(reader);
                                break;
                            case 13:
                                arrayList = arrayList3;
                                intervalPbDecode = IntervalPb.ADAPTER.decode(reader);
                                break;
                            case 14:
                                arrayList = arrayList3;
                                pinpadImageAssetsDecode = PinpadImageAssets.ADAPTER.decode(reader);
                                break;
                            case 15:
                                arrayList = arrayList3;
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 16:
                                try {
                                    paymentProcessorDecode = PaymentProcessor.ADAPTER.decode(reader);
                                    arrayList = arrayList3;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                    byteString = byteStringDecode2;
                                    deprecatedPaymentProcessor = deprecatedPaymentProcessorDecode;
                                    arrayList = arrayList3;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                    byteStringDecode2 = byteString;
                                    deprecatedPaymentProcessorDecode = deprecatedPaymentProcessor;
                                }
                                break;
                            case 17:
                                arrayList3.add(BinTablePb.CardBinEntry.ADAPTER.decode(reader));
                                byteString = byteStringDecode2;
                                deprecatedPaymentProcessor = deprecatedPaymentProcessorDecode;
                                arrayList = arrayList3;
                                byteStringDecode2 = byteString;
                                deprecatedPaymentProcessorDecode = deprecatedPaymentProcessor;
                                break;
                            case 19:
                                tippingConfigPbDecode = TippingConfigPb.ADAPTER.decode(reader);
                                arrayList = arrayList3;
                                break;
                            case 20:
                                rebootTimeWindowConfigDecode = RebootTimeWindowConfig.ADAPTER.decode(reader);
                                arrayList = arrayList3;
                                break;
                            case 21:
                                timeWindowConfigDecode = TimeWindowConfig.ADAPTER.decode(reader);
                                arrayList = arrayList3;
                                break;
                            case 23:
                                magstripeConfigDecode = MagstripeConfig.ADAPTER.decode(reader);
                                arrayList = arrayList3;
                                break;
                            case 24:
                                offlineConfigPbDecode = OfflineConfigPb.ADAPTER.decode(reader);
                                arrayList = arrayList3;
                                break;
                            case 25:
                                formsConfigPbDecode = FormsConfigPb.ADAPTER.decode(reader);
                                arrayList = arrayList3;
                                break;
                            case 26:
                                lpmConfigPbDecode = LpmConfigPb.ADAPTER.decode(reader);
                                arrayList = arrayList3;
                                break;
                            case 27:
                                apiWifiConfigDecode = ApiWifiConfig.ADAPTER.decode(reader);
                                arrayList = arrayList3;
                                break;
                            case 28:
                                apiAppThemeConfigDecode = ApiAppThemeConfig.ADAPTER.decode(reader);
                                arrayList = arrayList3;
                                break;
                        }
                        arrayList3 = arrayList;
                    } else {
                        return new RabbitClientConfig(rabbitUxAssetsDecode, byteStringDecode, clientVisualConfigDecode, byteStringDecode2, clientCheckoutOptionsDecode, iIntValue, deprecatedPaymentProcessorDecode, zBooleanValue, zBooleanValue2, arrayList2, clientUpgradeArgumentPbDecode, intervalPbDecode, pinpadImageAssetsDecode, strDecode, paymentProcessorDecode, arrayList3, tippingConfigPbDecode, rebootTimeWindowConfigDecode, timeWindowConfigDecode, magstripeConfigDecode, offlineConfigPbDecode, formsConfigPbDecode, lpmConfigPbDecode, apiWifiConfigDecode, apiAppThemeConfigDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RabbitClientConfig redact(RabbitClientConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                RabbitUxAssets rabbitUxAssets = value.ux_assets;
                RabbitUxAssets rabbitUxAssetsRedact = rabbitUxAssets != null ? RabbitUxAssets.ADAPTER.redact(rabbitUxAssets) : null;
                ClientVisualConfig clientVisualConfig = value.client_visual_config;
                ClientVisualConfig clientVisualConfigRedact = clientVisualConfig != null ? ClientVisualConfig.ADAPTER.redact(clientVisualConfig) : null;
                ClientCheckoutOptions clientCheckoutOptions = value.client_checkout_options;
                ClientCheckoutOptions clientCheckoutOptionsRedact = clientCheckoutOptions != null ? ClientCheckoutOptions.ADAPTER.redact(clientCheckoutOptions) : null;
                List listM361redactElements = Internal.m361redactElements(value.gift_card_bin_entries, BinTablePb.BinEntry.ADAPTER);
                ClientUpgradeArgumentPb clientUpgradeArgumentPb = value.uptime_reset_parameters;
                ClientUpgradeArgumentPb clientUpgradeArgumentPbRedact = clientUpgradeArgumentPb != null ? ClientUpgradeArgumentPb.ADAPTER.redact(clientUpgradeArgumentPb) : null;
                IntervalPb intervalPb = value.reset_window;
                IntervalPb intervalPbRedact = intervalPb != null ? IntervalPb.ADAPTER.redact(intervalPb) : null;
                PinpadImageAssets pinpadImageAssets = value.pinpad_image_assets;
                PinpadImageAssets pinpadImageAssetsRedact = pinpadImageAssets != null ? PinpadImageAssets.ADAPTER.redact(pinpadImageAssets) : null;
                List listM361redactElements2 = Internal.m361redactElements(value.card_bin_entries, BinTablePb.CardBinEntry.ADAPTER);
                TippingConfigPb tippingConfigPb = value.tipping_config;
                TippingConfigPb tippingConfigPbRedact = tippingConfigPb != null ? TippingConfigPb.ADAPTER.redact(tippingConfigPb) : null;
                RebootTimeWindowConfig rebootTimeWindowConfig = value.reboot_time_window;
                RebootTimeWindowConfig rebootTimeWindowConfigRedact = rebootTimeWindowConfig != null ? RebootTimeWindowConfig.ADAPTER.redact(rebootTimeWindowConfig) : null;
                TimeWindowConfig timeWindowConfig = value.reboot_schedule;
                TimeWindowConfig timeWindowConfigRedact = timeWindowConfig != null ? TimeWindowConfig.ADAPTER.redact(timeWindowConfig) : null;
                MagstripeConfig magstripeConfig = value.magstripe_config;
                MagstripeConfig magstripeConfigRedact = magstripeConfig != null ? MagstripeConfig.ADAPTER.redact(magstripeConfig) : null;
                OfflineConfigPb offlineConfigPb = value.offline_configuration;
                OfflineConfigPb offlineConfigPbRedact = offlineConfigPb != null ? OfflineConfigPb.ADAPTER.redact(offlineConfigPb) : null;
                FormsConfigPb formsConfigPb = value.forms_config;
                FormsConfigPb formsConfigPbRedact = formsConfigPb != null ? FormsConfigPb.ADAPTER.redact(formsConfigPb) : null;
                LpmConfigPb lpmConfigPb = value.lpm_config;
                LpmConfigPb lpmConfigPbRedact = lpmConfigPb != null ? LpmConfigPb.ADAPTER.redact(lpmConfigPb) : null;
                ApiWifiConfig apiWifiConfig = value.wifi_config;
                ApiWifiConfig apiWifiConfigRedact = apiWifiConfig != null ? ApiWifiConfig.ADAPTER.redact(apiWifiConfig) : null;
                ApiAppThemeConfig apiAppThemeConfig = value.app_theme_config;
                return RabbitClientConfig.copy$default(value, rabbitUxAssetsRedact, null, clientVisualConfigRedact, null, clientCheckoutOptionsRedact, 0, null, false, false, listM361redactElements, clientUpgradeArgumentPbRedact, intervalPbRedact, pinpadImageAssetsRedact, null, null, listM361redactElements2, tippingConfigPbRedact, rebootTimeWindowConfigRedact, timeWindowConfigRedact, magstripeConfigRedact, offlineConfigPbRedact, formsConfigPbRedact, lpmConfigPbRedact, apiWifiConfigRedact, apiAppThemeConfig != null ? ApiAppThemeConfig.ADAPTER.redact(apiAppThemeConfig) : null, ByteString.EMPTY, 25066, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: RabbitClientConfig.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN", "CHASE", "FIRST_DATA", "VANTIV", "WORLDPAY", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DeprecatedPaymentProcessor implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ DeprecatedPaymentProcessor[] $VALUES;
        public static final ProtoAdapter<DeprecatedPaymentProcessor> ADAPTER;
        public static final DeprecatedPaymentProcessor CHASE;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final DeprecatedPaymentProcessor FIRST_DATA;
        public static final DeprecatedPaymentProcessor UNKNOWN;
        public static final DeprecatedPaymentProcessor VANTIV;
        public static final DeprecatedPaymentProcessor WORLDPAY;
        private final int value;

        private static final /* synthetic */ DeprecatedPaymentProcessor[] $values() {
            return new DeprecatedPaymentProcessor[]{UNKNOWN, CHASE, FIRST_DATA, VANTIV, WORLDPAY};
        }

        @JvmStatic
        public static final DeprecatedPaymentProcessor fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<DeprecatedPaymentProcessor> getEntries() {
            return $ENTRIES;
        }

        public static DeprecatedPaymentProcessor valueOf(String str) {
            return (DeprecatedPaymentProcessor) Enum.valueOf(DeprecatedPaymentProcessor.class, str);
        }

        public static DeprecatedPaymentProcessor[] values() {
            return (DeprecatedPaymentProcessor[]) $VALUES.clone();
        }

        private DeprecatedPaymentProcessor(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final DeprecatedPaymentProcessor deprecatedPaymentProcessor = new DeprecatedPaymentProcessor("UNKNOWN", 0, 0);
            UNKNOWN = deprecatedPaymentProcessor;
            CHASE = new DeprecatedPaymentProcessor("CHASE", 1, 1);
            FIRST_DATA = new DeprecatedPaymentProcessor("FIRST_DATA", 2, 2);
            VANTIV = new DeprecatedPaymentProcessor("VANTIV", 3, 3);
            WORLDPAY = new DeprecatedPaymentProcessor("WORLDPAY", 4, 4);
            DeprecatedPaymentProcessor[] deprecatedPaymentProcessorArr$values = $values();
            $VALUES = deprecatedPaymentProcessorArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(deprecatedPaymentProcessorArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeprecatedPaymentProcessor.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<DeprecatedPaymentProcessor>(orCreateKotlinClass, syntax, deprecatedPaymentProcessor) { // from class: com.stripe.proto.model.config.RabbitClientConfig$DeprecatedPaymentProcessor$Companion$ADAPTER$1
                {
                    RabbitClientConfig.DeprecatedPaymentProcessor deprecatedPaymentProcessor2 = deprecatedPaymentProcessor;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public RabbitClientConfig.DeprecatedPaymentProcessor fromValue(int value) {
                    return RabbitClientConfig.DeprecatedPaymentProcessor.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: RabbitClientConfig.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final DeprecatedPaymentProcessor fromValue(int value) {
                if (value == 0) {
                    return DeprecatedPaymentProcessor.UNKNOWN;
                }
                if (value == 1) {
                    return DeprecatedPaymentProcessor.CHASE;
                }
                if (value == 2) {
                    return DeprecatedPaymentProcessor.FIRST_DATA;
                }
                if (value == 3) {
                    return DeprecatedPaymentProcessor.VANTIV;
                }
                if (value != 4) {
                    return null;
                }
                return DeprecatedPaymentProcessor.WORLDPAY;
            }
        }
    }
}
