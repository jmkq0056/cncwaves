package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos;

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

/* JADX INFO: compiled from: ReaderScope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018BK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJL\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;", "on_unpaired_error", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "connect_reader", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "disconnect_reader", "sign_data", "request_reader_info", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderScope extends Message<ReaderScope, Builder> {
    public static final ProtoAdapter<ReaderScope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "connectReader", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final Timer connect_reader;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "disconnectReader", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 2, tag = 3)
    public final Timer disconnect_reader;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "onUnpairedError", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final Counter on_unpaired_error;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "requestReaderInfo", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 4, tag = 5)
    public final Timer request_reader_info;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "signData", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 3, tag = 4)
    public final Timer sign_data;

    public ReaderScope() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ ReaderScope(Counter counter, Timer timer, Timer timer2, Timer timer3, Timer timer4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : counter, (i & 2) != 0 ? null : timer, (i & 4) != 0 ? null : timer2, (i & 8) != 0 ? null : timer3, (i & 16) != 0 ? null : timer4, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReaderScope(Counter counter, Timer timer, Timer timer2, Timer timer3, Timer timer4, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.on_unpaired_error = counter;
        this.connect_reader = timer;
        this.disconnect_reader = timer2;
        this.sign_data = timer3;
        this.request_reader_info = timer4;
        if (Internal.countNonNull(counter, timer, timer2, timer3, timer4) > 1) {
            throw new IllegalArgumentException("At most one of on_unpaired_error, connect_reader, disconnect_reader, sign_data, request_reader_info may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.on_unpaired_error = this.on_unpaired_error;
        builder.connect_reader = this.connect_reader;
        builder.disconnect_reader = this.disconnect_reader;
        builder.sign_data = this.sign_data;
        builder.request_reader_info = this.request_reader_info;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReaderScope)) {
            return false;
        }
        ReaderScope readerScope = (ReaderScope) other;
        return Intrinsics.areEqual(unknownFields(), readerScope.unknownFields()) && Intrinsics.areEqual(this.on_unpaired_error, readerScope.on_unpaired_error) && Intrinsics.areEqual(this.connect_reader, readerScope.connect_reader) && Intrinsics.areEqual(this.disconnect_reader, readerScope.disconnect_reader) && Intrinsics.areEqual(this.sign_data, readerScope.sign_data) && Intrinsics.areEqual(this.request_reader_info, readerScope.request_reader_info);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Counter counter = this.on_unpaired_error;
        int iHashCode2 = (iHashCode + (counter != null ? counter.hashCode() : 0)) * 37;
        Timer timer = this.connect_reader;
        int iHashCode3 = (iHashCode2 + (timer != null ? timer.hashCode() : 0)) * 37;
        Timer timer2 = this.disconnect_reader;
        int iHashCode4 = (iHashCode3 + (timer2 != null ? timer2.hashCode() : 0)) * 37;
        Timer timer3 = this.sign_data;
        int iHashCode5 = (iHashCode4 + (timer3 != null ? timer3.hashCode() : 0)) * 37;
        Timer timer4 = this.request_reader_info;
        int iHashCode6 = iHashCode5 + (timer4 != null ? timer4.hashCode() : 0);
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.on_unpaired_error != null) {
            arrayList.add("on_unpaired_error=" + this.on_unpaired_error);
        }
        if (this.connect_reader != null) {
            arrayList.add("connect_reader=" + this.connect_reader);
        }
        if (this.disconnect_reader != null) {
            arrayList.add("disconnect_reader=" + this.disconnect_reader);
        }
        if (this.sign_data != null) {
            arrayList.add("sign_data=" + this.sign_data);
        }
        if (this.request_reader_info != null) {
            arrayList.add("request_reader_info=" + this.request_reader_info);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReaderScope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReaderScope copy$default(ReaderScope readerScope, Counter counter, Timer timer, Timer timer2, Timer timer3, Timer timer4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            counter = readerScope.on_unpaired_error;
        }
        if ((i & 2) != 0) {
            timer = readerScope.connect_reader;
        }
        if ((i & 4) != 0) {
            timer2 = readerScope.disconnect_reader;
        }
        if ((i & 8) != 0) {
            timer3 = readerScope.sign_data;
        }
        if ((i & 16) != 0) {
            timer4 = readerScope.request_reader_info;
        }
        if ((i & 32) != 0) {
            byteString = readerScope.unknownFields();
        }
        Timer timer5 = timer4;
        ByteString byteString2 = byteString;
        return readerScope.copy(counter, timer, timer2, timer3, timer5, byteString2);
    }

    public final ReaderScope copy(Counter on_unpaired_error, Timer connect_reader, Timer disconnect_reader, Timer sign_data, Timer request_reader_info, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReaderScope(on_unpaired_error, connect_reader, disconnect_reader, sign_data, request_reader_info, unknownFields);
    }

    /* JADX INFO: compiled from: ReaderScope.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;", "()V", "connect_reader", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "disconnect_reader", "on_unpaired_error", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "request_reader_info", "sign_data", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReaderScope, Builder> {
        public Timer connect_reader;
        public Timer disconnect_reader;
        public Counter on_unpaired_error;
        public Timer request_reader_info;
        public Timer sign_data;

        public final Builder on_unpaired_error(Counter on_unpaired_error) {
            this.on_unpaired_error = on_unpaired_error;
            this.connect_reader = null;
            this.disconnect_reader = null;
            this.sign_data = null;
            this.request_reader_info = null;
            return this;
        }

        public final Builder connect_reader(Timer connect_reader) {
            this.connect_reader = connect_reader;
            this.on_unpaired_error = null;
            this.disconnect_reader = null;
            this.sign_data = null;
            this.request_reader_info = null;
            return this;
        }

        public final Builder disconnect_reader(Timer disconnect_reader) {
            this.disconnect_reader = disconnect_reader;
            this.on_unpaired_error = null;
            this.connect_reader = null;
            this.sign_data = null;
            this.request_reader_info = null;
            return this;
        }

        public final Builder sign_data(Timer sign_data) {
            this.sign_data = sign_data;
            this.on_unpaired_error = null;
            this.connect_reader = null;
            this.disconnect_reader = null;
            this.request_reader_info = null;
            return this;
        }

        public final Builder request_reader_info(Timer request_reader_info) {
            this.request_reader_info = request_reader_info;
            this.on_unpaired_error = null;
            this.connect_reader = null;
            this.disconnect_reader = null;
            this.sign_data = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReaderScope build() {
            return new ReaderScope(this.on_unpaired_error, this.connect_reader, this.disconnect_reader, this.sign_data, this.request_reader_info, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReaderScope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReaderScope build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReaderScope.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReaderScope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReaderScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Counter.ADAPTER.encodedSizeWithTag(1, value.on_unpaired_error) + Timer.ADAPTER.encodedSizeWithTag(2, value.connect_reader) + Timer.ADAPTER.encodedSizeWithTag(3, value.disconnect_reader) + Timer.ADAPTER.encodedSizeWithTag(4, value.sign_data) + Timer.ADAPTER.encodedSizeWithTag(5, value.request_reader_info);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReaderScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Counter.ADAPTER.encodeWithTag(writer, 1, value.on_unpaired_error);
                Timer.ADAPTER.encodeWithTag(writer, 2, value.connect_reader);
                Timer.ADAPTER.encodeWithTag(writer, 3, value.disconnect_reader);
                Timer.ADAPTER.encodeWithTag(writer, 4, value.sign_data);
                Timer.ADAPTER.encodeWithTag(writer, 5, value.request_reader_info);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReaderScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Timer.ADAPTER.encodeWithTag(writer, 5, value.request_reader_info);
                Timer.ADAPTER.encodeWithTag(writer, 4, value.sign_data);
                Timer.ADAPTER.encodeWithTag(writer, 3, value.disconnect_reader);
                Timer.ADAPTER.encodeWithTag(writer, 2, value.connect_reader);
                Counter.ADAPTER.encodeWithTag(writer, 1, value.on_unpaired_error);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReaderScope redact(ReaderScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Counter counter = value.on_unpaired_error;
                Counter counterRedact = counter != null ? Counter.ADAPTER.redact(counter) : null;
                Timer timer = value.connect_reader;
                Timer timerRedact = timer != null ? Timer.ADAPTER.redact(timer) : null;
                Timer timer2 = value.disconnect_reader;
                Timer timerRedact2 = timer2 != null ? Timer.ADAPTER.redact(timer2) : null;
                Timer timer3 = value.sign_data;
                Timer timerRedact3 = timer3 != null ? Timer.ADAPTER.redact(timer3) : null;
                Timer timer4 = value.request_reader_info;
                return value.copy(counterRedact, timerRedact, timerRedact2, timerRedact3, timer4 != null ? Timer.ADAPTER.redact(timer4) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReaderScope decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Counter counterDecode = null;
                Timer timerDecode = null;
                Timer timerDecode2 = null;
                Timer timerDecode3 = null;
                Timer timerDecode4 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ReaderScope(counterDecode, timerDecode, timerDecode2, timerDecode3, timerDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        counterDecode = Counter.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        timerDecode = Timer.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        timerDecode2 = Timer.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        timerDecode3 = Timer.ADAPTER.decode(reader);
                    } else if (iNextTag == 5) {
                        timerDecode4 = Timer.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
