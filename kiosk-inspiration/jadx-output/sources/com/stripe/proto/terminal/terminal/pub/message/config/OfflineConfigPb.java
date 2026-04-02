package com.stripe.proto.terminal.terminal.pub.message.config;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.sun.jna.platform.win32.WinError;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: OfflineConfigPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u000e\u0018\u0000 %2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\n#$%&'()*+,B{\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\u0014\b\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J|\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\u0014\b\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u001d\u001a\u00020\u00042\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\b\u0010 \u001a\u00020\u0006H\u0016J\b\u0010!\u001a\u00020\u0002H\u0016J\b\u0010\"\u001a\u00020\tH\u0016R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0017\u0010\u0016R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0018\u0010\u0016R\"\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0019\u0010\u0016R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001a\u0010\u0016R\u0016\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001b\u0010\u0016¨\u0006-"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;", "enabled", "", "forwarding_jitter_ms", "", "max_transaction_amount_by_currency", "", "", "", "reader_offline_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;", "account_offline_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "supports_sca", "supports_quick_chip", "aid_to_offline_pin_response_auth_code", "unknownFields", "Lokio/ByteString;", "(ZILjava/util/Map;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;ZZLjava/util/Map;Lokio/ByteString;)V", "getAid_to_offline_pin_response_auth_code$annotations", "()V", "getEnabled$annotations", "getForwarding_jitter_ms$annotations", "getMax_transaction_amount_by_currency$annotations", "getSupports_quick_chip$annotations", "getSupports_sca$annotations", "copy", "equals", "other", "", "hashCode", "newBuilder", "toString", "AccountOfflineConfigPb", "Builder", "Companion", "KeyProfileMetadata", "OfflineAllowedVersionDetailsPb", "OfflineAllowedVersionsWithExpirationsPb", "OfflinePanDenylistEntry", "ReaderOfflineConfigPb", "RegionOfflineConfigPb", "SPosSdkSupportVersions", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineConfigPb extends Message<OfflineConfigPb, Builder> {
    public static final ProtoAdapter<OfflineConfigPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$AccountOfflineConfigPb#ADAPTER", jsonName = "accountOfflineConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final AccountOfflineConfigPb account_offline_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "aidToOfflinePinResponseAuthCode", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 7, tag = 8)
    public final Map<String, String> aid_to_offline_pin_response_auth_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final boolean enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "forwardingJitterMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final int forwarding_jitter_ms;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "maxTransactionAmountByCurrency", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 2, tag = 3)
    public final Map<String, Long> max_transaction_amount_by_currency;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$ReaderOfflineConfigPb#ADAPTER", jsonName = "readerOfflineConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final ReaderOfflineConfigPb reader_offline_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "supportsQuickChip", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final boolean supports_quick_chip;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "supportsSca", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final boolean supports_sca;

    public OfflineConfigPb() {
        this(false, 0, null, null, null, false, false, null, null, 511, null);
    }

    @Deprecated(message = "aid_to_offline_pin_response_auth_code is deprecated")
    public static /* synthetic */ void getAid_to_offline_pin_response_auth_code$annotations() {
    }

    @Deprecated(message = "enabled is deprecated")
    public static /* synthetic */ void getEnabled$annotations() {
    }

    @Deprecated(message = "forwarding_jitter_ms is deprecated")
    public static /* synthetic */ void getForwarding_jitter_ms$annotations() {
    }

    @Deprecated(message = "max_transaction_amount_by_currency is deprecated")
    public static /* synthetic */ void getMax_transaction_amount_by_currency$annotations() {
    }

    @Deprecated(message = "supports_quick_chip is deprecated")
    public static /* synthetic */ void getSupports_quick_chip$annotations() {
    }

    @Deprecated(message = "supports_sca is deprecated")
    public static /* synthetic */ void getSupports_sca$annotations() {
    }

    public /* synthetic */ OfflineConfigPb(boolean z, int i, Map map, ReaderOfflineConfigPb readerOfflineConfigPb, AccountOfflineConfigPb accountOfflineConfigPb, boolean z2, boolean z3, Map map2, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? MapsKt.emptyMap() : map, (i2 & 8) != 0 ? null : readerOfflineConfigPb, (i2 & 16) != 0 ? null : accountOfflineConfigPb, (i2 & 32) != 0 ? false : z2, (i2 & 64) != 0 ? false : z3, (i2 & 128) != 0 ? MapsKt.emptyMap() : map2, (i2 & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineConfigPb(boolean z, int i, Map<String, Long> max_transaction_amount_by_currency, ReaderOfflineConfigPb readerOfflineConfigPb, AccountOfflineConfigPb accountOfflineConfigPb, boolean z2, boolean z3, Map<String, String> aid_to_offline_pin_response_auth_code, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(max_transaction_amount_by_currency, "max_transaction_amount_by_currency");
        Intrinsics.checkNotNullParameter(aid_to_offline_pin_response_auth_code, "aid_to_offline_pin_response_auth_code");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.enabled = z;
        this.forwarding_jitter_ms = i;
        this.reader_offline_config = readerOfflineConfigPb;
        this.account_offline_config = accountOfflineConfigPb;
        this.supports_sca = z2;
        this.supports_quick_chip = z3;
        this.max_transaction_amount_by_currency = Internal.immutableCopyOf("max_transaction_amount_by_currency", max_transaction_amount_by_currency);
        this.aid_to_offline_pin_response_auth_code = Internal.immutableCopyOf("aid_to_offline_pin_response_auth_code", aid_to_offline_pin_response_auth_code);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.enabled = this.enabled;
        builder.forwarding_jitter_ms = this.forwarding_jitter_ms;
        builder.max_transaction_amount_by_currency = this.max_transaction_amount_by_currency;
        builder.reader_offline_config = this.reader_offline_config;
        builder.account_offline_config = this.account_offline_config;
        builder.supports_sca = this.supports_sca;
        builder.supports_quick_chip = this.supports_quick_chip;
        builder.aid_to_offline_pin_response_auth_code = this.aid_to_offline_pin_response_auth_code;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof OfflineConfigPb)) {
            return false;
        }
        OfflineConfigPb offlineConfigPb = (OfflineConfigPb) other;
        return Intrinsics.areEqual(unknownFields(), offlineConfigPb.unknownFields()) && this.enabled == offlineConfigPb.enabled && this.forwarding_jitter_ms == offlineConfigPb.forwarding_jitter_ms && Intrinsics.areEqual(this.max_transaction_amount_by_currency, offlineConfigPb.max_transaction_amount_by_currency) && Intrinsics.areEqual(this.reader_offline_config, offlineConfigPb.reader_offline_config) && Intrinsics.areEqual(this.account_offline_config, offlineConfigPb.account_offline_config) && this.supports_sca == offlineConfigPb.supports_sca && this.supports_quick_chip == offlineConfigPb.supports_quick_chip && Intrinsics.areEqual(this.aid_to_offline_pin_response_auth_code, offlineConfigPb.aid_to_offline_pin_response_auth_code);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((unknownFields().hashCode() * 37) + Boolean.hashCode(this.enabled)) * 37) + Integer.hashCode(this.forwarding_jitter_ms)) * 37) + this.max_transaction_amount_by_currency.hashCode()) * 37;
        ReaderOfflineConfigPb readerOfflineConfigPb = this.reader_offline_config;
        int iHashCode2 = (iHashCode + (readerOfflineConfigPb != null ? readerOfflineConfigPb.hashCode() : 0)) * 37;
        AccountOfflineConfigPb accountOfflineConfigPb = this.account_offline_config;
        int iHashCode3 = ((((((iHashCode2 + (accountOfflineConfigPb != null ? accountOfflineConfigPb.hashCode() : 0)) * 37) + Boolean.hashCode(this.supports_sca)) * 37) + Boolean.hashCode(this.supports_quick_chip)) * 37) + this.aid_to_offline_pin_response_auth_code.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("enabled=" + this.enabled);
        arrayList2.add("forwarding_jitter_ms=" + this.forwarding_jitter_ms);
        if (!this.max_transaction_amount_by_currency.isEmpty()) {
            arrayList2.add("max_transaction_amount_by_currency=" + this.max_transaction_amount_by_currency);
        }
        if (this.reader_offline_config != null) {
            arrayList2.add("reader_offline_config=" + this.reader_offline_config);
        }
        if (this.account_offline_config != null) {
            arrayList2.add("account_offline_config=" + this.account_offline_config);
        }
        arrayList2.add("supports_sca=" + this.supports_sca);
        arrayList2.add("supports_quick_chip=" + this.supports_quick_chip);
        if (!this.aid_to_offline_pin_response_auth_code.isEmpty()) {
            arrayList2.add("aid_to_offline_pin_response_auth_code=" + this.aid_to_offline_pin_response_auth_code);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "OfflineConfigPb{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OfflineConfigPb copy$default(OfflineConfigPb offlineConfigPb, boolean z, int i, Map map, ReaderOfflineConfigPb readerOfflineConfigPb, AccountOfflineConfigPb accountOfflineConfigPb, boolean z2, boolean z3, Map map2, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = offlineConfigPb.enabled;
        }
        if ((i2 & 2) != 0) {
            i = offlineConfigPb.forwarding_jitter_ms;
        }
        if ((i2 & 4) != 0) {
            map = offlineConfigPb.max_transaction_amount_by_currency;
        }
        if ((i2 & 8) != 0) {
            readerOfflineConfigPb = offlineConfigPb.reader_offline_config;
        }
        if ((i2 & 16) != 0) {
            accountOfflineConfigPb = offlineConfigPb.account_offline_config;
        }
        if ((i2 & 32) != 0) {
            z2 = offlineConfigPb.supports_sca;
        }
        if ((i2 & 64) != 0) {
            z3 = offlineConfigPb.supports_quick_chip;
        }
        if ((i2 & 128) != 0) {
            map2 = offlineConfigPb.aid_to_offline_pin_response_auth_code;
        }
        if ((i2 & 256) != 0) {
            byteString = offlineConfigPb.unknownFields();
        }
        Map map3 = map2;
        ByteString byteString2 = byteString;
        boolean z4 = z2;
        boolean z5 = z3;
        AccountOfflineConfigPb accountOfflineConfigPb2 = accountOfflineConfigPb;
        Map map4 = map;
        return offlineConfigPb.copy(z, i, map4, readerOfflineConfigPb, accountOfflineConfigPb2, z4, z5, map3, byteString2);
    }

    public final OfflineConfigPb copy(boolean enabled, int forwarding_jitter_ms, Map<String, Long> max_transaction_amount_by_currency, ReaderOfflineConfigPb reader_offline_config, AccountOfflineConfigPb account_offline_config, boolean supports_sca, boolean supports_quick_chip, Map<String, String> aid_to_offline_pin_response_auth_code, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(max_transaction_amount_by_currency, "max_transaction_amount_by_currency");
        Intrinsics.checkNotNullParameter(aid_to_offline_pin_response_auth_code, "aid_to_offline_pin_response_auth_code");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new OfflineConfigPb(enabled, forwarding_jitter_ms, max_transaction_amount_by_currency, reader_offline_config, account_offline_config, supports_sca, supports_quick_chip, aid_to_offline_pin_response_auth_code, unknownFields);
    }

    /* JADX INFO: compiled from: OfflineConfigPb.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u001c\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007H\u0007J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u001c\u0010\r\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000e0\u0007H\u0007J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\nH\u0007J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\nH\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000e0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "()V", "account_offline_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "aid_to_offline_pin_response_auth_code", "", "", "enabled", "", "forwarding_jitter_ms", "", "max_transaction_amount_by_currency", "", "reader_offline_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;", "supports_quick_chip", "supports_sca", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<OfflineConfigPb, Builder> {
        public AccountOfflineConfigPb account_offline_config;
        public boolean enabled;
        public int forwarding_jitter_ms;
        public ReaderOfflineConfigPb reader_offline_config;
        public boolean supports_quick_chip;
        public boolean supports_sca;
        public Map<String, Long> max_transaction_amount_by_currency = MapsKt.emptyMap();
        public Map<String, String> aid_to_offline_pin_response_auth_code = MapsKt.emptyMap();

        @Deprecated(message = "enabled is deprecated")
        public final Builder enabled(boolean enabled) {
            this.enabled = enabled;
            return this;
        }

        @Deprecated(message = "forwarding_jitter_ms is deprecated")
        public final Builder forwarding_jitter_ms(int forwarding_jitter_ms) {
            this.forwarding_jitter_ms = forwarding_jitter_ms;
            return this;
        }

        @Deprecated(message = "max_transaction_amount_by_currency is deprecated")
        public final Builder max_transaction_amount_by_currency(Map<String, Long> max_transaction_amount_by_currency) {
            Intrinsics.checkNotNullParameter(max_transaction_amount_by_currency, "max_transaction_amount_by_currency");
            this.max_transaction_amount_by_currency = max_transaction_amount_by_currency;
            return this;
        }

        public final Builder reader_offline_config(ReaderOfflineConfigPb reader_offline_config) {
            this.reader_offline_config = reader_offline_config;
            return this;
        }

        public final Builder account_offline_config(AccountOfflineConfigPb account_offline_config) {
            this.account_offline_config = account_offline_config;
            return this;
        }

        @Deprecated(message = "supports_sca is deprecated")
        public final Builder supports_sca(boolean supports_sca) {
            this.supports_sca = supports_sca;
            return this;
        }

        @Deprecated(message = "supports_quick_chip is deprecated")
        public final Builder supports_quick_chip(boolean supports_quick_chip) {
            this.supports_quick_chip = supports_quick_chip;
            return this;
        }

        @Deprecated(message = "aid_to_offline_pin_response_auth_code is deprecated")
        public final Builder aid_to_offline_pin_response_auth_code(Map<String, String> aid_to_offline_pin_response_auth_code) {
            Intrinsics.checkNotNullParameter(aid_to_offline_pin_response_auth_code, "aid_to_offline_pin_response_auth_code");
            this.aid_to_offline_pin_response_auth_code = aid_to_offline_pin_response_auth_code;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public OfflineConfigPb build() {
            return new OfflineConfigPb(this.enabled, this.forwarding_jitter_ms, this.max_transaction_amount_by_currency, this.reader_offline_config, this.account_offline_config, this.supports_sca, this.supports_quick_chip, this.aid_to_offline_pin_response_auth_code, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: OfflineConfigPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ OfflineConfigPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OfflineConfigPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<OfflineConfigPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$Companion$ADAPTER$1

            /* JADX INFO: renamed from: max_transaction_amount_by_currencyAdapter$delegate, reason: from kotlin metadata */
            private final Lazy max_transaction_amount_by_currencyAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends Long>>>() { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$Companion$ADAPTER$1$max_transaction_amount_by_currencyAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends Long>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.INT64);
                }
            });

            /* JADX INFO: renamed from: aid_to_offline_pin_response_auth_codeAdapter$delegate, reason: from kotlin metadata */
            private final Lazy aid_to_offline_pin_response_auth_codeAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$Companion$ADAPTER$1$aid_to_offline_pin_response_auth_codeAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, Long>> getMax_transaction_amount_by_currencyAdapter() {
                return (ProtoAdapter) this.max_transaction_amount_by_currencyAdapter.getValue();
            }

            private final ProtoAdapter<Map<String, String>> getAid_to_offline_pin_response_auth_codeAdapter() {
                return (ProtoAdapter) this.aid_to_offline_pin_response_auth_codeAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(OfflineConfigPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.enabled) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.enabled));
                }
                if (value.forwarding_jitter_ms != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.forwarding_jitter_ms));
                }
                int iEncodedSizeWithTag = size + getMax_transaction_amount_by_currencyAdapter().encodedSizeWithTag(3, value.max_transaction_amount_by_currency);
                if (value.reader_offline_config != null) {
                    iEncodedSizeWithTag += OfflineConfigPb.ReaderOfflineConfigPb.ADAPTER.encodedSizeWithTag(4, value.reader_offline_config);
                }
                if (value.account_offline_config != null) {
                    iEncodedSizeWithTag += OfflineConfigPb.AccountOfflineConfigPb.ADAPTER.encodedSizeWithTag(5, value.account_offline_config);
                }
                if (value.supports_sca) {
                    iEncodedSizeWithTag += ProtoAdapter.BOOL.encodedSizeWithTag(6, Boolean.valueOf(value.supports_sca));
                }
                if (value.supports_quick_chip) {
                    iEncodedSizeWithTag += ProtoAdapter.BOOL.encodedSizeWithTag(7, Boolean.valueOf(value.supports_quick_chip));
                }
                return iEncodedSizeWithTag + getAid_to_offline_pin_response_auth_codeAdapter().encodedSizeWithTag(8, value.aid_to_offline_pin_response_auth_code);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, OfflineConfigPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.enabled));
                }
                if (value.forwarding_jitter_ms != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.forwarding_jitter_ms));
                }
                getMax_transaction_amount_by_currencyAdapter().encodeWithTag(writer, 3, value.max_transaction_amount_by_currency);
                if (value.reader_offline_config != null) {
                    OfflineConfigPb.ReaderOfflineConfigPb.ADAPTER.encodeWithTag(writer, 4, value.reader_offline_config);
                }
                if (value.account_offline_config != null) {
                    OfflineConfigPb.AccountOfflineConfigPb.ADAPTER.encodeWithTag(writer, 5, value.account_offline_config);
                }
                if (value.supports_sca) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.supports_sca));
                }
                if (value.supports_quick_chip) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.supports_quick_chip));
                }
                getAid_to_offline_pin_response_auth_codeAdapter().encodeWithTag(writer, 8, value.aid_to_offline_pin_response_auth_code);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, OfflineConfigPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                getAid_to_offline_pin_response_auth_codeAdapter().encodeWithTag(writer, 8, value.aid_to_offline_pin_response_auth_code);
                if (value.supports_quick_chip) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.supports_quick_chip));
                }
                if (value.supports_sca) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.supports_sca));
                }
                if (value.account_offline_config != null) {
                    OfflineConfigPb.AccountOfflineConfigPb.ADAPTER.encodeWithTag(writer, 5, value.account_offline_config);
                }
                if (value.reader_offline_config != null) {
                    OfflineConfigPb.ReaderOfflineConfigPb.ADAPTER.encodeWithTag(writer, 4, value.reader_offline_config);
                }
                getMax_transaction_amount_by_currencyAdapter().encodeWithTag(writer, 3, value.max_transaction_amount_by_currency);
                if (value.forwarding_jitter_ms != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.forwarding_jitter_ms));
                }
                if (value.enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.enabled));
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public OfflineConfigPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                boolean zBooleanValue = false;
                boolean zBooleanValue2 = false;
                boolean zBooleanValue3 = false;
                OfflineConfigPb.ReaderOfflineConfigPb readerOfflineConfigPbDecode = null;
                OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPbDecode = null;
                int iIntValue = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 2:
                                iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                break;
                            case 3:
                                linkedHashMap.putAll(getMax_transaction_amount_by_currencyAdapter().decode(reader));
                                break;
                            case 4:
                                readerOfflineConfigPbDecode = OfflineConfigPb.ReaderOfflineConfigPb.ADAPTER.decode(reader);
                                break;
                            case 5:
                                accountOfflineConfigPbDecode = OfflineConfigPb.AccountOfflineConfigPb.ADAPTER.decode(reader);
                                break;
                            case 6:
                                zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 7:
                                zBooleanValue3 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 8:
                                linkedHashMap2.putAll(getAid_to_offline_pin_response_auth_codeAdapter().decode(reader));
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new OfflineConfigPb(zBooleanValue, iIntValue, linkedHashMap, readerOfflineConfigPbDecode, accountOfflineConfigPbDecode, zBooleanValue2, zBooleanValue3, linkedHashMap2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public OfflineConfigPb redact(OfflineConfigPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                OfflineConfigPb.ReaderOfflineConfigPb readerOfflineConfigPb = value.reader_offline_config;
                OfflineConfigPb.ReaderOfflineConfigPb readerOfflineConfigPbRedact = readerOfflineConfigPb != null ? OfflineConfigPb.ReaderOfflineConfigPb.ADAPTER.redact(readerOfflineConfigPb) : null;
                OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb = value.account_offline_config;
                return OfflineConfigPb.copy$default(value, false, 0, null, readerOfflineConfigPbRedact, accountOfflineConfigPb != null ? OfflineConfigPb.AccountOfflineConfigPb.ADAPTER.redact(accountOfflineConfigPb) : null, false, false, null, ByteString.EMPTY, WinError.ERROR_PIPE_BUSY, null);
            }
        };
    }

    /* JADX INFO: compiled from: OfflineConfigPb.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B)\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ*\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$SPosSdkSupportVersions;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$SPosSdkSupportVersions$Builder;", "minimum_version", "", "denied_versions", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SPosSdkSupportVersions extends Message<SPosSdkSupportVersions, Builder> {
        public static final ProtoAdapter<SPosSdkSupportVersions> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deniedVersions", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
        public final List<String> denied_versions;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "minimumVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String minimum_version;

        public SPosSdkSupportVersions() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ SPosSdkSupportVersions(String str, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SPosSdkSupportVersions(String minimum_version, List<String> denied_versions, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(minimum_version, "minimum_version");
            Intrinsics.checkNotNullParameter(denied_versions, "denied_versions");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.minimum_version = minimum_version;
            this.denied_versions = Internal.immutableCopyOf("denied_versions", denied_versions);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.minimum_version = this.minimum_version;
            builder.denied_versions = this.denied_versions;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof SPosSdkSupportVersions)) {
                return false;
            }
            SPosSdkSupportVersions sPosSdkSupportVersions = (SPosSdkSupportVersions) other;
            return Intrinsics.areEqual(unknownFields(), sPosSdkSupportVersions.unknownFields()) && Intrinsics.areEqual(this.minimum_version, sPosSdkSupportVersions.minimum_version) && Intrinsics.areEqual(this.denied_versions, sPosSdkSupportVersions.denied_versions);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.minimum_version.hashCode()) * 37) + this.denied_versions.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("minimum_version=" + Internal.sanitize(this.minimum_version));
            if (!this.denied_versions.isEmpty()) {
                arrayList2.add("denied_versions=" + Internal.sanitize(this.denied_versions));
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "SPosSdkSupportVersions{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ SPosSdkSupportVersions copy$default(SPosSdkSupportVersions sPosSdkSupportVersions, String str, List list, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = sPosSdkSupportVersions.minimum_version;
            }
            if ((i & 2) != 0) {
                list = sPosSdkSupportVersions.denied_versions;
            }
            if ((i & 4) != 0) {
                byteString = sPosSdkSupportVersions.unknownFields();
            }
            return sPosSdkSupportVersions.copy(str, list, byteString);
        }

        public final SPosSdkSupportVersions copy(String minimum_version, List<String> denied_versions, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(minimum_version, "minimum_version");
            Intrinsics.checkNotNullParameter(denied_versions, "denied_versions");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new SPosSdkSupportVersions(minimum_version, denied_versions, unknownFields);
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$SPosSdkSupportVersions$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$SPosSdkSupportVersions;", "()V", "denied_versions", "", "", "minimum_version", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<SPosSdkSupportVersions, Builder> {
            public String minimum_version = "";
            public List<String> denied_versions = CollectionsKt.emptyList();

            public final Builder minimum_version(String minimum_version) {
                Intrinsics.checkNotNullParameter(minimum_version, "minimum_version");
                this.minimum_version = minimum_version;
                return this;
            }

            public final Builder denied_versions(List<String> denied_versions) {
                Intrinsics.checkNotNullParameter(denied_versions, "denied_versions");
                Internal.checkElementsNotNull(denied_versions);
                this.denied_versions = denied_versions;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public SPosSdkSupportVersions build() {
                return new SPosSdkSupportVersions(this.minimum_version, this.denied_versions, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$SPosSdkSupportVersions$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$SPosSdkSupportVersions;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$SPosSdkSupportVersions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ SPosSdkSupportVersions build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SPosSdkSupportVersions.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<SPosSdkSupportVersions>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$SPosSdkSupportVersions$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(OfflineConfigPb.SPosSdkSupportVersions value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.minimum_version, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.minimum_version);
                    }
                    return size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(2, value.denied_versions);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, OfflineConfigPb.SPosSdkSupportVersions value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.minimum_version, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.minimum_version);
                    }
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.denied_versions);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, OfflineConfigPb.SPosSdkSupportVersions value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.denied_versions);
                    if (Intrinsics.areEqual(value.minimum_version, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.minimum_version);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.SPosSdkSupportVersions decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new OfflineConfigPb.SPosSdkSupportVersions(strDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            arrayList.add(ProtoAdapter.STRING.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.SPosSdkSupportVersions redact(OfflineConfigPb.SPosSdkSupportVersions value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return OfflineConfigPb.SPosSdkSupportVersions.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }
            };
        }
    }

    /* JADX INFO: compiled from: OfflineConfigPb.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ.\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000e\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\n\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;", "enabled", "", "setup_intents_enabled", "mobile_wallet_on_setup_intents_enabled", "unknownFields", "Lokio/ByteString;", "(ZZZLokio/ByteString;)V", "getMobile_wallet_on_setup_intents_enabled$annotations", "()V", "getSetup_intents_enabled$annotations", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ReaderOfflineConfigPb extends Message<ReaderOfflineConfigPb, Builder> {
        public static final ProtoAdapter<ReaderOfflineConfigPb> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final boolean enabled;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "mobileWalletOnSetupIntentsEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final boolean mobile_wallet_on_setup_intents_enabled;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "setupIntentsEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final boolean setup_intents_enabled;

        public ReaderOfflineConfigPb() {
            this(false, false, false, null, 15, null);
        }

        @Deprecated(message = "mobile_wallet_on_setup_intents_enabled is deprecated")
        public static /* synthetic */ void getMobile_wallet_on_setup_intents_enabled$annotations() {
        }

        @Deprecated(message = "setup_intents_enabled is deprecated")
        public static /* synthetic */ void getSetup_intents_enabled$annotations() {
        }

        public /* synthetic */ ReaderOfflineConfigPb(boolean z, boolean z2, boolean z3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReaderOfflineConfigPb(boolean z, boolean z2, boolean z3, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.enabled = z;
            this.setup_intents_enabled = z2;
            this.mobile_wallet_on_setup_intents_enabled = z3;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.enabled = this.enabled;
            builder.setup_intents_enabled = this.setup_intents_enabled;
            builder.mobile_wallet_on_setup_intents_enabled = this.mobile_wallet_on_setup_intents_enabled;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof ReaderOfflineConfigPb)) {
                return false;
            }
            ReaderOfflineConfigPb readerOfflineConfigPb = (ReaderOfflineConfigPb) other;
            return Intrinsics.areEqual(unknownFields(), readerOfflineConfigPb.unknownFields()) && this.enabled == readerOfflineConfigPb.enabled && this.setup_intents_enabled == readerOfflineConfigPb.setup_intents_enabled && this.mobile_wallet_on_setup_intents_enabled == readerOfflineConfigPb.mobile_wallet_on_setup_intents_enabled;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((unknownFields().hashCode() * 37) + Boolean.hashCode(this.enabled)) * 37) + Boolean.hashCode(this.setup_intents_enabled)) * 37) + Boolean.hashCode(this.mobile_wallet_on_setup_intents_enabled);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("enabled=" + this.enabled);
            arrayList2.add("setup_intents_enabled=" + this.setup_intents_enabled);
            arrayList2.add("mobile_wallet_on_setup_intents_enabled=" + this.mobile_wallet_on_setup_intents_enabled);
            return CollectionsKt.joinToString$default(arrayList, ", ", "ReaderOfflineConfigPb{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ ReaderOfflineConfigPb copy$default(ReaderOfflineConfigPb readerOfflineConfigPb, boolean z, boolean z2, boolean z3, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                z = readerOfflineConfigPb.enabled;
            }
            if ((i & 2) != 0) {
                z2 = readerOfflineConfigPb.setup_intents_enabled;
            }
            if ((i & 4) != 0) {
                z3 = readerOfflineConfigPb.mobile_wallet_on_setup_intents_enabled;
            }
            if ((i & 8) != 0) {
                byteString = readerOfflineConfigPb.unknownFields();
            }
            return readerOfflineConfigPb.copy(z, z2, z3, byteString);
        }

        public final ReaderOfflineConfigPb copy(boolean enabled, boolean setup_intents_enabled, boolean mobile_wallet_on_setup_intents_enabled, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new ReaderOfflineConfigPb(enabled, setup_intents_enabled, mobile_wallet_on_setup_intents_enabled, unknownFields);
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005H\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;", "()V", "enabled", "", "mobile_wallet_on_setup_intents_enabled", "setup_intents_enabled", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<ReaderOfflineConfigPb, Builder> {
            public boolean enabled;
            public boolean mobile_wallet_on_setup_intents_enabled;
            public boolean setup_intents_enabled;

            public final Builder enabled(boolean enabled) {
                this.enabled = enabled;
                return this;
            }

            @Deprecated(message = "setup_intents_enabled is deprecated")
            public final Builder setup_intents_enabled(boolean setup_intents_enabled) {
                this.setup_intents_enabled = setup_intents_enabled;
                return this;
            }

            @Deprecated(message = "mobile_wallet_on_setup_intents_enabled is deprecated")
            public final Builder mobile_wallet_on_setup_intents_enabled(boolean mobile_wallet_on_setup_intents_enabled) {
                this.mobile_wallet_on_setup_intents_enabled = mobile_wallet_on_setup_intents_enabled;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public ReaderOfflineConfigPb build() {
                return new ReaderOfflineConfigPb(this.enabled, this.setup_intents_enabled, this.mobile_wallet_on_setup_intents_enabled, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ ReaderOfflineConfigPb build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReaderOfflineConfigPb.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<ReaderOfflineConfigPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$ReaderOfflineConfigPb$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(OfflineConfigPb.ReaderOfflineConfigPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.enabled) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.enabled));
                    }
                    if (value.setup_intents_enabled) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(2, Boolean.valueOf(value.setup_intents_enabled));
                    }
                    return value.mobile_wallet_on_setup_intents_enabled ? size + ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.mobile_wallet_on_setup_intents_enabled)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, OfflineConfigPb.ReaderOfflineConfigPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.enabled));
                    }
                    if (value.setup_intents_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.setup_intents_enabled));
                    }
                    if (value.mobile_wallet_on_setup_intents_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.mobile_wallet_on_setup_intents_enabled));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, OfflineConfigPb.ReaderOfflineConfigPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.mobile_wallet_on_setup_intents_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.mobile_wallet_on_setup_intents_enabled));
                    }
                    if (value.setup_intents_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.setup_intents_enabled));
                    }
                    if (value.enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.enabled));
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.ReaderOfflineConfigPb redact(OfflineConfigPb.ReaderOfflineConfigPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return OfflineConfigPb.ReaderOfflineConfigPb.copy$default(value, false, false, false, ByteString.EMPTY, 7, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.ReaderOfflineConfigPb decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    boolean zBooleanValue = false;
                    boolean zBooleanValue2 = false;
                    boolean zBooleanValue3 = false;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new OfflineConfigPb.ReaderOfflineConfigPb(zBooleanValue, zBooleanValue2, zBooleanValue3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                        } else if (iNextTag == 2) {
                            zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                        } else if (iNextTag == 3) {
                            zBooleanValue3 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: OfflineConfigPb.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B;\u0012\u0014\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ<\u0010\u000e\u001a\u00020\u00002\u0014\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u00042\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0005H\u0016R\"\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\rR\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb$Builder;", "device_type_to_offline_allowed_versions", "", "", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;", "device_type_to_offline_allowed_versions_with_expirations", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/Map;Ljava/util/Map;Lokio/ByteString;)V", "getDevice_type_to_offline_allowed_versions$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class RegionOfflineConfigPb extends Message<RegionOfflineConfigPb, Builder> {
        public static final ProtoAdapter<RegionOfflineConfigPb> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$OfflineAllowedVersionDetailsPb#ADAPTER", jsonName = "deviceTypeToOfflineAllowedVersions", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 0, tag = 1)
        public final Map<String, OfflineAllowedVersionDetailsPb> device_type_to_offline_allowed_versions;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb#ADAPTER", jsonName = "deviceTypeToOfflineAllowedVersionsWithExpirations", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 1, tag = 2)
        public final Map<String, OfflineAllowedVersionsWithExpirationsPb> device_type_to_offline_allowed_versions_with_expirations;

        public RegionOfflineConfigPb() {
            this(null, null, null, 7, null);
        }

        @Deprecated(message = "device_type_to_offline_allowed_versions is deprecated")
        public static /* synthetic */ void getDevice_type_to_offline_allowed_versions$annotations() {
        }

        public /* synthetic */ RegionOfflineConfigPb(Map map, Map map2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? MapsKt.emptyMap() : map, (i & 2) != 0 ? MapsKt.emptyMap() : map2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RegionOfflineConfigPb(Map<String, OfflineAllowedVersionDetailsPb> device_type_to_offline_allowed_versions, Map<String, OfflineAllowedVersionsWithExpirationsPb> device_type_to_offline_allowed_versions_with_expirations, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(device_type_to_offline_allowed_versions, "device_type_to_offline_allowed_versions");
            Intrinsics.checkNotNullParameter(device_type_to_offline_allowed_versions_with_expirations, "device_type_to_offline_allowed_versions_with_expirations");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.device_type_to_offline_allowed_versions = Internal.immutableCopyOf("device_type_to_offline_allowed_versions", device_type_to_offline_allowed_versions);
            this.device_type_to_offline_allowed_versions_with_expirations = Internal.immutableCopyOf("device_type_to_offline_allowed_versions_with_expirations", device_type_to_offline_allowed_versions_with_expirations);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.device_type_to_offline_allowed_versions = this.device_type_to_offline_allowed_versions;
            builder.device_type_to_offline_allowed_versions_with_expirations = this.device_type_to_offline_allowed_versions_with_expirations;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof RegionOfflineConfigPb)) {
                return false;
            }
            RegionOfflineConfigPb regionOfflineConfigPb = (RegionOfflineConfigPb) other;
            return Intrinsics.areEqual(unknownFields(), regionOfflineConfigPb.unknownFields()) && Intrinsics.areEqual(this.device_type_to_offline_allowed_versions, regionOfflineConfigPb.device_type_to_offline_allowed_versions) && Intrinsics.areEqual(this.device_type_to_offline_allowed_versions_with_expirations, regionOfflineConfigPb.device_type_to_offline_allowed_versions_with_expirations);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.device_type_to_offline_allowed_versions.hashCode()) * 37) + this.device_type_to_offline_allowed_versions_with_expirations.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.device_type_to_offline_allowed_versions.isEmpty()) {
                arrayList.add("device_type_to_offline_allowed_versions=" + this.device_type_to_offline_allowed_versions);
            }
            if (!this.device_type_to_offline_allowed_versions_with_expirations.isEmpty()) {
                arrayList.add("device_type_to_offline_allowed_versions_with_expirations=" + this.device_type_to_offline_allowed_versions_with_expirations);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "RegionOfflineConfigPb{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ RegionOfflineConfigPb copy$default(RegionOfflineConfigPb regionOfflineConfigPb, Map map, Map map2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                map = regionOfflineConfigPb.device_type_to_offline_allowed_versions;
            }
            if ((i & 2) != 0) {
                map2 = regionOfflineConfigPb.device_type_to_offline_allowed_versions_with_expirations;
            }
            if ((i & 4) != 0) {
                byteString = regionOfflineConfigPb.unknownFields();
            }
            return regionOfflineConfigPb.copy(map, map2, byteString);
        }

        public final RegionOfflineConfigPb copy(Map<String, OfflineAllowedVersionDetailsPb> device_type_to_offline_allowed_versions, Map<String, OfflineAllowedVersionsWithExpirationsPb> device_type_to_offline_allowed_versions_with_expirations, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(device_type_to_offline_allowed_versions, "device_type_to_offline_allowed_versions");
            Intrinsics.checkNotNullParameter(device_type_to_offline_allowed_versions_with_expirations, "device_type_to_offline_allowed_versions_with_expirations");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new RegionOfflineConfigPb(device_type_to_offline_allowed_versions, device_type_to_offline_allowed_versions_with_expirations, unknownFields);
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u001c\u0010\u0004\u001a\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0007J\u001a\u0010\b\u001a\u00020\u00002\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\u0005R\u001e\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;", "()V", "device_type_to_offline_allowed_versions", "", "", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;", "device_type_to_offline_allowed_versions_with_expirations", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<RegionOfflineConfigPb, Builder> {
            public Map<String, OfflineAllowedVersionDetailsPb> device_type_to_offline_allowed_versions = MapsKt.emptyMap();
            public Map<String, OfflineAllowedVersionsWithExpirationsPb> device_type_to_offline_allowed_versions_with_expirations = MapsKt.emptyMap();

            @Deprecated(message = "device_type_to_offline_allowed_versions is deprecated")
            public final Builder device_type_to_offline_allowed_versions(Map<String, OfflineAllowedVersionDetailsPb> device_type_to_offline_allowed_versions) {
                Intrinsics.checkNotNullParameter(device_type_to_offline_allowed_versions, "device_type_to_offline_allowed_versions");
                this.device_type_to_offline_allowed_versions = device_type_to_offline_allowed_versions;
                return this;
            }

            public final Builder device_type_to_offline_allowed_versions_with_expirations(Map<String, OfflineAllowedVersionsWithExpirationsPb> device_type_to_offline_allowed_versions_with_expirations) {
                Intrinsics.checkNotNullParameter(device_type_to_offline_allowed_versions_with_expirations, "device_type_to_offline_allowed_versions_with_expirations");
                this.device_type_to_offline_allowed_versions_with_expirations = device_type_to_offline_allowed_versions_with_expirations;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public RegionOfflineConfigPb build() {
                return new RegionOfflineConfigPb(this.device_type_to_offline_allowed_versions, this.device_type_to_offline_allowed_versions_with_expirations, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ RegionOfflineConfigPb build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RegionOfflineConfigPb.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<RegionOfflineConfigPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$RegionOfflineConfigPb$Companion$ADAPTER$1

                /* JADX INFO: renamed from: device_type_to_offline_allowed_versionsAdapter$delegate, reason: from kotlin metadata */
                private final Lazy device_type_to_offline_allowed_versionsAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends OfflineConfigPb.OfflineAllowedVersionDetailsPb>>>() { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$RegionOfflineConfigPb$Companion$ADAPTER$1$device_type_to_offline_allowed_versionsAdapter$2
                    @Override // kotlin.jvm.functions.Function0
                    public final ProtoAdapter<Map<String, ? extends OfflineConfigPb.OfflineAllowedVersionDetailsPb>> invoke() {
                        return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, OfflineConfigPb.OfflineAllowedVersionDetailsPb.ADAPTER);
                    }
                });

                /* JADX INFO: renamed from: device_type_to_offline_allowed_versions_with_expirationsAdapter$delegate, reason: from kotlin metadata */
                private final Lazy device_type_to_offline_allowed_versions_with_expirationsAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb>>>() { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$RegionOfflineConfigPb$Companion$ADAPTER$1$device_type_to_offline_allowed_versions_with_expirationsAdapter$2
                    @Override // kotlin.jvm.functions.Function0
                    public final ProtoAdapter<Map<String, ? extends OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb>> invoke() {
                        return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.ADAPTER);
                    }
                });

                private final ProtoAdapter<Map<String, OfflineConfigPb.OfflineAllowedVersionDetailsPb>> getDevice_type_to_offline_allowed_versionsAdapter() {
                    return (ProtoAdapter) this.device_type_to_offline_allowed_versionsAdapter.getValue();
                }

                private final ProtoAdapter<Map<String, OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb>> getDevice_type_to_offline_allowed_versions_with_expirationsAdapter() {
                    return (ProtoAdapter) this.device_type_to_offline_allowed_versions_with_expirationsAdapter.getValue();
                }

                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(OfflineConfigPb.RegionOfflineConfigPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + getDevice_type_to_offline_allowed_versionsAdapter().encodedSizeWithTag(1, value.device_type_to_offline_allowed_versions) + getDevice_type_to_offline_allowed_versions_with_expirationsAdapter().encodedSizeWithTag(2, value.device_type_to_offline_allowed_versions_with_expirations);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, OfflineConfigPb.RegionOfflineConfigPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    getDevice_type_to_offline_allowed_versionsAdapter().encodeWithTag(writer, 1, value.device_type_to_offline_allowed_versions);
                    getDevice_type_to_offline_allowed_versions_with_expirationsAdapter().encodeWithTag(writer, 2, value.device_type_to_offline_allowed_versions_with_expirations);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, OfflineConfigPb.RegionOfflineConfigPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    getDevice_type_to_offline_allowed_versions_with_expirationsAdapter().encodeWithTag(writer, 2, value.device_type_to_offline_allowed_versions_with_expirations);
                    getDevice_type_to_offline_allowed_versionsAdapter().encodeWithTag(writer, 1, value.device_type_to_offline_allowed_versions);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.RegionOfflineConfigPb decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new OfflineConfigPb.RegionOfflineConfigPb(linkedHashMap, linkedHashMap2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            linkedHashMap.putAll(getDevice_type_to_offline_allowed_versionsAdapter().decode(reader));
                        } else if (iNextTag == 2) {
                            linkedHashMap2.putAll(getDevice_type_to_offline_allowed_versions_with_expirationsAdapter().decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.RegionOfflineConfigPb redact(OfflineConfigPb.RegionOfflineConfigPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.copy(Internal.m362redactElements(value.device_type_to_offline_allowed_versions, OfflineConfigPb.OfflineAllowedVersionDetailsPb.ADAPTER), Internal.m362redactElements(value.device_type_to_offline_allowed_versions_with_expirations, OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.ADAPTER), ByteString.EMPTY);
                }
            };
        }
    }

    /* JADX INFO: compiled from: OfflineConfigPb.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ.\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata$Builder;", "key_profile_pek0", "", "key_profile_id", "expiration_time_ms", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;JLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class KeyProfileMetadata extends Message<KeyProfileMetadata, Builder> {
        public static final ProtoAdapter<KeyProfileMetadata> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "expirationTimeMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final long expiration_time_ms;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "keyProfileId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String key_profile_id;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "keyProfilePek0", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String key_profile_pek0;

        public KeyProfileMetadata() {
            this(null, null, 0L, null, 15, null);
        }

        public /* synthetic */ KeyProfileMetadata(String str, String str2, long j, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? 0L : j, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public KeyProfileMetadata(String key_profile_pek0, String key_profile_id, long j, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(key_profile_pek0, "key_profile_pek0");
            Intrinsics.checkNotNullParameter(key_profile_id, "key_profile_id");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.key_profile_pek0 = key_profile_pek0;
            this.key_profile_id = key_profile_id;
            this.expiration_time_ms = j;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.key_profile_pek0 = this.key_profile_pek0;
            builder.key_profile_id = this.key_profile_id;
            builder.expiration_time_ms = this.expiration_time_ms;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof KeyProfileMetadata)) {
                return false;
            }
            KeyProfileMetadata keyProfileMetadata = (KeyProfileMetadata) other;
            return Intrinsics.areEqual(unknownFields(), keyProfileMetadata.unknownFields()) && Intrinsics.areEqual(this.key_profile_pek0, keyProfileMetadata.key_profile_pek0) && Intrinsics.areEqual(this.key_profile_id, keyProfileMetadata.key_profile_id) && this.expiration_time_ms == keyProfileMetadata.expiration_time_ms;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((unknownFields().hashCode() * 37) + this.key_profile_pek0.hashCode()) * 37) + this.key_profile_id.hashCode()) * 37) + Long.hashCode(this.expiration_time_ms);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("key_profile_pek0=" + Internal.sanitize(this.key_profile_pek0));
            arrayList2.add("key_profile_id=" + Internal.sanitize(this.key_profile_id));
            arrayList2.add("expiration_time_ms=" + this.expiration_time_ms);
            return CollectionsKt.joinToString$default(arrayList, ", ", "KeyProfileMetadata{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ KeyProfileMetadata copy$default(KeyProfileMetadata keyProfileMetadata, String str, String str2, long j, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = keyProfileMetadata.key_profile_pek0;
            }
            if ((i & 2) != 0) {
                str2 = keyProfileMetadata.key_profile_id;
            }
            if ((i & 4) != 0) {
                j = keyProfileMetadata.expiration_time_ms;
            }
            if ((i & 8) != 0) {
                byteString = keyProfileMetadata.unknownFields();
            }
            ByteString byteString2 = byteString;
            return keyProfileMetadata.copy(str, str2, j, byteString2);
        }

        public final KeyProfileMetadata copy(String key_profile_pek0, String key_profile_id, long expiration_time_ms, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(key_profile_pek0, "key_profile_pek0");
            Intrinsics.checkNotNullParameter(key_profile_id, "key_profile_id");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new KeyProfileMetadata(key_profile_pek0, key_profile_id, expiration_time_ms, unknownFields);
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;", "()V", "expiration_time_ms", "", "key_profile_id", "", "key_profile_pek0", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<KeyProfileMetadata, Builder> {
            public long expiration_time_ms;
            public String key_profile_pek0 = "";
            public String key_profile_id = "";

            public final Builder key_profile_pek0(String key_profile_pek0) {
                Intrinsics.checkNotNullParameter(key_profile_pek0, "key_profile_pek0");
                this.key_profile_pek0 = key_profile_pek0;
                return this;
            }

            public final Builder key_profile_id(String key_profile_id) {
                Intrinsics.checkNotNullParameter(key_profile_id, "key_profile_id");
                this.key_profile_id = key_profile_id;
                return this;
            }

            public final Builder expiration_time_ms(long expiration_time_ms) {
                this.expiration_time_ms = expiration_time_ms;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public KeyProfileMetadata build() {
                return new KeyProfileMetadata(this.key_profile_pek0, this.key_profile_id, this.expiration_time_ms, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ KeyProfileMetadata build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(KeyProfileMetadata.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<KeyProfileMetadata>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$KeyProfileMetadata$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(OfflineConfigPb.KeyProfileMetadata value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.key_profile_pek0, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.key_profile_pek0);
                    }
                    if (!Intrinsics.areEqual(value.key_profile_id, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.key_profile_id);
                    }
                    return value.expiration_time_ms != 0 ? size + ProtoAdapter.UINT64.encodedSizeWithTag(3, Long.valueOf(value.expiration_time_ms)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, OfflineConfigPb.KeyProfileMetadata value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.key_profile_pek0, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.key_profile_pek0);
                    }
                    if (!Intrinsics.areEqual(value.key_profile_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.key_profile_id);
                    }
                    if (value.expiration_time_ms != 0) {
                        ProtoAdapter.UINT64.encodeWithTag(writer, 3, Long.valueOf(value.expiration_time_ms));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, OfflineConfigPb.KeyProfileMetadata value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.expiration_time_ms != 0) {
                        ProtoAdapter.UINT64.encodeWithTag(writer, 3, Long.valueOf(value.expiration_time_ms));
                    }
                    if (!Intrinsics.areEqual(value.key_profile_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.key_profile_id);
                    }
                    if (Intrinsics.areEqual(value.key_profile_pek0, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.key_profile_pek0);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.KeyProfileMetadata redact(OfflineConfigPb.KeyProfileMetadata value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return OfflineConfigPb.KeyProfileMetadata.copy$default(value, null, null, 0L, ByteString.EMPTY, 7, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.KeyProfileMetadata decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    long jLongValue = 0;
                    String strDecode2 = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new OfflineConfigPb.KeyProfileMetadata(strDecode, strDecode2, jLongValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            jLongValue = ProtoAdapter.UINT64.decode(reader).longValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: OfflineConfigPb.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0016\u0017\u0018B?\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ@\u0010\f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00042\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;", "firmware_versions", "", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;", "config_versions", "key_profile_metadata", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "VersionWithExpiration", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class OfflineAllowedVersionsWithExpirationsPb extends Message<OfflineAllowedVersionsWithExpirationsPb, Builder> {
        public static final ProtoAdapter<OfflineAllowedVersionsWithExpirationsPb> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration#ADAPTER", jsonName = "configVersions", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
        public final List<VersionWithExpiration> config_versions;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration#ADAPTER", jsonName = "firmwareVersions", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
        public final List<VersionWithExpiration> firmware_versions;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$KeyProfileMetadata#ADAPTER", jsonName = "keyProfileMetadata", label = WireField.Label.REPEATED, schemaIndex = 2, tag = 3)
        public final List<KeyProfileMetadata> key_profile_metadata;

        public OfflineAllowedVersionsWithExpirationsPb() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ OfflineAllowedVersionsWithExpirationsPb(List list, List list2, List list3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? CollectionsKt.emptyList() : list2, (i & 4) != 0 ? CollectionsKt.emptyList() : list3, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OfflineAllowedVersionsWithExpirationsPb(List<VersionWithExpiration> firmware_versions, List<VersionWithExpiration> config_versions, List<KeyProfileMetadata> key_profile_metadata, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(firmware_versions, "firmware_versions");
            Intrinsics.checkNotNullParameter(config_versions, "config_versions");
            Intrinsics.checkNotNullParameter(key_profile_metadata, "key_profile_metadata");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.firmware_versions = Internal.immutableCopyOf("firmware_versions", firmware_versions);
            this.config_versions = Internal.immutableCopyOf("config_versions", config_versions);
            this.key_profile_metadata = Internal.immutableCopyOf("key_profile_metadata", key_profile_metadata);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.firmware_versions = this.firmware_versions;
            builder.config_versions = this.config_versions;
            builder.key_profile_metadata = this.key_profile_metadata;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof OfflineAllowedVersionsWithExpirationsPb)) {
                return false;
            }
            OfflineAllowedVersionsWithExpirationsPb offlineAllowedVersionsWithExpirationsPb = (OfflineAllowedVersionsWithExpirationsPb) other;
            return Intrinsics.areEqual(unknownFields(), offlineAllowedVersionsWithExpirationsPb.unknownFields()) && Intrinsics.areEqual(this.firmware_versions, offlineAllowedVersionsWithExpirationsPb.firmware_versions) && Intrinsics.areEqual(this.config_versions, offlineAllowedVersionsWithExpirationsPb.config_versions) && Intrinsics.areEqual(this.key_profile_metadata, offlineAllowedVersionsWithExpirationsPb.key_profile_metadata);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((unknownFields().hashCode() * 37) + this.firmware_versions.hashCode()) * 37) + this.config_versions.hashCode()) * 37) + this.key_profile_metadata.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.firmware_versions.isEmpty()) {
                arrayList.add("firmware_versions=" + this.firmware_versions);
            }
            if (!this.config_versions.isEmpty()) {
                arrayList.add("config_versions=" + this.config_versions);
            }
            if (!this.key_profile_metadata.isEmpty()) {
                arrayList.add("key_profile_metadata=" + this.key_profile_metadata);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "OfflineAllowedVersionsWithExpirationsPb{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ OfflineAllowedVersionsWithExpirationsPb copy$default(OfflineAllowedVersionsWithExpirationsPb offlineAllowedVersionsWithExpirationsPb, List list, List list2, List list3, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                list = offlineAllowedVersionsWithExpirationsPb.firmware_versions;
            }
            if ((i & 2) != 0) {
                list2 = offlineAllowedVersionsWithExpirationsPb.config_versions;
            }
            if ((i & 4) != 0) {
                list3 = offlineAllowedVersionsWithExpirationsPb.key_profile_metadata;
            }
            if ((i & 8) != 0) {
                byteString = offlineAllowedVersionsWithExpirationsPb.unknownFields();
            }
            return offlineAllowedVersionsWithExpirationsPb.copy(list, list2, list3, byteString);
        }

        public final OfflineAllowedVersionsWithExpirationsPb copy(List<VersionWithExpiration> firmware_versions, List<VersionWithExpiration> config_versions, List<KeyProfileMetadata> key_profile_metadata, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(firmware_versions, "firmware_versions");
            Intrinsics.checkNotNullParameter(config_versions, "config_versions");
            Intrinsics.checkNotNullParameter(key_profile_metadata, "key_profile_metadata");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new OfflineAllowedVersionsWithExpirationsPb(firmware_versions, config_versions, key_profile_metadata, unknownFields);
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0007\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;", "()V", "config_versions", "", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;", "firmware_versions", "key_profile_metadata", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<OfflineAllowedVersionsWithExpirationsPb, Builder> {
            public List<VersionWithExpiration> firmware_versions = CollectionsKt.emptyList();
            public List<VersionWithExpiration> config_versions = CollectionsKt.emptyList();
            public List<KeyProfileMetadata> key_profile_metadata = CollectionsKt.emptyList();

            public final Builder firmware_versions(List<VersionWithExpiration> firmware_versions) {
                Intrinsics.checkNotNullParameter(firmware_versions, "firmware_versions");
                Internal.checkElementsNotNull(firmware_versions);
                this.firmware_versions = firmware_versions;
                return this;
            }

            public final Builder config_versions(List<VersionWithExpiration> config_versions) {
                Intrinsics.checkNotNullParameter(config_versions, "config_versions");
                Internal.checkElementsNotNull(config_versions);
                this.config_versions = config_versions;
                return this;
            }

            public final Builder key_profile_metadata(List<KeyProfileMetadata> key_profile_metadata) {
                Intrinsics.checkNotNullParameter(key_profile_metadata, "key_profile_metadata");
                Internal.checkElementsNotNull(key_profile_metadata);
                this.key_profile_metadata = key_profile_metadata;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public OfflineAllowedVersionsWithExpirationsPb build() {
                return new OfflineAllowedVersionsWithExpirationsPb(this.firmware_versions, this.config_versions, this.key_profile_metadata, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ OfflineAllowedVersionsWithExpirationsPb build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OfflineAllowedVersionsWithExpirationsPb.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<OfflineAllowedVersionsWithExpirationsPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration.ADAPTER.asRepeated().encodedSizeWithTag(1, value.firmware_versions) + OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration.ADAPTER.asRepeated().encodedSizeWithTag(2, value.config_versions) + OfflineConfigPb.KeyProfileMetadata.ADAPTER.asRepeated().encodedSizeWithTag(3, value.key_profile_metadata);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.firmware_versions);
                    OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.config_versions);
                    OfflineConfigPb.KeyProfileMetadata.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.key_profile_metadata);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    OfflineConfigPb.KeyProfileMetadata.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.key_profile_metadata);
                    OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.config_versions);
                    OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.firmware_versions);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb(arrayList, arrayList2, arrayList3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            arrayList.add(OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration.ADAPTER.decode(reader));
                        } else if (iNextTag == 2) {
                            arrayList2.add(OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration.ADAPTER.decode(reader));
                        } else if (iNextTag == 3) {
                            arrayList3.add(OfflineConfigPb.KeyProfileMetadata.ADAPTER.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb redact(OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.copy(Internal.m361redactElements(value.firmware_versions, OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration.ADAPTER), Internal.m361redactElements(value.config_versions, OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration.ADAPTER), Internal.m361redactElements(value.key_profile_metadata, OfflineConfigPb.KeyProfileMetadata.ADAPTER), ByteString.EMPTY);
                }
            };
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration$Builder;", "version", "", "expiration_time_ms", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;JLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class VersionWithExpiration extends Message<VersionWithExpiration, Builder> {
            public static final ProtoAdapter<VersionWithExpiration> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "expirationTimeMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
            public final long expiration_time_ms;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String version;

            public VersionWithExpiration() {
                this(null, 0L, null, 7, null);
            }

            public /* synthetic */ VersionWithExpiration(String str, long j, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public VersionWithExpiration(String version, long j, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(version, "version");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.version = version;
                this.expiration_time_ms = j;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.version = this.version;
                builder.expiration_time_ms = this.expiration_time_ms;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof VersionWithExpiration)) {
                    return false;
                }
                VersionWithExpiration versionWithExpiration = (VersionWithExpiration) other;
                return Intrinsics.areEqual(unknownFields(), versionWithExpiration.unknownFields()) && Intrinsics.areEqual(this.version, versionWithExpiration.version) && this.expiration_time_ms == versionWithExpiration.expiration_time_ms;
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (((unknownFields().hashCode() * 37) + this.version.hashCode()) * 37) + Long.hashCode(this.expiration_time_ms);
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = arrayList;
                arrayList2.add("version=" + Internal.sanitize(this.version));
                arrayList2.add("expiration_time_ms=" + this.expiration_time_ms);
                return CollectionsKt.joinToString$default(arrayList, ", ", "VersionWithExpiration{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ VersionWithExpiration copy$default(VersionWithExpiration versionWithExpiration, String str, long j, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = versionWithExpiration.version;
                }
                if ((i & 2) != 0) {
                    j = versionWithExpiration.expiration_time_ms;
                }
                if ((i & 4) != 0) {
                    byteString = versionWithExpiration.unknownFields();
                }
                return versionWithExpiration.copy(str, j, byteString);
            }

            public final VersionWithExpiration copy(String version, long expiration_time_ms, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(version, "version");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new VersionWithExpiration(version, expiration_time_ms, unknownFields);
            }

            /* JADX INFO: compiled from: OfflineConfigPb.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;", "()V", "expiration_time_ms", "", "version", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<VersionWithExpiration, Builder> {
                public long expiration_time_ms;
                public String version = "";

                public final Builder version(String version) {
                    Intrinsics.checkNotNullParameter(version, "version");
                    this.version = version;
                    return this;
                }

                public final Builder expiration_time_ms(long expiration_time_ms) {
                    this.expiration_time_ms = expiration_time_ms;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public VersionWithExpiration build() {
                    return new VersionWithExpiration(this.version, this.expiration_time_ms, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: OfflineConfigPb.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ VersionWithExpiration build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(VersionWithExpiration.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<VersionWithExpiration>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (!Intrinsics.areEqual(value.version, "")) {
                            size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.version);
                        }
                        return value.expiration_time_ms != 0 ? size + ProtoAdapter.UINT64.encodedSizeWithTag(2, Long.valueOf(value.expiration_time_ms)) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.version, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.version);
                        }
                        if (value.expiration_time_ms != 0) {
                            ProtoAdapter.UINT64.encodeWithTag(writer, 2, Long.valueOf(value.expiration_time_ms));
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.expiration_time_ms != 0) {
                            ProtoAdapter.UINT64.encodeWithTag(writer, 2, Long.valueOf(value.expiration_time_ms));
                        }
                        if (Intrinsics.areEqual(value.version, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.version);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration redact(OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration.copy$default(value, null, 0L, ByteString.EMPTY, 3, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        long jLongValue = 0;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration(strDecode, jLongValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 2) {
                                jLongValue = ProtoAdapter.UINT64.decode(reader).longValue();
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }
    }

    /* JADX INFO: compiled from: OfflineConfigPb.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBS\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJT\u0010\u0011\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u0005H\u0016R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;", "firmware_versions", "", "", "config_versions", "key_profile_version", "expiration_time", "", "key_profile_metadata", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)V", "getKey_profile_version$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class OfflineAllowedVersionDetailsPb extends Message<OfflineAllowedVersionDetailsPb, Builder> {
        public static final ProtoAdapter<OfflineAllowedVersionDetailsPb> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "configVersions", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
        public final List<String> config_versions;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "expirationTime", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final long expiration_time;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "firmwareVersions", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
        public final List<String> firmware_versions;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$KeyProfileMetadata#ADAPTER", jsonName = "keyProfileMetadata", label = WireField.Label.REPEATED, schemaIndex = 4, tag = 5)
        public final List<KeyProfileMetadata> key_profile_metadata;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "keyProfileVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final String key_profile_version;

        public OfflineAllowedVersionDetailsPb() {
            this(null, null, null, 0L, null, null, 63, null);
        }

        @Deprecated(message = "key_profile_version is deprecated")
        public static /* synthetic */ void getKey_profile_version$annotations() {
        }

        public /* synthetic */ OfflineAllowedVersionDetailsPb(List list, List list2, String str, long j, List list3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? CollectionsKt.emptyList() : list2, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? 0L : j, (i & 16) != 0 ? CollectionsKt.emptyList() : list3, (i & 32) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OfflineAllowedVersionDetailsPb(List<String> firmware_versions, List<String> config_versions, String key_profile_version, long j, List<KeyProfileMetadata> key_profile_metadata, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(firmware_versions, "firmware_versions");
            Intrinsics.checkNotNullParameter(config_versions, "config_versions");
            Intrinsics.checkNotNullParameter(key_profile_version, "key_profile_version");
            Intrinsics.checkNotNullParameter(key_profile_metadata, "key_profile_metadata");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.key_profile_version = key_profile_version;
            this.expiration_time = j;
            this.firmware_versions = Internal.immutableCopyOf("firmware_versions", firmware_versions);
            this.config_versions = Internal.immutableCopyOf("config_versions", config_versions);
            this.key_profile_metadata = Internal.immutableCopyOf("key_profile_metadata", key_profile_metadata);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.firmware_versions = this.firmware_versions;
            builder.config_versions = this.config_versions;
            builder.key_profile_version = this.key_profile_version;
            builder.expiration_time = this.expiration_time;
            builder.key_profile_metadata = this.key_profile_metadata;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof OfflineAllowedVersionDetailsPb)) {
                return false;
            }
            OfflineAllowedVersionDetailsPb offlineAllowedVersionDetailsPb = (OfflineAllowedVersionDetailsPb) other;
            return Intrinsics.areEqual(unknownFields(), offlineAllowedVersionDetailsPb.unknownFields()) && Intrinsics.areEqual(this.firmware_versions, offlineAllowedVersionDetailsPb.firmware_versions) && Intrinsics.areEqual(this.config_versions, offlineAllowedVersionDetailsPb.config_versions) && Intrinsics.areEqual(this.key_profile_version, offlineAllowedVersionDetailsPb.key_profile_version) && this.expiration_time == offlineAllowedVersionDetailsPb.expiration_time && Intrinsics.areEqual(this.key_profile_metadata, offlineAllowedVersionDetailsPb.key_profile_metadata);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((((((unknownFields().hashCode() * 37) + this.firmware_versions.hashCode()) * 37) + this.config_versions.hashCode()) * 37) + this.key_profile_version.hashCode()) * 37) + Long.hashCode(this.expiration_time)) * 37) + this.key_profile_metadata.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.firmware_versions.isEmpty()) {
                arrayList.add("firmware_versions=" + Internal.sanitize(this.firmware_versions));
            }
            if (!this.config_versions.isEmpty()) {
                arrayList.add("config_versions=" + Internal.sanitize(this.config_versions));
            }
            ArrayList arrayList2 = arrayList;
            arrayList2.add("key_profile_version=" + Internal.sanitize(this.key_profile_version));
            arrayList2.add("expiration_time=" + this.expiration_time);
            if (!this.key_profile_metadata.isEmpty()) {
                arrayList2.add("key_profile_metadata=" + this.key_profile_metadata);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "OfflineAllowedVersionDetailsPb{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ OfflineAllowedVersionDetailsPb copy$default(OfflineAllowedVersionDetailsPb offlineAllowedVersionDetailsPb, List list, List list2, String str, long j, List list3, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                list = offlineAllowedVersionDetailsPb.firmware_versions;
            }
            if ((i & 2) != 0) {
                list2 = offlineAllowedVersionDetailsPb.config_versions;
            }
            if ((i & 4) != 0) {
                str = offlineAllowedVersionDetailsPb.key_profile_version;
            }
            if ((i & 8) != 0) {
                j = offlineAllowedVersionDetailsPb.expiration_time;
            }
            if ((i & 16) != 0) {
                list3 = offlineAllowedVersionDetailsPb.key_profile_metadata;
            }
            if ((i & 32) != 0) {
                byteString = offlineAllowedVersionDetailsPb.unknownFields();
            }
            long j2 = j;
            String str2 = str;
            return offlineAllowedVersionDetailsPb.copy(list, list2, str2, j2, list3, byteString);
        }

        public final OfflineAllowedVersionDetailsPb copy(List<String> firmware_versions, List<String> config_versions, String key_profile_version, long expiration_time, List<KeyProfileMetadata> key_profile_metadata, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(firmware_versions, "firmware_versions");
            Intrinsics.checkNotNullParameter(config_versions, "config_versions");
            Intrinsics.checkNotNullParameter(key_profile_version, "key_profile_version");
            Intrinsics.checkNotNullParameter(key_profile_metadata, "key_profile_metadata");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new OfflineAllowedVersionDetailsPb(firmware_versions, config_versions, key_profile_version, expiration_time, key_profile_metadata, unknownFields);
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u0014\u0010\t\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\n\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0005J\u0010\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0006H\u0007R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;", "()V", "config_versions", "", "", "expiration_time", "", "firmware_versions", "key_profile_metadata", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;", "key_profile_version", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<OfflineAllowedVersionDetailsPb, Builder> {
            public long expiration_time;
            public List<String> firmware_versions = CollectionsKt.emptyList();
            public List<String> config_versions = CollectionsKt.emptyList();
            public String key_profile_version = "";
            public List<KeyProfileMetadata> key_profile_metadata = CollectionsKt.emptyList();

            public final Builder firmware_versions(List<String> firmware_versions) {
                Intrinsics.checkNotNullParameter(firmware_versions, "firmware_versions");
                Internal.checkElementsNotNull(firmware_versions);
                this.firmware_versions = firmware_versions;
                return this;
            }

            public final Builder config_versions(List<String> config_versions) {
                Intrinsics.checkNotNullParameter(config_versions, "config_versions");
                Internal.checkElementsNotNull(config_versions);
                this.config_versions = config_versions;
                return this;
            }

            @Deprecated(message = "key_profile_version is deprecated")
            public final Builder key_profile_version(String key_profile_version) {
                Intrinsics.checkNotNullParameter(key_profile_version, "key_profile_version");
                this.key_profile_version = key_profile_version;
                return this;
            }

            public final Builder expiration_time(long expiration_time) {
                this.expiration_time = expiration_time;
                return this;
            }

            public final Builder key_profile_metadata(List<KeyProfileMetadata> key_profile_metadata) {
                Intrinsics.checkNotNullParameter(key_profile_metadata, "key_profile_metadata");
                Internal.checkElementsNotNull(key_profile_metadata);
                this.key_profile_metadata = key_profile_metadata;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public OfflineAllowedVersionDetailsPb build() {
                return new OfflineAllowedVersionDetailsPb(this.firmware_versions, this.config_versions, this.key_profile_version, this.expiration_time, this.key_profile_metadata, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ OfflineAllowedVersionDetailsPb build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OfflineAllowedVersionDetailsPb.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<OfflineAllowedVersionDetailsPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$OfflineAllowedVersionDetailsPb$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(OfflineConfigPb.OfflineAllowedVersionDetailsPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size() + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(1, value.firmware_versions) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(2, value.config_versions);
                    if (!Intrinsics.areEqual(value.key_profile_version, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.key_profile_version);
                    }
                    if (value.expiration_time != 0) {
                        size += ProtoAdapter.UINT64.encodedSizeWithTag(4, Long.valueOf(value.expiration_time));
                    }
                    return size + OfflineConfigPb.KeyProfileMetadata.ADAPTER.asRepeated().encodedSizeWithTag(5, value.key_profile_metadata);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, OfflineConfigPb.OfflineAllowedVersionDetailsPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.firmware_versions);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.config_versions);
                    if (!Intrinsics.areEqual(value.key_profile_version, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.key_profile_version);
                    }
                    if (value.expiration_time != 0) {
                        ProtoAdapter.UINT64.encodeWithTag(writer, 4, Long.valueOf(value.expiration_time));
                    }
                    OfflineConfigPb.KeyProfileMetadata.ADAPTER.asRepeated().encodeWithTag(writer, 5, value.key_profile_metadata);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, OfflineConfigPb.OfflineAllowedVersionDetailsPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    OfflineConfigPb.KeyProfileMetadata.ADAPTER.asRepeated().encodeWithTag(writer, 5, value.key_profile_metadata);
                    if (value.expiration_time != 0) {
                        ProtoAdapter.UINT64.encodeWithTag(writer, 4, Long.valueOf(value.expiration_time));
                    }
                    if (!Intrinsics.areEqual(value.key_profile_version, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.key_profile_version);
                    }
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.config_versions);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.firmware_versions);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.OfflineAllowedVersionDetailsPb decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    long jLongValue = 0;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new OfflineConfigPb.OfflineAllowedVersionDetailsPb(arrayList, arrayList2, strDecode, jLongValue, arrayList3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            arrayList.add(ProtoAdapter.STRING.decode(reader));
                        } else if (iNextTag == 2) {
                            arrayList2.add(ProtoAdapter.STRING.decode(reader));
                        } else if (iNextTag == 3) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 4) {
                            jLongValue = ProtoAdapter.UINT64.decode(reader).longValue();
                        } else if (iNextTag == 5) {
                            arrayList3.add(OfflineConfigPb.KeyProfileMetadata.ADAPTER.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.OfflineAllowedVersionDetailsPb redact(OfflineConfigPb.OfflineAllowedVersionDetailsPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return OfflineConfigPb.OfflineAllowedVersionDetailsPb.copy$default(value, null, null, null, 0L, Internal.m361redactElements(value.key_profile_metadata, OfflineConfigPb.KeyProfileMetadata.ADAPTER), ByteString.EMPTY, 15, null);
                }
            };
        }
    }

    /* JADX INFO: compiled from: OfflineConfigPb.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ.\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;", "cardholder_name", "", "first_six", "last_four", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class OfflinePanDenylistEntry extends Message<OfflinePanDenylistEntry, Builder> {
        public static final ProtoAdapter<OfflinePanDenylistEntry> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "cardholderName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String cardholder_name;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "firstSix", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String first_six;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "lastFour", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final String last_four;

        public OfflinePanDenylistEntry() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ OfflinePanDenylistEntry(String str, String str2, String str3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OfflinePanDenylistEntry(String cardholder_name, String first_six, String last_four, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(cardholder_name, "cardholder_name");
            Intrinsics.checkNotNullParameter(first_six, "first_six");
            Intrinsics.checkNotNullParameter(last_four, "last_four");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.cardholder_name = cardholder_name;
            this.first_six = first_six;
            this.last_four = last_four;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.cardholder_name = this.cardholder_name;
            builder.first_six = this.first_six;
            builder.last_four = this.last_four;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof OfflinePanDenylistEntry)) {
                return false;
            }
            OfflinePanDenylistEntry offlinePanDenylistEntry = (OfflinePanDenylistEntry) other;
            return Intrinsics.areEqual(unknownFields(), offlinePanDenylistEntry.unknownFields()) && Intrinsics.areEqual(this.cardholder_name, offlinePanDenylistEntry.cardholder_name) && Intrinsics.areEqual(this.first_six, offlinePanDenylistEntry.first_six) && Intrinsics.areEqual(this.last_four, offlinePanDenylistEntry.last_four);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((unknownFields().hashCode() * 37) + this.cardholder_name.hashCode()) * 37) + this.first_six.hashCode()) * 37) + this.last_four.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("cardholder_name=" + Internal.sanitize(this.cardholder_name));
            arrayList2.add("first_six=" + Internal.sanitize(this.first_six));
            arrayList2.add("last_four=" + Internal.sanitize(this.last_four));
            return CollectionsKt.joinToString$default(arrayList, ", ", "OfflinePanDenylistEntry{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ OfflinePanDenylistEntry copy$default(OfflinePanDenylistEntry offlinePanDenylistEntry, String str, String str2, String str3, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = offlinePanDenylistEntry.cardholder_name;
            }
            if ((i & 2) != 0) {
                str2 = offlinePanDenylistEntry.first_six;
            }
            if ((i & 4) != 0) {
                str3 = offlinePanDenylistEntry.last_four;
            }
            if ((i & 8) != 0) {
                byteString = offlinePanDenylistEntry.unknownFields();
            }
            return offlinePanDenylistEntry.copy(str, str2, str3, byteString);
        }

        public final OfflinePanDenylistEntry copy(String cardholder_name, String first_six, String last_four, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(cardholder_name, "cardholder_name");
            Intrinsics.checkNotNullParameter(first_six, "first_six");
            Intrinsics.checkNotNullParameter(last_four, "last_four");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new OfflinePanDenylistEntry(cardholder_name, first_six, last_four, unknownFields);
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;", "()V", "cardholder_name", "", "first_six", "last_four", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<OfflinePanDenylistEntry, Builder> {
            public String cardholder_name = "";
            public String first_six = "";
            public String last_four = "";

            public final Builder cardholder_name(String cardholder_name) {
                Intrinsics.checkNotNullParameter(cardholder_name, "cardholder_name");
                this.cardholder_name = cardholder_name;
                return this;
            }

            public final Builder first_six(String first_six) {
                Intrinsics.checkNotNullParameter(first_six, "first_six");
                this.first_six = first_six;
                return this;
            }

            public final Builder last_four(String last_four) {
                Intrinsics.checkNotNullParameter(last_four, "last_four");
                this.last_four = last_four;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public OfflinePanDenylistEntry build() {
                return new OfflinePanDenylistEntry(this.cardholder_name, this.first_six, this.last_four, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ OfflinePanDenylistEntry build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OfflinePanDenylistEntry.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<OfflinePanDenylistEntry>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$OfflinePanDenylistEntry$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(OfflineConfigPb.OfflinePanDenylistEntry value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.cardholder_name, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.cardholder_name);
                    }
                    if (!Intrinsics.areEqual(value.first_six, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.first_six);
                    }
                    return !Intrinsics.areEqual(value.last_four, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(3, value.last_four) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, OfflineConfigPb.OfflinePanDenylistEntry value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.cardholder_name, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.cardholder_name);
                    }
                    if (!Intrinsics.areEqual(value.first_six, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.first_six);
                    }
                    if (!Intrinsics.areEqual(value.last_four, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.last_four);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, OfflineConfigPb.OfflinePanDenylistEntry value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (!Intrinsics.areEqual(value.last_four, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.last_four);
                    }
                    if (!Intrinsics.areEqual(value.first_six, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.first_six);
                    }
                    if (Intrinsics.areEqual(value.cardholder_name, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.cardholder_name);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.OfflinePanDenylistEntry redact(OfflineConfigPb.OfflinePanDenylistEntry value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return OfflineConfigPb.OfflinePanDenylistEntry.copy$default(value, null, null, null, ByteString.EMPTY, 7, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.OfflinePanDenylistEntry decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    String strDecode2 = "";
                    String strDecode3 = strDecode2;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new OfflineConfigPb.OfflinePanDenylistEntry(strDecode, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            strDecode3 = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: OfflineConfigPb.kt */
    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 42\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u000234Bù\u0002\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\u0014\b\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0010\u0012\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e\u0012\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e\u0012\u0014\b\u0002\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00180\u0006\u0012\u0014\b\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u001a0\u0006\u0012\u000e\b\u0002\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\u000e\u0012\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0010\u0012\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070\u000e\u0012\u000e\b\u0002\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e\u0012\b\b\u0002\u0010\"\u001a\u00020\u0010\u0012\b\b\u0002\u0010#\u001a\u00020\u0010\u0012\u0014\b\u0002\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u001a0\u0006\u0012\b\b\u0002\u0010%\u001a\u00020\u0010\u0012\b\b\u0002\u0010&\u001a\u00020'¢\u0006\u0002\u0010(Jú\u0002\u0010,\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\u0014\b\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\u0013\u001a\u00020\u00072\b\b\u0002\u0010\u0014\u001a\u00020\u00102\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e2\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e2\u0014\b\u0002\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00180\u00062\u0014\b\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u001a0\u00062\u000e\b\u0002\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\u000e2\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e2\b\b\u0002\u0010\u001e\u001a\u00020\u00042\b\b\u0002\u0010\u001f\u001a\u00020\u00102\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070\u000e2\u000e\b\u0002\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e2\b\b\u0002\u0010\"\u001a\u00020\u00102\b\b\u0002\u0010#\u001a\u00020\u00102\u0014\b\u0002\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u001a0\u00062\b\b\u0002\u0010%\u001a\u00020\u00102\b\b\u0002\u0010&\u001a\u00020'J\u0013\u0010-\u001a\u00020\u00102\b\u0010.\u001a\u0004\u0018\u00010/H\u0096\u0002J\b\u00100\u001a\u00020\u0004H\u0016J\b\u00101\u001a\u00020\u0002H\u0016J\b\u00102\u001a\u00020\u0007H\u0016R\u001c\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b)\u0010*R\u001c\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u001a0\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u001a0\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00180\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b+\u0010*R\u0010\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;", "forwarding_jitter_ms", "", "max_transaction_amount_by_currency", "", "", "", "offline_stickiness_ms", "http_low_timeout_ms", "http_high_timeout_ms", "http_health_check_timeout_ms", "expected_confirm_error_codes", "", "supports_sca", "", "supports_quick_chip", "aid_to_offline_pin_response_auth_code", "tvr_mask", "is_deferred_authorization_country", "expected_create_error_codes", "cardholder_name_decline_values", "region_to_region_offline_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;", "client_sdk_to_spos_support", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$SPosSdkSupportVersions;", "denylisted_masked_pans", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;", "denylisted_cardholder_names", "max_reader_offline_threshold_days", "offline_pair_unseen_reader_circuit_breaker", "expected_setup_intent_create_error_codes", "expected_setup_intent_confirm_error_codes", "setup_intents_enabled", "mobile_wallet_on_setup_intents_enabled", "client_sdk_to_spos_setup_intent_support", "disable_forced_sca_flow", "unknownFields", "Lokio/ByteString;", "(ILjava/util/Map;IIIILjava/util/List;ZZLjava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IZLjava/util/List;Ljava/util/List;ZZLjava/util/Map;ZLokio/ByteString;)V", "getCardholder_name_decline_values$annotations", "()V", "getSupports_quick_chip$annotations", "copy", "equals", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AccountOfflineConfigPb extends Message<AccountOfflineConfigPb, Builder> {
        public static final ProtoAdapter<AccountOfflineConfigPb> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "aidToOfflinePinResponseAuthCode", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 9, tag = 10)
        public final Map<String, String> aid_to_offline_pin_response_auth_code;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "cardholderNameDeclineValues", label = WireField.Label.REPEATED, schemaIndex = 13, tag = 14)
        public final List<String> cardholder_name_decline_values;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$SPosSdkSupportVersions#ADAPTER", jsonName = "clientSdkToSposSetupIntentSupport", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 24, tag = 25)
        public final Map<String, SPosSdkSupportVersions> client_sdk_to_spos_setup_intent_support;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$SPosSdkSupportVersions#ADAPTER", jsonName = "clientSdkToSposSupport", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 15, tag = 16)
        public final Map<String, SPosSdkSupportVersions> client_sdk_to_spos_support;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "denylistedCardholderNames", label = WireField.Label.REPEATED, schemaIndex = 17, tag = 18)
        public final List<String> denylisted_cardholder_names;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$OfflinePanDenylistEntry#ADAPTER", jsonName = "denylistedMaskedPans", label = WireField.Label.REPEATED, schemaIndex = 16, tag = 17)
        public final List<OfflinePanDenylistEntry> denylisted_masked_pans;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "disableForcedScaFlow", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 25, tag = 26)
        public final boolean disable_forced_sca_flow;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "expectedConfirmErrorCodes", label = WireField.Label.REPEATED, schemaIndex = 6, tag = 7)
        public final List<String> expected_confirm_error_codes;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "expectedCreateErrorCodes", label = WireField.Label.REPEATED, schemaIndex = 12, tag = 13)
        public final List<String> expected_create_error_codes;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "expectedSetupIntentConfirmErrorCodes", label = WireField.Label.REPEATED, schemaIndex = 21, tag = 22)
        public final List<String> expected_setup_intent_confirm_error_codes;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "expectedSetupIntentCreateErrorCodes", label = WireField.Label.REPEATED, schemaIndex = 20, tag = 21)
        public final List<String> expected_setup_intent_create_error_codes;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "forwardingJitterMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final int forwarding_jitter_ms;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "httpHealthCheckTimeoutMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
        public final int http_health_check_timeout_ms;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "httpHighTimeoutMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
        public final int http_high_timeout_ms;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "httpLowTimeoutMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final int http_low_timeout_ms;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "isDeferredAuthorizationCountry", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
        public final boolean is_deferred_authorization_country;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "maxReaderOfflineThresholdDays", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 18, tag = 19)
        public final int max_reader_offline_threshold_days;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "maxTransactionAmountByCurrency", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 1, tag = 2)
        public final Map<String, Long> max_transaction_amount_by_currency;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "mobileWalletOnSetupIntentsEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 23, tag = 24)
        public final boolean mobile_wallet_on_setup_intents_enabled;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "offlinePairUnseenReaderCircuitBreaker", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 19, tag = 20)
        public final boolean offline_pair_unseen_reader_circuit_breaker;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "offlineStickinessMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final int offline_stickiness_ms;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$RegionOfflineConfigPb#ADAPTER", jsonName = "regionToRegionOfflineConfig", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 14, tag = 15)
        public final Map<String, RegionOfflineConfigPb> region_to_region_offline_config;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "setupIntentsEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 22, tag = 23)
        public final boolean setup_intents_enabled;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "supportsQuickChip", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
        public final boolean supports_quick_chip;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "supportsSca", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
        public final boolean supports_sca;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "tvrMask", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
        public final String tvr_mask;

        public AccountOfflineConfigPb() {
            this(0, null, 0, 0, 0, 0, null, false, false, null, null, false, null, null, null, null, null, null, 0, false, null, null, false, false, null, false, null, 134217727, null);
        }

        @Deprecated(message = "cardholder_name_decline_values is deprecated")
        public static /* synthetic */ void getCardholder_name_decline_values$annotations() {
        }

        @Deprecated(message = "supports_quick_chip is deprecated")
        public static /* synthetic */ void getSupports_quick_chip$annotations() {
        }

        public /* synthetic */ AccountOfflineConfigPb(int i, Map map, int i2, int i3, int i4, int i5, List list, boolean z, boolean z2, Map map2, String str, boolean z3, List list2, List list3, Map map3, Map map4, List list4, List list5, int i6, boolean z4, List list6, List list7, boolean z5, boolean z6, Map map5, boolean z7, ByteString byteString, int i7, DefaultConstructorMarker defaultConstructorMarker) {
            this((i7 & 1) != 0 ? 0 : i, (i7 & 2) != 0 ? MapsKt.emptyMap() : map, (i7 & 4) != 0 ? 0 : i2, (i7 & 8) != 0 ? 0 : i3, (i7 & 16) != 0 ? 0 : i4, (i7 & 32) != 0 ? 0 : i5, (i7 & 64) != 0 ? CollectionsKt.emptyList() : list, (i7 & 128) != 0 ? false : z, (i7 & 256) != 0 ? false : z2, (i7 & 512) != 0 ? MapsKt.emptyMap() : map2, (i7 & 1024) != 0 ? "" : str, (i7 & 2048) != 0 ? false : z3, (i7 & 4096) != 0 ? CollectionsKt.emptyList() : list2, (i7 & 8192) != 0 ? CollectionsKt.emptyList() : list3, (i7 & 16384) != 0 ? MapsKt.emptyMap() : map3, (i7 & 32768) != 0 ? MapsKt.emptyMap() : map4, (i7 & 65536) != 0 ? CollectionsKt.emptyList() : list4, (i7 & 131072) != 0 ? CollectionsKt.emptyList() : list5, (i7 & 262144) != 0 ? 0 : i6, (i7 & 524288) != 0 ? false : z4, (i7 & 1048576) != 0 ? CollectionsKt.emptyList() : list6, (i7 & 2097152) != 0 ? CollectionsKt.emptyList() : list7, (i7 & 4194304) != 0 ? false : z5, (i7 & 8388608) != 0 ? false : z6, (i7 & 16777216) != 0 ? MapsKt.emptyMap() : map5, (i7 & 33554432) != 0 ? false : z7, (i7 & 67108864) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AccountOfflineConfigPb(int i, Map<String, Long> max_transaction_amount_by_currency, int i2, int i3, int i4, int i5, List<String> expected_confirm_error_codes, boolean z, boolean z2, Map<String, String> aid_to_offline_pin_response_auth_code, String tvr_mask, boolean z3, List<String> expected_create_error_codes, List<String> cardholder_name_decline_values, Map<String, RegionOfflineConfigPb> region_to_region_offline_config, Map<String, SPosSdkSupportVersions> client_sdk_to_spos_support, List<OfflinePanDenylistEntry> denylisted_masked_pans, List<String> denylisted_cardholder_names, int i6, boolean z4, List<String> expected_setup_intent_create_error_codes, List<String> expected_setup_intent_confirm_error_codes, boolean z5, boolean z6, Map<String, SPosSdkSupportVersions> client_sdk_to_spos_setup_intent_support, boolean z7, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(max_transaction_amount_by_currency, "max_transaction_amount_by_currency");
            Intrinsics.checkNotNullParameter(expected_confirm_error_codes, "expected_confirm_error_codes");
            Intrinsics.checkNotNullParameter(aid_to_offline_pin_response_auth_code, "aid_to_offline_pin_response_auth_code");
            Intrinsics.checkNotNullParameter(tvr_mask, "tvr_mask");
            Intrinsics.checkNotNullParameter(expected_create_error_codes, "expected_create_error_codes");
            Intrinsics.checkNotNullParameter(cardholder_name_decline_values, "cardholder_name_decline_values");
            Intrinsics.checkNotNullParameter(region_to_region_offline_config, "region_to_region_offline_config");
            Intrinsics.checkNotNullParameter(client_sdk_to_spos_support, "client_sdk_to_spos_support");
            Intrinsics.checkNotNullParameter(denylisted_masked_pans, "denylisted_masked_pans");
            Intrinsics.checkNotNullParameter(denylisted_cardholder_names, "denylisted_cardholder_names");
            Intrinsics.checkNotNullParameter(expected_setup_intent_create_error_codes, "expected_setup_intent_create_error_codes");
            Intrinsics.checkNotNullParameter(expected_setup_intent_confirm_error_codes, "expected_setup_intent_confirm_error_codes");
            Intrinsics.checkNotNullParameter(client_sdk_to_spos_setup_intent_support, "client_sdk_to_spos_setup_intent_support");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.forwarding_jitter_ms = i;
            this.offline_stickiness_ms = i2;
            this.http_low_timeout_ms = i3;
            this.http_high_timeout_ms = i4;
            this.http_health_check_timeout_ms = i5;
            this.supports_sca = z;
            this.supports_quick_chip = z2;
            this.tvr_mask = tvr_mask;
            this.is_deferred_authorization_country = z3;
            this.max_reader_offline_threshold_days = i6;
            this.offline_pair_unseen_reader_circuit_breaker = z4;
            this.setup_intents_enabled = z5;
            this.mobile_wallet_on_setup_intents_enabled = z6;
            this.disable_forced_sca_flow = z7;
            this.max_transaction_amount_by_currency = Internal.immutableCopyOf("max_transaction_amount_by_currency", max_transaction_amount_by_currency);
            this.expected_confirm_error_codes = Internal.immutableCopyOf("expected_confirm_error_codes", expected_confirm_error_codes);
            this.aid_to_offline_pin_response_auth_code = Internal.immutableCopyOf("aid_to_offline_pin_response_auth_code", aid_to_offline_pin_response_auth_code);
            this.expected_create_error_codes = Internal.immutableCopyOf("expected_create_error_codes", expected_create_error_codes);
            this.cardholder_name_decline_values = Internal.immutableCopyOf("cardholder_name_decline_values", cardholder_name_decline_values);
            this.region_to_region_offline_config = Internal.immutableCopyOf("region_to_region_offline_config", region_to_region_offline_config);
            this.client_sdk_to_spos_support = Internal.immutableCopyOf("client_sdk_to_spos_support", client_sdk_to_spos_support);
            this.denylisted_masked_pans = Internal.immutableCopyOf("denylisted_masked_pans", denylisted_masked_pans);
            this.denylisted_cardholder_names = Internal.immutableCopyOf("denylisted_cardholder_names", denylisted_cardholder_names);
            this.expected_setup_intent_create_error_codes = Internal.immutableCopyOf("expected_setup_intent_create_error_codes", expected_setup_intent_create_error_codes);
            this.expected_setup_intent_confirm_error_codes = Internal.immutableCopyOf("expected_setup_intent_confirm_error_codes", expected_setup_intent_confirm_error_codes);
            this.client_sdk_to_spos_setup_intent_support = Internal.immutableCopyOf("client_sdk_to_spos_setup_intent_support", client_sdk_to_spos_setup_intent_support);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.forwarding_jitter_ms = this.forwarding_jitter_ms;
            builder.max_transaction_amount_by_currency = this.max_transaction_amount_by_currency;
            builder.offline_stickiness_ms = this.offline_stickiness_ms;
            builder.http_low_timeout_ms = this.http_low_timeout_ms;
            builder.http_high_timeout_ms = this.http_high_timeout_ms;
            builder.http_health_check_timeout_ms = this.http_health_check_timeout_ms;
            builder.expected_confirm_error_codes = this.expected_confirm_error_codes;
            builder.supports_sca = this.supports_sca;
            builder.supports_quick_chip = this.supports_quick_chip;
            builder.aid_to_offline_pin_response_auth_code = this.aid_to_offline_pin_response_auth_code;
            builder.tvr_mask = this.tvr_mask;
            builder.is_deferred_authorization_country = this.is_deferred_authorization_country;
            builder.expected_create_error_codes = this.expected_create_error_codes;
            builder.cardholder_name_decline_values = this.cardholder_name_decline_values;
            builder.region_to_region_offline_config = this.region_to_region_offline_config;
            builder.client_sdk_to_spos_support = this.client_sdk_to_spos_support;
            builder.denylisted_masked_pans = this.denylisted_masked_pans;
            builder.denylisted_cardholder_names = this.denylisted_cardholder_names;
            builder.max_reader_offline_threshold_days = this.max_reader_offline_threshold_days;
            builder.offline_pair_unseen_reader_circuit_breaker = this.offline_pair_unseen_reader_circuit_breaker;
            builder.expected_setup_intent_create_error_codes = this.expected_setup_intent_create_error_codes;
            builder.expected_setup_intent_confirm_error_codes = this.expected_setup_intent_confirm_error_codes;
            builder.setup_intents_enabled = this.setup_intents_enabled;
            builder.mobile_wallet_on_setup_intents_enabled = this.mobile_wallet_on_setup_intents_enabled;
            builder.client_sdk_to_spos_setup_intent_support = this.client_sdk_to_spos_setup_intent_support;
            builder.disable_forced_sca_flow = this.disable_forced_sca_flow;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof AccountOfflineConfigPb)) {
                return false;
            }
            AccountOfflineConfigPb accountOfflineConfigPb = (AccountOfflineConfigPb) other;
            return Intrinsics.areEqual(unknownFields(), accountOfflineConfigPb.unknownFields()) && this.forwarding_jitter_ms == accountOfflineConfigPb.forwarding_jitter_ms && Intrinsics.areEqual(this.max_transaction_amount_by_currency, accountOfflineConfigPb.max_transaction_amount_by_currency) && this.offline_stickiness_ms == accountOfflineConfigPb.offline_stickiness_ms && this.http_low_timeout_ms == accountOfflineConfigPb.http_low_timeout_ms && this.http_high_timeout_ms == accountOfflineConfigPb.http_high_timeout_ms && this.http_health_check_timeout_ms == accountOfflineConfigPb.http_health_check_timeout_ms && Intrinsics.areEqual(this.expected_confirm_error_codes, accountOfflineConfigPb.expected_confirm_error_codes) && this.supports_sca == accountOfflineConfigPb.supports_sca && this.supports_quick_chip == accountOfflineConfigPb.supports_quick_chip && Intrinsics.areEqual(this.aid_to_offline_pin_response_auth_code, accountOfflineConfigPb.aid_to_offline_pin_response_auth_code) && Intrinsics.areEqual(this.tvr_mask, accountOfflineConfigPb.tvr_mask) && this.is_deferred_authorization_country == accountOfflineConfigPb.is_deferred_authorization_country && Intrinsics.areEqual(this.expected_create_error_codes, accountOfflineConfigPb.expected_create_error_codes) && Intrinsics.areEqual(this.cardholder_name_decline_values, accountOfflineConfigPb.cardholder_name_decline_values) && Intrinsics.areEqual(this.region_to_region_offline_config, accountOfflineConfigPb.region_to_region_offline_config) && Intrinsics.areEqual(this.client_sdk_to_spos_support, accountOfflineConfigPb.client_sdk_to_spos_support) && Intrinsics.areEqual(this.denylisted_masked_pans, accountOfflineConfigPb.denylisted_masked_pans) && Intrinsics.areEqual(this.denylisted_cardholder_names, accountOfflineConfigPb.denylisted_cardholder_names) && this.max_reader_offline_threshold_days == accountOfflineConfigPb.max_reader_offline_threshold_days && this.offline_pair_unseen_reader_circuit_breaker == accountOfflineConfigPb.offline_pair_unseen_reader_circuit_breaker && Intrinsics.areEqual(this.expected_setup_intent_create_error_codes, accountOfflineConfigPb.expected_setup_intent_create_error_codes) && Intrinsics.areEqual(this.expected_setup_intent_confirm_error_codes, accountOfflineConfigPb.expected_setup_intent_confirm_error_codes) && this.setup_intents_enabled == accountOfflineConfigPb.setup_intents_enabled && this.mobile_wallet_on_setup_intents_enabled == accountOfflineConfigPb.mobile_wallet_on_setup_intents_enabled && Intrinsics.areEqual(this.client_sdk_to_spos_setup_intent_support, accountOfflineConfigPb.client_sdk_to_spos_setup_intent_support) && this.disable_forced_sca_flow == accountOfflineConfigPb.disable_forced_sca_flow;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((((((((((((((((((((((((((((((((((((((((((((((((unknownFields().hashCode() * 37) + Integer.hashCode(this.forwarding_jitter_ms)) * 37) + this.max_transaction_amount_by_currency.hashCode()) * 37) + Integer.hashCode(this.offline_stickiness_ms)) * 37) + Integer.hashCode(this.http_low_timeout_ms)) * 37) + Integer.hashCode(this.http_high_timeout_ms)) * 37) + Integer.hashCode(this.http_health_check_timeout_ms)) * 37) + this.expected_confirm_error_codes.hashCode()) * 37) + Boolean.hashCode(this.supports_sca)) * 37) + Boolean.hashCode(this.supports_quick_chip)) * 37) + this.aid_to_offline_pin_response_auth_code.hashCode()) * 37) + this.tvr_mask.hashCode()) * 37) + Boolean.hashCode(this.is_deferred_authorization_country)) * 37) + this.expected_create_error_codes.hashCode()) * 37) + this.cardholder_name_decline_values.hashCode()) * 37) + this.region_to_region_offline_config.hashCode()) * 37) + this.client_sdk_to_spos_support.hashCode()) * 37) + this.denylisted_masked_pans.hashCode()) * 37) + this.denylisted_cardholder_names.hashCode()) * 37) + Integer.hashCode(this.max_reader_offline_threshold_days)) * 37) + Boolean.hashCode(this.offline_pair_unseen_reader_circuit_breaker)) * 37) + this.expected_setup_intent_create_error_codes.hashCode()) * 37) + this.expected_setup_intent_confirm_error_codes.hashCode()) * 37) + Boolean.hashCode(this.setup_intents_enabled)) * 37) + Boolean.hashCode(this.mobile_wallet_on_setup_intents_enabled)) * 37) + this.client_sdk_to_spos_setup_intent_support.hashCode()) * 37) + Boolean.hashCode(this.disable_forced_sca_flow);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("forwarding_jitter_ms=" + this.forwarding_jitter_ms);
            if (!this.max_transaction_amount_by_currency.isEmpty()) {
                arrayList2.add("max_transaction_amount_by_currency=" + this.max_transaction_amount_by_currency);
            }
            arrayList2.add("offline_stickiness_ms=" + this.offline_stickiness_ms);
            arrayList2.add("http_low_timeout_ms=" + this.http_low_timeout_ms);
            arrayList2.add("http_high_timeout_ms=" + this.http_high_timeout_ms);
            arrayList2.add("http_health_check_timeout_ms=" + this.http_health_check_timeout_ms);
            if (!this.expected_confirm_error_codes.isEmpty()) {
                arrayList2.add("expected_confirm_error_codes=" + Internal.sanitize(this.expected_confirm_error_codes));
            }
            arrayList2.add("supports_sca=" + this.supports_sca);
            arrayList2.add("supports_quick_chip=" + this.supports_quick_chip);
            if (!this.aid_to_offline_pin_response_auth_code.isEmpty()) {
                arrayList2.add("aid_to_offline_pin_response_auth_code=" + this.aid_to_offline_pin_response_auth_code);
            }
            arrayList2.add("tvr_mask=" + Internal.sanitize(this.tvr_mask));
            arrayList2.add("is_deferred_authorization_country=" + this.is_deferred_authorization_country);
            if (!this.expected_create_error_codes.isEmpty()) {
                arrayList2.add("expected_create_error_codes=" + Internal.sanitize(this.expected_create_error_codes));
            }
            if (!this.cardholder_name_decline_values.isEmpty()) {
                arrayList2.add("cardholder_name_decline_values=" + Internal.sanitize(this.cardholder_name_decline_values));
            }
            if (!this.region_to_region_offline_config.isEmpty()) {
                arrayList2.add("region_to_region_offline_config=" + this.region_to_region_offline_config);
            }
            if (!this.client_sdk_to_spos_support.isEmpty()) {
                arrayList2.add("client_sdk_to_spos_support=" + this.client_sdk_to_spos_support);
            }
            if (!this.denylisted_masked_pans.isEmpty()) {
                arrayList2.add("denylisted_masked_pans=" + this.denylisted_masked_pans);
            }
            if (!this.denylisted_cardholder_names.isEmpty()) {
                arrayList2.add("denylisted_cardholder_names=" + Internal.sanitize(this.denylisted_cardholder_names));
            }
            arrayList2.add("max_reader_offline_threshold_days=" + this.max_reader_offline_threshold_days);
            arrayList2.add("offline_pair_unseen_reader_circuit_breaker=" + this.offline_pair_unseen_reader_circuit_breaker);
            if (!this.expected_setup_intent_create_error_codes.isEmpty()) {
                arrayList2.add("expected_setup_intent_create_error_codes=" + Internal.sanitize(this.expected_setup_intent_create_error_codes));
            }
            if (!this.expected_setup_intent_confirm_error_codes.isEmpty()) {
                arrayList2.add("expected_setup_intent_confirm_error_codes=" + Internal.sanitize(this.expected_setup_intent_confirm_error_codes));
            }
            arrayList2.add("setup_intents_enabled=" + this.setup_intents_enabled);
            arrayList2.add("mobile_wallet_on_setup_intents_enabled=" + this.mobile_wallet_on_setup_intents_enabled);
            if (!this.client_sdk_to_spos_setup_intent_support.isEmpty()) {
                arrayList2.add("client_sdk_to_spos_setup_intent_support=" + this.client_sdk_to_spos_setup_intent_support);
            }
            arrayList2.add("disable_forced_sca_flow=" + this.disable_forced_sca_flow);
            return CollectionsKt.joinToString$default(arrayList, ", ", "AccountOfflineConfigPb{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ AccountOfflineConfigPb copy$default(AccountOfflineConfigPb accountOfflineConfigPb, int i, Map map, int i2, int i3, int i4, int i5, List list, boolean z, boolean z2, Map map2, String str, boolean z3, List list2, List list3, Map map3, Map map4, List list4, List list5, int i6, boolean z4, List list6, List list7, boolean z5, boolean z6, Map map5, boolean z7, ByteString byteString, int i7, Object obj) {
            int i8 = (i7 & 1) != 0 ? accountOfflineConfigPb.forwarding_jitter_ms : i;
            return accountOfflineConfigPb.copy(i8, (i7 & 2) != 0 ? accountOfflineConfigPb.max_transaction_amount_by_currency : map, (i7 & 4) != 0 ? accountOfflineConfigPb.offline_stickiness_ms : i2, (i7 & 8) != 0 ? accountOfflineConfigPb.http_low_timeout_ms : i3, (i7 & 16) != 0 ? accountOfflineConfigPb.http_high_timeout_ms : i4, (i7 & 32) != 0 ? accountOfflineConfigPb.http_health_check_timeout_ms : i5, (i7 & 64) != 0 ? accountOfflineConfigPb.expected_confirm_error_codes : list, (i7 & 128) != 0 ? accountOfflineConfigPb.supports_sca : z, (i7 & 256) != 0 ? accountOfflineConfigPb.supports_quick_chip : z2, (i7 & 512) != 0 ? accountOfflineConfigPb.aid_to_offline_pin_response_auth_code : map2, (i7 & 1024) != 0 ? accountOfflineConfigPb.tvr_mask : str, (i7 & 2048) != 0 ? accountOfflineConfigPb.is_deferred_authorization_country : z3, (i7 & 4096) != 0 ? accountOfflineConfigPb.expected_create_error_codes : list2, (i7 & 8192) != 0 ? accountOfflineConfigPb.cardholder_name_decline_values : list3, (i7 & 16384) != 0 ? accountOfflineConfigPb.region_to_region_offline_config : map3, (i7 & 32768) != 0 ? accountOfflineConfigPb.client_sdk_to_spos_support : map4, (i7 & 65536) != 0 ? accountOfflineConfigPb.denylisted_masked_pans : list4, (i7 & 131072) != 0 ? accountOfflineConfigPb.denylisted_cardholder_names : list5, (i7 & 262144) != 0 ? accountOfflineConfigPb.max_reader_offline_threshold_days : i6, (i7 & 524288) != 0 ? accountOfflineConfigPb.offline_pair_unseen_reader_circuit_breaker : z4, (i7 & 1048576) != 0 ? accountOfflineConfigPb.expected_setup_intent_create_error_codes : list6, (i7 & 2097152) != 0 ? accountOfflineConfigPb.expected_setup_intent_confirm_error_codes : list7, (i7 & 4194304) != 0 ? accountOfflineConfigPb.setup_intents_enabled : z5, (i7 & 8388608) != 0 ? accountOfflineConfigPb.mobile_wallet_on_setup_intents_enabled : z6, (i7 & 16777216) != 0 ? accountOfflineConfigPb.client_sdk_to_spos_setup_intent_support : map5, (i7 & 33554432) != 0 ? accountOfflineConfigPb.disable_forced_sca_flow : z7, (i7 & 67108864) != 0 ? accountOfflineConfigPb.unknownFields() : byteString);
        }

        public final AccountOfflineConfigPb copy(int forwarding_jitter_ms, Map<String, Long> max_transaction_amount_by_currency, int offline_stickiness_ms, int http_low_timeout_ms, int http_high_timeout_ms, int http_health_check_timeout_ms, List<String> expected_confirm_error_codes, boolean supports_sca, boolean supports_quick_chip, Map<String, String> aid_to_offline_pin_response_auth_code, String tvr_mask, boolean is_deferred_authorization_country, List<String> expected_create_error_codes, List<String> cardholder_name_decline_values, Map<String, RegionOfflineConfigPb> region_to_region_offline_config, Map<String, SPosSdkSupportVersions> client_sdk_to_spos_support, List<OfflinePanDenylistEntry> denylisted_masked_pans, List<String> denylisted_cardholder_names, int max_reader_offline_threshold_days, boolean offline_pair_unseen_reader_circuit_breaker, List<String> expected_setup_intent_create_error_codes, List<String> expected_setup_intent_confirm_error_codes, boolean setup_intents_enabled, boolean mobile_wallet_on_setup_intents_enabled, Map<String, SPosSdkSupportVersions> client_sdk_to_spos_setup_intent_support, boolean disable_forced_sca_flow, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(max_transaction_amount_by_currency, "max_transaction_amount_by_currency");
            Intrinsics.checkNotNullParameter(expected_confirm_error_codes, "expected_confirm_error_codes");
            Intrinsics.checkNotNullParameter(aid_to_offline_pin_response_auth_code, "aid_to_offline_pin_response_auth_code");
            Intrinsics.checkNotNullParameter(tvr_mask, "tvr_mask");
            Intrinsics.checkNotNullParameter(expected_create_error_codes, "expected_create_error_codes");
            Intrinsics.checkNotNullParameter(cardholder_name_decline_values, "cardholder_name_decline_values");
            Intrinsics.checkNotNullParameter(region_to_region_offline_config, "region_to_region_offline_config");
            Intrinsics.checkNotNullParameter(client_sdk_to_spos_support, "client_sdk_to_spos_support");
            Intrinsics.checkNotNullParameter(denylisted_masked_pans, "denylisted_masked_pans");
            Intrinsics.checkNotNullParameter(denylisted_cardholder_names, "denylisted_cardholder_names");
            Intrinsics.checkNotNullParameter(expected_setup_intent_create_error_codes, "expected_setup_intent_create_error_codes");
            Intrinsics.checkNotNullParameter(expected_setup_intent_confirm_error_codes, "expected_setup_intent_confirm_error_codes");
            Intrinsics.checkNotNullParameter(client_sdk_to_spos_setup_intent_support, "client_sdk_to_spos_setup_intent_support");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new AccountOfflineConfigPb(forwarding_jitter_ms, max_transaction_amount_by_currency, offline_stickiness_ms, http_low_timeout_ms, http_high_timeout_ms, http_health_check_timeout_ms, expected_confirm_error_codes, supports_sca, supports_quick_chip, aid_to_offline_pin_response_auth_code, tvr_mask, is_deferred_authorization_country, expected_create_error_codes, cardholder_name_decline_values, region_to_region_offline_config, client_sdk_to_spos_support, denylisted_masked_pans, denylisted_cardholder_names, max_reader_offline_threshold_days, offline_pair_unseen_reader_circuit_breaker, expected_setup_intent_create_error_codes, expected_setup_intent_confirm_error_codes, setup_intents_enabled, mobile_wallet_on_setup_intents_enabled, client_sdk_to_spos_setup_intent_support, disable_forced_sca_flow, unknownFields);
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010'\u001a\u00020\u0002H\u0016J\u0016\u0010\u0007\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\bH\u0007J\u001a\u0010\t\u001a\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u0005J\u001a\u0010\u000b\u001a\u00020\u00002\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u0005J\u0014\u0010\f\u001a\u00020\u00002\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\bJ\u0014\u0010\r\u001a\u00020\u00002\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\bJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u0014\u0010\u0011\u001a\u00020\u00002\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\bJ\u0014\u0010\u0012\u001a\u00020\u00002\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\bJ\u0014\u0010\u0013\u001a\u00020\u00002\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\bJ\u0014\u0010\u0014\u001a\u00020\u00002\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\bJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0016J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0016J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0010J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0016J\u001a\u0010\u001c\u001a\u00020\u00002\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001d0\u0005J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0010J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0010J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0016J\u001a\u0010!\u001a\u00020\u00002\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\"0\u0005J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0010J\u0010\u0010$\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0010H\u0007J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0010J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0006R\u001e\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001d0\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010 \u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\"0\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010$\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010%\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010&\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "()V", "aid_to_offline_pin_response_auth_code", "", "", "cardholder_name_decline_values", "", "client_sdk_to_spos_setup_intent_support", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$SPosSdkSupportVersions;", "client_sdk_to_spos_support", "denylisted_cardholder_names", "denylisted_masked_pans", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;", "disable_forced_sca_flow", "", "expected_confirm_error_codes", "expected_create_error_codes", "expected_setup_intent_confirm_error_codes", "expected_setup_intent_create_error_codes", "forwarding_jitter_ms", "", "http_health_check_timeout_ms", "http_high_timeout_ms", "http_low_timeout_ms", "is_deferred_authorization_country", "max_reader_offline_threshold_days", "max_transaction_amount_by_currency", "", "mobile_wallet_on_setup_intents_enabled", "offline_pair_unseen_reader_circuit_breaker", "offline_stickiness_ms", "region_to_region_offline_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;", "setup_intents_enabled", "supports_quick_chip", "supports_sca", "tvr_mask", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<AccountOfflineConfigPb, Builder> {
            public boolean disable_forced_sca_flow;
            public int forwarding_jitter_ms;
            public int http_health_check_timeout_ms;
            public int http_high_timeout_ms;
            public int http_low_timeout_ms;
            public boolean is_deferred_authorization_country;
            public int max_reader_offline_threshold_days;
            public boolean mobile_wallet_on_setup_intents_enabled;
            public boolean offline_pair_unseen_reader_circuit_breaker;
            public int offline_stickiness_ms;
            public boolean setup_intents_enabled;
            public boolean supports_quick_chip;
            public boolean supports_sca;
            public Map<String, Long> max_transaction_amount_by_currency = MapsKt.emptyMap();
            public List<String> expected_confirm_error_codes = CollectionsKt.emptyList();
            public Map<String, String> aid_to_offline_pin_response_auth_code = MapsKt.emptyMap();
            public String tvr_mask = "";
            public List<String> expected_create_error_codes = CollectionsKt.emptyList();
            public List<String> cardholder_name_decline_values = CollectionsKt.emptyList();
            public Map<String, RegionOfflineConfigPb> region_to_region_offline_config = MapsKt.emptyMap();
            public Map<String, SPosSdkSupportVersions> client_sdk_to_spos_support = MapsKt.emptyMap();
            public List<OfflinePanDenylistEntry> denylisted_masked_pans = CollectionsKt.emptyList();
            public List<String> denylisted_cardholder_names = CollectionsKt.emptyList();
            public List<String> expected_setup_intent_create_error_codes = CollectionsKt.emptyList();
            public List<String> expected_setup_intent_confirm_error_codes = CollectionsKt.emptyList();
            public Map<String, SPosSdkSupportVersions> client_sdk_to_spos_setup_intent_support = MapsKt.emptyMap();

            public final Builder forwarding_jitter_ms(int forwarding_jitter_ms) {
                this.forwarding_jitter_ms = forwarding_jitter_ms;
                return this;
            }

            public final Builder max_transaction_amount_by_currency(Map<String, Long> max_transaction_amount_by_currency) {
                Intrinsics.checkNotNullParameter(max_transaction_amount_by_currency, "max_transaction_amount_by_currency");
                this.max_transaction_amount_by_currency = max_transaction_amount_by_currency;
                return this;
            }

            public final Builder offline_stickiness_ms(int offline_stickiness_ms) {
                this.offline_stickiness_ms = offline_stickiness_ms;
                return this;
            }

            public final Builder http_low_timeout_ms(int http_low_timeout_ms) {
                this.http_low_timeout_ms = http_low_timeout_ms;
                return this;
            }

            public final Builder http_high_timeout_ms(int http_high_timeout_ms) {
                this.http_high_timeout_ms = http_high_timeout_ms;
                return this;
            }

            public final Builder http_health_check_timeout_ms(int http_health_check_timeout_ms) {
                this.http_health_check_timeout_ms = http_health_check_timeout_ms;
                return this;
            }

            public final Builder expected_confirm_error_codes(List<String> expected_confirm_error_codes) {
                Intrinsics.checkNotNullParameter(expected_confirm_error_codes, "expected_confirm_error_codes");
                Internal.checkElementsNotNull(expected_confirm_error_codes);
                this.expected_confirm_error_codes = expected_confirm_error_codes;
                return this;
            }

            public final Builder supports_sca(boolean supports_sca) {
                this.supports_sca = supports_sca;
                return this;
            }

            @Deprecated(message = "supports_quick_chip is deprecated")
            public final Builder supports_quick_chip(boolean supports_quick_chip) {
                this.supports_quick_chip = supports_quick_chip;
                return this;
            }

            public final Builder aid_to_offline_pin_response_auth_code(Map<String, String> aid_to_offline_pin_response_auth_code) {
                Intrinsics.checkNotNullParameter(aid_to_offline_pin_response_auth_code, "aid_to_offline_pin_response_auth_code");
                this.aid_to_offline_pin_response_auth_code = aid_to_offline_pin_response_auth_code;
                return this;
            }

            public final Builder tvr_mask(String tvr_mask) {
                Intrinsics.checkNotNullParameter(tvr_mask, "tvr_mask");
                this.tvr_mask = tvr_mask;
                return this;
            }

            public final Builder is_deferred_authorization_country(boolean is_deferred_authorization_country) {
                this.is_deferred_authorization_country = is_deferred_authorization_country;
                return this;
            }

            public final Builder expected_create_error_codes(List<String> expected_create_error_codes) {
                Intrinsics.checkNotNullParameter(expected_create_error_codes, "expected_create_error_codes");
                Internal.checkElementsNotNull(expected_create_error_codes);
                this.expected_create_error_codes = expected_create_error_codes;
                return this;
            }

            @Deprecated(message = "cardholder_name_decline_values is deprecated")
            public final Builder cardholder_name_decline_values(List<String> cardholder_name_decline_values) {
                Intrinsics.checkNotNullParameter(cardholder_name_decline_values, "cardholder_name_decline_values");
                Internal.checkElementsNotNull(cardholder_name_decline_values);
                this.cardholder_name_decline_values = cardholder_name_decline_values;
                return this;
            }

            public final Builder region_to_region_offline_config(Map<String, RegionOfflineConfigPb> region_to_region_offline_config) {
                Intrinsics.checkNotNullParameter(region_to_region_offline_config, "region_to_region_offline_config");
                this.region_to_region_offline_config = region_to_region_offline_config;
                return this;
            }

            public final Builder client_sdk_to_spos_support(Map<String, SPosSdkSupportVersions> client_sdk_to_spos_support) {
                Intrinsics.checkNotNullParameter(client_sdk_to_spos_support, "client_sdk_to_spos_support");
                this.client_sdk_to_spos_support = client_sdk_to_spos_support;
                return this;
            }

            public final Builder denylisted_masked_pans(List<OfflinePanDenylistEntry> denylisted_masked_pans) {
                Intrinsics.checkNotNullParameter(denylisted_masked_pans, "denylisted_masked_pans");
                Internal.checkElementsNotNull(denylisted_masked_pans);
                this.denylisted_masked_pans = denylisted_masked_pans;
                return this;
            }

            public final Builder denylisted_cardholder_names(List<String> denylisted_cardholder_names) {
                Intrinsics.checkNotNullParameter(denylisted_cardholder_names, "denylisted_cardholder_names");
                Internal.checkElementsNotNull(denylisted_cardholder_names);
                this.denylisted_cardholder_names = denylisted_cardholder_names;
                return this;
            }

            public final Builder max_reader_offline_threshold_days(int max_reader_offline_threshold_days) {
                this.max_reader_offline_threshold_days = max_reader_offline_threshold_days;
                return this;
            }

            public final Builder offline_pair_unseen_reader_circuit_breaker(boolean offline_pair_unseen_reader_circuit_breaker) {
                this.offline_pair_unseen_reader_circuit_breaker = offline_pair_unseen_reader_circuit_breaker;
                return this;
            }

            public final Builder expected_setup_intent_create_error_codes(List<String> expected_setup_intent_create_error_codes) {
                Intrinsics.checkNotNullParameter(expected_setup_intent_create_error_codes, "expected_setup_intent_create_error_codes");
                Internal.checkElementsNotNull(expected_setup_intent_create_error_codes);
                this.expected_setup_intent_create_error_codes = expected_setup_intent_create_error_codes;
                return this;
            }

            public final Builder expected_setup_intent_confirm_error_codes(List<String> expected_setup_intent_confirm_error_codes) {
                Intrinsics.checkNotNullParameter(expected_setup_intent_confirm_error_codes, "expected_setup_intent_confirm_error_codes");
                Internal.checkElementsNotNull(expected_setup_intent_confirm_error_codes);
                this.expected_setup_intent_confirm_error_codes = expected_setup_intent_confirm_error_codes;
                return this;
            }

            public final Builder setup_intents_enabled(boolean setup_intents_enabled) {
                this.setup_intents_enabled = setup_intents_enabled;
                return this;
            }

            public final Builder mobile_wallet_on_setup_intents_enabled(boolean mobile_wallet_on_setup_intents_enabled) {
                this.mobile_wallet_on_setup_intents_enabled = mobile_wallet_on_setup_intents_enabled;
                return this;
            }

            public final Builder client_sdk_to_spos_setup_intent_support(Map<String, SPosSdkSupportVersions> client_sdk_to_spos_setup_intent_support) {
                Intrinsics.checkNotNullParameter(client_sdk_to_spos_setup_intent_support, "client_sdk_to_spos_setup_intent_support");
                this.client_sdk_to_spos_setup_intent_support = client_sdk_to_spos_setup_intent_support;
                return this;
            }

            public final Builder disable_forced_sca_flow(boolean disable_forced_sca_flow) {
                this.disable_forced_sca_flow = disable_forced_sca_flow;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public AccountOfflineConfigPb build() {
                return new AccountOfflineConfigPb(this.forwarding_jitter_ms, this.max_transaction_amount_by_currency, this.offline_stickiness_ms, this.http_low_timeout_ms, this.http_high_timeout_ms, this.http_health_check_timeout_ms, this.expected_confirm_error_codes, this.supports_sca, this.supports_quick_chip, this.aid_to_offline_pin_response_auth_code, this.tvr_mask, this.is_deferred_authorization_country, this.expected_create_error_codes, this.cardholder_name_decline_values, this.region_to_region_offline_config, this.client_sdk_to_spos_support, this.denylisted_masked_pans, this.denylisted_cardholder_names, this.max_reader_offline_threshold_days, this.offline_pair_unseen_reader_circuit_breaker, this.expected_setup_intent_create_error_codes, this.expected_setup_intent_confirm_error_codes, this.setup_intents_enabled, this.mobile_wallet_on_setup_intents_enabled, this.client_sdk_to_spos_setup_intent_support, this.disable_forced_sca_flow, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: OfflineConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ AccountOfflineConfigPb build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AccountOfflineConfigPb.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<AccountOfflineConfigPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$AccountOfflineConfigPb$Companion$ADAPTER$1

                /* JADX INFO: renamed from: max_transaction_amount_by_currencyAdapter$delegate, reason: from kotlin metadata */
                private final Lazy max_transaction_amount_by_currencyAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends Long>>>() { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$AccountOfflineConfigPb$Companion$ADAPTER$1$max_transaction_amount_by_currencyAdapter$2
                    @Override // kotlin.jvm.functions.Function0
                    public final ProtoAdapter<Map<String, ? extends Long>> invoke() {
                        return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.INT64);
                    }
                });

                /* JADX INFO: renamed from: aid_to_offline_pin_response_auth_codeAdapter$delegate, reason: from kotlin metadata */
                private final Lazy aid_to_offline_pin_response_auth_codeAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$AccountOfflineConfigPb$Companion$ADAPTER$1$aid_to_offline_pin_response_auth_codeAdapter$2
                    @Override // kotlin.jvm.functions.Function0
                    public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                        return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                    }
                });

                /* JADX INFO: renamed from: region_to_region_offline_configAdapter$delegate, reason: from kotlin metadata */
                private final Lazy region_to_region_offline_configAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends OfflineConfigPb.RegionOfflineConfigPb>>>() { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$AccountOfflineConfigPb$Companion$ADAPTER$1$region_to_region_offline_configAdapter$2
                    @Override // kotlin.jvm.functions.Function0
                    public final ProtoAdapter<Map<String, ? extends OfflineConfigPb.RegionOfflineConfigPb>> invoke() {
                        return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, OfflineConfigPb.RegionOfflineConfigPb.ADAPTER);
                    }
                });

                /* JADX INFO: renamed from: client_sdk_to_spos_supportAdapter$delegate, reason: from kotlin metadata */
                private final Lazy client_sdk_to_spos_supportAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends OfflineConfigPb.SPosSdkSupportVersions>>>() { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$AccountOfflineConfigPb$Companion$ADAPTER$1$client_sdk_to_spos_supportAdapter$2
                    @Override // kotlin.jvm.functions.Function0
                    public final ProtoAdapter<Map<String, ? extends OfflineConfigPb.SPosSdkSupportVersions>> invoke() {
                        return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, OfflineConfigPb.SPosSdkSupportVersions.ADAPTER);
                    }
                });

                /* JADX INFO: renamed from: client_sdk_to_spos_setup_intent_supportAdapter$delegate, reason: from kotlin metadata */
                private final Lazy client_sdk_to_spos_setup_intent_supportAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends OfflineConfigPb.SPosSdkSupportVersions>>>() { // from class: com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$AccountOfflineConfigPb$Companion$ADAPTER$1$client_sdk_to_spos_setup_intent_supportAdapter$2
                    @Override // kotlin.jvm.functions.Function0
                    public final ProtoAdapter<Map<String, ? extends OfflineConfigPb.SPosSdkSupportVersions>> invoke() {
                        return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, OfflineConfigPb.SPosSdkSupportVersions.ADAPTER);
                    }
                });

                private final ProtoAdapter<Map<String, Long>> getMax_transaction_amount_by_currencyAdapter() {
                    return (ProtoAdapter) this.max_transaction_amount_by_currencyAdapter.getValue();
                }

                private final ProtoAdapter<Map<String, String>> getAid_to_offline_pin_response_auth_codeAdapter() {
                    return (ProtoAdapter) this.aid_to_offline_pin_response_auth_codeAdapter.getValue();
                }

                private final ProtoAdapter<Map<String, OfflineConfigPb.RegionOfflineConfigPb>> getRegion_to_region_offline_configAdapter() {
                    return (ProtoAdapter) this.region_to_region_offline_configAdapter.getValue();
                }

                private final ProtoAdapter<Map<String, OfflineConfigPb.SPosSdkSupportVersions>> getClient_sdk_to_spos_supportAdapter() {
                    return (ProtoAdapter) this.client_sdk_to_spos_supportAdapter.getValue();
                }

                private final ProtoAdapter<Map<String, OfflineConfigPb.SPosSdkSupportVersions>> getClient_sdk_to_spos_setup_intent_supportAdapter() {
                    return (ProtoAdapter) this.client_sdk_to_spos_setup_intent_supportAdapter.getValue();
                }

                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(OfflineConfigPb.AccountOfflineConfigPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.forwarding_jitter_ms != 0) {
                        size += ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.forwarding_jitter_ms));
                    }
                    int iEncodedSizeWithTag = size + getMax_transaction_amount_by_currencyAdapter().encodedSizeWithTag(2, value.max_transaction_amount_by_currency);
                    if (value.offline_stickiness_ms != 0) {
                        iEncodedSizeWithTag += ProtoAdapter.INT32.encodedSizeWithTag(3, Integer.valueOf(value.offline_stickiness_ms));
                    }
                    if (value.http_low_timeout_ms != 0) {
                        iEncodedSizeWithTag += ProtoAdapter.INT32.encodedSizeWithTag(4, Integer.valueOf(value.http_low_timeout_ms));
                    }
                    if (value.http_high_timeout_ms != 0) {
                        iEncodedSizeWithTag += ProtoAdapter.INT32.encodedSizeWithTag(5, Integer.valueOf(value.http_high_timeout_ms));
                    }
                    if (value.http_health_check_timeout_ms != 0) {
                        iEncodedSizeWithTag += ProtoAdapter.INT32.encodedSizeWithTag(6, Integer.valueOf(value.http_health_check_timeout_ms));
                    }
                    int iEncodedSizeWithTag2 = iEncodedSizeWithTag + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(7, value.expected_confirm_error_codes);
                    if (value.supports_sca) {
                        iEncodedSizeWithTag2 += ProtoAdapter.BOOL.encodedSizeWithTag(8, Boolean.valueOf(value.supports_sca));
                    }
                    if (value.supports_quick_chip) {
                        iEncodedSizeWithTag2 += ProtoAdapter.BOOL.encodedSizeWithTag(9, Boolean.valueOf(value.supports_quick_chip));
                    }
                    int iEncodedSizeWithTag3 = iEncodedSizeWithTag2 + getAid_to_offline_pin_response_auth_codeAdapter().encodedSizeWithTag(10, value.aid_to_offline_pin_response_auth_code);
                    if (!Intrinsics.areEqual(value.tvr_mask, "")) {
                        iEncodedSizeWithTag3 += ProtoAdapter.STRING.encodedSizeWithTag(11, value.tvr_mask);
                    }
                    if (value.is_deferred_authorization_country) {
                        iEncodedSizeWithTag3 += ProtoAdapter.BOOL.encodedSizeWithTag(12, Boolean.valueOf(value.is_deferred_authorization_country));
                    }
                    int iEncodedSizeWithTag4 = iEncodedSizeWithTag3 + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(13, value.expected_create_error_codes) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(14, value.cardholder_name_decline_values) + getRegion_to_region_offline_configAdapter().encodedSizeWithTag(15, value.region_to_region_offline_config) + getClient_sdk_to_spos_supportAdapter().encodedSizeWithTag(16, value.client_sdk_to_spos_support) + OfflineConfigPb.OfflinePanDenylistEntry.ADAPTER.asRepeated().encodedSizeWithTag(17, value.denylisted_masked_pans) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(18, value.denylisted_cardholder_names);
                    if (value.max_reader_offline_threshold_days != 0) {
                        iEncodedSizeWithTag4 += ProtoAdapter.INT32.encodedSizeWithTag(19, Integer.valueOf(value.max_reader_offline_threshold_days));
                    }
                    if (value.offline_pair_unseen_reader_circuit_breaker) {
                        iEncodedSizeWithTag4 += ProtoAdapter.BOOL.encodedSizeWithTag(20, Boolean.valueOf(value.offline_pair_unseen_reader_circuit_breaker));
                    }
                    int iEncodedSizeWithTag5 = iEncodedSizeWithTag4 + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(21, value.expected_setup_intent_create_error_codes) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(22, value.expected_setup_intent_confirm_error_codes);
                    if (value.setup_intents_enabled) {
                        iEncodedSizeWithTag5 += ProtoAdapter.BOOL.encodedSizeWithTag(23, Boolean.valueOf(value.setup_intents_enabled));
                    }
                    if (value.mobile_wallet_on_setup_intents_enabled) {
                        iEncodedSizeWithTag5 += ProtoAdapter.BOOL.encodedSizeWithTag(24, Boolean.valueOf(value.mobile_wallet_on_setup_intents_enabled));
                    }
                    int iEncodedSizeWithTag6 = iEncodedSizeWithTag5 + getClient_sdk_to_spos_setup_intent_supportAdapter().encodedSizeWithTag(25, value.client_sdk_to_spos_setup_intent_support);
                    return value.disable_forced_sca_flow ? iEncodedSizeWithTag6 + ProtoAdapter.BOOL.encodedSizeWithTag(26, Boolean.valueOf(value.disable_forced_sca_flow)) : iEncodedSizeWithTag6;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, OfflineConfigPb.AccountOfflineConfigPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.forwarding_jitter_ms != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.forwarding_jitter_ms));
                    }
                    getMax_transaction_amount_by_currencyAdapter().encodeWithTag(writer, 2, value.max_transaction_amount_by_currency);
                    if (value.offline_stickiness_ms != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.offline_stickiness_ms));
                    }
                    if (value.http_low_timeout_ms != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.http_low_timeout_ms));
                    }
                    if (value.http_high_timeout_ms != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.http_high_timeout_ms));
                    }
                    if (value.http_health_check_timeout_ms != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 6, Integer.valueOf(value.http_health_check_timeout_ms));
                    }
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 7, value.expected_confirm_error_codes);
                    if (value.supports_sca) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 8, Boolean.valueOf(value.supports_sca));
                    }
                    if (value.supports_quick_chip) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 9, Boolean.valueOf(value.supports_quick_chip));
                    }
                    getAid_to_offline_pin_response_auth_codeAdapter().encodeWithTag(writer, 10, value.aid_to_offline_pin_response_auth_code);
                    if (!Intrinsics.areEqual(value.tvr_mask, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 11, value.tvr_mask);
                    }
                    if (value.is_deferred_authorization_country) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 12, Boolean.valueOf(value.is_deferred_authorization_country));
                    }
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 13, value.expected_create_error_codes);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 14, value.cardholder_name_decline_values);
                    getRegion_to_region_offline_configAdapter().encodeWithTag(writer, 15, value.region_to_region_offline_config);
                    getClient_sdk_to_spos_supportAdapter().encodeWithTag(writer, 16, value.client_sdk_to_spos_support);
                    OfflineConfigPb.OfflinePanDenylistEntry.ADAPTER.asRepeated().encodeWithTag(writer, 17, value.denylisted_masked_pans);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 18, value.denylisted_cardholder_names);
                    if (value.max_reader_offline_threshold_days != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 19, Integer.valueOf(value.max_reader_offline_threshold_days));
                    }
                    if (value.offline_pair_unseen_reader_circuit_breaker) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 20, Boolean.valueOf(value.offline_pair_unseen_reader_circuit_breaker));
                    }
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 21, value.expected_setup_intent_create_error_codes);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 22, value.expected_setup_intent_confirm_error_codes);
                    if (value.setup_intents_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 23, Boolean.valueOf(value.setup_intents_enabled));
                    }
                    if (value.mobile_wallet_on_setup_intents_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 24, Boolean.valueOf(value.mobile_wallet_on_setup_intents_enabled));
                    }
                    getClient_sdk_to_spos_setup_intent_supportAdapter().encodeWithTag(writer, 25, value.client_sdk_to_spos_setup_intent_support);
                    if (value.disable_forced_sca_flow) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 26, Boolean.valueOf(value.disable_forced_sca_flow));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, OfflineConfigPb.AccountOfflineConfigPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.disable_forced_sca_flow) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 26, Boolean.valueOf(value.disable_forced_sca_flow));
                    }
                    getClient_sdk_to_spos_setup_intent_supportAdapter().encodeWithTag(writer, 25, value.client_sdk_to_spos_setup_intent_support);
                    if (value.mobile_wallet_on_setup_intents_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 24, Boolean.valueOf(value.mobile_wallet_on_setup_intents_enabled));
                    }
                    if (value.setup_intents_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 23, Boolean.valueOf(value.setup_intents_enabled));
                    }
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 22, value.expected_setup_intent_confirm_error_codes);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 21, value.expected_setup_intent_create_error_codes);
                    if (value.offline_pair_unseen_reader_circuit_breaker) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 20, Boolean.valueOf(value.offline_pair_unseen_reader_circuit_breaker));
                    }
                    if (value.max_reader_offline_threshold_days != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 19, Integer.valueOf(value.max_reader_offline_threshold_days));
                    }
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 18, value.denylisted_cardholder_names);
                    OfflineConfigPb.OfflinePanDenylistEntry.ADAPTER.asRepeated().encodeWithTag(writer, 17, value.denylisted_masked_pans);
                    getClient_sdk_to_spos_supportAdapter().encodeWithTag(writer, 16, value.client_sdk_to_spos_support);
                    getRegion_to_region_offline_configAdapter().encodeWithTag(writer, 15, value.region_to_region_offline_config);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 14, value.cardholder_name_decline_values);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 13, value.expected_create_error_codes);
                    if (value.is_deferred_authorization_country) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 12, Boolean.valueOf(value.is_deferred_authorization_country));
                    }
                    if (!Intrinsics.areEqual(value.tvr_mask, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 11, value.tvr_mask);
                    }
                    getAid_to_offline_pin_response_auth_codeAdapter().encodeWithTag(writer, 10, value.aid_to_offline_pin_response_auth_code);
                    if (value.supports_quick_chip) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 9, Boolean.valueOf(value.supports_quick_chip));
                    }
                    if (value.supports_sca) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 8, Boolean.valueOf(value.supports_sca));
                    }
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 7, value.expected_confirm_error_codes);
                    if (value.http_health_check_timeout_ms != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 6, Integer.valueOf(value.http_health_check_timeout_ms));
                    }
                    if (value.http_high_timeout_ms != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.http_high_timeout_ms));
                    }
                    if (value.http_low_timeout_ms != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.http_low_timeout_ms));
                    }
                    if (value.offline_stickiness_ms != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.offline_stickiness_ms));
                    }
                    getMax_transaction_amount_by_currencyAdapter().encodeWithTag(writer, 2, value.max_transaction_amount_by_currency);
                    if (value.forwarding_jitter_ms != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.forwarding_jitter_ms));
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.AccountOfflineConfigPb decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    ArrayList arrayList = new ArrayList();
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                    LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    ArrayList arrayList6 = new ArrayList();
                    ArrayList arrayList7 = new ArrayList();
                    LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                    long jBeginMessage = reader.beginMessage();
                    int iIntValue = 0;
                    int iIntValue2 = 0;
                    int iIntValue3 = 0;
                    boolean zBooleanValue = false;
                    boolean zBooleanValue2 = false;
                    boolean zBooleanValue3 = false;
                    int iIntValue4 = 0;
                    boolean zBooleanValue4 = false;
                    boolean zBooleanValue5 = false;
                    boolean zBooleanValue6 = false;
                    boolean zBooleanValue7 = false;
                    int iIntValue5 = 0;
                    String strDecode = "";
                    int iIntValue6 = 0;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        long j = jBeginMessage;
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    iIntValue5 = ProtoAdapter.INT32.decode(reader).intValue();
                                    break;
                                case 2:
                                    linkedHashMap.putAll(getMax_transaction_amount_by_currencyAdapter().decode(reader));
                                    break;
                                case 3:
                                    iIntValue6 = ProtoAdapter.INT32.decode(reader).intValue();
                                    break;
                                case 4:
                                    iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                    break;
                                case 5:
                                    iIntValue2 = ProtoAdapter.INT32.decode(reader).intValue();
                                    break;
                                case 6:
                                    iIntValue3 = ProtoAdapter.INT32.decode(reader).intValue();
                                    break;
                                case 7:
                                    arrayList.add(ProtoAdapter.STRING.decode(reader));
                                    break;
                                case 8:
                                    zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 9:
                                    zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 10:
                                    linkedHashMap2.putAll(getAid_to_offline_pin_response_auth_codeAdapter().decode(reader));
                                    break;
                                case 11:
                                    strDecode = ProtoAdapter.STRING.decode(reader);
                                    break;
                                case 12:
                                    zBooleanValue3 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 13:
                                    arrayList2.add(ProtoAdapter.STRING.decode(reader));
                                    break;
                                case 14:
                                    arrayList3.add(ProtoAdapter.STRING.decode(reader));
                                    break;
                                case 15:
                                    linkedHashMap3.putAll(getRegion_to_region_offline_configAdapter().decode(reader));
                                    break;
                                case 16:
                                    linkedHashMap4.putAll(getClient_sdk_to_spos_supportAdapter().decode(reader));
                                    break;
                                case 17:
                                    arrayList4.add(OfflineConfigPb.OfflinePanDenylistEntry.ADAPTER.decode(reader));
                                    break;
                                case 18:
                                    arrayList5.add(ProtoAdapter.STRING.decode(reader));
                                    break;
                                case 19:
                                    iIntValue4 = ProtoAdapter.INT32.decode(reader).intValue();
                                    break;
                                case 20:
                                    zBooleanValue4 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 21:
                                    arrayList6.add(ProtoAdapter.STRING.decode(reader));
                                    break;
                                case 22:
                                    arrayList7.add(ProtoAdapter.STRING.decode(reader));
                                    break;
                                case 23:
                                    zBooleanValue5 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 24:
                                    zBooleanValue6 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 25:
                                    linkedHashMap5.putAll(getClient_sdk_to_spos_setup_intent_supportAdapter().decode(reader));
                                    break;
                                case 26:
                                    zBooleanValue7 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                default:
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                            jBeginMessage = j;
                        } else {
                            return new OfflineConfigPb.AccountOfflineConfigPb(iIntValue5, linkedHashMap, iIntValue6, iIntValue, iIntValue2, iIntValue3, arrayList, zBooleanValue, zBooleanValue2, linkedHashMap2, strDecode, zBooleanValue3, arrayList2, arrayList3, linkedHashMap3, linkedHashMap4, arrayList4, arrayList5, iIntValue4, zBooleanValue4, arrayList6, arrayList7, zBooleanValue5, zBooleanValue6, linkedHashMap5, zBooleanValue7, reader.endMessageAndGetUnknownFields(j));
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public OfflineConfigPb.AccountOfflineConfigPb redact(OfflineConfigPb.AccountOfflineConfigPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return OfflineConfigPb.AccountOfflineConfigPb.copy$default(value, 0, null, 0, 0, 0, 0, null, false, false, null, null, false, null, null, Internal.m362redactElements(value.region_to_region_offline_config, OfflineConfigPb.RegionOfflineConfigPb.ADAPTER), Internal.m362redactElements(value.client_sdk_to_spos_support, OfflineConfigPb.SPosSdkSupportVersions.ADAPTER), Internal.m361redactElements(value.denylisted_masked_pans, OfflineConfigPb.OfflinePanDenylistEntry.ADAPTER), null, 0, false, null, null, false, false, Internal.m362redactElements(value.client_sdk_to_spos_setup_intent_support, OfflineConfigPb.SPosSdkSupportVersions.ADAPTER), false, ByteString.EMPTY, 50216959, null);
                }
            };
        }
    }
}
