package com.stripe.proto.model.config;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.common.ClientUpgradeArgumentPb;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ClientCheckoutOptions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 -2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002,-BÃ\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\t\u0012\b\b\u0002\u0010\u000e\u001a\u00020\t\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001c¢\u0006\u0002\u0010\u001dJÉ\u0001\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\t2\b\b\u0002\u0010\u000e\u001a\u00020\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00102\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0015\u001a\u00020\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u001b\u001a\u00020\u001c¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020\u00102\b\u0010&\u001a\u0004\u0018\u00010'H\u0096\u0002J\b\u0010(\u001a\u00020\u0004H\u0016J\b\u0010)\u001a\u00020\u0002H\u0016J\b\u0010*\u001a\u00020+H\u0016R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0010\u0010\u000e\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001f\u0010 R\u0010\u0010\u0015\u001a\u00020\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b!\u0010 R\u0010\u0010\u0013\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\"¨\u0006."}, d2 = {"Lcom/stripe/proto/model/config/ClientCheckoutOptions;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;", "volume", "", "contact_emv_config", "Lcom/stripe/proto/model/config/ContactEmvConfig;", "offline_contact_emv_config", "signature_threshold", "", "refund_signature_threshold", "device_trace_level", "Lcom/stripe/proto/model/config/DeviceTraceLevel;", "summary_delay", "confirm_amount_threshold", "collect_signature_on_swipe", "", "uptime_reset_parameters", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;", "redact_masked_pan_to_last_4", "disable_screen_dimming", "default_locale", "Lcom/stripe/proto/model/config/Locale;", "allow_tipping", "vector_config", "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;", "increment_num_of_canceled_payments_on_query", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "getContact_emv_config$annotations", "()V", "getOffline_contact_emv_config$annotations", "Ljava/lang/Integer;", "copy", "(Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/model/config/ClientCheckoutOptions;", "equals", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ClientCheckoutOptions extends Message<ClientCheckoutOptions, Builder> {
    public static final ProtoAdapter<ClientCheckoutOptions> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "allowTipping", schemaIndex = 13, tag = 14)
    public final Boolean allow_tipping;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "collectSignatureOnSwipe", schemaIndex = 8, tag = 13)
    public final Boolean collect_signature_on_swipe;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "confirmAmountThreshold", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final long confirm_amount_threshold;

    @WireField(adapter = "com.stripe.proto.model.config.ContactEmvConfig#ADAPTER", jsonName = "contactEmvConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ContactEmvConfig contact_emv_config;

    @WireField(adapter = "com.stripe.proto.model.config.Locale#ADAPTER", jsonName = "defaultLocale", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 12)
    public final Locale default_locale;

    @WireField(adapter = "com.stripe.proto.model.config.DeviceTraceLevel#ADAPTER", jsonName = "deviceTraceLevel", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final DeviceTraceLevel device_trace_level;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "disableScreenDimming", schemaIndex = 11, tag = 11)
    public final Boolean disable_screen_dimming;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "incrementNumOfCanceledPaymentsOnQuery", schemaIndex = 15, tag = 16)
    public final Boolean increment_num_of_canceled_payments_on_query;

    @WireField(adapter = "com.stripe.proto.model.config.ContactEmvConfig#ADAPTER", jsonName = "offlineContactEmvConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final ContactEmvConfig offline_contact_emv_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "redactMaskedPanToLast4", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 10)
    public final boolean redact_masked_pan_to_last_4;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "refundSignatureThreshold", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final long refund_signature_threshold;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "signatureThreshold", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final long signature_threshold;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "summaryDelay", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final long summary_delay;

    @WireField(adapter = "com.stripe.proto.model.common.ClientUpgradeArgumentPb#ADAPTER", jsonName = "uptimeResetParameters", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 9)
    public final ClientUpgradeArgumentPb uptime_reset_parameters;

    @WireField(adapter = "com.stripe.proto.model.config.VectorRegionalConfiguration#ADAPTER", jsonName = "vectorConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 15)
    public final VectorRegionalConfiguration vector_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", schemaIndex = 0, tag = 1)
    public final Integer volume;

    public ClientCheckoutOptions() {
        this(null, null, null, 0L, 0L, null, 0L, 0L, null, null, false, null, null, null, null, null, null, 131071, null);
    }

    @Deprecated(message = "contact_emv_config is deprecated")
    public static /* synthetic */ void getContact_emv_config$annotations() {
    }

    @Deprecated(message = "offline_contact_emv_config is deprecated")
    public static /* synthetic */ void getOffline_contact_emv_config$annotations() {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ClientCheckoutOptions(Integer num, ContactEmvConfig contactEmvConfig, ContactEmvConfig contactEmvConfig2, long j, long j2, DeviceTraceLevel deviceTraceLevel, long j3, long j4, Boolean bool, ClientUpgradeArgumentPb clientUpgradeArgumentPb, boolean z, Boolean bool2, Locale locale, Boolean bool3, VectorRegionalConfiguration vectorRegionalConfiguration, Boolean bool4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        Integer num2 = (i & 1) != 0 ? null : num;
        ContactEmvConfig contactEmvConfig3 = (i & 2) != 0 ? null : contactEmvConfig;
        ContactEmvConfig contactEmvConfig4 = (i & 4) != 0 ? null : contactEmvConfig2;
        long j5 = (i & 8) != 0 ? 0L : j;
        long j6 = (i & 16) != 0 ? 0L : j2;
        DeviceTraceLevel deviceTraceLevel2 = (i & 32) != 0 ? null : deviceTraceLevel;
        long j7 = (i & 64) != 0 ? 0L : j3;
        this(num2, contactEmvConfig3, contactEmvConfig4, j5, j6, deviceTraceLevel2, j7, (i & 128) == 0 ? j4 : 0L, (i & 256) != 0 ? null : bool, (i & 512) != 0 ? null : clientUpgradeArgumentPb, (i & 1024) != 0 ? false : z, (i & 2048) != 0 ? null : bool2, (i & 4096) != 0 ? Locale.INVALID_LOCALE : locale, (i & 8192) != 0 ? null : bool3, (i & 16384) != 0 ? null : vectorRegionalConfiguration, (i & 32768) != 0 ? null : bool4, (i & 65536) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientCheckoutOptions(Integer num, ContactEmvConfig contactEmvConfig, ContactEmvConfig contactEmvConfig2, long j, long j2, DeviceTraceLevel deviceTraceLevel, long j3, long j4, Boolean bool, ClientUpgradeArgumentPb clientUpgradeArgumentPb, boolean z, Boolean bool2, Locale default_locale, Boolean bool3, VectorRegionalConfiguration vectorRegionalConfiguration, Boolean bool4, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(default_locale, "default_locale");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.volume = num;
        this.contact_emv_config = contactEmvConfig;
        this.offline_contact_emv_config = contactEmvConfig2;
        this.signature_threshold = j;
        this.refund_signature_threshold = j2;
        this.device_trace_level = deviceTraceLevel;
        this.summary_delay = j3;
        this.confirm_amount_threshold = j4;
        this.collect_signature_on_swipe = bool;
        this.uptime_reset_parameters = clientUpgradeArgumentPb;
        this.redact_masked_pan_to_last_4 = z;
        this.disable_screen_dimming = bool2;
        this.default_locale = default_locale;
        this.allow_tipping = bool3;
        this.vector_config = vectorRegionalConfiguration;
        this.increment_num_of_canceled_payments_on_query = bool4;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.volume = this.volume;
        builder.contact_emv_config = this.contact_emv_config;
        builder.offline_contact_emv_config = this.offline_contact_emv_config;
        builder.signature_threshold = this.signature_threshold;
        builder.refund_signature_threshold = this.refund_signature_threshold;
        builder.device_trace_level = this.device_trace_level;
        builder.summary_delay = this.summary_delay;
        builder.confirm_amount_threshold = this.confirm_amount_threshold;
        builder.collect_signature_on_swipe = this.collect_signature_on_swipe;
        builder.uptime_reset_parameters = this.uptime_reset_parameters;
        builder.redact_masked_pan_to_last_4 = this.redact_masked_pan_to_last_4;
        builder.disable_screen_dimming = this.disable_screen_dimming;
        builder.default_locale = this.default_locale;
        builder.allow_tipping = this.allow_tipping;
        builder.vector_config = this.vector_config;
        builder.increment_num_of_canceled_payments_on_query = this.increment_num_of_canceled_payments_on_query;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ClientCheckoutOptions)) {
            return false;
        }
        ClientCheckoutOptions clientCheckoutOptions = (ClientCheckoutOptions) other;
        return Intrinsics.areEqual(unknownFields(), clientCheckoutOptions.unknownFields()) && Intrinsics.areEqual(this.volume, clientCheckoutOptions.volume) && Intrinsics.areEqual(this.contact_emv_config, clientCheckoutOptions.contact_emv_config) && Intrinsics.areEqual(this.offline_contact_emv_config, clientCheckoutOptions.offline_contact_emv_config) && this.signature_threshold == clientCheckoutOptions.signature_threshold && this.refund_signature_threshold == clientCheckoutOptions.refund_signature_threshold && Intrinsics.areEqual(this.device_trace_level, clientCheckoutOptions.device_trace_level) && this.summary_delay == clientCheckoutOptions.summary_delay && this.confirm_amount_threshold == clientCheckoutOptions.confirm_amount_threshold && Intrinsics.areEqual(this.collect_signature_on_swipe, clientCheckoutOptions.collect_signature_on_swipe) && Intrinsics.areEqual(this.uptime_reset_parameters, clientCheckoutOptions.uptime_reset_parameters) && this.redact_masked_pan_to_last_4 == clientCheckoutOptions.redact_masked_pan_to_last_4 && Intrinsics.areEqual(this.disable_screen_dimming, clientCheckoutOptions.disable_screen_dimming) && this.default_locale == clientCheckoutOptions.default_locale && Intrinsics.areEqual(this.allow_tipping, clientCheckoutOptions.allow_tipping) && Intrinsics.areEqual(this.vector_config, clientCheckoutOptions.vector_config) && Intrinsics.areEqual(this.increment_num_of_canceled_payments_on_query, clientCheckoutOptions.increment_num_of_canceled_payments_on_query);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Integer num = this.volume;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
        ContactEmvConfig contactEmvConfig = this.contact_emv_config;
        int iHashCode3 = (iHashCode2 + (contactEmvConfig != null ? contactEmvConfig.hashCode() : 0)) * 37;
        ContactEmvConfig contactEmvConfig2 = this.offline_contact_emv_config;
        int iHashCode4 = (((((iHashCode3 + (contactEmvConfig2 != null ? contactEmvConfig2.hashCode() : 0)) * 37) + Long.hashCode(this.signature_threshold)) * 37) + Long.hashCode(this.refund_signature_threshold)) * 37;
        DeviceTraceLevel deviceTraceLevel = this.device_trace_level;
        int iHashCode5 = (((((iHashCode4 + (deviceTraceLevel != null ? deviceTraceLevel.hashCode() : 0)) * 37) + Long.hashCode(this.summary_delay)) * 37) + Long.hashCode(this.confirm_amount_threshold)) * 37;
        Boolean bool = this.collect_signature_on_swipe;
        int iHashCode6 = (iHashCode5 + (bool != null ? bool.hashCode() : 0)) * 37;
        ClientUpgradeArgumentPb clientUpgradeArgumentPb = this.uptime_reset_parameters;
        int iHashCode7 = (((iHashCode6 + (clientUpgradeArgumentPb != null ? clientUpgradeArgumentPb.hashCode() : 0)) * 37) + Boolean.hashCode(this.redact_masked_pan_to_last_4)) * 37;
        Boolean bool2 = this.disable_screen_dimming;
        int iHashCode8 = (((iHashCode7 + (bool2 != null ? bool2.hashCode() : 0)) * 37) + this.default_locale.hashCode()) * 37;
        Boolean bool3 = this.allow_tipping;
        int iHashCode9 = (iHashCode8 + (bool3 != null ? bool3.hashCode() : 0)) * 37;
        VectorRegionalConfiguration vectorRegionalConfiguration = this.vector_config;
        int iHashCode10 = (iHashCode9 + (vectorRegionalConfiguration != null ? vectorRegionalConfiguration.hashCode() : 0)) * 37;
        Boolean bool4 = this.increment_num_of_canceled_payments_on_query;
        int iHashCode11 = iHashCode10 + (bool4 != null ? bool4.hashCode() : 0);
        this.hashCode = iHashCode11;
        return iHashCode11;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.volume != null) {
            arrayList.add("volume=" + this.volume);
        }
        if (this.contact_emv_config != null) {
            arrayList.add("contact_emv_config=" + this.contact_emv_config);
        }
        if (this.offline_contact_emv_config != null) {
            arrayList.add("offline_contact_emv_config=" + this.offline_contact_emv_config);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("signature_threshold=" + this.signature_threshold);
        arrayList2.add("refund_signature_threshold=" + this.refund_signature_threshold);
        if (this.device_trace_level != null) {
            arrayList2.add("device_trace_level=" + this.device_trace_level);
        }
        arrayList2.add("summary_delay=" + this.summary_delay);
        arrayList2.add("confirm_amount_threshold=" + this.confirm_amount_threshold);
        if (this.collect_signature_on_swipe != null) {
            arrayList2.add("collect_signature_on_swipe=" + this.collect_signature_on_swipe);
        }
        if (this.uptime_reset_parameters != null) {
            arrayList2.add("uptime_reset_parameters=" + this.uptime_reset_parameters);
        }
        arrayList2.add("redact_masked_pan_to_last_4=" + this.redact_masked_pan_to_last_4);
        if (this.disable_screen_dimming != null) {
            arrayList2.add("disable_screen_dimming=" + this.disable_screen_dimming);
        }
        arrayList2.add("default_locale=" + this.default_locale);
        if (this.allow_tipping != null) {
            arrayList2.add("allow_tipping=" + this.allow_tipping);
        }
        if (this.vector_config != null) {
            arrayList2.add("vector_config=" + this.vector_config);
        }
        if (this.increment_num_of_canceled_payments_on_query != null) {
            arrayList2.add("increment_num_of_canceled_payments_on_query=" + this.increment_num_of_canceled_payments_on_query);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ClientCheckoutOptions{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ClientCheckoutOptions copy$default(ClientCheckoutOptions clientCheckoutOptions, Integer num, ContactEmvConfig contactEmvConfig, ContactEmvConfig contactEmvConfig2, long j, long j2, DeviceTraceLevel deviceTraceLevel, long j3, long j4, Boolean bool, ClientUpgradeArgumentPb clientUpgradeArgumentPb, boolean z, Boolean bool2, Locale locale, Boolean bool3, VectorRegionalConfiguration vectorRegionalConfiguration, Boolean bool4, ByteString byteString, int i, Object obj) {
        Integer num2 = (i & 1) != 0 ? clientCheckoutOptions.volume : num;
        return clientCheckoutOptions.copy(num2, (i & 2) != 0 ? clientCheckoutOptions.contact_emv_config : contactEmvConfig, (i & 4) != 0 ? clientCheckoutOptions.offline_contact_emv_config : contactEmvConfig2, (i & 8) != 0 ? clientCheckoutOptions.signature_threshold : j, (i & 16) != 0 ? clientCheckoutOptions.refund_signature_threshold : j2, (i & 32) != 0 ? clientCheckoutOptions.device_trace_level : deviceTraceLevel, (i & 64) != 0 ? clientCheckoutOptions.summary_delay : j3, (i & 128) != 0 ? clientCheckoutOptions.confirm_amount_threshold : j4, (i & 256) != 0 ? clientCheckoutOptions.collect_signature_on_swipe : bool, (i & 512) != 0 ? clientCheckoutOptions.uptime_reset_parameters : clientUpgradeArgumentPb, (i & 1024) != 0 ? clientCheckoutOptions.redact_masked_pan_to_last_4 : z, (i & 2048) != 0 ? clientCheckoutOptions.disable_screen_dimming : bool2, (i & 4096) != 0 ? clientCheckoutOptions.default_locale : locale, (i & 8192) != 0 ? clientCheckoutOptions.allow_tipping : bool3, (i & 16384) != 0 ? clientCheckoutOptions.vector_config : vectorRegionalConfiguration, (i & 32768) != 0 ? clientCheckoutOptions.increment_num_of_canceled_payments_on_query : bool4, (i & 65536) != 0 ? clientCheckoutOptions.unknownFields() : byteString);
    }

    public final ClientCheckoutOptions copy(Integer volume, ContactEmvConfig contact_emv_config, ContactEmvConfig offline_contact_emv_config, long signature_threshold, long refund_signature_threshold, DeviceTraceLevel device_trace_level, long summary_delay, long confirm_amount_threshold, Boolean collect_signature_on_swipe, ClientUpgradeArgumentPb uptime_reset_parameters, boolean redact_masked_pan_to_last_4, Boolean disable_screen_dimming, Locale default_locale, Boolean allow_tipping, VectorRegionalConfiguration vector_config, Boolean increment_num_of_canceled_payments_on_query, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(default_locale, "default_locale");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ClientCheckoutOptions(volume, contact_emv_config, offline_contact_emv_config, signature_threshold, refund_signature_threshold, device_trace_level, summary_delay, confirm_amount_threshold, collect_signature_on_swipe, uptime_reset_parameters, redact_masked_pan_to_last_4, disable_screen_dimming, default_locale, allow_tipping, vector_config, increment_num_of_canceled_payments_on_query, unknownFields);
    }

    /* JADX INFO: compiled from: ClientCheckoutOptions.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u001eJ\b\u0010\u001f\u001a\u00020\u0002H\u0016J\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u001eJ\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0012\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0015\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u001eJ\u0015\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u001eJ\u0012\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u000bH\u0007J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\tJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\tJ\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\tJ\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c¢\u0006\u0002\u0010 R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u001d¨\u0006!"}, d2 = {"Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/ClientCheckoutOptions;", "()V", "allow_tipping", "", "Ljava/lang/Boolean;", "collect_signature_on_swipe", "confirm_amount_threshold", "", "contact_emv_config", "Lcom/stripe/proto/model/config/ContactEmvConfig;", "default_locale", "Lcom/stripe/proto/model/config/Locale;", "device_trace_level", "Lcom/stripe/proto/model/config/DeviceTraceLevel;", "disable_screen_dimming", "increment_num_of_canceled_payments_on_query", "offline_contact_emv_config", "redact_masked_pan_to_last_4", "refund_signature_threshold", "signature_threshold", "summary_delay", "uptime_reset_parameters", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;", "vector_config", "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;", "volume", "", "Ljava/lang/Integer;", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;", "build", "(Ljava/lang/Integer;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ClientCheckoutOptions, Builder> {
        public Boolean allow_tipping;
        public Boolean collect_signature_on_swipe;
        public long confirm_amount_threshold;
        public ContactEmvConfig contact_emv_config;
        public Locale default_locale = Locale.INVALID_LOCALE;
        public DeviceTraceLevel device_trace_level;
        public Boolean disable_screen_dimming;
        public Boolean increment_num_of_canceled_payments_on_query;
        public ContactEmvConfig offline_contact_emv_config;
        public boolean redact_masked_pan_to_last_4;
        public long refund_signature_threshold;
        public long signature_threshold;
        public long summary_delay;
        public ClientUpgradeArgumentPb uptime_reset_parameters;
        public VectorRegionalConfiguration vector_config;
        public Integer volume;

        public final Builder volume(Integer volume) {
            this.volume = volume;
            return this;
        }

        @Deprecated(message = "contact_emv_config is deprecated")
        public final Builder contact_emv_config(ContactEmvConfig contact_emv_config) {
            this.contact_emv_config = contact_emv_config;
            return this;
        }

        @Deprecated(message = "offline_contact_emv_config is deprecated")
        public final Builder offline_contact_emv_config(ContactEmvConfig offline_contact_emv_config) {
            this.offline_contact_emv_config = offline_contact_emv_config;
            return this;
        }

        public final Builder signature_threshold(long signature_threshold) {
            this.signature_threshold = signature_threshold;
            return this;
        }

        public final Builder refund_signature_threshold(long refund_signature_threshold) {
            this.refund_signature_threshold = refund_signature_threshold;
            return this;
        }

        public final Builder device_trace_level(DeviceTraceLevel device_trace_level) {
            this.device_trace_level = device_trace_level;
            return this;
        }

        public final Builder summary_delay(long summary_delay) {
            this.summary_delay = summary_delay;
            return this;
        }

        public final Builder confirm_amount_threshold(long confirm_amount_threshold) {
            this.confirm_amount_threshold = confirm_amount_threshold;
            return this;
        }

        public final Builder collect_signature_on_swipe(Boolean collect_signature_on_swipe) {
            this.collect_signature_on_swipe = collect_signature_on_swipe;
            return this;
        }

        public final Builder uptime_reset_parameters(ClientUpgradeArgumentPb uptime_reset_parameters) {
            this.uptime_reset_parameters = uptime_reset_parameters;
            return this;
        }

        public final Builder redact_masked_pan_to_last_4(boolean redact_masked_pan_to_last_4) {
            this.redact_masked_pan_to_last_4 = redact_masked_pan_to_last_4;
            return this;
        }

        public final Builder disable_screen_dimming(Boolean disable_screen_dimming) {
            this.disable_screen_dimming = disable_screen_dimming;
            return this;
        }

        public final Builder default_locale(Locale default_locale) {
            Intrinsics.checkNotNullParameter(default_locale, "default_locale");
            this.default_locale = default_locale;
            return this;
        }

        public final Builder allow_tipping(Boolean allow_tipping) {
            this.allow_tipping = allow_tipping;
            return this;
        }

        public final Builder vector_config(VectorRegionalConfiguration vector_config) {
            this.vector_config = vector_config;
            return this;
        }

        public final Builder increment_num_of_canceled_payments_on_query(Boolean increment_num_of_canceled_payments_on_query) {
            this.increment_num_of_canceled_payments_on_query = increment_num_of_canceled_payments_on_query;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ClientCheckoutOptions build() {
            return new ClientCheckoutOptions(this.volume, this.contact_emv_config, this.offline_contact_emv_config, this.signature_threshold, this.refund_signature_threshold, this.device_trace_level, this.summary_delay, this.confirm_amount_threshold, this.collect_signature_on_swipe, this.uptime_reset_parameters, this.redact_masked_pan_to_last_4, this.disable_screen_dimming, this.default_locale, this.allow_tipping, this.vector_config, this.increment_num_of_canceled_payments_on_query, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ClientCheckoutOptions.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/ClientCheckoutOptions$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/ClientCheckoutOptions;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ClientCheckoutOptions build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ClientCheckoutOptions.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ClientCheckoutOptions>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.ClientCheckoutOptions$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ClientCheckoutOptions value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.volume != null) {
                    size += ProtoAdapter.INT32_VALUE.encodedSizeWithTag(1, value.volume);
                }
                if (value.contact_emv_config != null) {
                    size += ContactEmvConfig.ADAPTER.encodedSizeWithTag(2, value.contact_emv_config);
                }
                if (value.offline_contact_emv_config != null) {
                    size += ContactEmvConfig.ADAPTER.encodedSizeWithTag(3, value.offline_contact_emv_config);
                }
                if (value.signature_threshold != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(4, Long.valueOf(value.signature_threshold));
                }
                if (value.refund_signature_threshold != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(5, Long.valueOf(value.refund_signature_threshold));
                }
                if (value.device_trace_level != null) {
                    size += DeviceTraceLevel.ADAPTER.encodedSizeWithTag(6, value.device_trace_level);
                }
                if (value.summary_delay != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(7, Long.valueOf(value.summary_delay));
                }
                if (value.confirm_amount_threshold != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(8, Long.valueOf(value.confirm_amount_threshold));
                }
                if (value.collect_signature_on_swipe != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(13, value.collect_signature_on_swipe);
                }
                if (value.uptime_reset_parameters != null) {
                    size += ClientUpgradeArgumentPb.ADAPTER.encodedSizeWithTag(9, value.uptime_reset_parameters);
                }
                if (value.redact_masked_pan_to_last_4) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(10, Boolean.valueOf(value.redact_masked_pan_to_last_4));
                }
                if (value.disable_screen_dimming != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(11, value.disable_screen_dimming);
                }
                if (value.default_locale != Locale.INVALID_LOCALE) {
                    size += Locale.ADAPTER.encodedSizeWithTag(12, value.default_locale);
                }
                if (value.allow_tipping != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(14, value.allow_tipping);
                }
                if (value.vector_config != null) {
                    size += VectorRegionalConfiguration.ADAPTER.encodedSizeWithTag(15, value.vector_config);
                }
                return value.increment_num_of_canceled_payments_on_query != null ? size + ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(16, value.increment_num_of_canceled_payments_on_query) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ClientCheckoutOptions value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.volume != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 1, value.volume);
                }
                if (value.contact_emv_config != null) {
                    ContactEmvConfig.ADAPTER.encodeWithTag(writer, 2, value.contact_emv_config);
                }
                if (value.offline_contact_emv_config != null) {
                    ContactEmvConfig.ADAPTER.encodeWithTag(writer, 3, value.offline_contact_emv_config);
                }
                if (value.signature_threshold != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.signature_threshold));
                }
                if (value.refund_signature_threshold != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 5, Long.valueOf(value.refund_signature_threshold));
                }
                if (value.device_trace_level != null) {
                    DeviceTraceLevel.ADAPTER.encodeWithTag(writer, 6, value.device_trace_level);
                }
                if (value.summary_delay != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 7, Long.valueOf(value.summary_delay));
                }
                if (value.confirm_amount_threshold != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 8, Long.valueOf(value.confirm_amount_threshold));
                }
                if (value.collect_signature_on_swipe != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 13, value.collect_signature_on_swipe);
                }
                if (value.uptime_reset_parameters != null) {
                    ClientUpgradeArgumentPb.ADAPTER.encodeWithTag(writer, 9, value.uptime_reset_parameters);
                }
                if (value.redact_masked_pan_to_last_4) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 10, Boolean.valueOf(value.redact_masked_pan_to_last_4));
                }
                if (value.disable_screen_dimming != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 11, value.disable_screen_dimming);
                }
                if (value.default_locale != Locale.INVALID_LOCALE) {
                    Locale.ADAPTER.encodeWithTag(writer, 12, value.default_locale);
                }
                if (value.allow_tipping != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 14, value.allow_tipping);
                }
                if (value.vector_config != null) {
                    VectorRegionalConfiguration.ADAPTER.encodeWithTag(writer, 15, value.vector_config);
                }
                if (value.increment_num_of_canceled_payments_on_query != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 16, value.increment_num_of_canceled_payments_on_query);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ClientCheckoutOptions value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.increment_num_of_canceled_payments_on_query != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 16, value.increment_num_of_canceled_payments_on_query);
                }
                if (value.vector_config != null) {
                    VectorRegionalConfiguration.ADAPTER.encodeWithTag(writer, 15, value.vector_config);
                }
                if (value.allow_tipping != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 14, value.allow_tipping);
                }
                if (value.default_locale != Locale.INVALID_LOCALE) {
                    Locale.ADAPTER.encodeWithTag(writer, 12, value.default_locale);
                }
                if (value.disable_screen_dimming != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 11, value.disable_screen_dimming);
                }
                if (value.redact_masked_pan_to_last_4) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 10, Boolean.valueOf(value.redact_masked_pan_to_last_4));
                }
                if (value.uptime_reset_parameters != null) {
                    ClientUpgradeArgumentPb.ADAPTER.encodeWithTag(writer, 9, value.uptime_reset_parameters);
                }
                if (value.collect_signature_on_swipe != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 13, value.collect_signature_on_swipe);
                }
                if (value.confirm_amount_threshold != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 8, Long.valueOf(value.confirm_amount_threshold));
                }
                if (value.summary_delay != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 7, Long.valueOf(value.summary_delay));
                }
                if (value.device_trace_level != null) {
                    DeviceTraceLevel.ADAPTER.encodeWithTag(writer, 6, value.device_trace_level);
                }
                if (value.refund_signature_threshold != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 5, Long.valueOf(value.refund_signature_threshold));
                }
                if (value.signature_threshold != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.signature_threshold));
                }
                if (value.offline_contact_emv_config != null) {
                    ContactEmvConfig.ADAPTER.encodeWithTag(writer, 3, value.offline_contact_emv_config);
                }
                if (value.contact_emv_config != null) {
                    ContactEmvConfig.ADAPTER.encodeWithTag(writer, 2, value.contact_emv_config);
                }
                if (value.volume != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 1, value.volume);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ClientCheckoutOptions decode(ProtoReader reader) throws IOException {
                Locale locale;
                Integer num;
                ContactEmvConfig contactEmvConfig;
                Locale locale2;
                Integer num2;
                Intrinsics.checkNotNullParameter(reader, "reader");
                Locale locale3 = Locale.INVALID_LOCALE;
                long jBeginMessage = reader.beginMessage();
                DeviceTraceLevel deviceTraceLevelDecode = null;
                Boolean boolDecode = null;
                ClientUpgradeArgumentPb clientUpgradeArgumentPbDecode = null;
                Boolean boolDecode2 = null;
                Boolean boolDecode3 = null;
                VectorRegionalConfiguration vectorRegionalConfigurationDecode = null;
                Boolean boolDecode4 = null;
                long jLongValue = 0;
                long jLongValue2 = 0;
                long jLongValue3 = 0;
                long jLongValue4 = 0;
                boolean zBooleanValue = false;
                Locale localeDecode = locale3;
                Integer numDecode = null;
                ContactEmvConfig contactEmvConfigDecode = null;
                ContactEmvConfig contactEmvConfigDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                numDecode = ProtoAdapter.INT32_VALUE.decode(reader);
                                break;
                            case 2:
                                contactEmvConfigDecode = ContactEmvConfig.ADAPTER.decode(reader);
                                break;
                            case 3:
                                contactEmvConfigDecode2 = ContactEmvConfig.ADAPTER.decode(reader);
                                break;
                            case 4:
                                locale2 = localeDecode;
                                num2 = numDecode;
                                jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                localeDecode = locale2;
                                numDecode = num2;
                                break;
                            case 5:
                                locale2 = localeDecode;
                                num2 = numDecode;
                                jLongValue2 = ProtoAdapter.INT64.decode(reader).longValue();
                                localeDecode = locale2;
                                numDecode = num2;
                                break;
                            case 6:
                                deviceTraceLevelDecode = DeviceTraceLevel.ADAPTER.decode(reader);
                                break;
                            case 7:
                                locale2 = localeDecode;
                                num2 = numDecode;
                                jLongValue3 = ProtoAdapter.INT64.decode(reader).longValue();
                                localeDecode = locale2;
                                numDecode = num2;
                                break;
                            case 8:
                                locale2 = localeDecode;
                                num2 = numDecode;
                                jLongValue4 = ProtoAdapter.INT64.decode(reader).longValue();
                                localeDecode = locale2;
                                numDecode = num2;
                                break;
                            case 9:
                                clientUpgradeArgumentPbDecode = ClientUpgradeArgumentPb.ADAPTER.decode(reader);
                                break;
                            case 10:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 11:
                                boolDecode2 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 12:
                                try {
                                    localeDecode = Locale.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    locale = localeDecode;
                                    num = numDecode;
                                    contactEmvConfig = contactEmvConfigDecode;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    localeDecode = locale;
                                    numDecode = num;
                                    contactEmvConfigDecode = contactEmvConfig;
                                }
                                break;
                            case 13:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 14:
                                boolDecode3 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 15:
                                vectorRegionalConfigurationDecode = VectorRegionalConfiguration.ADAPTER.decode(reader);
                                break;
                            case 16:
                                boolDecode4 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            default:
                                locale = localeDecode;
                                num = numDecode;
                                contactEmvConfig = contactEmvConfigDecode;
                                reader.readUnknownField(iNextTag);
                                localeDecode = locale;
                                numDecode = num;
                                contactEmvConfigDecode = contactEmvConfig;
                                break;
                        }
                    } else {
                        return new ClientCheckoutOptions(numDecode, contactEmvConfigDecode, contactEmvConfigDecode2, jLongValue, jLongValue2, deviceTraceLevelDecode, jLongValue3, jLongValue4, boolDecode, clientUpgradeArgumentPbDecode, zBooleanValue, boolDecode2, localeDecode, boolDecode3, vectorRegionalConfigurationDecode, boolDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ClientCheckoutOptions redact(ClientCheckoutOptions value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Integer num = value.volume;
                Integer numRedact = num != null ? ProtoAdapter.INT32_VALUE.redact(num) : null;
                ContactEmvConfig contactEmvConfig = value.contact_emv_config;
                ContactEmvConfig contactEmvConfigRedact = contactEmvConfig != null ? ContactEmvConfig.ADAPTER.redact(contactEmvConfig) : null;
                ContactEmvConfig contactEmvConfig2 = value.offline_contact_emv_config;
                ContactEmvConfig contactEmvConfigRedact2 = contactEmvConfig2 != null ? ContactEmvConfig.ADAPTER.redact(contactEmvConfig2) : null;
                DeviceTraceLevel deviceTraceLevel = value.device_trace_level;
                DeviceTraceLevel deviceTraceLevelRedact = deviceTraceLevel != null ? DeviceTraceLevel.ADAPTER.redact(deviceTraceLevel) : null;
                Boolean bool = value.collect_signature_on_swipe;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                ClientUpgradeArgumentPb clientUpgradeArgumentPb = value.uptime_reset_parameters;
                ClientUpgradeArgumentPb clientUpgradeArgumentPbRedact = clientUpgradeArgumentPb != null ? ClientUpgradeArgumentPb.ADAPTER.redact(clientUpgradeArgumentPb) : null;
                Boolean bool2 = value.disable_screen_dimming;
                Boolean boolRedact2 = bool2 != null ? ProtoAdapter.BOOL_VALUE.redact(bool2) : null;
                Boolean bool3 = value.allow_tipping;
                Boolean boolRedact3 = bool3 != null ? ProtoAdapter.BOOL_VALUE.redact(bool3) : null;
                VectorRegionalConfiguration vectorRegionalConfiguration = value.vector_config;
                VectorRegionalConfiguration vectorRegionalConfigurationRedact = vectorRegionalConfiguration != null ? VectorRegionalConfiguration.ADAPTER.redact(vectorRegionalConfiguration) : null;
                Boolean bool4 = value.increment_num_of_canceled_payments_on_query;
                return ClientCheckoutOptions.copy$default(value, numRedact, contactEmvConfigRedact, contactEmvConfigRedact2, 0L, 0L, deviceTraceLevelRedact, 0L, 0L, boolRedact, clientUpgradeArgumentPbRedact, false, boolRedact2, null, boolRedact3, vectorRegionalConfigurationRedact, bool4 != null ? ProtoAdapter.BOOL_VALUE.redact(bool4) : null, ByteString.EMPTY, 5336, null);
            }
        };
    }
}
