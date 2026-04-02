package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
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

/* JADX INFO: compiled from: UpdatesDomain.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "stage", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;", "end_to_end", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;", "updater_state", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdatesDomain extends Message<UpdatesDomain, Builder> {
    public static final ProtoAdapter<UpdatesDomain> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.EndToEndScope#ADAPTER", jsonName = "endToEnd", oneofName = "scope", schemaIndex = 1, tag = 2)
    public final EndToEndScope end_to_end;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.SingleUpdateScope#ADAPTER", oneofName = "scope", schemaIndex = 0, tag = 1)
    public final SingleUpdateScope stage;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesFlowScope#ADAPTER", jsonName = "updaterState", oneofName = "scope", schemaIndex = 2, tag = 3)
    public final UpdatesFlowScope updater_state;

    public UpdatesDomain() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ UpdatesDomain(SingleUpdateScope singleUpdateScope, EndToEndScope endToEndScope, UpdatesFlowScope updatesFlowScope, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : singleUpdateScope, (i & 2) != 0 ? null : endToEndScope, (i & 4) != 0 ? null : updatesFlowScope, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdatesDomain(SingleUpdateScope singleUpdateScope, EndToEndScope endToEndScope, UpdatesFlowScope updatesFlowScope, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.stage = singleUpdateScope;
        this.end_to_end = endToEndScope;
        this.updater_state = updatesFlowScope;
        if (Internal.countNonNull(singleUpdateScope, endToEndScope, updatesFlowScope) > 1) {
            throw new IllegalArgumentException("At most one of stage, end_to_end, updater_state may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.stage = this.stage;
        builder.end_to_end = this.end_to_end;
        builder.updater_state = this.updater_state;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UpdatesDomain)) {
            return false;
        }
        UpdatesDomain updatesDomain = (UpdatesDomain) other;
        return Intrinsics.areEqual(unknownFields(), updatesDomain.unknownFields()) && Intrinsics.areEqual(this.stage, updatesDomain.stage) && Intrinsics.areEqual(this.end_to_end, updatesDomain.end_to_end) && Intrinsics.areEqual(this.updater_state, updatesDomain.updater_state);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SingleUpdateScope singleUpdateScope = this.stage;
        int iHashCode2 = (iHashCode + (singleUpdateScope != null ? singleUpdateScope.hashCode() : 0)) * 37;
        EndToEndScope endToEndScope = this.end_to_end;
        int iHashCode3 = (iHashCode2 + (endToEndScope != null ? endToEndScope.hashCode() : 0)) * 37;
        UpdatesFlowScope updatesFlowScope = this.updater_state;
        int iHashCode4 = iHashCode3 + (updatesFlowScope != null ? updatesFlowScope.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.stage != null) {
            arrayList.add("stage=" + this.stage);
        }
        if (this.end_to_end != null) {
            arrayList.add("end_to_end=" + this.end_to_end);
        }
        if (this.updater_state != null) {
            arrayList.add("updater_state=" + this.updater_state);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "UpdatesDomain{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ UpdatesDomain copy$default(UpdatesDomain updatesDomain, SingleUpdateScope singleUpdateScope, EndToEndScope endToEndScope, UpdatesFlowScope updatesFlowScope, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            singleUpdateScope = updatesDomain.stage;
        }
        if ((i & 2) != 0) {
            endToEndScope = updatesDomain.end_to_end;
        }
        if ((i & 4) != 0) {
            updatesFlowScope = updatesDomain.updater_state;
        }
        if ((i & 8) != 0) {
            byteString = updatesDomain.unknownFields();
        }
        return updatesDomain.copy(singleUpdateScope, endToEndScope, updatesFlowScope, byteString);
    }

    public final UpdatesDomain copy(SingleUpdateScope stage, EndToEndScope end_to_end, UpdatesFlowScope updater_state, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UpdatesDomain(stage, end_to_end, updater_state, unknownFields);
    }

    /* JADX INFO: compiled from: UpdatesDomain.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "()V", "end_to_end", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;", "stage", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;", "updater_state", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UpdatesDomain, Builder> {
        public EndToEndScope end_to_end;
        public SingleUpdateScope stage;
        public UpdatesFlowScope updater_state;

        public final Builder stage(SingleUpdateScope stage) {
            this.stage = stage;
            this.end_to_end = null;
            this.updater_state = null;
            return this;
        }

        public final Builder end_to_end(EndToEndScope end_to_end) {
            this.end_to_end = end_to_end;
            this.stage = null;
            this.updater_state = null;
            return this;
        }

        public final Builder updater_state(UpdatesFlowScope updater_state) {
            this.updater_state = updater_state;
            this.stage = null;
            this.end_to_end = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UpdatesDomain build() {
            return new UpdatesDomain(this.stage, this.end_to_end, this.updater_state, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UpdatesDomain.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UpdatesDomain build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UpdatesDomain.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UpdatesDomain>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UpdatesDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + SingleUpdateScope.ADAPTER.encodedSizeWithTag(1, value.stage) + EndToEndScope.ADAPTER.encodedSizeWithTag(2, value.end_to_end) + UpdatesFlowScope.ADAPTER.encodedSizeWithTag(3, value.updater_state);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UpdatesDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                SingleUpdateScope.ADAPTER.encodeWithTag(writer, 1, value.stage);
                EndToEndScope.ADAPTER.encodeWithTag(writer, 2, value.end_to_end);
                UpdatesFlowScope.ADAPTER.encodeWithTag(writer, 3, value.updater_state);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UpdatesDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                UpdatesFlowScope.ADAPTER.encodeWithTag(writer, 3, value.updater_state);
                EndToEndScope.ADAPTER.encodeWithTag(writer, 2, value.end_to_end);
                SingleUpdateScope.ADAPTER.encodeWithTag(writer, 1, value.stage);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UpdatesDomain redact(UpdatesDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SingleUpdateScope singleUpdateScope = value.stage;
                SingleUpdateScope singleUpdateScopeRedact = singleUpdateScope != null ? SingleUpdateScope.ADAPTER.redact(singleUpdateScope) : null;
                EndToEndScope endToEndScope = value.end_to_end;
                EndToEndScope endToEndScopeRedact = endToEndScope != null ? EndToEndScope.ADAPTER.redact(endToEndScope) : null;
                UpdatesFlowScope updatesFlowScope = value.updater_state;
                return value.copy(singleUpdateScopeRedact, endToEndScopeRedact, updatesFlowScope != null ? UpdatesFlowScope.ADAPTER.redact(updatesFlowScope) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UpdatesDomain decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                SingleUpdateScope singleUpdateScopeDecode = null;
                EndToEndScope endToEndScopeDecode = null;
                UpdatesFlowScope updatesFlowScopeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new UpdatesDomain(singleUpdateScopeDecode, endToEndScopeDecode, updatesFlowScopeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        singleUpdateScopeDecode = SingleUpdateScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        endToEndScopeDecode = EndToEndScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        updatesFlowScopeDecode = UpdatesFlowScope.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
