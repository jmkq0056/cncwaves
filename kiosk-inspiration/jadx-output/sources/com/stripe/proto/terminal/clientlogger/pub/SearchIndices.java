package com.stripe.proto.terminal.clientlogger.pub;

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
import com.sun.jna.platform.win32.WinUser;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: SearchIndices.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBi\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010Jj\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;", "action_id", "", OfflineStorageConstantsKt.READER_SERIAL_NUMBER, "session_id", "trace_id", "", "parent_span_id", "current_span_id", "terminal_action_id", "client_isp", "base_device_id", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SearchIndices extends Message<SearchIndices, Builder> {
    public static final ProtoAdapter<SearchIndices> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "actionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String action_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "baseDeviceId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final String base_device_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "clientIsp", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String client_isp;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "currentSpanId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final long current_span_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "parentSpanId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final long parent_span_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "serialNumber", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String serial_number;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "sessionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String session_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "terminalActionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String terminal_action_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "traceId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final long trace_id;

    public SearchIndices() {
        this(null, null, null, 0L, 0L, 0L, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ SearchIndices(String str, String str2, String str3, long j, long j2, long j3, String str4, String str5, String str6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? 0L : j, (i & 16) != 0 ? 0L : j2, (i & 32) == 0 ? j3 : 0L, (i & 64) != 0 ? "" : str4, (i & 128) != 0 ? "" : str5, (i & 256) == 0 ? str6 : "", (i & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchIndices(String action_id, String serial_number, String session_id, long j, long j2, long j3, String terminal_action_id, String client_isp, String base_device_id, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(action_id, "action_id");
        Intrinsics.checkNotNullParameter(serial_number, "serial_number");
        Intrinsics.checkNotNullParameter(session_id, "session_id");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(client_isp, "client_isp");
        Intrinsics.checkNotNullParameter(base_device_id, "base_device_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.action_id = action_id;
        this.serial_number = serial_number;
        this.session_id = session_id;
        this.trace_id = j;
        this.parent_span_id = j2;
        this.current_span_id = j3;
        this.terminal_action_id = terminal_action_id;
        this.client_isp = client_isp;
        this.base_device_id = base_device_id;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.action_id = this.action_id;
        builder.serial_number = this.serial_number;
        builder.session_id = this.session_id;
        builder.trace_id = this.trace_id;
        builder.parent_span_id = this.parent_span_id;
        builder.current_span_id = this.current_span_id;
        builder.terminal_action_id = this.terminal_action_id;
        builder.client_isp = this.client_isp;
        builder.base_device_id = this.base_device_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SearchIndices)) {
            return false;
        }
        SearchIndices searchIndices = (SearchIndices) other;
        return Intrinsics.areEqual(unknownFields(), searchIndices.unknownFields()) && Intrinsics.areEqual(this.action_id, searchIndices.action_id) && Intrinsics.areEqual(this.serial_number, searchIndices.serial_number) && Intrinsics.areEqual(this.session_id, searchIndices.session_id) && this.trace_id == searchIndices.trace_id && this.parent_span_id == searchIndices.parent_span_id && this.current_span_id == searchIndices.current_span_id && Intrinsics.areEqual(this.terminal_action_id, searchIndices.terminal_action_id) && Intrinsics.areEqual(this.client_isp, searchIndices.client_isp) && Intrinsics.areEqual(this.base_device_id, searchIndices.base_device_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((((unknownFields().hashCode() * 37) + this.action_id.hashCode()) * 37) + this.serial_number.hashCode()) * 37) + this.session_id.hashCode()) * 37) + Long.hashCode(this.trace_id)) * 37) + Long.hashCode(this.parent_span_id)) * 37) + Long.hashCode(this.current_span_id)) * 37) + this.terminal_action_id.hashCode()) * 37) + this.client_isp.hashCode()) * 37) + this.base_device_id.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("action_id=" + Internal.sanitize(this.action_id));
        arrayList2.add("serial_number=" + Internal.sanitize(this.serial_number));
        arrayList2.add("session_id=" + Internal.sanitize(this.session_id));
        arrayList2.add("trace_id=" + this.trace_id);
        arrayList2.add("parent_span_id=" + this.parent_span_id);
        arrayList2.add("current_span_id=" + this.current_span_id);
        arrayList2.add("terminal_action_id=" + Internal.sanitize(this.terminal_action_id));
        arrayList2.add("client_isp=" + Internal.sanitize(this.client_isp));
        arrayList2.add("base_device_id=" + Internal.sanitize(this.base_device_id));
        return CollectionsKt.joinToString$default(arrayList, ", ", "SearchIndices{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ SearchIndices copy$default(SearchIndices searchIndices, String str, String str2, String str3, long j, long j2, long j3, String str4, String str5, String str6, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = searchIndices.action_id;
        }
        return searchIndices.copy(str, (i & 2) != 0 ? searchIndices.serial_number : str2, (i & 4) != 0 ? searchIndices.session_id : str3, (i & 8) != 0 ? searchIndices.trace_id : j, (i & 16) != 0 ? searchIndices.parent_span_id : j2, (i & 32) != 0 ? searchIndices.current_span_id : j3, (i & 64) != 0 ? searchIndices.terminal_action_id : str4, (i & 128) != 0 ? searchIndices.client_isp : str5, (i & 256) != 0 ? searchIndices.base_device_id : str6, (i & 512) != 0 ? searchIndices.unknownFields() : byteString);
    }

    public final SearchIndices copy(String action_id, String serial_number, String session_id, long trace_id, long parent_span_id, long current_span_id, String terminal_action_id, String client_isp, String base_device_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(action_id, "action_id");
        Intrinsics.checkNotNullParameter(serial_number, "serial_number");
        Intrinsics.checkNotNullParameter(session_id, "session_id");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(client_isp, "client_isp");
        Intrinsics.checkNotNullParameter(base_device_id, "base_device_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new SearchIndices(action_id, serial_number, session_id, trace_id, parent_span_id, current_span_id, terminal_action_id, client_isp, base_device_id, unknownFields);
    }

    /* JADX INFO: compiled from: SearchIndices.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;", "()V", "action_id", "", "base_device_id", "client_isp", "current_span_id", "", "parent_span_id", OfflineStorageConstantsKt.READER_SERIAL_NUMBER, "session_id", "terminal_action_id", "trace_id", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<SearchIndices, Builder> {
        public long current_span_id;
        public long parent_span_id;
        public long trace_id;
        public String action_id = "";
        public String serial_number = "";
        public String session_id = "";
        public String terminal_action_id = "";
        public String client_isp = "";
        public String base_device_id = "";

        public final Builder action_id(String action_id) {
            Intrinsics.checkNotNullParameter(action_id, "action_id");
            this.action_id = action_id;
            return this;
        }

        public final Builder serial_number(String serial_number) {
            Intrinsics.checkNotNullParameter(serial_number, "serial_number");
            this.serial_number = serial_number;
            return this;
        }

        public final Builder session_id(String session_id) {
            Intrinsics.checkNotNullParameter(session_id, "session_id");
            this.session_id = session_id;
            return this;
        }

        public final Builder trace_id(long trace_id) {
            this.trace_id = trace_id;
            return this;
        }

        public final Builder parent_span_id(long parent_span_id) {
            this.parent_span_id = parent_span_id;
            return this;
        }

        public final Builder current_span_id(long current_span_id) {
            this.current_span_id = current_span_id;
            return this;
        }

        public final Builder terminal_action_id(String terminal_action_id) {
            Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
            this.terminal_action_id = terminal_action_id;
            return this;
        }

        public final Builder client_isp(String client_isp) {
            Intrinsics.checkNotNullParameter(client_isp, "client_isp");
            this.client_isp = client_isp;
            return this;
        }

        public final Builder base_device_id(String base_device_id) {
            Intrinsics.checkNotNullParameter(base_device_id, "base_device_id");
            this.base_device_id = base_device_id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public SearchIndices build() {
            return new SearchIndices(this.action_id, this.serial_number, this.session_id, this.trace_id, this.parent_span_id, this.current_span_id, this.terminal_action_id, this.client_isp, this.base_device_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: SearchIndices.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SearchIndices build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SearchIndices.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<SearchIndices>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.SearchIndices$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(SearchIndices value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.action_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.action_id);
                }
                if (!Intrinsics.areEqual(value.serial_number, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.serial_number);
                }
                if (!Intrinsics.areEqual(value.session_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.session_id);
                }
                if (value.trace_id != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(4, Long.valueOf(value.trace_id));
                }
                if (value.parent_span_id != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(5, Long.valueOf(value.parent_span_id));
                }
                if (value.current_span_id != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(6, Long.valueOf(value.current_span_id));
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.terminal_action_id);
                }
                if (!Intrinsics.areEqual(value.client_isp, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.client_isp);
                }
                return !Intrinsics.areEqual(value.base_device_id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(9, value.base_device_id) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, SearchIndices value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.action_id);
                }
                if (!Intrinsics.areEqual(value.serial_number, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.serial_number);
                }
                if (!Intrinsics.areEqual(value.session_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.session_id);
                }
                if (value.trace_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.trace_id));
                }
                if (value.parent_span_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 5, Long.valueOf(value.parent_span_id));
                }
                if (value.current_span_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 6, Long.valueOf(value.current_span_id));
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.terminal_action_id);
                }
                if (!Intrinsics.areEqual(value.client_isp, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.client_isp);
                }
                if (!Intrinsics.areEqual(value.base_device_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.base_device_id);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, SearchIndices value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.base_device_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.base_device_id);
                }
                if (!Intrinsics.areEqual(value.client_isp, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.client_isp);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.terminal_action_id);
                }
                if (value.current_span_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 6, Long.valueOf(value.current_span_id));
                }
                if (value.parent_span_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 5, Long.valueOf(value.parent_span_id));
                }
                if (value.trace_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.trace_id));
                }
                if (!Intrinsics.areEqual(value.session_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.session_id);
                }
                if (!Intrinsics.areEqual(value.serial_number, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.serial_number);
                }
                if (Intrinsics.areEqual(value.action_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.action_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public SearchIndices redact(SearchIndices value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return SearchIndices.copy$default(value, null, null, null, 0L, 0L, 0L, null, null, null, ByteString.EMPTY, 511, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public SearchIndices decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                long jLongValue = 0;
                long jLongValue2 = 0;
                long jLongValue3 = 0;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                break;
                            case 5:
                                jLongValue2 = ProtoAdapter.INT64.decode(reader).longValue();
                                break;
                            case 6:
                                jLongValue3 = ProtoAdapter.INT64.decode(reader).longValue();
                                break;
                            case 7:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new SearchIndices(strDecode, strDecode5, strDecode6, jLongValue, jLongValue2, jLongValue3, strDecode2, strDecode3, strDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
