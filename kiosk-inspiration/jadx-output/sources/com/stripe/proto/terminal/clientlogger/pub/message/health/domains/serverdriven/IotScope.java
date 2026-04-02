package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.serverdriven;

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

/* JADX INFO: compiled from: IotScope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/IotScope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/IotScope$Builder;", "iot_message_dispatched", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "iot_message_processed", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IotScope extends Message<IotScope, Builder> {
    public static final ProtoAdapter<IotScope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "iotMessageDispatched", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final Timer iot_message_dispatched;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "iotMessageProcessed", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final Timer iot_message_processed;

    public IotScope() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ IotScope(Timer timer, Timer timer2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : timer, (i & 2) != 0 ? null : timer2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IotScope(Timer timer, Timer timer2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.iot_message_dispatched = timer;
        this.iot_message_processed = timer2;
        if (Internal.countNonNull(timer, timer2) > 1) {
            throw new IllegalArgumentException("At most one of iot_message_dispatched, iot_message_processed may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.iot_message_dispatched = this.iot_message_dispatched;
        builder.iot_message_processed = this.iot_message_processed;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof IotScope)) {
            return false;
        }
        IotScope iotScope = (IotScope) other;
        return Intrinsics.areEqual(unknownFields(), iotScope.unknownFields()) && Intrinsics.areEqual(this.iot_message_dispatched, iotScope.iot_message_dispatched) && Intrinsics.areEqual(this.iot_message_processed, iotScope.iot_message_processed);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Timer timer = this.iot_message_dispatched;
        int iHashCode2 = (iHashCode + (timer != null ? timer.hashCode() : 0)) * 37;
        Timer timer2 = this.iot_message_processed;
        int iHashCode3 = iHashCode2 + (timer2 != null ? timer2.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.iot_message_dispatched != null) {
            arrayList.add("iot_message_dispatched=" + this.iot_message_dispatched);
        }
        if (this.iot_message_processed != null) {
            arrayList.add("iot_message_processed=" + this.iot_message_processed);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "IotScope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ IotScope copy$default(IotScope iotScope, Timer timer, Timer timer2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            timer = iotScope.iot_message_dispatched;
        }
        if ((i & 2) != 0) {
            timer2 = iotScope.iot_message_processed;
        }
        if ((i & 4) != 0) {
            byteString = iotScope.unknownFields();
        }
        return iotScope.copy(timer, timer2, byteString);
    }

    public final IotScope copy(Timer iot_message_dispatched, Timer iot_message_processed, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new IotScope(iot_message_dispatched, iot_message_processed, unknownFields);
    }

    /* JADX INFO: compiled from: IotScope.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/IotScope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/IotScope;", "()V", "iot_message_dispatched", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "iot_message_processed", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<IotScope, Builder> {
        public Timer iot_message_dispatched;
        public Timer iot_message_processed;

        public final Builder iot_message_dispatched(Timer iot_message_dispatched) {
            this.iot_message_dispatched = iot_message_dispatched;
            this.iot_message_processed = null;
            return this;
        }

        public final Builder iot_message_processed(Timer iot_message_processed) {
            this.iot_message_processed = iot_message_processed;
            this.iot_message_dispatched = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public IotScope build() {
            return new IotScope(this.iot_message_dispatched, this.iot_message_processed, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: IotScope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/IotScope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/IotScope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/IotScope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ IotScope build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(IotScope.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<IotScope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.serverdriven.IotScope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(IotScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Timer.ADAPTER.encodedSizeWithTag(1, value.iot_message_dispatched) + Timer.ADAPTER.encodedSizeWithTag(2, value.iot_message_processed);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, IotScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Timer.ADAPTER.encodeWithTag(writer, 1, value.iot_message_dispatched);
                Timer.ADAPTER.encodeWithTag(writer, 2, value.iot_message_processed);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, IotScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Timer.ADAPTER.encodeWithTag(writer, 2, value.iot_message_processed);
                Timer.ADAPTER.encodeWithTag(writer, 1, value.iot_message_dispatched);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public IotScope redact(IotScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Timer timer = value.iot_message_dispatched;
                Timer timerRedact = timer != null ? Timer.ADAPTER.redact(timer) : null;
                Timer timer2 = value.iot_message_processed;
                return value.copy(timerRedact, timer2 != null ? Timer.ADAPTER.redact(timer2) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public IotScope decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Timer timerDecode = null;
                Timer timerDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new IotScope(timerDecode, timerDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        timerDecode = Timer.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        timerDecode2 = Timer.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
