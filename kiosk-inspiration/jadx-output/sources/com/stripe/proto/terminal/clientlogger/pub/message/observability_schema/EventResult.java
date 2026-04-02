package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
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
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: EventResult.kt */
/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBO\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJU\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;", "domain", "", "scope", NotificationCompat.CATEGORY_EVENT, "outcome", TypedValues.TransitionType.S_DURATION, "", "measurement", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EventResult extends Message<EventResult, Builder> {
    public static final ProtoAdapter<EventResult> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String domain;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 4, tag = 6)
    public final Long duration;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String event;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 5, tag = 7)
    public final Long measurement;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 5)
    public final String outcome;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String scope;

    public EventResult() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ EventResult(String str, String str2, String str3, String str4, Long l, Long l2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? null : l, (i & 32) != 0 ? null : l2, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventResult(String domain, String scope, String event, String outcome, Long l, Long l2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.domain = domain;
        this.scope = scope;
        this.event = event;
        this.outcome = outcome;
        this.duration = l;
        this.measurement = l2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.domain = this.domain;
        builder.scope = this.scope;
        builder.event = this.event;
        builder.outcome = this.outcome;
        builder.duration = this.duration;
        builder.measurement = this.measurement;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof EventResult)) {
            return false;
        }
        EventResult eventResult = (EventResult) other;
        return Intrinsics.areEqual(unknownFields(), eventResult.unknownFields()) && Intrinsics.areEqual(this.domain, eventResult.domain) && Intrinsics.areEqual(this.scope, eventResult.scope) && Intrinsics.areEqual(this.event, eventResult.event) && Intrinsics.areEqual(this.outcome, eventResult.outcome) && Intrinsics.areEqual(this.duration, eventResult.duration) && Intrinsics.areEqual(this.measurement, eventResult.measurement);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((unknownFields().hashCode() * 37) + this.domain.hashCode()) * 37) + this.scope.hashCode()) * 37) + this.event.hashCode()) * 37) + this.outcome.hashCode()) * 37;
        Long l = this.duration;
        int iHashCode2 = (iHashCode + (l != null ? l.hashCode() : 0)) * 37;
        Long l2 = this.measurement;
        int iHashCode3 = iHashCode2 + (l2 != null ? l2.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("domain=" + Internal.sanitize(this.domain));
        arrayList2.add("scope=" + Internal.sanitize(this.scope));
        arrayList2.add("event=" + Internal.sanitize(this.event));
        arrayList2.add("outcome=" + Internal.sanitize(this.outcome));
        if (this.duration != null) {
            arrayList2.add("duration=" + this.duration);
        }
        if (this.measurement != null) {
            arrayList2.add("measurement=" + this.measurement);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "EventResult{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ EventResult copy$default(EventResult eventResult, String str, String str2, String str3, String str4, Long l, Long l2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = eventResult.domain;
        }
        if ((i & 2) != 0) {
            str2 = eventResult.scope;
        }
        if ((i & 4) != 0) {
            str3 = eventResult.event;
        }
        if ((i & 8) != 0) {
            str4 = eventResult.outcome;
        }
        if ((i & 16) != 0) {
            l = eventResult.duration;
        }
        if ((i & 32) != 0) {
            l2 = eventResult.measurement;
        }
        if ((i & 64) != 0) {
            byteString = eventResult.unknownFields();
        }
        Long l3 = l2;
        ByteString byteString2 = byteString;
        Long l4 = l;
        String str5 = str3;
        return eventResult.copy(str, str2, str5, str4, l4, l3, byteString2);
    }

    public final EventResult copy(String domain, String scope, String event, String outcome, Long duration, Long measurement, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new EventResult(domain, scope, event, outcome, duration, measurement, unknownFields);
    }

    /* JADX INFO: compiled from: EventResult.kt */
    @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0015\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000eJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u0015\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000eJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;", "()V", "domain", "", TypedValues.TransitionType.S_DURATION, "", "Ljava/lang/Long;", NotificationCompat.CATEGORY_EVENT, "measurement", "outcome", "scope", "build", "(Ljava/lang/Long;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<EventResult, Builder> {
        public Long duration;
        public Long measurement;
        public String domain = "";
        public String scope = "";
        public String event = "";
        public String outcome = "";

        public final Builder domain(String domain) {
            Intrinsics.checkNotNullParameter(domain, "domain");
            this.domain = domain;
            return this;
        }

        public final Builder scope(String scope) {
            Intrinsics.checkNotNullParameter(scope, "scope");
            this.scope = scope;
            return this;
        }

        public final Builder event(String event) {
            Intrinsics.checkNotNullParameter(event, "event");
            this.event = event;
            return this;
        }

        public final Builder outcome(String outcome) {
            Intrinsics.checkNotNullParameter(outcome, "outcome");
            this.outcome = outcome;
            return this;
        }

        public final Builder duration(Long duration) {
            this.duration = duration;
            return this;
        }

        public final Builder measurement(Long measurement) {
            this.measurement = measurement;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public EventResult build() {
            return new EventResult(this.domain, this.scope, this.event, this.outcome, this.duration, this.measurement, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: EventResult.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ EventResult build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EventResult.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<EventResult>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.EventResult$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(EventResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.domain, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.domain);
                }
                if (!Intrinsics.areEqual(value.scope, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.scope);
                }
                if (!Intrinsics.areEqual(value.event, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.event);
                }
                if (!Intrinsics.areEqual(value.outcome, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.outcome);
                }
                if (value.duration != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(6, value.duration);
                }
                return value.measurement != null ? size + ProtoAdapter.INT64_VALUE.encodedSizeWithTag(7, value.measurement) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, EventResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.domain, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.domain);
                }
                if (!Intrinsics.areEqual(value.scope, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.scope);
                }
                if (!Intrinsics.areEqual(value.event, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.event);
                }
                if (!Intrinsics.areEqual(value.outcome, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.outcome);
                }
                if (value.duration != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 6, value.duration);
                }
                if (value.measurement != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 7, value.measurement);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, EventResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.measurement != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 7, value.measurement);
                }
                if (value.duration != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 6, value.duration);
                }
                if (!Intrinsics.areEqual(value.outcome, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.outcome);
                }
                if (!Intrinsics.areEqual(value.event, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.event);
                }
                if (!Intrinsics.areEqual(value.scope, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.scope);
                }
                if (Intrinsics.areEqual(value.domain, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.domain);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public EventResult redact(EventResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Long l = value.duration;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                Long l2 = value.measurement;
                return EventResult.copy$default(value, null, null, null, null, lRedact, l2 != null ? ProtoAdapter.INT64_VALUE.redact(l2) : null, ByteString.EMPTY, 15, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public EventResult decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                Long lDecode = null;
                Long lDecode2 = null;
                String strDecode4 = strDecode3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new EventResult(strDecode, strDecode4, strDecode2, strDecode3, lDecode, lDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode4 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 5) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 6) {
                        lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                    } else if (iNextTag == 7) {
                        lDecode2 = ProtoAdapter.INT64_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
