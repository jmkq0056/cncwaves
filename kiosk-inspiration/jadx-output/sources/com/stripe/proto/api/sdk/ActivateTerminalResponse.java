package com.stripe.proto.api.sdk;

import androidx.core.graphics.TypefaceCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.model.sdk.ReaderVersion;
import com.stripe.proto.model.sdk.SystemContext;
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

/* JADX INFO: compiled from: ActivateTerminalResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 %2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002$%B\u0091\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0018¢\u0006\u0002\u0010\u0019J\u0092\u0001\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0018J\u0013\u0010\u001d\u001a\u00020\t2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\b\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\u0002H\u0016J\b\u0010#\u001a\u00020\u0004H\u0016R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001a\u0010\u001bR\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;", "session_token", "", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "store_name", "livemode", "", "sdk_rpc_session", "request_id", "version", "Lcom/stripe/proto/model/sdk/ReaderVersion;", OfflineStorageConstantsKt.ACCOUNT_ID, "canonical_reader_version", "", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "offline_stats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "network_status", "Lcom/stripe/proto/api/sdk/NetworkStatus;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ReaderVersion;Ljava/lang/String;JLcom/stripe/proto/model/merchant/ApiLocationPb;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;)V", "getSystem_context$annotations", "()V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ActivateTerminalResponse extends Message<ActivateTerminalResponse, Builder> {
    public static final ProtoAdapter<ActivateTerminalResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "accountId", schemaIndex = 7, tag = 8)
    public final String account_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "canonicalReaderVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final long canonical_reader_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final boolean livemode;

    @WireField(adapter = "com.stripe.proto.model.merchant.ApiLocationPb#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final ApiLocationPb location;

    @WireField(adapter = "com.stripe.proto.api.sdk.NetworkStatus#ADAPTER", jsonName = "networkStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final NetworkStatus network_status;

    @WireField(adapter = "com.stripe.proto.api.sdk.OfflineStats#ADAPTER", jsonName = "offlineStats", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final OfflineStats offline_stats;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "requestId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String request_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "sdkRpcSession", label = WireField.Label.OMIT_IDENTITY, redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 4, tag = 5)
    public final String sdk_rpc_session;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "sessionToken", label = WireField.Label.OMIT_IDENTITY, redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
    public final String session_token;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "storeName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String store_name;

    @WireField(adapter = "com.stripe.proto.model.sdk.SystemContext#ADAPTER", jsonName = "systemContext", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final SystemContext system_context;

    @WireField(adapter = "com.stripe.proto.model.sdk.ReaderVersion#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final ReaderVersion version;

    public ActivateTerminalResponse() {
        this(null, null, null, false, null, null, null, null, 0L, null, null, null, null, 8191, null);
    }

    @Deprecated(message = "system_context is deprecated")
    public static /* synthetic */ void getSystem_context$annotations() {
    }

    public /* synthetic */ ActivateTerminalResponse(String str, SystemContext systemContext, String str2, boolean z, String str3, String str4, ReaderVersion readerVersion, String str5, long j, ApiLocationPb apiLocationPb, OfflineStats offlineStats, NetworkStatus networkStatus, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : systemContext, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? false : z, (i & 16) != 0 ? "" : str3, (i & 32) == 0 ? str4 : "", (i & 64) != 0 ? null : readerVersion, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? 0L : j, (i & 512) != 0 ? null : apiLocationPb, (i & 1024) == 0 ? offlineStats : null, (i & 2048) != 0 ? NetworkStatus.NETWORK_STATUS_INVALID : networkStatus, (i & 4096) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivateTerminalResponse(String session_token, SystemContext systemContext, String store_name, boolean z, String sdk_rpc_session, String request_id, ReaderVersion readerVersion, String str, long j, ApiLocationPb apiLocationPb, OfflineStats offlineStats, NetworkStatus network_status, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(session_token, "session_token");
        Intrinsics.checkNotNullParameter(store_name, "store_name");
        Intrinsics.checkNotNullParameter(sdk_rpc_session, "sdk_rpc_session");
        Intrinsics.checkNotNullParameter(request_id, "request_id");
        Intrinsics.checkNotNullParameter(network_status, "network_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.session_token = session_token;
        this.system_context = systemContext;
        this.store_name = store_name;
        this.livemode = z;
        this.sdk_rpc_session = sdk_rpc_session;
        this.request_id = request_id;
        this.version = readerVersion;
        this.account_id = str;
        this.canonical_reader_version = j;
        this.location = apiLocationPb;
        this.offline_stats = offlineStats;
        this.network_status = network_status;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.session_token = this.session_token;
        builder.system_context = this.system_context;
        builder.store_name = this.store_name;
        builder.livemode = this.livemode;
        builder.sdk_rpc_session = this.sdk_rpc_session;
        builder.request_id = this.request_id;
        builder.version = this.version;
        builder.account_id = this.account_id;
        builder.canonical_reader_version = this.canonical_reader_version;
        builder.location = this.location;
        builder.offline_stats = this.offline_stats;
        builder.network_status = this.network_status;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ActivateTerminalResponse)) {
            return false;
        }
        ActivateTerminalResponse activateTerminalResponse = (ActivateTerminalResponse) other;
        return Intrinsics.areEqual(unknownFields(), activateTerminalResponse.unknownFields()) && Intrinsics.areEqual(this.session_token, activateTerminalResponse.session_token) && Intrinsics.areEqual(this.system_context, activateTerminalResponse.system_context) && Intrinsics.areEqual(this.store_name, activateTerminalResponse.store_name) && this.livemode == activateTerminalResponse.livemode && Intrinsics.areEqual(this.sdk_rpc_session, activateTerminalResponse.sdk_rpc_session) && Intrinsics.areEqual(this.request_id, activateTerminalResponse.request_id) && Intrinsics.areEqual(this.version, activateTerminalResponse.version) && Intrinsics.areEqual(this.account_id, activateTerminalResponse.account_id) && this.canonical_reader_version == activateTerminalResponse.canonical_reader_version && Intrinsics.areEqual(this.location, activateTerminalResponse.location) && Intrinsics.areEqual(this.offline_stats, activateTerminalResponse.offline_stats) && this.network_status == activateTerminalResponse.network_status;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.session_token.hashCode()) * 37;
        SystemContext systemContext = this.system_context;
        int iHashCode2 = (((((((((iHashCode + (systemContext != null ? systemContext.hashCode() : 0)) * 37) + this.store_name.hashCode()) * 37) + Boolean.hashCode(this.livemode)) * 37) + this.sdk_rpc_session.hashCode()) * 37) + this.request_id.hashCode()) * 37;
        ReaderVersion readerVersion = this.version;
        int iHashCode3 = (iHashCode2 + (readerVersion != null ? readerVersion.hashCode() : 0)) * 37;
        String str = this.account_id;
        int iHashCode4 = (((iHashCode3 + (str != null ? str.hashCode() : 0)) * 37) + Long.hashCode(this.canonical_reader_version)) * 37;
        ApiLocationPb apiLocationPb = this.location;
        int iHashCode5 = (iHashCode4 + (apiLocationPb != null ? apiLocationPb.hashCode() : 0)) * 37;
        OfflineStats offlineStats = this.offline_stats;
        int iHashCode6 = ((iHashCode5 + (offlineStats != null ? offlineStats.hashCode() : 0)) * 37) + this.network_status.hashCode();
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("session_token=██");
        if (this.system_context != null) {
            arrayList2.add("system_context=" + this.system_context);
        }
        arrayList2.add("store_name=" + Internal.sanitize(this.store_name));
        arrayList2.add("livemode=" + this.livemode);
        arrayList2.add("sdk_rpc_session=██");
        arrayList2.add("request_id=" + Internal.sanitize(this.request_id));
        if (this.version != null) {
            arrayList2.add("version=" + this.version);
        }
        if (this.account_id != null) {
            arrayList2.add("account_id=" + Internal.sanitize(this.account_id));
        }
        arrayList2.add("canonical_reader_version=" + this.canonical_reader_version);
        if (this.location != null) {
            arrayList2.add("location=" + this.location);
        }
        if (this.offline_stats != null) {
            arrayList2.add("offline_stats=" + this.offline_stats);
        }
        arrayList2.add("network_status=" + this.network_status);
        return CollectionsKt.joinToString$default(arrayList, ", ", "ActivateTerminalResponse{", "}", 0, null, null, 56, null);
    }

    public final ActivateTerminalResponse copy(String session_token, SystemContext system_context, String store_name, boolean livemode, String sdk_rpc_session, String request_id, ReaderVersion version, String account_id, long canonical_reader_version, ApiLocationPb location, OfflineStats offline_stats, NetworkStatus network_status, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(session_token, "session_token");
        Intrinsics.checkNotNullParameter(store_name, "store_name");
        Intrinsics.checkNotNullParameter(sdk_rpc_session, "sdk_rpc_session");
        Intrinsics.checkNotNullParameter(request_id, "request_id");
        Intrinsics.checkNotNullParameter(network_status, "network_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ActivateTerminalResponse(session_token, system_context, store_name, livemode, sdk_rpc_session, request_id, version, account_id, canonical_reader_version, location, offline_stats, network_status, unknownFields);
    }

    /* JADX INFO: compiled from: ActivateTerminalResponse.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u0012\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;", "()V", OfflineStorageConstantsKt.ACCOUNT_ID, "", "canonical_reader_version", "", "livemode", "", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "network_status", "Lcom/stripe/proto/api/sdk/NetworkStatus;", "offline_stats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "request_id", "sdk_rpc_session", "session_token", "store_name", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "version", "Lcom/stripe/proto/model/sdk/ReaderVersion;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ActivateTerminalResponse, Builder> {
        public String account_id;
        public long canonical_reader_version;
        public boolean livemode;
        public ApiLocationPb location;
        public OfflineStats offline_stats;
        public SystemContext system_context;
        public ReaderVersion version;
        public String session_token = "";
        public String store_name = "";
        public String sdk_rpc_session = "";
        public String request_id = "";
        public NetworkStatus network_status = NetworkStatus.NETWORK_STATUS_INVALID;

        public final Builder session_token(String session_token) {
            Intrinsics.checkNotNullParameter(session_token, "session_token");
            this.session_token = session_token;
            return this;
        }

        @Deprecated(message = "system_context is deprecated")
        public final Builder system_context(SystemContext system_context) {
            this.system_context = system_context;
            return this;
        }

        public final Builder store_name(String store_name) {
            Intrinsics.checkNotNullParameter(store_name, "store_name");
            this.store_name = store_name;
            return this;
        }

        public final Builder livemode(boolean livemode) {
            this.livemode = livemode;
            return this;
        }

        public final Builder sdk_rpc_session(String sdk_rpc_session) {
            Intrinsics.checkNotNullParameter(sdk_rpc_session, "sdk_rpc_session");
            this.sdk_rpc_session = sdk_rpc_session;
            return this;
        }

        public final Builder request_id(String request_id) {
            Intrinsics.checkNotNullParameter(request_id, "request_id");
            this.request_id = request_id;
            return this;
        }

        public final Builder version(ReaderVersion version) {
            this.version = version;
            return this;
        }

        public final Builder account_id(String account_id) {
            this.account_id = account_id;
            return this;
        }

        public final Builder canonical_reader_version(long canonical_reader_version) {
            this.canonical_reader_version = canonical_reader_version;
            return this;
        }

        public final Builder location(ApiLocationPb location) {
            this.location = location;
            return this;
        }

        public final Builder offline_stats(OfflineStats offline_stats) {
            this.offline_stats = offline_stats;
            return this;
        }

        public final Builder network_status(NetworkStatus network_status) {
            Intrinsics.checkNotNullParameter(network_status, "network_status");
            this.network_status = network_status;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ActivateTerminalResponse build() {
            return new ActivateTerminalResponse(this.session_token, this.system_context, this.store_name, this.livemode, this.sdk_rpc_session, this.request_id, this.version, this.account_id, this.canonical_reader_version, this.location, this.offline_stats, this.network_status, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ActivateTerminalResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ActivateTerminalResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ActivateTerminalResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ActivateTerminalResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ActivateTerminalResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ActivateTerminalResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.session_token, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.session_token);
                }
                if (value.system_context != null) {
                    size += SystemContext.ADAPTER.encodedSizeWithTag(2, value.system_context);
                }
                if (!Intrinsics.areEqual(value.store_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.store_name);
                }
                if (value.livemode) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.livemode));
                }
                if (!Intrinsics.areEqual(value.sdk_rpc_session, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.sdk_rpc_session);
                }
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.request_id);
                }
                if (value.version != null) {
                    size += ReaderVersion.ADAPTER.encodedSizeWithTag(7, value.version);
                }
                int iEncodedSizeWithTag = size + ProtoAdapter.STRING.encodedSizeWithTag(8, value.account_id);
                if (value.canonical_reader_version != 0) {
                    iEncodedSizeWithTag += ProtoAdapter.INT64.encodedSizeWithTag(9, Long.valueOf(value.canonical_reader_version));
                }
                if (value.location != null) {
                    iEncodedSizeWithTag += ApiLocationPb.ADAPTER.encodedSizeWithTag(10, value.location);
                }
                if (value.offline_stats != null) {
                    iEncodedSizeWithTag += OfflineStats.ADAPTER.encodedSizeWithTag(11, value.offline_stats);
                }
                return value.network_status != NetworkStatus.NETWORK_STATUS_INVALID ? iEncodedSizeWithTag + NetworkStatus.ADAPTER.encodedSizeWithTag(12, value.network_status) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ActivateTerminalResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.session_token, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.session_token);
                }
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 2, value.system_context);
                }
                if (!Intrinsics.areEqual(value.store_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.store_name);
                }
                if (value.livemode) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.livemode));
                }
                if (!Intrinsics.areEqual(value.sdk_rpc_session, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.sdk_rpc_session);
                }
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.request_id);
                }
                if (value.version != null) {
                    ReaderVersion.ADAPTER.encodeWithTag(writer, 7, value.version);
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 8, value.account_id);
                if (value.canonical_reader_version != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 9, Long.valueOf(value.canonical_reader_version));
                }
                if (value.location != null) {
                    ApiLocationPb.ADAPTER.encodeWithTag(writer, 10, value.location);
                }
                if (value.offline_stats != null) {
                    OfflineStats.ADAPTER.encodeWithTag(writer, 11, value.offline_stats);
                }
                if (value.network_status != NetworkStatus.NETWORK_STATUS_INVALID) {
                    NetworkStatus.ADAPTER.encodeWithTag(writer, 12, value.network_status);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ActivateTerminalResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.network_status != NetworkStatus.NETWORK_STATUS_INVALID) {
                    NetworkStatus.ADAPTER.encodeWithTag(writer, 12, value.network_status);
                }
                if (value.offline_stats != null) {
                    OfflineStats.ADAPTER.encodeWithTag(writer, 11, value.offline_stats);
                }
                if (value.location != null) {
                    ApiLocationPb.ADAPTER.encodeWithTag(writer, 10, value.location);
                }
                if (value.canonical_reader_version != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 9, Long.valueOf(value.canonical_reader_version));
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 8, value.account_id);
                if (value.version != null) {
                    ReaderVersion.ADAPTER.encodeWithTag(writer, 7, value.version);
                }
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.request_id);
                }
                if (!Intrinsics.areEqual(value.sdk_rpc_session, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.sdk_rpc_session);
                }
                if (value.livemode) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.livemode));
                }
                if (!Intrinsics.areEqual(value.store_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.store_name);
                }
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 2, value.system_context);
                }
                if (Intrinsics.areEqual(value.session_token, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.session_token);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0028. Please report as an issue. */
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
            public com.stripe.proto.api.sdk.ActivateTerminalResponse decode(com.squareup.wire.ProtoReader r30) {
                /*
                    Method dump skipped, instruction units count: 312
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.api.sdk.ActivateTerminalResponse$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.api.sdk.ActivateTerminalResponse");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ActivateTerminalResponse redact(ActivateTerminalResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SystemContext systemContext = value.system_context;
                SystemContext systemContextRedact = systemContext != null ? SystemContext.ADAPTER.redact(systemContext) : null;
                ReaderVersion readerVersion = value.version;
                ReaderVersion readerVersionRedact = readerVersion != null ? ReaderVersion.ADAPTER.redact(readerVersion) : null;
                ApiLocationPb apiLocationPb = value.location;
                ApiLocationPb apiLocationPbRedact = apiLocationPb != null ? ApiLocationPb.ADAPTER.redact(apiLocationPb) : null;
                OfflineStats offlineStats = value.offline_stats;
                return value.copy((2476 & 1) != 0 ? value.session_token : "", (2476 & 2) != 0 ? value.system_context : systemContextRedact, (2476 & 4) != 0 ? value.store_name : null, (2476 & 8) != 0 ? value.livemode : false, (2476 & 16) != 0 ? value.sdk_rpc_session : "", (2476 & 32) != 0 ? value.request_id : null, (2476 & 64) != 0 ? value.version : readerVersionRedact, (2476 & 128) != 0 ? value.account_id : null, (2476 & 256) != 0 ? value.canonical_reader_version : 0L, (2476 & 512) != 0 ? value.location : apiLocationPbRedact, (2476 & 1024) != 0 ? value.offline_stats : offlineStats != null ? OfflineStats.ADAPTER.redact(offlineStats) : null, (2476 & 2048) != 0 ? value.network_status : null, (2476 & 4096) != 0 ? value.unknownFields() : ByteString.EMPTY);
            }
        };
    }
}
