package com.stripe.proto.terminal.terminal.pub.message.config;

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

/* JADX INFO: compiled from: UsbAutoReconnectConfigPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ.\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;", "max_timeout_seconds", "", "max_retry_attempts", "attempt_delay_millis", "", "unknownFields", "Lokio/ByteString;", "(IIJLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UsbAutoReconnectConfigPb extends Message<UsbAutoReconnectConfigPb, Builder> {
    public static final ProtoAdapter<UsbAutoReconnectConfigPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "attemptDelayMillis", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final long attempt_delay_millis;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "maxRetryAttempts", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final int max_retry_attempts;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "maxTimeoutSeconds", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final int max_timeout_seconds;

    public UsbAutoReconnectConfigPb() {
        this(0, 0, 0L, null, 15, null);
    }

    public /* synthetic */ UsbAutoReconnectConfigPb(int i, int i2, long j, ByteString byteString, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? 0L : j, (i3 & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UsbAutoReconnectConfigPb(int i, int i2, long j, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.max_timeout_seconds = i;
        this.max_retry_attempts = i2;
        this.attempt_delay_millis = j;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.max_timeout_seconds = this.max_timeout_seconds;
        builder.max_retry_attempts = this.max_retry_attempts;
        builder.attempt_delay_millis = this.attempt_delay_millis;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UsbAutoReconnectConfigPb)) {
            return false;
        }
        UsbAutoReconnectConfigPb usbAutoReconnectConfigPb = (UsbAutoReconnectConfigPb) other;
        return Intrinsics.areEqual(unknownFields(), usbAutoReconnectConfigPb.unknownFields()) && this.max_timeout_seconds == usbAutoReconnectConfigPb.max_timeout_seconds && this.max_retry_attempts == usbAutoReconnectConfigPb.max_retry_attempts && this.attempt_delay_millis == usbAutoReconnectConfigPb.attempt_delay_millis;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + Integer.hashCode(this.max_timeout_seconds)) * 37) + Integer.hashCode(this.max_retry_attempts)) * 37) + Long.hashCode(this.attempt_delay_millis);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("max_timeout_seconds=" + this.max_timeout_seconds);
        arrayList2.add("max_retry_attempts=" + this.max_retry_attempts);
        arrayList2.add("attempt_delay_millis=" + this.attempt_delay_millis);
        return CollectionsKt.joinToString$default(arrayList, ", ", "UsbAutoReconnectConfigPb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ UsbAutoReconnectConfigPb copy$default(UsbAutoReconnectConfigPb usbAutoReconnectConfigPb, int i, int i2, long j, ByteString byteString, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = usbAutoReconnectConfigPb.max_timeout_seconds;
        }
        if ((i3 & 2) != 0) {
            i2 = usbAutoReconnectConfigPb.max_retry_attempts;
        }
        if ((i3 & 4) != 0) {
            j = usbAutoReconnectConfigPb.attempt_delay_millis;
        }
        if ((i3 & 8) != 0) {
            byteString = usbAutoReconnectConfigPb.unknownFields();
        }
        ByteString byteString2 = byteString;
        return usbAutoReconnectConfigPb.copy(i, i2, j, byteString2);
    }

    public final UsbAutoReconnectConfigPb copy(int max_timeout_seconds, int max_retry_attempts, long attempt_delay_millis, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UsbAutoReconnectConfigPb(max_timeout_seconds, max_retry_attempts, attempt_delay_millis, unknownFields);
    }

    /* JADX INFO: compiled from: UsbAutoReconnectConfigPb.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "()V", "attempt_delay_millis", "", "max_retry_attempts", "", "max_timeout_seconds", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UsbAutoReconnectConfigPb, Builder> {
        public long attempt_delay_millis;
        public int max_retry_attempts;
        public int max_timeout_seconds;

        public final Builder max_timeout_seconds(int max_timeout_seconds) {
            this.max_timeout_seconds = max_timeout_seconds;
            return this;
        }

        public final Builder max_retry_attempts(int max_retry_attempts) {
            this.max_retry_attempts = max_retry_attempts;
            return this;
        }

        public final Builder attempt_delay_millis(long attempt_delay_millis) {
            this.attempt_delay_millis = attempt_delay_millis;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UsbAutoReconnectConfigPb build() {
            return new UsbAutoReconnectConfigPb(this.max_timeout_seconds, this.max_retry_attempts, this.attempt_delay_millis, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UsbAutoReconnectConfigPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UsbAutoReconnectConfigPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UsbAutoReconnectConfigPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UsbAutoReconnectConfigPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UsbAutoReconnectConfigPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.max_timeout_seconds != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.max_timeout_seconds));
                }
                if (value.max_retry_attempts != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.max_retry_attempts));
                }
                return value.attempt_delay_millis != 0 ? size + ProtoAdapter.INT64.encodedSizeWithTag(3, Long.valueOf(value.attempt_delay_millis)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UsbAutoReconnectConfigPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.max_timeout_seconds != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.max_timeout_seconds));
                }
                if (value.max_retry_attempts != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.max_retry_attempts));
                }
                if (value.attempt_delay_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 3, Long.valueOf(value.attempt_delay_millis));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UsbAutoReconnectConfigPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.attempt_delay_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 3, Long.valueOf(value.attempt_delay_millis));
                }
                if (value.max_retry_attempts != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.max_retry_attempts));
                }
                if (value.max_timeout_seconds != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.max_timeout_seconds));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UsbAutoReconnectConfigPb redact(UsbAutoReconnectConfigPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return UsbAutoReconnectConfigPb.copy$default(value, 0, 0, 0L, ByteString.EMPTY, 7, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UsbAutoReconnectConfigPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                int iIntValue = 0;
                int iIntValue2 = 0;
                long jLongValue = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new UsbAutoReconnectConfigPb(iIntValue, iIntValue2, jLongValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                    } else if (iNextTag == 2) {
                        iIntValue2 = ProtoAdapter.INT32.decode(reader).intValue();
                    } else if (iNextTag == 3) {
                        jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
