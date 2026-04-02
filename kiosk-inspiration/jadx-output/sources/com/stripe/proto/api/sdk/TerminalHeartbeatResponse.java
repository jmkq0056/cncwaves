package com.stripe.proto.api.sdk;

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
import com.stripe.proto.api.sdk.TerminalHeartbeatResponse;
import com.stripe.proto.model.sdk.SystemContext;
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

/* JADX INFO: compiled from: TerminalHeartbeatResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001c\u001d\u001eBO\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011JP\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u000eH\u0016J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\b\u0010\u001b\u001a\u00020\u0006H\u0016R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "reader_config_hash", "", "connection_token_status", "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;", "network_status", "Lcom/stripe/proto/api/sdk/NetworkStatus;", "offline_stats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "reader_events_count", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;Lcom/stripe/proto/api/sdk/NetworkStatus;Lcom/stripe/proto/api/sdk/OfflineStats;ILokio/ByteString;)V", "getSystem_context$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "ConnectionTokenStatus", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalHeartbeatResponse extends Message<TerminalHeartbeatResponse, Builder> {
    public static final ProtoAdapter<TerminalHeartbeatResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.sdk.TerminalHeartbeatResponse$ConnectionTokenStatus#ADAPTER", jsonName = "connectionTokenStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final ConnectionTokenStatus connection_token_status;

    @WireField(adapter = "com.stripe.proto.api.sdk.NetworkStatus#ADAPTER", jsonName = "networkStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final NetworkStatus network_status;

    @WireField(adapter = "com.stripe.proto.api.sdk.OfflineStats#ADAPTER", jsonName = "offlineStats", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final OfflineStats offline_stats;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "readerConfigHash", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String reader_config_hash;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", jsonName = "readerEventsCount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final int reader_events_count;

    @WireField(adapter = "com.stripe.proto.model.sdk.SystemContext#ADAPTER", jsonName = "systemContext", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final SystemContext system_context;

    public TerminalHeartbeatResponse() {
        this(null, null, null, null, null, 0, null, 127, null);
    }

    @Deprecated(message = "system_context is deprecated")
    public static /* synthetic */ void getSystem_context$annotations() {
    }

    public /* synthetic */ TerminalHeartbeatResponse(SystemContext systemContext, String str, ConnectionTokenStatus connectionTokenStatus, NetworkStatus networkStatus, OfflineStats offlineStats, int i, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : systemContext, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? ConnectionTokenStatus.CONNECTION_TOKEN_STATUS_INVALID : connectionTokenStatus, (i2 & 8) != 0 ? NetworkStatus.NETWORK_STATUS_INVALID : networkStatus, (i2 & 16) != 0 ? null : offlineStats, (i2 & 32) != 0 ? 0 : i, (i2 & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TerminalHeartbeatResponse(SystemContext systemContext, String reader_config_hash, ConnectionTokenStatus connection_token_status, NetworkStatus network_status, OfflineStats offlineStats, int i, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(reader_config_hash, "reader_config_hash");
        Intrinsics.checkNotNullParameter(connection_token_status, "connection_token_status");
        Intrinsics.checkNotNullParameter(network_status, "network_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.system_context = systemContext;
        this.reader_config_hash = reader_config_hash;
        this.connection_token_status = connection_token_status;
        this.network_status = network_status;
        this.offline_stats = offlineStats;
        this.reader_events_count = i;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.system_context = this.system_context;
        builder.reader_config_hash = this.reader_config_hash;
        builder.connection_token_status = this.connection_token_status;
        builder.network_status = this.network_status;
        builder.offline_stats = this.offline_stats;
        builder.reader_events_count = this.reader_events_count;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof TerminalHeartbeatResponse)) {
            return false;
        }
        TerminalHeartbeatResponse terminalHeartbeatResponse = (TerminalHeartbeatResponse) other;
        return Intrinsics.areEqual(unknownFields(), terminalHeartbeatResponse.unknownFields()) && Intrinsics.areEqual(this.system_context, terminalHeartbeatResponse.system_context) && Intrinsics.areEqual(this.reader_config_hash, terminalHeartbeatResponse.reader_config_hash) && this.connection_token_status == terminalHeartbeatResponse.connection_token_status && this.network_status == terminalHeartbeatResponse.network_status && Intrinsics.areEqual(this.offline_stats, terminalHeartbeatResponse.offline_stats) && this.reader_events_count == terminalHeartbeatResponse.reader_events_count;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SystemContext systemContext = this.system_context;
        int iHashCode2 = (((((((iHashCode + (systemContext != null ? systemContext.hashCode() : 0)) * 37) + this.reader_config_hash.hashCode()) * 37) + this.connection_token_status.hashCode()) * 37) + this.network_status.hashCode()) * 37;
        OfflineStats offlineStats = this.offline_stats;
        int iHashCode3 = ((iHashCode2 + (offlineStats != null ? offlineStats.hashCode() : 0)) * 37) + Integer.hashCode(this.reader_events_count);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.system_context != null) {
            arrayList.add("system_context=" + this.system_context);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("reader_config_hash=" + Internal.sanitize(this.reader_config_hash));
        arrayList2.add("connection_token_status=" + this.connection_token_status);
        arrayList2.add("network_status=" + this.network_status);
        if (this.offline_stats != null) {
            arrayList2.add("offline_stats=" + this.offline_stats);
        }
        arrayList2.add("reader_events_count=" + this.reader_events_count);
        return CollectionsKt.joinToString$default(arrayList, ", ", "TerminalHeartbeatResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ TerminalHeartbeatResponse copy$default(TerminalHeartbeatResponse terminalHeartbeatResponse, SystemContext systemContext, String str, ConnectionTokenStatus connectionTokenStatus, NetworkStatus networkStatus, OfflineStats offlineStats, int i, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            systemContext = terminalHeartbeatResponse.system_context;
        }
        if ((i2 & 2) != 0) {
            str = terminalHeartbeatResponse.reader_config_hash;
        }
        if ((i2 & 4) != 0) {
            connectionTokenStatus = terminalHeartbeatResponse.connection_token_status;
        }
        if ((i2 & 8) != 0) {
            networkStatus = terminalHeartbeatResponse.network_status;
        }
        if ((i2 & 16) != 0) {
            offlineStats = terminalHeartbeatResponse.offline_stats;
        }
        if ((i2 & 32) != 0) {
            i = terminalHeartbeatResponse.reader_events_count;
        }
        if ((i2 & 64) != 0) {
            byteString = terminalHeartbeatResponse.unknownFields();
        }
        int i3 = i;
        ByteString byteString2 = byteString;
        OfflineStats offlineStats2 = offlineStats;
        ConnectionTokenStatus connectionTokenStatus2 = connectionTokenStatus;
        return terminalHeartbeatResponse.copy(systemContext, str, connectionTokenStatus2, networkStatus, offlineStats2, i3, byteString2);
    }

    public final TerminalHeartbeatResponse copy(SystemContext system_context, String reader_config_hash, ConnectionTokenStatus connection_token_status, NetworkStatus network_status, OfflineStats offline_stats, int reader_events_count, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(reader_config_hash, "reader_config_hash");
        Intrinsics.checkNotNullParameter(connection_token_status, "connection_token_status");
        Intrinsics.checkNotNullParameter(network_status, "network_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new TerminalHeartbeatResponse(system_context, reader_config_hash, connection_token_status, network_status, offline_stats, reader_events_count, unknownFields);
    }

    /* JADX INFO: compiled from: TerminalHeartbeatResponse.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u0012\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;", "()V", "connection_token_status", "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;", "network_status", "Lcom/stripe/proto/api/sdk/NetworkStatus;", "offline_stats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "reader_config_hash", "", "reader_events_count", "", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<TerminalHeartbeatResponse, Builder> {
        public OfflineStats offline_stats;
        public int reader_events_count;
        public SystemContext system_context;
        public String reader_config_hash = "";
        public ConnectionTokenStatus connection_token_status = ConnectionTokenStatus.CONNECTION_TOKEN_STATUS_INVALID;
        public NetworkStatus network_status = NetworkStatus.NETWORK_STATUS_INVALID;

        @Deprecated(message = "system_context is deprecated")
        public final Builder system_context(SystemContext system_context) {
            this.system_context = system_context;
            return this;
        }

        public final Builder reader_config_hash(String reader_config_hash) {
            Intrinsics.checkNotNullParameter(reader_config_hash, "reader_config_hash");
            this.reader_config_hash = reader_config_hash;
            return this;
        }

        public final Builder connection_token_status(ConnectionTokenStatus connection_token_status) {
            Intrinsics.checkNotNullParameter(connection_token_status, "connection_token_status");
            this.connection_token_status = connection_token_status;
            return this;
        }

        public final Builder network_status(NetworkStatus network_status) {
            Intrinsics.checkNotNullParameter(network_status, "network_status");
            this.network_status = network_status;
            return this;
        }

        public final Builder offline_stats(OfflineStats offline_stats) {
            this.offline_stats = offline_stats;
            return this;
        }

        public final Builder reader_events_count(int reader_events_count) {
            this.reader_events_count = reader_events_count;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public TerminalHeartbeatResponse build() {
            return new TerminalHeartbeatResponse(this.system_context, this.reader_config_hash, this.connection_token_status, this.network_status, this.offline_stats, this.reader_events_count, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: TerminalHeartbeatResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ TerminalHeartbeatResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TerminalHeartbeatResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<TerminalHeartbeatResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.TerminalHeartbeatResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(TerminalHeartbeatResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.system_context != null) {
                    size += SystemContext.ADAPTER.encodedSizeWithTag(1, value.system_context);
                }
                if (!Intrinsics.areEqual(value.reader_config_hash, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.reader_config_hash);
                }
                if (value.connection_token_status != TerminalHeartbeatResponse.ConnectionTokenStatus.CONNECTION_TOKEN_STATUS_INVALID) {
                    size += TerminalHeartbeatResponse.ConnectionTokenStatus.ADAPTER.encodedSizeWithTag(3, value.connection_token_status);
                }
                if (value.network_status != NetworkStatus.NETWORK_STATUS_INVALID) {
                    size += NetworkStatus.ADAPTER.encodedSizeWithTag(4, value.network_status);
                }
                if (value.offline_stats != null) {
                    size += OfflineStats.ADAPTER.encodedSizeWithTag(5, value.offline_stats);
                }
                return value.reader_events_count != 0 ? size + ProtoAdapter.UINT32.encodedSizeWithTag(6, Integer.valueOf(value.reader_events_count)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, TerminalHeartbeatResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
                if (!Intrinsics.areEqual(value.reader_config_hash, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.reader_config_hash);
                }
                if (value.connection_token_status != TerminalHeartbeatResponse.ConnectionTokenStatus.CONNECTION_TOKEN_STATUS_INVALID) {
                    TerminalHeartbeatResponse.ConnectionTokenStatus.ADAPTER.encodeWithTag(writer, 3, value.connection_token_status);
                }
                if (value.network_status != NetworkStatus.NETWORK_STATUS_INVALID) {
                    NetworkStatus.ADAPTER.encodeWithTag(writer, 4, value.network_status);
                }
                if (value.offline_stats != null) {
                    OfflineStats.ADAPTER.encodeWithTag(writer, 5, value.offline_stats);
                }
                if (value.reader_events_count != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 6, Integer.valueOf(value.reader_events_count));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, TerminalHeartbeatResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.reader_events_count != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 6, Integer.valueOf(value.reader_events_count));
                }
                if (value.offline_stats != null) {
                    OfflineStats.ADAPTER.encodeWithTag(writer, 5, value.offline_stats);
                }
                if (value.network_status != NetworkStatus.NETWORK_STATUS_INVALID) {
                    NetworkStatus.ADAPTER.encodeWithTag(writer, 4, value.network_status);
                }
                if (value.connection_token_status != TerminalHeartbeatResponse.ConnectionTokenStatus.CONNECTION_TOKEN_STATUS_INVALID) {
                    TerminalHeartbeatResponse.ConnectionTokenStatus.ADAPTER.encodeWithTag(writer, 3, value.connection_token_status);
                }
                if (!Intrinsics.areEqual(value.reader_config_hash, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.reader_config_hash);
                }
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /*  JADX ERROR: UnsupportedOperationException in pass: SwitchBreakVisitor
                java.lang.UnsupportedOperationException
                	at java.base/java.util.AbstractList.remove(AbstractList.java:167)
                	at jadx.core.utils.ListUtils.removeLast(ListUtils.java:82)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.removeBreak(SwitchBreakVisitor.java:254)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processBranchRegion(SwitchBreakVisitor.java:110)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processRegion(SwitchBreakVisitor.java:64)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.enterRegion(SwitchBreakVisitor.java:202)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$IterativeSwitchRegionVisitor.leaveRegion(SwitchBreakVisitor.java:177)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.runSwitchTraverse(SwitchBreakVisitor.java:52)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.visit(SwitchBreakVisitor.java:45)
                */
            @Override // com.squareup.wire.ProtoAdapter
            public com.stripe.proto.api.sdk.TerminalHeartbeatResponse decode(com.squareup.wire.ProtoReader r18) throws java.io.IOException {
                /*
                    r17 = this;
                    r1 = r18
                    java.lang.String r0 = "reader"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                    com.stripe.proto.api.sdk.TerminalHeartbeatResponse$ConnectionTokenStatus r0 = com.stripe.proto.api.sdk.TerminalHeartbeatResponse.ConnectionTokenStatus.CONNECTION_TOKEN_STATUS_INVALID
                    com.stripe.proto.api.sdk.NetworkStatus r2 = com.stripe.proto.api.sdk.NetworkStatus.NETWORK_STATUS_INVALID
                    long r3 = r1.beginMessage()
                    r5 = 0
                    java.lang.String r6 = ""
                    r7 = 0
                    r8 = r6
                    r15 = r7
                    r6 = r5
                    r7 = r6
                    r5 = r2
                L18:
                    r2 = r0
                L19:
                    int r9 = r1.nextTag()
                    r0 = -1
                    if (r9 == r0) goto L78
                    switch(r9) {
                        case 1: goto L70;
                        case 2: goto L68;
                        case 3: goto L53;
                        case 4: goto L3d;
                        case 5: goto L35;
                        case 6: goto L27;
                        default: goto L23;
                    }
                L23:
                    r1.readUnknownField(r9)
                    goto L19
                L27:
                    com.squareup.wire.ProtoAdapter<java.lang.Integer> r0 = com.squareup.wire.ProtoAdapter.UINT32
                    java.lang.Object r0 = r0.decode(r1)
                    java.lang.Number r0 = (java.lang.Number) r0
                    int r0 = r0.intValue()
                    r15 = r0
                    goto L19
                L35:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.api.sdk.OfflineStats> r0 = com.stripe.proto.api.sdk.OfflineStats.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r7 = r0
                    goto L19
                L3d:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.api.sdk.NetworkStatus> r0 = com.stripe.proto.api.sdk.NetworkStatus.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L45
                    java.lang.Object r0 = r0.decode(r1)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L45
                    r5 = r0
                    goto L19
                L45:
                    r0 = move-exception
                    com.squareup.wire.FieldEncoding r10 = com.squareup.wire.FieldEncoding.VARINT
                    int r0 = r0.value
                    long r11 = (long) r0
                    java.lang.Long r0 = java.lang.Long.valueOf(r11)
                    r1.addUnknownField(r9, r10, r0)
                    goto L19
                L53:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.api.sdk.TerminalHeartbeatResponse$ConnectionTokenStatus> r0 = com.stripe.proto.api.sdk.TerminalHeartbeatResponse.ConnectionTokenStatus.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L5a
                    java.lang.Object r0 = r0.decode(r1)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L5a
                    goto L18
                L5a:
                    r0 = move-exception
                    com.squareup.wire.FieldEncoding r10 = com.squareup.wire.FieldEncoding.VARINT
                    int r0 = r0.value
                    long r11 = (long) r0
                    java.lang.Long r0 = java.lang.Long.valueOf(r11)
                    r1.addUnknownField(r9, r10, r0)
                    goto L19
                L68:
                    com.squareup.wire.ProtoAdapter<java.lang.String> r0 = com.squareup.wire.ProtoAdapter.STRING
                    java.lang.Object r0 = r0.decode(r1)
                    r8 = r0
                    goto L19
                L70:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.sdk.SystemContext> r0 = com.stripe.proto.model.sdk.SystemContext.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r6 = r0
                    goto L19
                L78:
                    okio.ByteString r16 = r1.endMessageAndGetUnknownFields(r3)
                    com.stripe.proto.api.sdk.TerminalHeartbeatResponse r9 = new com.stripe.proto.api.sdk.TerminalHeartbeatResponse
                    r10 = r6
                    com.stripe.proto.model.sdk.SystemContext r10 = (com.stripe.proto.model.sdk.SystemContext) r10
                    r11 = r8
                    java.lang.String r11 = (java.lang.String) r11
                    r12 = r2
                    com.stripe.proto.api.sdk.TerminalHeartbeatResponse$ConnectionTokenStatus r12 = (com.stripe.proto.api.sdk.TerminalHeartbeatResponse.ConnectionTokenStatus) r12
                    r13 = r5
                    com.stripe.proto.api.sdk.NetworkStatus r13 = (com.stripe.proto.api.sdk.NetworkStatus) r13
                    r14 = r7
                    com.stripe.proto.api.sdk.OfflineStats r14 = (com.stripe.proto.api.sdk.OfflineStats) r14
                    r9.<init>(r10, r11, r12, r13, r14, r15, r16)
                    return r9
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.api.sdk.TerminalHeartbeatResponse$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.api.sdk.TerminalHeartbeatResponse");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public TerminalHeartbeatResponse redact(TerminalHeartbeatResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SystemContext systemContext = value.system_context;
                SystemContext systemContextRedact = systemContext != null ? SystemContext.ADAPTER.redact(systemContext) : null;
                OfflineStats offlineStats = value.offline_stats;
                return TerminalHeartbeatResponse.copy$default(value, systemContextRedact, null, null, null, offlineStats != null ? OfflineStats.ADAPTER.redact(offlineStats) : null, 0, ByteString.EMPTY, 46, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: TerminalHeartbeatResponse.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CONNECTION_TOKEN_STATUS_INVALID", "REQUIRED", "NOT_REQUIRED", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ConnectionTokenStatus implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ConnectionTokenStatus[] $VALUES;
        public static final ProtoAdapter<ConnectionTokenStatus> ADAPTER;
        public static final ConnectionTokenStatus CONNECTION_TOKEN_STATUS_INVALID;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final ConnectionTokenStatus NOT_REQUIRED;
        public static final ConnectionTokenStatus REQUIRED;
        private final int value;

        private static final /* synthetic */ ConnectionTokenStatus[] $values() {
            return new ConnectionTokenStatus[]{CONNECTION_TOKEN_STATUS_INVALID, REQUIRED, NOT_REQUIRED};
        }

        @JvmStatic
        public static final ConnectionTokenStatus fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<ConnectionTokenStatus> getEntries() {
            return $ENTRIES;
        }

        public static ConnectionTokenStatus valueOf(String str) {
            return (ConnectionTokenStatus) Enum.valueOf(ConnectionTokenStatus.class, str);
        }

        public static ConnectionTokenStatus[] values() {
            return (ConnectionTokenStatus[]) $VALUES.clone();
        }

        private ConnectionTokenStatus(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final ConnectionTokenStatus connectionTokenStatus = new ConnectionTokenStatus("CONNECTION_TOKEN_STATUS_INVALID", 0, 0);
            CONNECTION_TOKEN_STATUS_INVALID = connectionTokenStatus;
            REQUIRED = new ConnectionTokenStatus("REQUIRED", 1, 1);
            NOT_REQUIRED = new ConnectionTokenStatus("NOT_REQUIRED", 2, 2);
            ConnectionTokenStatus[] connectionTokenStatusArr$values = $values();
            $VALUES = connectionTokenStatusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(connectionTokenStatusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConnectionTokenStatus.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<ConnectionTokenStatus>(orCreateKotlinClass, syntax, connectionTokenStatus) { // from class: com.stripe.proto.api.sdk.TerminalHeartbeatResponse$ConnectionTokenStatus$Companion$ADAPTER$1
                {
                    TerminalHeartbeatResponse.ConnectionTokenStatus connectionTokenStatus2 = connectionTokenStatus;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public TerminalHeartbeatResponse.ConnectionTokenStatus fromValue(int value) {
                    return TerminalHeartbeatResponse.ConnectionTokenStatus.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: TerminalHeartbeatResponse.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final ConnectionTokenStatus fromValue(int value) {
                if (value == 0) {
                    return ConnectionTokenStatus.CONNECTION_TOKEN_STATUS_INVALID;
                }
                if (value == 1) {
                    return ConnectionTokenStatus.REQUIRED;
                }
                if (value != 2) {
                    return null;
                }
                return ConnectionTokenStatus.NOT_REQUIRED;
            }
        }
    }
}
