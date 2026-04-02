package com.stripe.proto.model.config;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.config.PosConfig;
import java.io.IOException;
import java.util.ArrayList;
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

/* JADX INFO: compiled from: PosConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\u0007\u0018\u0000 &2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003%&'B\u0081\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0010¢\u0006\u0002\u0010\u0016J\u0082\u0001\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u0010J\u0013\u0010\u001f\u001a\u00020\b2\b\u0010 \u001a\u0004\u0018\u00010!H\u0096\u0002J\b\u0010\"\u001a\u00020\u0004H\u0016J\b\u0010#\u001a\u00020\u0002H\u0016J\b\u0010$\u001a\u00020\u0012H\u0016R\u0016\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0014\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0019\u0010\u0018R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001a\u0010\u0018R\u0016\u0010\u0013\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001b\u0010\u0018R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001c\u0010\u0018R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001d\u0010\u0018R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/stripe/proto/model/config/PosConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/PosConfig$Builder;", "heartbeat_interval_seconds", "", "reachability_threshold", "unreachability_threshold", "loyalty_collection_enabled", "", "pos_trace_level", "Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;", "device_trace_level", "Lcom/stripe/proto/model/config/DeviceTraceLevel;", "rabbit_client_config", "Lcom/stripe/proto/model/config/RabbitClientConfig;", "beacon_config_deprecated_120716", "Lokio/ByteString;", "store_id_deprecated_280115", "", "merchant_id_deprecated_280115", "derived_session_token_deprecated_20170224", "unknownFields", "(IIIZLcom/stripe/proto/model/config/PosConfig$PosTraceLevel;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/RabbitClientConfig;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "getBeacon_config_deprecated_120716$annotations", "()V", "getDerived_session_token_deprecated_20170224$annotations", "getLoyalty_collection_enabled$annotations", "getMerchant_id_deprecated_280115$annotations", "getPos_trace_level$annotations", "getStore_id_deprecated_280115$annotations", "copy", "equals", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "PosTraceLevel", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PosConfig extends Message<PosConfig, Builder> {
    public static final ProtoAdapter<PosConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", jsonName = "beaconConfigDeprecated120716", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 2)
    public final ByteString beacon_config_deprecated_120716;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "derivedSessionTokenDeprecated20170224", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 8)
    public final String derived_session_token_deprecated_20170224;

    @WireField(adapter = "com.stripe.proto.model.config.DeviceTraceLevel#ADAPTER", jsonName = "deviceTraceLevel", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 12)
    public final DeviceTraceLevel device_trace_level;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "heartbeatIntervalSeconds", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final int heartbeat_interval_seconds;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "loyaltyCollectionEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 3)
    public final boolean loyalty_collection_enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "merchantIdDeprecated280115", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 7)
    public final String merchant_id_deprecated_280115;

    @WireField(adapter = "com.stripe.proto.model.config.PosConfig$PosTraceLevel#ADAPTER", jsonName = "posTraceLevel", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 9)
    public final PosTraceLevel pos_trace_level;

    @WireField(adapter = "com.stripe.proto.model.config.RabbitClientConfig#ADAPTER", jsonName = "rabbitClientConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 10)
    public final RabbitClientConfig rabbit_client_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "reachabilityThreshold", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 4)
    public final int reachability_threshold;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "storeIdDeprecated280115", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 6)
    public final String store_id_deprecated_280115;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "unreachabilityThreshold", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 5)
    public final int unreachability_threshold;

    public PosConfig() {
        this(0, 0, 0, false, null, null, null, null, null, null, null, null, 4095, null);
    }

    @Deprecated(message = "beacon_config_deprecated_120716 is deprecated")
    public static /* synthetic */ void getBeacon_config_deprecated_120716$annotations() {
    }

    @Deprecated(message = "derived_session_token_deprecated_20170224 is deprecated")
    public static /* synthetic */ void getDerived_session_token_deprecated_20170224$annotations() {
    }

    @Deprecated(message = "loyalty_collection_enabled is deprecated")
    public static /* synthetic */ void getLoyalty_collection_enabled$annotations() {
    }

    @Deprecated(message = "merchant_id_deprecated_280115 is deprecated")
    public static /* synthetic */ void getMerchant_id_deprecated_280115$annotations() {
    }

    @Deprecated(message = "pos_trace_level is deprecated")
    public static /* synthetic */ void getPos_trace_level$annotations() {
    }

    @Deprecated(message = "store_id_deprecated_280115 is deprecated")
    public static /* synthetic */ void getStore_id_deprecated_280115$annotations() {
    }

    public /* synthetic */ PosConfig(int i, int i2, int i3, boolean z, PosTraceLevel posTraceLevel, DeviceTraceLevel deviceTraceLevel, RabbitClientConfig rabbitClientConfig, ByteString byteString, String str, String str2, String str3, ByteString byteString2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0 : i, (i4 & 2) != 0 ? 0 : i2, (i4 & 4) != 0 ? 0 : i3, (i4 & 8) != 0 ? false : z, (i4 & 16) != 0 ? PosTraceLevel.ILLEGAL : posTraceLevel, (i4 & 32) != 0 ? null : deviceTraceLevel, (i4 & 64) != 0 ? null : rabbitClientConfig, (i4 & 128) != 0 ? ByteString.EMPTY : byteString, (i4 & 256) != 0 ? "" : str, (i4 & 512) != 0 ? "" : str2, (i4 & 1024) != 0 ? "" : str3, (i4 & 2048) != 0 ? ByteString.EMPTY : byteString2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PosConfig(int i, int i2, int i3, boolean z, PosTraceLevel pos_trace_level, DeviceTraceLevel deviceTraceLevel, RabbitClientConfig rabbitClientConfig, ByteString beacon_config_deprecated_120716, String store_id_deprecated_280115, String merchant_id_deprecated_280115, String derived_session_token_deprecated_20170224, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(pos_trace_level, "pos_trace_level");
        Intrinsics.checkNotNullParameter(beacon_config_deprecated_120716, "beacon_config_deprecated_120716");
        Intrinsics.checkNotNullParameter(store_id_deprecated_280115, "store_id_deprecated_280115");
        Intrinsics.checkNotNullParameter(merchant_id_deprecated_280115, "merchant_id_deprecated_280115");
        Intrinsics.checkNotNullParameter(derived_session_token_deprecated_20170224, "derived_session_token_deprecated_20170224");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.heartbeat_interval_seconds = i;
        this.reachability_threshold = i2;
        this.unreachability_threshold = i3;
        this.loyalty_collection_enabled = z;
        this.pos_trace_level = pos_trace_level;
        this.device_trace_level = deviceTraceLevel;
        this.rabbit_client_config = rabbitClientConfig;
        this.beacon_config_deprecated_120716 = beacon_config_deprecated_120716;
        this.store_id_deprecated_280115 = store_id_deprecated_280115;
        this.merchant_id_deprecated_280115 = merchant_id_deprecated_280115;
        this.derived_session_token_deprecated_20170224 = derived_session_token_deprecated_20170224;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.heartbeat_interval_seconds = this.heartbeat_interval_seconds;
        builder.reachability_threshold = this.reachability_threshold;
        builder.unreachability_threshold = this.unreachability_threshold;
        builder.loyalty_collection_enabled = this.loyalty_collection_enabled;
        builder.pos_trace_level = this.pos_trace_level;
        builder.device_trace_level = this.device_trace_level;
        builder.rabbit_client_config = this.rabbit_client_config;
        builder.beacon_config_deprecated_120716 = this.beacon_config_deprecated_120716;
        builder.store_id_deprecated_280115 = this.store_id_deprecated_280115;
        builder.merchant_id_deprecated_280115 = this.merchant_id_deprecated_280115;
        builder.derived_session_token_deprecated_20170224 = this.derived_session_token_deprecated_20170224;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PosConfig)) {
            return false;
        }
        PosConfig posConfig = (PosConfig) other;
        return Intrinsics.areEqual(unknownFields(), posConfig.unknownFields()) && this.heartbeat_interval_seconds == posConfig.heartbeat_interval_seconds && this.reachability_threshold == posConfig.reachability_threshold && this.unreachability_threshold == posConfig.unreachability_threshold && this.loyalty_collection_enabled == posConfig.loyalty_collection_enabled && this.pos_trace_level == posConfig.pos_trace_level && Intrinsics.areEqual(this.device_trace_level, posConfig.device_trace_level) && Intrinsics.areEqual(this.rabbit_client_config, posConfig.rabbit_client_config) && Intrinsics.areEqual(this.beacon_config_deprecated_120716, posConfig.beacon_config_deprecated_120716) && Intrinsics.areEqual(this.store_id_deprecated_280115, posConfig.store_id_deprecated_280115) && Intrinsics.areEqual(this.merchant_id_deprecated_280115, posConfig.merchant_id_deprecated_280115) && Intrinsics.areEqual(this.derived_session_token_deprecated_20170224, posConfig.derived_session_token_deprecated_20170224);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((unknownFields().hashCode() * 37) + Integer.hashCode(this.heartbeat_interval_seconds)) * 37) + Integer.hashCode(this.reachability_threshold)) * 37) + Integer.hashCode(this.unreachability_threshold)) * 37) + Boolean.hashCode(this.loyalty_collection_enabled)) * 37) + this.pos_trace_level.hashCode()) * 37;
        DeviceTraceLevel deviceTraceLevel = this.device_trace_level;
        int iHashCode2 = (iHashCode + (deviceTraceLevel != null ? deviceTraceLevel.hashCode() : 0)) * 37;
        RabbitClientConfig rabbitClientConfig = this.rabbit_client_config;
        int iHashCode3 = ((((((((iHashCode2 + (rabbitClientConfig != null ? rabbitClientConfig.hashCode() : 0)) * 37) + this.beacon_config_deprecated_120716.hashCode()) * 37) + this.store_id_deprecated_280115.hashCode()) * 37) + this.merchant_id_deprecated_280115.hashCode()) * 37) + this.derived_session_token_deprecated_20170224.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("heartbeat_interval_seconds=" + this.heartbeat_interval_seconds);
        arrayList2.add("reachability_threshold=" + this.reachability_threshold);
        arrayList2.add("unreachability_threshold=" + this.unreachability_threshold);
        arrayList2.add("loyalty_collection_enabled=" + this.loyalty_collection_enabled);
        arrayList2.add("pos_trace_level=" + this.pos_trace_level);
        if (this.device_trace_level != null) {
            arrayList2.add("device_trace_level=" + this.device_trace_level);
        }
        if (this.rabbit_client_config != null) {
            arrayList2.add("rabbit_client_config=" + this.rabbit_client_config);
        }
        arrayList2.add("beacon_config_deprecated_120716=" + this.beacon_config_deprecated_120716);
        arrayList2.add("store_id_deprecated_280115=" + Internal.sanitize(this.store_id_deprecated_280115));
        arrayList2.add("merchant_id_deprecated_280115=" + Internal.sanitize(this.merchant_id_deprecated_280115));
        arrayList2.add("derived_session_token_deprecated_20170224=" + Internal.sanitize(this.derived_session_token_deprecated_20170224));
        return CollectionsKt.joinToString$default(arrayList, ", ", "PosConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PosConfig copy$default(PosConfig posConfig, int i, int i2, int i3, boolean z, PosTraceLevel posTraceLevel, DeviceTraceLevel deviceTraceLevel, RabbitClientConfig rabbitClientConfig, ByteString byteString, String str, String str2, String str3, ByteString byteString2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = posConfig.heartbeat_interval_seconds;
        }
        if ((i4 & 2) != 0) {
            i2 = posConfig.reachability_threshold;
        }
        if ((i4 & 4) != 0) {
            i3 = posConfig.unreachability_threshold;
        }
        if ((i4 & 8) != 0) {
            z = posConfig.loyalty_collection_enabled;
        }
        if ((i4 & 16) != 0) {
            posTraceLevel = posConfig.pos_trace_level;
        }
        if ((i4 & 32) != 0) {
            deviceTraceLevel = posConfig.device_trace_level;
        }
        if ((i4 & 64) != 0) {
            rabbitClientConfig = posConfig.rabbit_client_config;
        }
        if ((i4 & 128) != 0) {
            byteString = posConfig.beacon_config_deprecated_120716;
        }
        if ((i4 & 256) != 0) {
            str = posConfig.store_id_deprecated_280115;
        }
        if ((i4 & 512) != 0) {
            str2 = posConfig.merchant_id_deprecated_280115;
        }
        if ((i4 & 1024) != 0) {
            str3 = posConfig.derived_session_token_deprecated_20170224;
        }
        if ((i4 & 2048) != 0) {
            byteString2 = posConfig.unknownFields();
        }
        String str4 = str3;
        ByteString byteString3 = byteString2;
        String str5 = str;
        String str6 = str2;
        RabbitClientConfig rabbitClientConfig2 = rabbitClientConfig;
        ByteString byteString4 = byteString;
        PosTraceLevel posTraceLevel2 = posTraceLevel;
        DeviceTraceLevel deviceTraceLevel2 = deviceTraceLevel;
        return posConfig.copy(i, i2, i3, z, posTraceLevel2, deviceTraceLevel2, rabbitClientConfig2, byteString4, str5, str6, str4, byteString3);
    }

    public final PosConfig copy(int heartbeat_interval_seconds, int reachability_threshold, int unreachability_threshold, boolean loyalty_collection_enabled, PosTraceLevel pos_trace_level, DeviceTraceLevel device_trace_level, RabbitClientConfig rabbit_client_config, ByteString beacon_config_deprecated_120716, String store_id_deprecated_280115, String merchant_id_deprecated_280115, String derived_session_token_deprecated_20170224, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(pos_trace_level, "pos_trace_level");
        Intrinsics.checkNotNullParameter(beacon_config_deprecated_120716, "beacon_config_deprecated_120716");
        Intrinsics.checkNotNullParameter(store_id_deprecated_280115, "store_id_deprecated_280115");
        Intrinsics.checkNotNullParameter(merchant_id_deprecated_280115, "merchant_id_deprecated_280115");
        Intrinsics.checkNotNullParameter(derived_session_token_deprecated_20170224, "derived_session_token_deprecated_20170224");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PosConfig(heartbeat_interval_seconds, reachability_threshold, unreachability_threshold, loyalty_collection_enabled, pos_trace_level, device_trace_level, rabbit_client_config, beacon_config_deprecated_120716, store_id_deprecated_280115, merchant_id_deprecated_280115, derived_session_token_deprecated_20170224, unknownFields);
    }

    /* JADX INFO: compiled from: PosConfig.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0007J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007H\u0007J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u000bJ\u0010\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0007H\u0007J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/config/PosConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/PosConfig;", "()V", "beacon_config_deprecated_120716", "Lokio/ByteString;", "derived_session_token_deprecated_20170224", "", "device_trace_level", "Lcom/stripe/proto/model/config/DeviceTraceLevel;", "heartbeat_interval_seconds", "", "loyalty_collection_enabled", "", "merchant_id_deprecated_280115", "pos_trace_level", "Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;", "rabbit_client_config", "Lcom/stripe/proto/model/config/RabbitClientConfig;", "reachability_threshold", "store_id_deprecated_280115", "unreachability_threshold", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PosConfig, Builder> {
        public DeviceTraceLevel device_trace_level;
        public int heartbeat_interval_seconds;
        public boolean loyalty_collection_enabled;
        public RabbitClientConfig rabbit_client_config;
        public int reachability_threshold;
        public int unreachability_threshold;
        public PosTraceLevel pos_trace_level = PosTraceLevel.ILLEGAL;
        public ByteString beacon_config_deprecated_120716 = ByteString.EMPTY;
        public String store_id_deprecated_280115 = "";
        public String merchant_id_deprecated_280115 = "";
        public String derived_session_token_deprecated_20170224 = "";

        public final Builder heartbeat_interval_seconds(int heartbeat_interval_seconds) {
            this.heartbeat_interval_seconds = heartbeat_interval_seconds;
            return this;
        }

        public final Builder reachability_threshold(int reachability_threshold) {
            this.reachability_threshold = reachability_threshold;
            return this;
        }

        public final Builder unreachability_threshold(int unreachability_threshold) {
            this.unreachability_threshold = unreachability_threshold;
            return this;
        }

        @Deprecated(message = "loyalty_collection_enabled is deprecated")
        public final Builder loyalty_collection_enabled(boolean loyalty_collection_enabled) {
            this.loyalty_collection_enabled = loyalty_collection_enabled;
            return this;
        }

        @Deprecated(message = "pos_trace_level is deprecated")
        public final Builder pos_trace_level(PosTraceLevel pos_trace_level) {
            Intrinsics.checkNotNullParameter(pos_trace_level, "pos_trace_level");
            this.pos_trace_level = pos_trace_level;
            return this;
        }

        public final Builder device_trace_level(DeviceTraceLevel device_trace_level) {
            this.device_trace_level = device_trace_level;
            return this;
        }

        public final Builder rabbit_client_config(RabbitClientConfig rabbit_client_config) {
            this.rabbit_client_config = rabbit_client_config;
            return this;
        }

        @Deprecated(message = "beacon_config_deprecated_120716 is deprecated")
        public final Builder beacon_config_deprecated_120716(ByteString beacon_config_deprecated_120716) {
            Intrinsics.checkNotNullParameter(beacon_config_deprecated_120716, "beacon_config_deprecated_120716");
            this.beacon_config_deprecated_120716 = beacon_config_deprecated_120716;
            return this;
        }

        @Deprecated(message = "store_id_deprecated_280115 is deprecated")
        public final Builder store_id_deprecated_280115(String store_id_deprecated_280115) {
            Intrinsics.checkNotNullParameter(store_id_deprecated_280115, "store_id_deprecated_280115");
            this.store_id_deprecated_280115 = store_id_deprecated_280115;
            return this;
        }

        @Deprecated(message = "merchant_id_deprecated_280115 is deprecated")
        public final Builder merchant_id_deprecated_280115(String merchant_id_deprecated_280115) {
            Intrinsics.checkNotNullParameter(merchant_id_deprecated_280115, "merchant_id_deprecated_280115");
            this.merchant_id_deprecated_280115 = merchant_id_deprecated_280115;
            return this;
        }

        @Deprecated(message = "derived_session_token_deprecated_20170224 is deprecated")
        public final Builder derived_session_token_deprecated_20170224(String derived_session_token_deprecated_20170224) {
            Intrinsics.checkNotNullParameter(derived_session_token_deprecated_20170224, "derived_session_token_deprecated_20170224");
            this.derived_session_token_deprecated_20170224 = derived_session_token_deprecated_20170224;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PosConfig build() {
            return new PosConfig(this.heartbeat_interval_seconds, this.reachability_threshold, this.unreachability_threshold, this.loyalty_collection_enabled, this.pos_trace_level, this.device_trace_level, this.rabbit_client_config, this.beacon_config_deprecated_120716, this.store_id_deprecated_280115, this.merchant_id_deprecated_280115, this.derived_session_token_deprecated_20170224, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PosConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/PosConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/PosConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/PosConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PosConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PosConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PosConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.PosConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PosConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.heartbeat_interval_seconds != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.heartbeat_interval_seconds));
                }
                if (value.reachability_threshold != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(4, Integer.valueOf(value.reachability_threshold));
                }
                if (value.unreachability_threshold != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(5, Integer.valueOf(value.unreachability_threshold));
                }
                if (value.loyalty_collection_enabled) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.loyalty_collection_enabled));
                }
                if (value.pos_trace_level != PosConfig.PosTraceLevel.ILLEGAL) {
                    size += PosConfig.PosTraceLevel.ADAPTER.encodedSizeWithTag(9, value.pos_trace_level);
                }
                if (value.device_trace_level != null) {
                    size += DeviceTraceLevel.ADAPTER.encodedSizeWithTag(12, value.device_trace_level);
                }
                if (value.rabbit_client_config != null) {
                    size += RabbitClientConfig.ADAPTER.encodedSizeWithTag(10, value.rabbit_client_config);
                }
                if (!Intrinsics.areEqual(value.beacon_config_deprecated_120716, ByteString.EMPTY)) {
                    size += ProtoAdapter.BYTES.encodedSizeWithTag(2, value.beacon_config_deprecated_120716);
                }
                if (!Intrinsics.areEqual(value.store_id_deprecated_280115, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.store_id_deprecated_280115);
                }
                if (!Intrinsics.areEqual(value.merchant_id_deprecated_280115, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.merchant_id_deprecated_280115);
                }
                return !Intrinsics.areEqual(value.derived_session_token_deprecated_20170224, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(8, value.derived_session_token_deprecated_20170224) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PosConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.heartbeat_interval_seconds != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.heartbeat_interval_seconds));
                }
                if (value.reachability_threshold != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.reachability_threshold));
                }
                if (value.unreachability_threshold != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.unreachability_threshold));
                }
                if (value.loyalty_collection_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.loyalty_collection_enabled));
                }
                if (value.pos_trace_level != PosConfig.PosTraceLevel.ILLEGAL) {
                    PosConfig.PosTraceLevel.ADAPTER.encodeWithTag(writer, 9, value.pos_trace_level);
                }
                if (value.device_trace_level != null) {
                    DeviceTraceLevel.ADAPTER.encodeWithTag(writer, 12, value.device_trace_level);
                }
                if (value.rabbit_client_config != null) {
                    RabbitClientConfig.ADAPTER.encodeWithTag(writer, 10, value.rabbit_client_config);
                }
                if (!Intrinsics.areEqual(value.beacon_config_deprecated_120716, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 2, value.beacon_config_deprecated_120716);
                }
                if (!Intrinsics.areEqual(value.store_id_deprecated_280115, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.store_id_deprecated_280115);
                }
                if (!Intrinsics.areEqual(value.merchant_id_deprecated_280115, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.merchant_id_deprecated_280115);
                }
                if (!Intrinsics.areEqual(value.derived_session_token_deprecated_20170224, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.derived_session_token_deprecated_20170224);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PosConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.derived_session_token_deprecated_20170224, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.derived_session_token_deprecated_20170224);
                }
                if (!Intrinsics.areEqual(value.merchant_id_deprecated_280115, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.merchant_id_deprecated_280115);
                }
                if (!Intrinsics.areEqual(value.store_id_deprecated_280115, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.store_id_deprecated_280115);
                }
                if (!Intrinsics.areEqual(value.beacon_config_deprecated_120716, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 2, value.beacon_config_deprecated_120716);
                }
                if (value.rabbit_client_config != null) {
                    RabbitClientConfig.ADAPTER.encodeWithTag(writer, 10, value.rabbit_client_config);
                }
                if (value.device_trace_level != null) {
                    DeviceTraceLevel.ADAPTER.encodeWithTag(writer, 12, value.device_trace_level);
                }
                if (value.pos_trace_level != PosConfig.PosTraceLevel.ILLEGAL) {
                    PosConfig.PosTraceLevel.ADAPTER.encodeWithTag(writer, 9, value.pos_trace_level);
                }
                if (value.loyalty_collection_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.loyalty_collection_enabled));
                }
                if (value.unreachability_threshold != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.unreachability_threshold));
                }
                if (value.reachability_threshold != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.reachability_threshold));
                }
                if (value.heartbeat_interval_seconds != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.heartbeat_interval_seconds));
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0024. Please report as an issue. */
            /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
                	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
                	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
                	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
                	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:282)
                	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:65)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
                	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:282)
                	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:65)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
                	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
                */
            @Override // com.squareup.wire.ProtoAdapter
            public com.stripe.proto.model.config.PosConfig decode(com.squareup.wire.ProtoReader r20) {
                /*
                    Method dump skipped, instruction units count: 316
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.model.config.PosConfig$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.model.config.PosConfig");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PosConfig redact(PosConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceTraceLevel deviceTraceLevel = value.device_trace_level;
                DeviceTraceLevel deviceTraceLevelRedact = deviceTraceLevel != null ? DeviceTraceLevel.ADAPTER.redact(deviceTraceLevel) : null;
                RabbitClientConfig rabbitClientConfig = value.rabbit_client_config;
                return PosConfig.copy$default(value, 0, 0, 0, false, null, deviceTraceLevelRedact, rabbitClientConfig != null ? RabbitClientConfig.ADAPTER.redact(rabbitClientConfig) : null, null, null, null, null, ByteString.EMPTY, 1951, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: PosConfig.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ILLEGAL", "NONE", "EXCEPTIONS", "ALL", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class PosTraceLevel implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PosTraceLevel[] $VALUES;
        public static final ProtoAdapter<PosTraceLevel> ADAPTER;
        public static final PosTraceLevel ALL;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final PosTraceLevel EXCEPTIONS;
        public static final PosTraceLevel ILLEGAL;
        public static final PosTraceLevel NONE;
        private final int value;

        private static final /* synthetic */ PosTraceLevel[] $values() {
            return new PosTraceLevel[]{ILLEGAL, NONE, EXCEPTIONS, ALL};
        }

        @JvmStatic
        public static final PosTraceLevel fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<PosTraceLevel> getEntries() {
            return $ENTRIES;
        }

        public static PosTraceLevel valueOf(String str) {
            return (PosTraceLevel) Enum.valueOf(PosTraceLevel.class, str);
        }

        public static PosTraceLevel[] values() {
            return (PosTraceLevel[]) $VALUES.clone();
        }

        private PosTraceLevel(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final PosTraceLevel posTraceLevel = new PosTraceLevel("ILLEGAL", 0, 0);
            ILLEGAL = posTraceLevel;
            NONE = new PosTraceLevel("NONE", 1, 1);
            EXCEPTIONS = new PosTraceLevel("EXCEPTIONS", 2, 2);
            ALL = new PosTraceLevel("ALL", 3, 3);
            PosTraceLevel[] posTraceLevelArr$values = $values();
            $VALUES = posTraceLevelArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(posTraceLevelArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PosTraceLevel.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<PosTraceLevel>(orCreateKotlinClass, syntax, posTraceLevel) { // from class: com.stripe.proto.model.config.PosConfig$PosTraceLevel$Companion$ADAPTER$1
                {
                    PosConfig.PosTraceLevel posTraceLevel2 = posTraceLevel;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public PosConfig.PosTraceLevel fromValue(int value) {
                    return PosConfig.PosTraceLevel.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: PosConfig.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final PosTraceLevel fromValue(int value) {
                if (value == 0) {
                    return PosTraceLevel.ILLEGAL;
                }
                if (value == 1) {
                    return PosTraceLevel.NONE;
                }
                if (value == 2) {
                    return PosTraceLevel.EXCEPTIONS;
                }
                if (value != 3) {
                    return null;
                }
                return PosTraceLevel.ALL;
            }
        }
    }
}
