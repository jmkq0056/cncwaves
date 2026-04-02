package com.stripe.proto.model.offline_mode;

import androidx.core.graphics.TypefaceCompat;
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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.sun.jna.platform.win32.WinError;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: OfflineApiRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 %2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003#$%B¡\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\r\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\n\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0018¢\u0006\u0002\u0010\u0019J¢\u0001\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\r2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00062\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010\u0014\u001a\u00020\n2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0018J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u0002H\u0016J\b\u0010\"\u001a\u00020\u0006H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;", "type", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", OfflineStorageConstantsKt.ACCOUNT_ID, "", OfflineStorageConstantsKt.OFFLINE_ID, "stripe_entity_id", OfflineStorageConstantsKt.CONNECTION_ID, "", OfflineStorageConstantsKt.ID, "headers", "", "params", "", "Lcom/stripe/proto/model/offline_mode/NameValuePair;", BbposAdapter.ENDPOINT_TAG_KEY, "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "created_at", "setup_intent", "Lcom/stripe/proto/model/rest/SetupIntent;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "ApiRequestType", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineApiRequest extends Message<OfflineApiRequest, Builder> {
    public static final ProtoAdapter<OfflineApiRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "accountId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String account_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "connectionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final long connection_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "createdAt", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final long created_at;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final String endpoint;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 6, tag = 7)
    public final Map<String, String> headers;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final long id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "offlineId", schemaIndex = 2, tag = 3)
    public final String offline_id;

    @WireField(adapter = "com.stripe.proto.model.offline_mode.NameValuePair#ADAPTER", label = WireField.Label.REPEATED, redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 7, tag = 8)
    public final List<NameValuePair> params;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentIntent#ADAPTER", jsonName = "paymentIntent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final PaymentIntent payment_intent;

    @WireField(adapter = "com.stripe.proto.model.rest.SetupIntent#ADAPTER", jsonName = "setupIntent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final SetupIntent setup_intent;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "stripeEntityId", schemaIndex = 3, tag = 4)
    public final String stripe_entity_id;

    @WireField(adapter = "com.stripe.proto.model.offline_mode.OfflineApiRequest$ApiRequestType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ApiRequestType type;

    public OfflineApiRequest() {
        this(null, null, null, null, 0L, 0L, null, null, null, null, 0L, null, null, 8191, null);
    }

    public /* synthetic */ OfflineApiRequest(ApiRequestType apiRequestType, String str, String str2, String str3, long j, long j2, Map map, List list, String str4, PaymentIntent paymentIntent, long j3, SetupIntent setupIntent, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ApiRequestType.CREATE_PAYMENT_INTENT : apiRequestType, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? 0L : j, (i & 32) != 0 ? 0L : j2, (i & 64) != 0 ? MapsKt.emptyMap() : map, (i & 128) != 0 ? CollectionsKt.emptyList() : list, (i & 256) == 0 ? str4 : "", (i & 512) != 0 ? null : paymentIntent, (i & 1024) == 0 ? j3 : 0L, (i & 2048) != 0 ? null : setupIntent, (i & 4096) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineApiRequest(ApiRequestType type, String account_id, String str, String str2, long j, long j2, Map<String, String> headers, List<NameValuePair> params, String endpoint, PaymentIntent paymentIntent, long j3, SetupIntent setupIntent, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(account_id, "account_id");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(endpoint, "endpoint");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.type = type;
        this.account_id = account_id;
        this.offline_id = str;
        this.stripe_entity_id = str2;
        this.connection_id = j;
        this.id = j2;
        this.endpoint = endpoint;
        this.payment_intent = paymentIntent;
        this.created_at = j3;
        this.setup_intent = setupIntent;
        this.headers = Internal.immutableCopyOf("headers", headers);
        this.params = Internal.immutableCopyOf("params", params);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.type = this.type;
        builder.account_id = this.account_id;
        builder.offline_id = this.offline_id;
        builder.stripe_entity_id = this.stripe_entity_id;
        builder.connection_id = this.connection_id;
        builder.id = this.id;
        builder.headers = this.headers;
        builder.params = this.params;
        builder.endpoint = this.endpoint;
        builder.payment_intent = this.payment_intent;
        builder.created_at = this.created_at;
        builder.setup_intent = this.setup_intent;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof OfflineApiRequest)) {
            return false;
        }
        OfflineApiRequest offlineApiRequest = (OfflineApiRequest) other;
        return Intrinsics.areEqual(unknownFields(), offlineApiRequest.unknownFields()) && this.type == offlineApiRequest.type && Intrinsics.areEqual(this.account_id, offlineApiRequest.account_id) && Intrinsics.areEqual(this.offline_id, offlineApiRequest.offline_id) && Intrinsics.areEqual(this.stripe_entity_id, offlineApiRequest.stripe_entity_id) && this.connection_id == offlineApiRequest.connection_id && this.id == offlineApiRequest.id && Intrinsics.areEqual(this.headers, offlineApiRequest.headers) && Intrinsics.areEqual(this.params, offlineApiRequest.params) && Intrinsics.areEqual(this.endpoint, offlineApiRequest.endpoint) && Intrinsics.areEqual(this.payment_intent, offlineApiRequest.payment_intent) && this.created_at == offlineApiRequest.created_at && Intrinsics.areEqual(this.setup_intent, offlineApiRequest.setup_intent);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((unknownFields().hashCode() * 37) + this.type.hashCode()) * 37) + this.account_id.hashCode()) * 37;
        String str = this.offline_id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.stripe_entity_id;
        int iHashCode3 = (((((((((((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37) + Long.hashCode(this.connection_id)) * 37) + Long.hashCode(this.id)) * 37) + this.headers.hashCode()) * 37) + this.params.hashCode()) * 37) + this.endpoint.hashCode()) * 37;
        PaymentIntent paymentIntent = this.payment_intent;
        int iHashCode4 = (((iHashCode3 + (paymentIntent != null ? paymentIntent.hashCode() : 0)) * 37) + Long.hashCode(this.created_at)) * 37;
        SetupIntent setupIntent = this.setup_intent;
        int iHashCode5 = iHashCode4 + (setupIntent != null ? setupIntent.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("type=" + this.type);
        arrayList2.add("account_id=" + Internal.sanitize(this.account_id));
        if (this.offline_id != null) {
            arrayList2.add("offline_id=" + this.offline_id);
        }
        if (this.stripe_entity_id != null) {
            arrayList2.add("stripe_entity_id=" + this.stripe_entity_id);
        }
        arrayList2.add("connection_id=" + this.connection_id);
        arrayList2.add("id=" + this.id);
        if (!this.headers.isEmpty()) {
            arrayList2.add("headers=██");
        }
        if (!this.params.isEmpty()) {
            arrayList2.add("params=██");
        }
        arrayList2.add("endpoint=" + Internal.sanitize(this.endpoint));
        if (this.payment_intent != null) {
            arrayList2.add("payment_intent=" + this.payment_intent);
        }
        arrayList2.add("created_at=" + this.created_at);
        if (this.setup_intent != null) {
            arrayList2.add("setup_intent=" + this.setup_intent);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "OfflineApiRequest{", "}", 0, null, null, 56, null);
    }

    public final OfflineApiRequest copy(ApiRequestType type, String account_id, String offline_id, String stripe_entity_id, long connection_id, long id, Map<String, String> headers, List<NameValuePair> params, String endpoint, PaymentIntent payment_intent, long created_at, SetupIntent setup_intent, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(account_id, "account_id");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(endpoint, "endpoint");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new OfflineApiRequest(type, account_id, offline_id, stripe_entity_id, connection_id, id, headers, params, endpoint, payment_intent, created_at, setup_intent, unknownFields);
    }

    /* JADX INFO: compiled from: OfflineApiRequest.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u001a\u0010\n\u001a\u00020\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0007J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\u000e\u001a\u00020\u00002\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fJ\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0017R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "()V", OfflineStorageConstantsKt.ACCOUNT_ID, "", OfflineStorageConstantsKt.CONNECTION_ID, "", "created_at", BbposAdapter.ENDPOINT_TAG_KEY, "headers", "", OfflineStorageConstantsKt.ID, OfflineStorageConstantsKt.OFFLINE_ID, "params", "", "Lcom/stripe/proto/model/offline_mode/NameValuePair;", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "setup_intent", "Lcom/stripe/proto/model/rest/SetupIntent;", "stripe_entity_id", "type", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<OfflineApiRequest, Builder> {
        public long connection_id;
        public long created_at;
        public long id;
        public String offline_id;
        public PaymentIntent payment_intent;
        public SetupIntent setup_intent;
        public String stripe_entity_id;
        public ApiRequestType type = ApiRequestType.CREATE_PAYMENT_INTENT;
        public String account_id = "";
        public Map<String, String> headers = MapsKt.emptyMap();
        public List<NameValuePair> params = CollectionsKt.emptyList();
        public String endpoint = "";

        public final Builder type(ApiRequestType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        public final Builder account_id(String account_id) {
            Intrinsics.checkNotNullParameter(account_id, "account_id");
            this.account_id = account_id;
            return this;
        }

        public final Builder offline_id(String offline_id) {
            this.offline_id = offline_id;
            return this;
        }

        public final Builder stripe_entity_id(String stripe_entity_id) {
            this.stripe_entity_id = stripe_entity_id;
            return this;
        }

        public final Builder connection_id(long connection_id) {
            this.connection_id = connection_id;
            return this;
        }

        public final Builder id(long id) {
            this.id = id;
            return this;
        }

        public final Builder headers(Map<String, String> headers) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            this.headers = headers;
            return this;
        }

        public final Builder params(List<NameValuePair> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            Internal.checkElementsNotNull(params);
            this.params = params;
            return this;
        }

        public final Builder endpoint(String endpoint) {
            Intrinsics.checkNotNullParameter(endpoint, "endpoint");
            this.endpoint = endpoint;
            return this;
        }

        public final Builder payment_intent(PaymentIntent payment_intent) {
            this.payment_intent = payment_intent;
            return this;
        }

        public final Builder created_at(long created_at) {
            this.created_at = created_at;
            return this;
        }

        public final Builder setup_intent(SetupIntent setup_intent) {
            this.setup_intent = setup_intent;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public OfflineApiRequest build() {
            return new OfflineApiRequest(this.type, this.account_id, this.offline_id, this.stripe_entity_id, this.connection_id, this.id, this.headers, this.params, this.endpoint, this.payment_intent, this.created_at, this.setup_intent, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: OfflineApiRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ OfflineApiRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OfflineApiRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<OfflineApiRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.offline_mode.OfflineApiRequest$Companion$ADAPTER$1

            /* JADX INFO: renamed from: headersAdapter$delegate, reason: from kotlin metadata */
            private final Lazy headersAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.offline_mode.OfflineApiRequest$Companion$ADAPTER$1$headersAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getHeadersAdapter() {
                return (ProtoAdapter) this.headersAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(OfflineApiRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.type != OfflineApiRequest.ApiRequestType.CREATE_PAYMENT_INTENT) {
                    size += OfflineApiRequest.ApiRequestType.ADAPTER.encodedSizeWithTag(1, value.type);
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.account_id);
                }
                if (value.offline_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.offline_id);
                }
                if (value.stripe_entity_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.stripe_entity_id);
                }
                if (value.connection_id != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(5, Long.valueOf(value.connection_id));
                }
                if (value.id != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(6, Long.valueOf(value.id));
                }
                int iEncodedSizeWithTag = size + getHeadersAdapter().encodedSizeWithTag(7, value.headers) + NameValuePair.ADAPTER.asRepeated().encodedSizeWithTag(8, value.params);
                if (!Intrinsics.areEqual(value.endpoint, "")) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING.encodedSizeWithTag(9, value.endpoint);
                }
                if (value.payment_intent != null) {
                    iEncodedSizeWithTag += PaymentIntent.ADAPTER.encodedSizeWithTag(10, value.payment_intent);
                }
                if (value.created_at != 0) {
                    iEncodedSizeWithTag += ProtoAdapter.UINT64.encodedSizeWithTag(11, Long.valueOf(value.created_at));
                }
                return value.setup_intent != null ? iEncodedSizeWithTag + SetupIntent.ADAPTER.encodedSizeWithTag(12, value.setup_intent) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, OfflineApiRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.type != OfflineApiRequest.ApiRequestType.CREATE_PAYMENT_INTENT) {
                    OfflineApiRequest.ApiRequestType.ADAPTER.encodeWithTag(writer, 1, value.type);
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.account_id);
                }
                if (value.offline_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.offline_id);
                }
                if (value.stripe_entity_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.stripe_entity_id);
                }
                if (value.connection_id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 5, Long.valueOf(value.connection_id));
                }
                if (value.id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 6, Long.valueOf(value.id));
                }
                getHeadersAdapter().encodeWithTag(writer, 7, value.headers);
                NameValuePair.ADAPTER.asRepeated().encodeWithTag(writer, 8, value.params);
                if (!Intrinsics.areEqual(value.endpoint, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.endpoint);
                }
                if (value.payment_intent != null) {
                    PaymentIntent.ADAPTER.encodeWithTag(writer, 10, value.payment_intent);
                }
                if (value.created_at != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 11, Long.valueOf(value.created_at));
                }
                if (value.setup_intent != null) {
                    SetupIntent.ADAPTER.encodeWithTag(writer, 12, value.setup_intent);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, OfflineApiRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.setup_intent != null) {
                    SetupIntent.ADAPTER.encodeWithTag(writer, 12, value.setup_intent);
                }
                if (value.created_at != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 11, Long.valueOf(value.created_at));
                }
                if (value.payment_intent != null) {
                    PaymentIntent.ADAPTER.encodeWithTag(writer, 10, value.payment_intent);
                }
                if (!Intrinsics.areEqual(value.endpoint, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.endpoint);
                }
                NameValuePair.ADAPTER.asRepeated().encodeWithTag(writer, 8, value.params);
                getHeadersAdapter().encodeWithTag(writer, 7, value.headers);
                if (value.id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 6, Long.valueOf(value.id));
                }
                if (value.connection_id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 5, Long.valueOf(value.connection_id));
                }
                if (value.stripe_entity_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.stripe_entity_id);
                }
                if (value.offline_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.offline_id);
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.account_id);
                }
                if (value.type != OfflineApiRequest.ApiRequestType.CREATE_PAYMENT_INTENT) {
                    OfflineApiRequest.ApiRequestType.ADAPTER.encodeWithTag(writer, 1, value.type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0035. Please report as an issue. */
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
            public com.stripe.proto.model.offline_mode.OfflineApiRequest decode(com.squareup.wire.ProtoReader r26) {
                /*
                    Method dump skipped, instruction units count: 304
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.model.offline_mode.OfflineApiRequest$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.model.offline_mode.OfflineApiRequest");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public OfflineApiRequest redact(OfflineApiRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.offline_id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.stripe_entity_id;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                Map mapEmptyMap = MapsKt.emptyMap();
                List listEmptyList = CollectionsKt.emptyList();
                PaymentIntent paymentIntent = value.payment_intent;
                PaymentIntent paymentIntentRedact = paymentIntent != null ? PaymentIntent.ADAPTER.redact(paymentIntent) : null;
                SetupIntent setupIntent = value.setup_intent;
                return value.copy((WinError.ERROR_ACCOUNT_DISABLED & 1) != 0 ? value.type : null, (WinError.ERROR_ACCOUNT_DISABLED & 2) != 0 ? value.account_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 4) != 0 ? value.offline_id : strRedact, (WinError.ERROR_ACCOUNT_DISABLED & 8) != 0 ? value.stripe_entity_id : strRedact2, (WinError.ERROR_ACCOUNT_DISABLED & 16) != 0 ? value.connection_id : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 32) != 0 ? value.id : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 64) != 0 ? value.headers : mapEmptyMap, (WinError.ERROR_ACCOUNT_DISABLED & 128) != 0 ? value.params : listEmptyList, (WinError.ERROR_ACCOUNT_DISABLED & 256) != 0 ? value.endpoint : null, (WinError.ERROR_ACCOUNT_DISABLED & 512) != 0 ? value.payment_intent : paymentIntentRedact, (WinError.ERROR_ACCOUNT_DISABLED & 1024) != 0 ? value.created_at : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 2048) != 0 ? value.setup_intent : setupIntent != null ? SetupIntent.ADAPTER.redact(setupIntent) : null, (WinError.ERROR_ACCOUNT_DISABLED & 4096) != 0 ? value.unknownFields() : ByteString.EMPTY);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: OfflineApiRequest.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CREATE_PAYMENT_INTENT", "PROCESS_PAYMENT_INTENT", "CREATE_SETUP_INTENT", "CONFIRM_SETUP_INTENT", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ApiRequestType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ApiRequestType[] $VALUES;
        public static final ProtoAdapter<ApiRequestType> ADAPTER;
        public static final ApiRequestType CONFIRM_SETUP_INTENT;
        public static final ApiRequestType CREATE_PAYMENT_INTENT;
        public static final ApiRequestType CREATE_SETUP_INTENT;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final ApiRequestType PROCESS_PAYMENT_INTENT;
        private final int value;

        private static final /* synthetic */ ApiRequestType[] $values() {
            return new ApiRequestType[]{CREATE_PAYMENT_INTENT, PROCESS_PAYMENT_INTENT, CREATE_SETUP_INTENT, CONFIRM_SETUP_INTENT};
        }

        @JvmStatic
        public static final ApiRequestType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<ApiRequestType> getEntries() {
            return $ENTRIES;
        }

        public static ApiRequestType valueOf(String str) {
            return (ApiRequestType) Enum.valueOf(ApiRequestType.class, str);
        }

        public static ApiRequestType[] values() {
            return (ApiRequestType[]) $VALUES.clone();
        }

        private ApiRequestType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final ApiRequestType apiRequestType = new ApiRequestType("CREATE_PAYMENT_INTENT", 0, 0);
            CREATE_PAYMENT_INTENT = apiRequestType;
            PROCESS_PAYMENT_INTENT = new ApiRequestType("PROCESS_PAYMENT_INTENT", 1, 1);
            CREATE_SETUP_INTENT = new ApiRequestType("CREATE_SETUP_INTENT", 2, 2);
            CONFIRM_SETUP_INTENT = new ApiRequestType("CONFIRM_SETUP_INTENT", 3, 3);
            ApiRequestType[] apiRequestTypeArr$values = $values();
            $VALUES = apiRequestTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(apiRequestTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ApiRequestType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<ApiRequestType>(orCreateKotlinClass, syntax, apiRequestType) { // from class: com.stripe.proto.model.offline_mode.OfflineApiRequest$ApiRequestType$Companion$ADAPTER$1
                {
                    OfflineApiRequest.ApiRequestType apiRequestType2 = apiRequestType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public OfflineApiRequest.ApiRequestType fromValue(int value) {
                    return OfflineApiRequest.ApiRequestType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: OfflineApiRequest.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final ApiRequestType fromValue(int value) {
                if (value == 0) {
                    return ApiRequestType.CREATE_PAYMENT_INTENT;
                }
                if (value == 1) {
                    return ApiRequestType.PROCESS_PAYMENT_INTENT;
                }
                if (value == 2) {
                    return ApiRequestType.CREATE_SETUP_INTENT;
                }
                if (value != 3) {
                    return null;
                }
                return ApiRequestType.CONFIRM_SETUP_INTENT;
            }
        }
    }
}
