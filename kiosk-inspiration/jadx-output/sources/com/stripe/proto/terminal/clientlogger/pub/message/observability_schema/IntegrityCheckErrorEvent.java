package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.IntegrityCheckErrorEvent;
import java.io.IOException;
import java.util.ArrayList;
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

/* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0014\u0015\u0016\u0017B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;", "type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType;", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "IntegrityCheckErrorState", "IntegrityCheckErrorType", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IntegrityCheckErrorEvent extends Message<IntegrityCheckErrorEvent, Builder> {
    public static final ProtoAdapter<IntegrityCheckErrorEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.IntegrityCheckErrorEvent$IntegrityCheckErrorState#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final IntegrityCheckErrorState state;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.IntegrityCheckErrorEvent$IntegrityCheckErrorType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final IntegrityCheckErrorType type;

    public IntegrityCheckErrorEvent() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ IntegrityCheckErrorEvent(IntegrityCheckErrorType integrityCheckErrorType, IntegrityCheckErrorState integrityCheckErrorState, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? IntegrityCheckErrorType.INTEGRITY_CHECK_ERROR_TYPE_INVALID : integrityCheckErrorType, (i & 2) != 0 ? null : integrityCheckErrorState, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntegrityCheckErrorEvent(IntegrityCheckErrorType type, IntegrityCheckErrorState integrityCheckErrorState, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.type = type;
        this.state = integrityCheckErrorState;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.type = this.type;
        builder.state = this.state;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof IntegrityCheckErrorEvent)) {
            return false;
        }
        IntegrityCheckErrorEvent integrityCheckErrorEvent = (IntegrityCheckErrorEvent) other;
        return Intrinsics.areEqual(unknownFields(), integrityCheckErrorEvent.unknownFields()) && this.type == integrityCheckErrorEvent.type && Intrinsics.areEqual(this.state, integrityCheckErrorEvent.state);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.type.hashCode()) * 37;
        IntegrityCheckErrorState integrityCheckErrorState = this.state;
        int iHashCode2 = iHashCode + (integrityCheckErrorState != null ? integrityCheckErrorState.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("type=" + this.type);
        if (this.state != null) {
            arrayList2.add("state=" + this.state);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "IntegrityCheckErrorEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ IntegrityCheckErrorEvent copy$default(IntegrityCheckErrorEvent integrityCheckErrorEvent, IntegrityCheckErrorType integrityCheckErrorType, IntegrityCheckErrorState integrityCheckErrorState, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            integrityCheckErrorType = integrityCheckErrorEvent.type;
        }
        if ((i & 2) != 0) {
            integrityCheckErrorState = integrityCheckErrorEvent.state;
        }
        if ((i & 4) != 0) {
            byteString = integrityCheckErrorEvent.unknownFields();
        }
        return integrityCheckErrorEvent.copy(integrityCheckErrorType, integrityCheckErrorState, byteString);
    }

    public final IntegrityCheckErrorEvent copy(IntegrityCheckErrorType type, IntegrityCheckErrorState state, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new IntegrityCheckErrorEvent(type, state, unknownFields);
    }

    /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;", "()V", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState;", "type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<IntegrityCheckErrorEvent, Builder> {
        public IntegrityCheckErrorState state;
        public IntegrityCheckErrorType type = IntegrityCheckErrorType.INTEGRITY_CHECK_ERROR_TYPE_INVALID;

        public final Builder type(IntegrityCheckErrorType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        public final Builder state(IntegrityCheckErrorState state) {
            this.state = state;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public IntegrityCheckErrorEvent build() {
            return new IntegrityCheckErrorEvent(this.type, this.state, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ IntegrityCheckErrorEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(IntegrityCheckErrorEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<IntegrityCheckErrorEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.IntegrityCheckErrorEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(IntegrityCheckErrorEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.type != IntegrityCheckErrorEvent.IntegrityCheckErrorType.INTEGRITY_CHECK_ERROR_TYPE_INVALID) {
                    size += IntegrityCheckErrorEvent.IntegrityCheckErrorType.ADAPTER.encodedSizeWithTag(1, value.type);
                }
                return value.state != null ? size + IntegrityCheckErrorEvent.IntegrityCheckErrorState.ADAPTER.encodedSizeWithTag(2, value.state) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, IntegrityCheckErrorEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.type != IntegrityCheckErrorEvent.IntegrityCheckErrorType.INTEGRITY_CHECK_ERROR_TYPE_INVALID) {
                    IntegrityCheckErrorEvent.IntegrityCheckErrorType.ADAPTER.encodeWithTag(writer, 1, value.type);
                }
                if (value.state != null) {
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.ADAPTER.encodeWithTag(writer, 2, value.state);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, IntegrityCheckErrorEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.state != null) {
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.ADAPTER.encodeWithTag(writer, 2, value.state);
                }
                if (value.type != IntegrityCheckErrorEvent.IntegrityCheckErrorType.INTEGRITY_CHECK_ERROR_TYPE_INVALID) {
                    IntegrityCheckErrorEvent.IntegrityCheckErrorType.ADAPTER.encodeWithTag(writer, 1, value.type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public IntegrityCheckErrorEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                IntegrityCheckErrorEvent.IntegrityCheckErrorType integrityCheckErrorTypeDecode = IntegrityCheckErrorEvent.IntegrityCheckErrorType.INTEGRITY_CHECK_ERROR_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                IntegrityCheckErrorEvent.IntegrityCheckErrorState integrityCheckErrorStateDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new IntegrityCheckErrorEvent(integrityCheckErrorTypeDecode, integrityCheckErrorStateDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            integrityCheckErrorTypeDecode = IntegrityCheckErrorEvent.IntegrityCheckErrorType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        integrityCheckErrorStateDecode = IntegrityCheckErrorEvent.IntegrityCheckErrorState.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public IntegrityCheckErrorEvent redact(IntegrityCheckErrorEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                IntegrityCheckErrorEvent.IntegrityCheckErrorState integrityCheckErrorState = value.state;
                return IntegrityCheckErrorEvent.copy$default(value, null, integrityCheckErrorState != null ? IntegrityCheckErrorEvent.IntegrityCheckErrorState.ADAPTER.redact(integrityCheckErrorState) : null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0016\u0017\u0018\u0019\u001aB3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Builder;", "discovered", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Discovered;", "resolved", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Resolved;", "not_resolved", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$NotResolved;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Discovered;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Resolved;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$NotResolved;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "Discovered", "NotResolved", "Resolved", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class IntegrityCheckErrorState extends Message<IntegrityCheckErrorState, Builder> {
        public static final ProtoAdapter<IntegrityCheckErrorState> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.IntegrityCheckErrorEvent$IntegrityCheckErrorState$Discovered#ADAPTER", oneofName = RemoteConfigConstants.ResponseFieldKey.STATE, schemaIndex = 0, tag = 1)
        public final Discovered discovered;

        @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.IntegrityCheckErrorEvent$IntegrityCheckErrorState$NotResolved#ADAPTER", jsonName = "notResolved", oneofName = RemoteConfigConstants.ResponseFieldKey.STATE, schemaIndex = 2, tag = 3)
        public final NotResolved not_resolved;

        @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.IntegrityCheckErrorEvent$IntegrityCheckErrorState$Resolved#ADAPTER", oneofName = RemoteConfigConstants.ResponseFieldKey.STATE, schemaIndex = 1, tag = 2)
        public final Resolved resolved;

        public IntegrityCheckErrorState() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ IntegrityCheckErrorState(Discovered discovered, Resolved resolved, NotResolved notResolved, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : discovered, (i & 2) != 0 ? null : resolved, (i & 4) != 0 ? null : notResolved, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IntegrityCheckErrorState(Discovered discovered, Resolved resolved, NotResolved notResolved, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.discovered = discovered;
            this.resolved = resolved;
            this.not_resolved = notResolved;
            if (Internal.countNonNull(discovered, resolved, notResolved) > 1) {
                throw new IllegalArgumentException("At most one of discovered, resolved, not_resolved may be non-null".toString());
            }
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.discovered = this.discovered;
            builder.resolved = this.resolved;
            builder.not_resolved = this.not_resolved;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof IntegrityCheckErrorState)) {
                return false;
            }
            IntegrityCheckErrorState integrityCheckErrorState = (IntegrityCheckErrorState) other;
            return Intrinsics.areEqual(unknownFields(), integrityCheckErrorState.unknownFields()) && Intrinsics.areEqual(this.discovered, integrityCheckErrorState.discovered) && Intrinsics.areEqual(this.resolved, integrityCheckErrorState.resolved) && Intrinsics.areEqual(this.not_resolved, integrityCheckErrorState.not_resolved);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Discovered discovered = this.discovered;
            int iHashCode2 = (iHashCode + (discovered != null ? discovered.hashCode() : 0)) * 37;
            Resolved resolved = this.resolved;
            int iHashCode3 = (iHashCode2 + (resolved != null ? resolved.hashCode() : 0)) * 37;
            NotResolved notResolved = this.not_resolved;
            int iHashCode4 = iHashCode3 + (notResolved != null ? notResolved.hashCode() : 0);
            this.hashCode = iHashCode4;
            return iHashCode4;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.discovered != null) {
                arrayList.add("discovered=" + this.discovered);
            }
            if (this.resolved != null) {
                arrayList.add("resolved=" + this.resolved);
            }
            if (this.not_resolved != null) {
                arrayList.add("not_resolved=" + this.not_resolved);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "IntegrityCheckErrorState{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ IntegrityCheckErrorState copy$default(IntegrityCheckErrorState integrityCheckErrorState, Discovered discovered, Resolved resolved, NotResolved notResolved, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                discovered = integrityCheckErrorState.discovered;
            }
            if ((i & 2) != 0) {
                resolved = integrityCheckErrorState.resolved;
            }
            if ((i & 4) != 0) {
                notResolved = integrityCheckErrorState.not_resolved;
            }
            if ((i & 8) != 0) {
                byteString = integrityCheckErrorState.unknownFields();
            }
            return integrityCheckErrorState.copy(discovered, resolved, notResolved, byteString);
        }

        public final IntegrityCheckErrorState copy(Discovered discovered, Resolved resolved, NotResolved not_resolved, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new IntegrityCheckErrorState(discovered, resolved, not_resolved, unknownFields);
        }

        /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState;", "()V", "discovered", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Discovered;", "not_resolved", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$NotResolved;", "resolved", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Resolved;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<IntegrityCheckErrorState, Builder> {
            public Discovered discovered;
            public NotResolved not_resolved;
            public Resolved resolved;

            public final Builder discovered(Discovered discovered) {
                this.discovered = discovered;
                this.resolved = null;
                this.not_resolved = null;
                return this;
            }

            public final Builder resolved(Resolved resolved) {
                this.resolved = resolved;
                this.discovered = null;
                this.not_resolved = null;
                return this;
            }

            public final Builder not_resolved(NotResolved not_resolved) {
                this.not_resolved = not_resolved;
                this.discovered = null;
                this.resolved = null;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public IntegrityCheckErrorState build() {
                return new IntegrityCheckErrorState(this.discovered, this.resolved, this.not_resolved, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ IntegrityCheckErrorState build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(IntegrityCheckErrorState.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<IntegrityCheckErrorState>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.IntegrityCheckErrorEvent$IntegrityCheckErrorState$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(IntegrityCheckErrorEvent.IntegrityCheckErrorState value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered.ADAPTER.encodedSizeWithTag(1, value.discovered) + IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved.ADAPTER.encodedSizeWithTag(2, value.resolved) + IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved.ADAPTER.encodedSizeWithTag(3, value.not_resolved);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, IntegrityCheckErrorEvent.IntegrityCheckErrorState value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered.ADAPTER.encodeWithTag(writer, 1, value.discovered);
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved.ADAPTER.encodeWithTag(writer, 2, value.resolved);
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved.ADAPTER.encodeWithTag(writer, 3, value.not_resolved);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, IntegrityCheckErrorEvent.IntegrityCheckErrorState value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved.ADAPTER.encodeWithTag(writer, 3, value.not_resolved);
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved.ADAPTER.encodeWithTag(writer, 2, value.resolved);
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered.ADAPTER.encodeWithTag(writer, 1, value.discovered);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public IntegrityCheckErrorEvent.IntegrityCheckErrorState redact(IntegrityCheckErrorEvent.IntegrityCheckErrorState value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered discovered = value.discovered;
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered discoveredRedact = discovered != null ? IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered.ADAPTER.redact(discovered) : null;
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved resolved = value.resolved;
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved resolvedRedact = resolved != null ? IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved.ADAPTER.redact(resolved) : null;
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved notResolved = value.not_resolved;
                    return value.copy(discoveredRedact, resolvedRedact, notResolved != null ? IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved.ADAPTER.redact(notResolved) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public IntegrityCheckErrorEvent.IntegrityCheckErrorState decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered discoveredDecode = null;
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved resolvedDecode = null;
                    IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved notResolvedDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new IntegrityCheckErrorEvent.IntegrityCheckErrorState(discoveredDecode, resolvedDecode, notResolvedDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            discoveredDecode = IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered.ADAPTER.decode(reader);
                        } else if (iNextTag == 2) {
                            resolvedDecode = IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved.ADAPTER.decode(reader);
                        } else if (iNextTag == 3) {
                            notResolvedDecode = IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }

        /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Discovered;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Discovered$Builder;", "message", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Discovered extends Message<Discovered, Builder> {
            public static final ProtoAdapter<Discovered> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String message;

            /* JADX WARN: Multi-variable type inference failed */
            public Discovered() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Discovered(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Discovered(String message, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(message, "message");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.message = message;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.message = this.message;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Discovered)) {
                    return false;
                }
                Discovered discovered = (Discovered) other;
                return Intrinsics.areEqual(unknownFields(), discovered.unknownFields()) && Intrinsics.areEqual(this.message, discovered.message);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (unknownFields().hashCode() * 37) + this.message.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                arrayList.add("message=" + Internal.sanitize(this.message));
                return CollectionsKt.joinToString$default(arrayList, ", ", "Discovered{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Discovered copy$default(Discovered discovered, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = discovered.message;
                }
                if ((i & 2) != 0) {
                    byteString = discovered.unknownFields();
                }
                return discovered.copy(str, byteString);
            }

            public final Discovered copy(String message, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(message, "message");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Discovered(message, unknownFields);
            }

            /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
            @kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Discovered$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Discovered;", "()V", "message", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Discovered, Builder> {
                public String message = "";

                public final Builder message(String message) {
                    Intrinsics.checkNotNullParameter(message, "message");
                    this.message = message;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Discovered build() {
                    return new Discovered(this.message, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
            @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Discovered$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Discovered;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Discovered$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Discovered build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Discovered.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Discovered>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.IntegrityCheckErrorEvent$IntegrityCheckErrorState$Discovered$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return !Intrinsics.areEqual(value.message, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.message) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.message, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.message);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (Intrinsics.areEqual(value.message, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.message);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered redact(IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered.copy$default(value, null, ByteString.EMPTY, 1, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new IntegrityCheckErrorEvent.IntegrityCheckErrorState.Discovered(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Resolved;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Resolved$Builder;", OfflineStorageConstantsKt.ID, "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Resolved extends Message<Resolved, Builder> {
            public static final ProtoAdapter<Resolved> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String id;

            /* JADX WARN: Multi-variable type inference failed */
            public Resolved() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Resolved(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Resolved(String id, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.id = id;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.id = this.id;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Resolved)) {
                    return false;
                }
                Resolved resolved = (Resolved) other;
                return Intrinsics.areEqual(unknownFields(), resolved.unknownFields()) && Intrinsics.areEqual(this.id, resolved.id);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (unknownFields().hashCode() * 37) + this.id.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                arrayList.add("id=" + Internal.sanitize(this.id));
                return CollectionsKt.joinToString$default(arrayList, ", ", "Resolved{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Resolved copy$default(Resolved resolved, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = resolved.id;
                }
                if ((i & 2) != 0) {
                    byteString = resolved.unknownFields();
                }
                return resolved.copy(str, byteString);
            }

            public final Resolved copy(String id, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Resolved(id, unknownFields);
            }

            /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
            @kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Resolved$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Resolved;", "()V", OfflineStorageConstantsKt.ID, "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Resolved, Builder> {
                public String id = "";

                public final Builder id(String id) {
                    Intrinsics.checkNotNullParameter(id, "id");
                    this.id = id;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Resolved build() {
                    return new Resolved(this.id, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
            @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Resolved$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Resolved;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$Resolved$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Resolved build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Resolved.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Resolved>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.IntegrityCheckErrorEvent$IntegrityCheckErrorState$Resolved$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return !Intrinsics.areEqual(value.id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.id) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.id, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (Intrinsics.areEqual(value.id, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved redact(IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved.copy$default(value, null, ByteString.EMPTY, 1, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new IntegrityCheckErrorEvent.IntegrityCheckErrorState.Resolved(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$NotResolved;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$NotResolved$Builder;", "authenticated", "", "reason", "", "unknownFields", "Lokio/ByteString;", "(ZLjava/lang/String;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class NotResolved extends Message<NotResolved, Builder> {
            public static final ProtoAdapter<NotResolved> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final boolean authenticated;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
            public final String reason;

            public NotResolved() {
                this(false, null, null, 7, null);
            }

            public /* synthetic */ NotResolved(boolean z, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? false : z, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public NotResolved(boolean z, String reason, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(reason, "reason");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.authenticated = z;
                this.reason = reason;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.authenticated = this.authenticated;
                builder.reason = this.reason;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof NotResolved)) {
                    return false;
                }
                NotResolved notResolved = (NotResolved) other;
                return Intrinsics.areEqual(unknownFields(), notResolved.unknownFields()) && this.authenticated == notResolved.authenticated && Intrinsics.areEqual(this.reason, notResolved.reason);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (((unknownFields().hashCode() * 37) + Boolean.hashCode(this.authenticated)) * 37) + this.reason.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = arrayList;
                arrayList2.add("authenticated=" + this.authenticated);
                arrayList2.add("reason=" + Internal.sanitize(this.reason));
                return CollectionsKt.joinToString$default(arrayList, ", ", "NotResolved{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ NotResolved copy$default(NotResolved notResolved, boolean z, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    z = notResolved.authenticated;
                }
                if ((i & 2) != 0) {
                    str = notResolved.reason;
                }
                if ((i & 4) != 0) {
                    byteString = notResolved.unknownFields();
                }
                return notResolved.copy(z, str, byteString);
            }

            public final NotResolved copy(boolean authenticated, String reason, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(reason, "reason");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new NotResolved(authenticated, reason, unknownFields);
            }

            /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
            @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$NotResolved$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$NotResolved;", "()V", "authenticated", "", "reason", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<NotResolved, Builder> {
                public boolean authenticated;
                public String reason = "";

                public final Builder authenticated(boolean authenticated) {
                    this.authenticated = authenticated;
                    return this;
                }

                public final Builder reason(String reason) {
                    Intrinsics.checkNotNullParameter(reason, "reason");
                    this.reason = reason;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public NotResolved build() {
                    return new NotResolved(this.authenticated, this.reason, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
            @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$NotResolved$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$NotResolved;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState$NotResolved$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ NotResolved build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NotResolved.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<NotResolved>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.IntegrityCheckErrorEvent$IntegrityCheckErrorState$NotResolved$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.authenticated) {
                            size += ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.authenticated));
                        }
                        return !Intrinsics.areEqual(value.reason, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.reason) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.authenticated) {
                            ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.authenticated));
                        }
                        if (!Intrinsics.areEqual(value.reason, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.reason);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (!Intrinsics.areEqual(value.reason, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.reason);
                        }
                        if (value.authenticated) {
                            ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.authenticated));
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved redact(IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved.copy$default(value, false, null, ByteString.EMPTY, 3, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        boolean zBooleanValue = false;
                        String strDecode = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new IntegrityCheckErrorEvent.IntegrityCheckErrorState.NotResolved(zBooleanValue, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                            } else if (iNextTag == 2) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000eB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "INTEGRITY_CHECK_ERROR_TYPE_INVALID", "UNKNOWN", "KEY", "FIRMWARE", "CONFIG", "UNRECOVERABLE_TAMPER", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class IntegrityCheckErrorType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ IntegrityCheckErrorType[] $VALUES;
        public static final ProtoAdapter<IntegrityCheckErrorType> ADAPTER;
        public static final IntegrityCheckErrorType CONFIG;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final IntegrityCheckErrorType FIRMWARE;
        public static final IntegrityCheckErrorType INTEGRITY_CHECK_ERROR_TYPE_INVALID;
        public static final IntegrityCheckErrorType KEY;
        public static final IntegrityCheckErrorType UNKNOWN;
        public static final IntegrityCheckErrorType UNRECOVERABLE_TAMPER;
        private final int value;

        private static final /* synthetic */ IntegrityCheckErrorType[] $values() {
            return new IntegrityCheckErrorType[]{INTEGRITY_CHECK_ERROR_TYPE_INVALID, UNKNOWN, KEY, FIRMWARE, CONFIG, UNRECOVERABLE_TAMPER};
        }

        @JvmStatic
        public static final IntegrityCheckErrorType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<IntegrityCheckErrorType> getEntries() {
            return $ENTRIES;
        }

        public static IntegrityCheckErrorType valueOf(String str) {
            return (IntegrityCheckErrorType) Enum.valueOf(IntegrityCheckErrorType.class, str);
        }

        public static IntegrityCheckErrorType[] values() {
            return (IntegrityCheckErrorType[]) $VALUES.clone();
        }

        private IntegrityCheckErrorType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final IntegrityCheckErrorType integrityCheckErrorType = new IntegrityCheckErrorType("INTEGRITY_CHECK_ERROR_TYPE_INVALID", 0, 0);
            INTEGRITY_CHECK_ERROR_TYPE_INVALID = integrityCheckErrorType;
            UNKNOWN = new IntegrityCheckErrorType("UNKNOWN", 1, 1);
            KEY = new IntegrityCheckErrorType("KEY", 2, 2);
            FIRMWARE = new IntegrityCheckErrorType("FIRMWARE", 3, 3);
            CONFIG = new IntegrityCheckErrorType("CONFIG", 4, 4);
            UNRECOVERABLE_TAMPER = new IntegrityCheckErrorType("UNRECOVERABLE_TAMPER", 5, 5);
            IntegrityCheckErrorType[] integrityCheckErrorTypeArr$values = $values();
            $VALUES = integrityCheckErrorTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(integrityCheckErrorTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(IntegrityCheckErrorType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<IntegrityCheckErrorType>(orCreateKotlinClass, syntax, integrityCheckErrorType) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.IntegrityCheckErrorEvent$IntegrityCheckErrorType$Companion$ADAPTER$1
                {
                    IntegrityCheckErrorEvent.IntegrityCheckErrorType integrityCheckErrorType2 = integrityCheckErrorType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public IntegrityCheckErrorEvent.IntegrityCheckErrorType fromValue(int value) {
                    return IntegrityCheckErrorEvent.IntegrityCheckErrorType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: IntegrityCheckErrorEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final IntegrityCheckErrorType fromValue(int value) {
                if (value == 0) {
                    return IntegrityCheckErrorType.INTEGRITY_CHECK_ERROR_TYPE_INVALID;
                }
                if (value == 1) {
                    return IntegrityCheckErrorType.UNKNOWN;
                }
                if (value == 2) {
                    return IntegrityCheckErrorType.KEY;
                }
                if (value == 3) {
                    return IntegrityCheckErrorType.FIRMWARE;
                }
                if (value == 4) {
                    return IntegrityCheckErrorType.CONFIG;
                }
                if (value != 5) {
                    return null;
                }
                return IntegrityCheckErrorType.UNRECOVERABLE_TAMPER;
            }
        }
    }
}
