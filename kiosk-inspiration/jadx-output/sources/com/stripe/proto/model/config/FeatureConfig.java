package com.stripe.proto.model.config;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.terminal.terminal.pub.message.config.ApiAppThemeConfig;
import com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: FeatureConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000  2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001f Bg\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014Jh\u0010\u0015\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0002H\u0016J\b\u0010\u001d\u001a\u00020\u001eH\u0016R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/stripe/proto/model/config/FeatureConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/FeatureConfig$Builder;", "device_type_specific_feature_configs", "", "Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;", "tipping_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "reboot_schedule", "Lcom/stripe/proto/model/config/ApiTimeWindowConfig;", OfflineStorageConstantsKt.OFFLINE_CONFIG, "Lcom/stripe/proto/model/config/OfflineConfig;", "dynamic_currency_conversion_config", "Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;", "wifi_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;", "app_theme_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/ApiTimeWindowConfig;Lcom/stripe/proto/model/config/OfflineConfig;Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FeatureConfig extends Message<FeatureConfig, Builder> {
    public static final ProtoAdapter<FeatureConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiAppThemeConfig#ADAPTER", jsonName = "appThemeConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final ApiAppThemeConfig app_theme_config;

    @WireField(adapter = "com.stripe.proto.model.config.DeviceTypeSpecificFeatureConfig#ADAPTER", jsonName = "deviceTypeSpecificFeatureConfigs", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<DeviceTypeSpecificFeatureConfig> device_type_specific_feature_configs;

    @WireField(adapter = "com.stripe.proto.model.config.DynamicCurrencyConversionConfig#ADAPTER", jsonName = "dynamicCurrencyConversionConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final DynamicCurrencyConversionConfig dynamic_currency_conversion_config;

    @WireField(adapter = "com.stripe.proto.model.config.OfflineConfig#ADAPTER", jsonName = "offlineConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final OfflineConfig offline_config;

    @WireField(adapter = "com.stripe.proto.model.config.ApiTimeWindowConfig#ADAPTER", jsonName = "rebootSchedule", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final ApiTimeWindowConfig reboot_schedule;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb#ADAPTER", jsonName = "tippingConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final TippingConfigPb tipping_config;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig#ADAPTER", jsonName = "wifiConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final ApiWifiConfig wifi_config;

    public FeatureConfig() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public /* synthetic */ FeatureConfig(List list, TippingConfigPb tippingConfigPb, ApiTimeWindowConfig apiTimeWindowConfig, OfflineConfig offlineConfig, DynamicCurrencyConversionConfig dynamicCurrencyConversionConfig, ApiWifiConfig apiWifiConfig, ApiAppThemeConfig apiAppThemeConfig, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : tippingConfigPb, (i & 4) != 0 ? null : apiTimeWindowConfig, (i & 8) != 0 ? null : offlineConfig, (i & 16) != 0 ? null : dynamicCurrencyConversionConfig, (i & 32) != 0 ? null : apiWifiConfig, (i & 64) != 0 ? null : apiAppThemeConfig, (i & 128) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeatureConfig(List<DeviceTypeSpecificFeatureConfig> device_type_specific_feature_configs, TippingConfigPb tippingConfigPb, ApiTimeWindowConfig apiTimeWindowConfig, OfflineConfig offlineConfig, DynamicCurrencyConversionConfig dynamicCurrencyConversionConfig, ApiWifiConfig apiWifiConfig, ApiAppThemeConfig apiAppThemeConfig, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(device_type_specific_feature_configs, "device_type_specific_feature_configs");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.tipping_config = tippingConfigPb;
        this.reboot_schedule = apiTimeWindowConfig;
        this.offline_config = offlineConfig;
        this.dynamic_currency_conversion_config = dynamicCurrencyConversionConfig;
        this.wifi_config = apiWifiConfig;
        this.app_theme_config = apiAppThemeConfig;
        this.device_type_specific_feature_configs = Internal.immutableCopyOf("device_type_specific_feature_configs", device_type_specific_feature_configs);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_type_specific_feature_configs = this.device_type_specific_feature_configs;
        builder.tipping_config = this.tipping_config;
        builder.reboot_schedule = this.reboot_schedule;
        builder.offline_config = this.offline_config;
        builder.dynamic_currency_conversion_config = this.dynamic_currency_conversion_config;
        builder.wifi_config = this.wifi_config;
        builder.app_theme_config = this.app_theme_config;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof FeatureConfig)) {
            return false;
        }
        FeatureConfig featureConfig = (FeatureConfig) other;
        return Intrinsics.areEqual(unknownFields(), featureConfig.unknownFields()) && Intrinsics.areEqual(this.device_type_specific_feature_configs, featureConfig.device_type_specific_feature_configs) && Intrinsics.areEqual(this.tipping_config, featureConfig.tipping_config) && Intrinsics.areEqual(this.reboot_schedule, featureConfig.reboot_schedule) && Intrinsics.areEqual(this.offline_config, featureConfig.offline_config) && Intrinsics.areEqual(this.dynamic_currency_conversion_config, featureConfig.dynamic_currency_conversion_config) && Intrinsics.areEqual(this.wifi_config, featureConfig.wifi_config) && Intrinsics.areEqual(this.app_theme_config, featureConfig.app_theme_config);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.device_type_specific_feature_configs.hashCode()) * 37;
        TippingConfigPb tippingConfigPb = this.tipping_config;
        int iHashCode2 = (iHashCode + (tippingConfigPb != null ? tippingConfigPb.hashCode() : 0)) * 37;
        ApiTimeWindowConfig apiTimeWindowConfig = this.reboot_schedule;
        int iHashCode3 = (iHashCode2 + (apiTimeWindowConfig != null ? apiTimeWindowConfig.hashCode() : 0)) * 37;
        OfflineConfig offlineConfig = this.offline_config;
        int iHashCode4 = (iHashCode3 + (offlineConfig != null ? offlineConfig.hashCode() : 0)) * 37;
        DynamicCurrencyConversionConfig dynamicCurrencyConversionConfig = this.dynamic_currency_conversion_config;
        int iHashCode5 = (iHashCode4 + (dynamicCurrencyConversionConfig != null ? dynamicCurrencyConversionConfig.hashCode() : 0)) * 37;
        ApiWifiConfig apiWifiConfig = this.wifi_config;
        int iHashCode6 = (iHashCode5 + (apiWifiConfig != null ? apiWifiConfig.hashCode() : 0)) * 37;
        ApiAppThemeConfig apiAppThemeConfig = this.app_theme_config;
        int iHashCode7 = iHashCode6 + (apiAppThemeConfig != null ? apiAppThemeConfig.hashCode() : 0);
        this.hashCode = iHashCode7;
        return iHashCode7;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.device_type_specific_feature_configs.isEmpty()) {
            arrayList.add("device_type_specific_feature_configs=" + this.device_type_specific_feature_configs);
        }
        if (this.tipping_config != null) {
            arrayList.add("tipping_config=" + this.tipping_config);
        }
        if (this.reboot_schedule != null) {
            arrayList.add("reboot_schedule=" + this.reboot_schedule);
        }
        if (this.offline_config != null) {
            arrayList.add("offline_config=" + this.offline_config);
        }
        if (this.dynamic_currency_conversion_config != null) {
            arrayList.add("dynamic_currency_conversion_config=" + this.dynamic_currency_conversion_config);
        }
        if (this.wifi_config != null) {
            arrayList.add("wifi_config=" + this.wifi_config);
        }
        if (this.app_theme_config != null) {
            arrayList.add("app_theme_config=" + this.app_theme_config);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "FeatureConfig{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FeatureConfig copy$default(FeatureConfig featureConfig, List list, TippingConfigPb tippingConfigPb, ApiTimeWindowConfig apiTimeWindowConfig, OfflineConfig offlineConfig, DynamicCurrencyConversionConfig dynamicCurrencyConversionConfig, ApiWifiConfig apiWifiConfig, ApiAppThemeConfig apiAppThemeConfig, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = featureConfig.device_type_specific_feature_configs;
        }
        if ((i & 2) != 0) {
            tippingConfigPb = featureConfig.tipping_config;
        }
        if ((i & 4) != 0) {
            apiTimeWindowConfig = featureConfig.reboot_schedule;
        }
        if ((i & 8) != 0) {
            offlineConfig = featureConfig.offline_config;
        }
        if ((i & 16) != 0) {
            dynamicCurrencyConversionConfig = featureConfig.dynamic_currency_conversion_config;
        }
        if ((i & 32) != 0) {
            apiWifiConfig = featureConfig.wifi_config;
        }
        if ((i & 64) != 0) {
            apiAppThemeConfig = featureConfig.app_theme_config;
        }
        if ((i & 128) != 0) {
            byteString = featureConfig.unknownFields();
        }
        ApiAppThemeConfig apiAppThemeConfig2 = apiAppThemeConfig;
        ByteString byteString2 = byteString;
        DynamicCurrencyConversionConfig dynamicCurrencyConversionConfig2 = dynamicCurrencyConversionConfig;
        ApiWifiConfig apiWifiConfig2 = apiWifiConfig;
        return featureConfig.copy(list, tippingConfigPb, apiTimeWindowConfig, offlineConfig, dynamicCurrencyConversionConfig2, apiWifiConfig2, apiAppThemeConfig2, byteString2);
    }

    public final FeatureConfig copy(List<DeviceTypeSpecificFeatureConfig> device_type_specific_feature_configs, TippingConfigPb tipping_config, ApiTimeWindowConfig reboot_schedule, OfflineConfig offline_config, DynamicCurrencyConversionConfig dynamic_currency_conversion_config, ApiWifiConfig wifi_config, ApiAppThemeConfig app_theme_config, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(device_type_specific_feature_configs, "device_type_specific_feature_configs");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new FeatureConfig(device_type_specific_feature_configs, tipping_config, reboot_schedule, offline_config, dynamic_currency_conversion_config, wifi_config, app_theme_config, unknownFields);
    }

    /* JADX INFO: compiled from: FeatureConfig.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/config/FeatureConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/FeatureConfig;", "()V", "app_theme_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;", "device_type_specific_feature_configs", "", "Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;", "dynamic_currency_conversion_config", "Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;", OfflineStorageConstantsKt.OFFLINE_CONFIG, "Lcom/stripe/proto/model/config/OfflineConfig;", "reboot_schedule", "Lcom/stripe/proto/model/config/ApiTimeWindowConfig;", "tipping_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "wifi_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<FeatureConfig, Builder> {
        public ApiAppThemeConfig app_theme_config;
        public List<DeviceTypeSpecificFeatureConfig> device_type_specific_feature_configs = CollectionsKt.emptyList();
        public DynamicCurrencyConversionConfig dynamic_currency_conversion_config;
        public OfflineConfig offline_config;
        public ApiTimeWindowConfig reboot_schedule;
        public TippingConfigPb tipping_config;
        public ApiWifiConfig wifi_config;

        public final Builder device_type_specific_feature_configs(List<DeviceTypeSpecificFeatureConfig> device_type_specific_feature_configs) {
            Intrinsics.checkNotNullParameter(device_type_specific_feature_configs, "device_type_specific_feature_configs");
            Internal.checkElementsNotNull(device_type_specific_feature_configs);
            this.device_type_specific_feature_configs = device_type_specific_feature_configs;
            return this;
        }

        public final Builder tipping_config(TippingConfigPb tipping_config) {
            this.tipping_config = tipping_config;
            return this;
        }

        public final Builder reboot_schedule(ApiTimeWindowConfig reboot_schedule) {
            this.reboot_schedule = reboot_schedule;
            return this;
        }

        public final Builder offline_config(OfflineConfig offline_config) {
            this.offline_config = offline_config;
            return this;
        }

        public final Builder dynamic_currency_conversion_config(DynamicCurrencyConversionConfig dynamic_currency_conversion_config) {
            this.dynamic_currency_conversion_config = dynamic_currency_conversion_config;
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
        public FeatureConfig build() {
            return new FeatureConfig(this.device_type_specific_feature_configs, this.tipping_config, this.reboot_schedule, this.offline_config, this.dynamic_currency_conversion_config, this.wifi_config, this.app_theme_config, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: FeatureConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/FeatureConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/FeatureConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/FeatureConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ FeatureConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(FeatureConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<FeatureConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.FeatureConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(FeatureConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + DeviceTypeSpecificFeatureConfig.ADAPTER.asRepeated().encodedSizeWithTag(1, value.device_type_specific_feature_configs);
                if (value.tipping_config != null) {
                    size += TippingConfigPb.ADAPTER.encodedSizeWithTag(2, value.tipping_config);
                }
                if (value.reboot_schedule != null) {
                    size += ApiTimeWindowConfig.ADAPTER.encodedSizeWithTag(3, value.reboot_schedule);
                }
                if (value.offline_config != null) {
                    size += OfflineConfig.ADAPTER.encodedSizeWithTag(4, value.offline_config);
                }
                if (value.dynamic_currency_conversion_config != null) {
                    size += DynamicCurrencyConversionConfig.ADAPTER.encodedSizeWithTag(5, value.dynamic_currency_conversion_config);
                }
                if (value.wifi_config != null) {
                    size += ApiWifiConfig.ADAPTER.encodedSizeWithTag(6, value.wifi_config);
                }
                return value.app_theme_config != null ? size + ApiAppThemeConfig.ADAPTER.encodedSizeWithTag(7, value.app_theme_config) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, FeatureConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceTypeSpecificFeatureConfig.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.device_type_specific_feature_configs);
                if (value.tipping_config != null) {
                    TippingConfigPb.ADAPTER.encodeWithTag(writer, 2, value.tipping_config);
                }
                if (value.reboot_schedule != null) {
                    ApiTimeWindowConfig.ADAPTER.encodeWithTag(writer, 3, value.reboot_schedule);
                }
                if (value.offline_config != null) {
                    OfflineConfig.ADAPTER.encodeWithTag(writer, 4, value.offline_config);
                }
                if (value.dynamic_currency_conversion_config != null) {
                    DynamicCurrencyConversionConfig.ADAPTER.encodeWithTag(writer, 5, value.dynamic_currency_conversion_config);
                }
                if (value.wifi_config != null) {
                    ApiWifiConfig.ADAPTER.encodeWithTag(writer, 6, value.wifi_config);
                }
                if (value.app_theme_config != null) {
                    ApiAppThemeConfig.ADAPTER.encodeWithTag(writer, 7, value.app_theme_config);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, FeatureConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.app_theme_config != null) {
                    ApiAppThemeConfig.ADAPTER.encodeWithTag(writer, 7, value.app_theme_config);
                }
                if (value.wifi_config != null) {
                    ApiWifiConfig.ADAPTER.encodeWithTag(writer, 6, value.wifi_config);
                }
                if (value.dynamic_currency_conversion_config != null) {
                    DynamicCurrencyConversionConfig.ADAPTER.encodeWithTag(writer, 5, value.dynamic_currency_conversion_config);
                }
                if (value.offline_config != null) {
                    OfflineConfig.ADAPTER.encodeWithTag(writer, 4, value.offline_config);
                }
                if (value.reboot_schedule != null) {
                    ApiTimeWindowConfig.ADAPTER.encodeWithTag(writer, 3, value.reboot_schedule);
                }
                if (value.tipping_config != null) {
                    TippingConfigPb.ADAPTER.encodeWithTag(writer, 2, value.tipping_config);
                }
                DeviceTypeSpecificFeatureConfig.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.device_type_specific_feature_configs);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public FeatureConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                TippingConfigPb tippingConfigPbDecode = null;
                ApiTimeWindowConfig apiTimeWindowConfigDecode = null;
                OfflineConfig offlineConfigDecode = null;
                DynamicCurrencyConversionConfig dynamicCurrencyConversionConfigDecode = null;
                ApiWifiConfig apiWifiConfigDecode = null;
                ApiAppThemeConfig apiAppThemeConfigDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                arrayList.add(DeviceTypeSpecificFeatureConfig.ADAPTER.decode(reader));
                                break;
                            case 2:
                                tippingConfigPbDecode = TippingConfigPb.ADAPTER.decode(reader);
                                break;
                            case 3:
                                apiTimeWindowConfigDecode = ApiTimeWindowConfig.ADAPTER.decode(reader);
                                break;
                            case 4:
                                offlineConfigDecode = OfflineConfig.ADAPTER.decode(reader);
                                break;
                            case 5:
                                dynamicCurrencyConversionConfigDecode = DynamicCurrencyConversionConfig.ADAPTER.decode(reader);
                                break;
                            case 6:
                                apiWifiConfigDecode = ApiWifiConfig.ADAPTER.decode(reader);
                                break;
                            case 7:
                                apiAppThemeConfigDecode = ApiAppThemeConfig.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new FeatureConfig(arrayList, tippingConfigPbDecode, apiTimeWindowConfigDecode, offlineConfigDecode, dynamicCurrencyConversionConfigDecode, apiWifiConfigDecode, apiAppThemeConfigDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public FeatureConfig redact(FeatureConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                List<DeviceTypeSpecificFeatureConfig> listM361redactElements = Internal.m361redactElements(value.device_type_specific_feature_configs, DeviceTypeSpecificFeatureConfig.ADAPTER);
                TippingConfigPb tippingConfigPb = value.tipping_config;
                TippingConfigPb tippingConfigPbRedact = tippingConfigPb != null ? TippingConfigPb.ADAPTER.redact(tippingConfigPb) : null;
                ApiTimeWindowConfig apiTimeWindowConfig = value.reboot_schedule;
                ApiTimeWindowConfig apiTimeWindowConfigRedact = apiTimeWindowConfig != null ? ApiTimeWindowConfig.ADAPTER.redact(apiTimeWindowConfig) : null;
                OfflineConfig offlineConfig = value.offline_config;
                OfflineConfig offlineConfigRedact = offlineConfig != null ? OfflineConfig.ADAPTER.redact(offlineConfig) : null;
                DynamicCurrencyConversionConfig dynamicCurrencyConversionConfig = value.dynamic_currency_conversion_config;
                DynamicCurrencyConversionConfig dynamicCurrencyConversionConfigRedact = dynamicCurrencyConversionConfig != null ? DynamicCurrencyConversionConfig.ADAPTER.redact(dynamicCurrencyConversionConfig) : null;
                ApiWifiConfig apiWifiConfig = value.wifi_config;
                ApiWifiConfig apiWifiConfigRedact = apiWifiConfig != null ? ApiWifiConfig.ADAPTER.redact(apiWifiConfig) : null;
                ApiAppThemeConfig apiAppThemeConfig = value.app_theme_config;
                return value.copy(listM361redactElements, tippingConfigPbRedact, apiTimeWindowConfigRedact, offlineConfigRedact, dynamicCurrencyConversionConfigRedact, apiWifiConfigRedact, apiAppThemeConfig != null ? ApiAppThemeConfig.ADAPTER.redact(apiAppThemeConfig) : null, ByteString.EMPTY);
            }
        };
    }
}
