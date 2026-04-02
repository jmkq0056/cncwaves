package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity;

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
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
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

/* JADX INFO: compiled from: UsbScope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;", "reconnection_attempt", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "unexpected_disconnect", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UsbScope extends Message<UsbScope, Builder> {
    public static final ProtoAdapter<UsbScope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "reconnectionAttempt", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final Timer reconnection_attempt;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "unexpectedDisconnect", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final Counter unexpected_disconnect;

    public UsbScope() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ UsbScope(Timer timer, Counter counter, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : timer, (i & 2) != 0 ? null : counter, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UsbScope(Timer timer, Counter counter, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.reconnection_attempt = timer;
        this.unexpected_disconnect = counter;
        if (Internal.countNonNull(timer, counter) > 1) {
            throw new IllegalArgumentException("At most one of reconnection_attempt, unexpected_disconnect may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.reconnection_attempt = this.reconnection_attempt;
        builder.unexpected_disconnect = this.unexpected_disconnect;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UsbScope)) {
            return false;
        }
        UsbScope usbScope = (UsbScope) other;
        return Intrinsics.areEqual(unknownFields(), usbScope.unknownFields()) && Intrinsics.areEqual(this.reconnection_attempt, usbScope.reconnection_attempt) && Intrinsics.areEqual(this.unexpected_disconnect, usbScope.unexpected_disconnect);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Timer timer = this.reconnection_attempt;
        int iHashCode2 = (iHashCode + (timer != null ? timer.hashCode() : 0)) * 37;
        Counter counter = this.unexpected_disconnect;
        int iHashCode3 = iHashCode2 + (counter != null ? counter.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.reconnection_attempt != null) {
            arrayList.add("reconnection_attempt=" + this.reconnection_attempt);
        }
        if (this.unexpected_disconnect != null) {
            arrayList.add("unexpected_disconnect=" + this.unexpected_disconnect);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "UsbScope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ UsbScope copy$default(UsbScope usbScope, Timer timer, Counter counter, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            timer = usbScope.reconnection_attempt;
        }
        if ((i & 2) != 0) {
            counter = usbScope.unexpected_disconnect;
        }
        if ((i & 4) != 0) {
            byteString = usbScope.unknownFields();
        }
        return usbScope.copy(timer, counter, byteString);
    }

    public final UsbScope copy(Timer reconnection_attempt, Counter unexpected_disconnect, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UsbScope(reconnection_attempt, unexpected_disconnect, unknownFields);
    }

    /* JADX INFO: compiled from: UsbScope.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;", "()V", "reconnection_attempt", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "unexpected_disconnect", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UsbScope, Builder> {
        public Timer reconnection_attempt;
        public Counter unexpected_disconnect;

        public final Builder reconnection_attempt(Timer reconnection_attempt) {
            this.reconnection_attempt = reconnection_attempt;
            this.unexpected_disconnect = null;
            return this;
        }

        public final Builder unexpected_disconnect(Counter unexpected_disconnect) {
            this.unexpected_disconnect = unexpected_disconnect;
            this.reconnection_attempt = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UsbScope build() {
            return new UsbScope(this.reconnection_attempt, this.unexpected_disconnect, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UsbScope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UsbScope build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UsbScope.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UsbScope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.UsbScope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UsbScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Timer.ADAPTER.encodedSizeWithTag(1, value.reconnection_attempt) + Counter.ADAPTER.encodedSizeWithTag(2, value.unexpected_disconnect);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UsbScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Timer.ADAPTER.encodeWithTag(writer, 1, value.reconnection_attempt);
                Counter.ADAPTER.encodeWithTag(writer, 2, value.unexpected_disconnect);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UsbScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Counter.ADAPTER.encodeWithTag(writer, 2, value.unexpected_disconnect);
                Timer.ADAPTER.encodeWithTag(writer, 1, value.reconnection_attempt);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UsbScope redact(UsbScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Timer timer = value.reconnection_attempt;
                Timer timerRedact = timer != null ? Timer.ADAPTER.redact(timer) : null;
                Counter counter = value.unexpected_disconnect;
                return value.copy(timerRedact, counter != null ? Counter.ADAPTER.redact(counter) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UsbScope decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Timer timerDecode = null;
                Counter counterDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new UsbScope(timerDecode, counterDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        timerDecode = Timer.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        counterDecode = Counter.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
