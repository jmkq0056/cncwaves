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

/* JADX INFO: compiled from: BbposSdkScope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B?\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ@\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;", "serial_port_callback_error", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "missing_key", "serial_port_state_machine_connection", "device_reset_callback", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposSdkScope extends Message<BbposSdkScope, Builder> {
    public static final ProtoAdapter<BbposSdkScope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "deviceResetCallback", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 3, tag = 4)
    public final Counter device_reset_callback;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "missingKey", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final Counter missing_key;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "serialPortCallbackError", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final Counter serial_port_callback_error;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "serialPortStateMachineConnection", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 2, tag = 3)
    public final Counter serial_port_state_machine_connection;

    public BbposSdkScope() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ BbposSdkScope(Counter counter, Counter counter2, Counter counter3, Counter counter4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : counter, (i & 2) != 0 ? null : counter2, (i & 4) != 0 ? null : counter3, (i & 8) != 0 ? null : counter4, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BbposSdkScope(Counter counter, Counter counter2, Counter counter3, Counter counter4, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.serial_port_callback_error = counter;
        this.missing_key = counter2;
        this.serial_port_state_machine_connection = counter3;
        this.device_reset_callback = counter4;
        if (Internal.countNonNull(counter, counter2, counter3, counter4, new Object[0]) > 1) {
            throw new IllegalArgumentException("At most one of serial_port_callback_error, missing_key, serial_port_state_machine_connection, device_reset_callback may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.serial_port_callback_error = this.serial_port_callback_error;
        builder.missing_key = this.missing_key;
        builder.serial_port_state_machine_connection = this.serial_port_state_machine_connection;
        builder.device_reset_callback = this.device_reset_callback;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof BbposSdkScope)) {
            return false;
        }
        BbposSdkScope bbposSdkScope = (BbposSdkScope) other;
        return Intrinsics.areEqual(unknownFields(), bbposSdkScope.unknownFields()) && Intrinsics.areEqual(this.serial_port_callback_error, bbposSdkScope.serial_port_callback_error) && Intrinsics.areEqual(this.missing_key, bbposSdkScope.missing_key) && Intrinsics.areEqual(this.serial_port_state_machine_connection, bbposSdkScope.serial_port_state_machine_connection) && Intrinsics.areEqual(this.device_reset_callback, bbposSdkScope.device_reset_callback);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Counter counter = this.serial_port_callback_error;
        int iHashCode2 = (iHashCode + (counter != null ? counter.hashCode() : 0)) * 37;
        Counter counter2 = this.missing_key;
        int iHashCode3 = (iHashCode2 + (counter2 != null ? counter2.hashCode() : 0)) * 37;
        Counter counter3 = this.serial_port_state_machine_connection;
        int iHashCode4 = (iHashCode3 + (counter3 != null ? counter3.hashCode() : 0)) * 37;
        Counter counter4 = this.device_reset_callback;
        int iHashCode5 = iHashCode4 + (counter4 != null ? counter4.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.serial_port_callback_error != null) {
            arrayList.add("serial_port_callback_error=" + this.serial_port_callback_error);
        }
        if (this.missing_key != null) {
            arrayList.add("missing_key=" + this.missing_key);
        }
        if (this.serial_port_state_machine_connection != null) {
            arrayList.add("serial_port_state_machine_connection=" + this.serial_port_state_machine_connection);
        }
        if (this.device_reset_callback != null) {
            arrayList.add("device_reset_callback=" + this.device_reset_callback);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "BbposSdkScope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ BbposSdkScope copy$default(BbposSdkScope bbposSdkScope, Counter counter, Counter counter2, Counter counter3, Counter counter4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            counter = bbposSdkScope.serial_port_callback_error;
        }
        if ((i & 2) != 0) {
            counter2 = bbposSdkScope.missing_key;
        }
        if ((i & 4) != 0) {
            counter3 = bbposSdkScope.serial_port_state_machine_connection;
        }
        if ((i & 8) != 0) {
            counter4 = bbposSdkScope.device_reset_callback;
        }
        if ((i & 16) != 0) {
            byteString = bbposSdkScope.unknownFields();
        }
        ByteString byteString2 = byteString;
        Counter counter5 = counter3;
        return bbposSdkScope.copy(counter, counter2, counter5, counter4, byteString2);
    }

    public final BbposSdkScope copy(Counter serial_port_callback_error, Counter missing_key, Counter serial_port_state_machine_connection, Counter device_reset_callback, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new BbposSdkScope(serial_port_callback_error, missing_key, serial_port_state_machine_connection, device_reset_callback, unknownFields);
    }

    /* JADX INFO: compiled from: BbposSdkScope.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;", "()V", "device_reset_callback", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "missing_key", "serial_port_callback_error", "serial_port_state_machine_connection", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<BbposSdkScope, Builder> {
        public Counter device_reset_callback;
        public Counter missing_key;
        public Counter serial_port_callback_error;
        public Counter serial_port_state_machine_connection;

        public final Builder serial_port_callback_error(Counter serial_port_callback_error) {
            this.serial_port_callback_error = serial_port_callback_error;
            this.missing_key = null;
            this.serial_port_state_machine_connection = null;
            this.device_reset_callback = null;
            return this;
        }

        public final Builder missing_key(Counter missing_key) {
            this.missing_key = missing_key;
            this.serial_port_callback_error = null;
            this.serial_port_state_machine_connection = null;
            this.device_reset_callback = null;
            return this;
        }

        public final Builder serial_port_state_machine_connection(Counter serial_port_state_machine_connection) {
            this.serial_port_state_machine_connection = serial_port_state_machine_connection;
            this.serial_port_callback_error = null;
            this.missing_key = null;
            this.device_reset_callback = null;
            return this;
        }

        public final Builder device_reset_callback(Counter device_reset_callback) {
            this.device_reset_callback = device_reset_callback;
            this.serial_port_callback_error = null;
            this.missing_key = null;
            this.serial_port_state_machine_connection = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public BbposSdkScope build() {
            return new BbposSdkScope(this.serial_port_callback_error, this.missing_key, this.serial_port_state_machine_connection, this.device_reset_callback, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: BbposSdkScope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ BbposSdkScope build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BbposSdkScope.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<BbposSdkScope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposSdkScope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(BbposSdkScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Counter.ADAPTER.encodedSizeWithTag(1, value.serial_port_callback_error) + Counter.ADAPTER.encodedSizeWithTag(2, value.missing_key) + Counter.ADAPTER.encodedSizeWithTag(3, value.serial_port_state_machine_connection) + Counter.ADAPTER.encodedSizeWithTag(4, value.device_reset_callback);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, BbposSdkScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Counter.ADAPTER.encodeWithTag(writer, 1, value.serial_port_callback_error);
                Counter.ADAPTER.encodeWithTag(writer, 2, value.missing_key);
                Counter.ADAPTER.encodeWithTag(writer, 3, value.serial_port_state_machine_connection);
                Counter.ADAPTER.encodeWithTag(writer, 4, value.device_reset_callback);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, BbposSdkScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Counter.ADAPTER.encodeWithTag(writer, 4, value.device_reset_callback);
                Counter.ADAPTER.encodeWithTag(writer, 3, value.serial_port_state_machine_connection);
                Counter.ADAPTER.encodeWithTag(writer, 2, value.missing_key);
                Counter.ADAPTER.encodeWithTag(writer, 1, value.serial_port_callback_error);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public BbposSdkScope redact(BbposSdkScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Counter counter = value.serial_port_callback_error;
                Counter counterRedact = counter != null ? Counter.ADAPTER.redact(counter) : null;
                Counter counter2 = value.missing_key;
                Counter counterRedact2 = counter2 != null ? Counter.ADAPTER.redact(counter2) : null;
                Counter counter3 = value.serial_port_state_machine_connection;
                Counter counterRedact3 = counter3 != null ? Counter.ADAPTER.redact(counter3) : null;
                Counter counter4 = value.device_reset_callback;
                return value.copy(counterRedact, counterRedact2, counterRedact3, counter4 != null ? Counter.ADAPTER.redact(counter4) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public BbposSdkScope decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Counter counterDecode = null;
                Counter counterDecode2 = null;
                Counter counterDecode3 = null;
                Counter counterDecode4 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new BbposSdkScope(counterDecode, counterDecode2, counterDecode3, counterDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        counterDecode = Counter.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        counterDecode2 = Counter.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        counterDecode3 = Counter.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        counterDecode4 = Counter.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
