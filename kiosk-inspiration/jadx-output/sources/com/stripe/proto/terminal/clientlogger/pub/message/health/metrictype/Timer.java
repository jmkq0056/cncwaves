package com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: Timer.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J!\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer$Builder;", "duration_millis", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Long;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/Long;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Timer extends Message<Timer, Builder> {
    public static final ProtoAdapter<Timer> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "durationMillis", schemaIndex = 0, tag = 1)
    public final Long duration_millis;

    /* JADX WARN: Multi-variable type inference failed */
    public Timer() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ Timer(Long l, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Timer(Long l, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.duration_millis = l;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.duration_millis = this.duration_millis;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Timer)) {
            return false;
        }
        Timer timer = (Timer) other;
        return Intrinsics.areEqual(unknownFields(), timer.unknownFields()) && Intrinsics.areEqual(this.duration_millis, timer.duration_millis);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Long l = this.duration_millis;
        int iHashCode2 = iHashCode + (l != null ? l.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.duration_millis != null) {
            arrayList.add("duration_millis=" + this.duration_millis);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Timer{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Timer copy$default(Timer timer, Long l, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            l = timer.duration_millis;
        }
        if ((i & 2) != 0) {
            byteString = timer.unknownFields();
        }
        return timer.copy(l, byteString);
    }

    public final Timer copy(Long duration_millis, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Timer(duration_millis, unknownFields);
    }

    /* JADX INFO: compiled from: Timer.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "()V", "duration_millis", "", "Ljava/lang/Long;", "build", "(Ljava/lang/Long;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer$Builder;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Timer, Builder> {
        public Long duration_millis;

        public final Builder duration_millis(Long duration_millis) {
            this.duration_millis = duration_millis;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Timer build() {
            return new Timer(this.duration_millis, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Timer.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Timer build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Timer.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Timer>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Timer value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.duration_millis != null ? size + ProtoAdapter.INT64_VALUE.encodedSizeWithTag(1, value.duration_millis) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Timer value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.duration_millis != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 1, value.duration_millis);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Timer value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.duration_millis != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 1, value.duration_millis);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Timer redact(Timer value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Long l = value.duration_millis;
                return value.copy(l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Timer decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Long lDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new Timer(lDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
