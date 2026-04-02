package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device;

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

/* JADX INFO: compiled from: TamperModeEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;", "tamper_mode", "", "tamper_status", "tamper_time", "tamper_type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TamperModeEvent extends Message<TamperModeEvent, Builder> {
    public static final ProtoAdapter<TamperModeEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "tamperMode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String tamper_mode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "tamperStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String tamper_status;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "tamperTime", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String tamper_time;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.TamperType#ADAPTER", jsonName = "tamperType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final TamperType tamper_type;

    public TamperModeEvent() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ TamperModeEvent(String str, String str2, String str3, TamperType tamperType, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? TamperType.TAMPER_TYPE_INVALID : tamperType, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TamperModeEvent(String tamper_mode, String tamper_status, String tamper_time, TamperType tamper_type, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(tamper_mode, "tamper_mode");
        Intrinsics.checkNotNullParameter(tamper_status, "tamper_status");
        Intrinsics.checkNotNullParameter(tamper_time, "tamper_time");
        Intrinsics.checkNotNullParameter(tamper_type, "tamper_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.tamper_mode = tamper_mode;
        this.tamper_status = tamper_status;
        this.tamper_time = tamper_time;
        this.tamper_type = tamper_type;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.tamper_mode = this.tamper_mode;
        builder.tamper_status = this.tamper_status;
        builder.tamper_time = this.tamper_time;
        builder.tamper_type = this.tamper_type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof TamperModeEvent)) {
            return false;
        }
        TamperModeEvent tamperModeEvent = (TamperModeEvent) other;
        return Intrinsics.areEqual(unknownFields(), tamperModeEvent.unknownFields()) && Intrinsics.areEqual(this.tamper_mode, tamperModeEvent.tamper_mode) && Intrinsics.areEqual(this.tamper_status, tamperModeEvent.tamper_status) && Intrinsics.areEqual(this.tamper_time, tamperModeEvent.tamper_time) && this.tamper_type == tamperModeEvent.tamper_type;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.tamper_mode.hashCode()) * 37) + this.tamper_status.hashCode()) * 37) + this.tamper_time.hashCode()) * 37) + this.tamper_type.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("tamper_mode=" + Internal.sanitize(this.tamper_mode));
        arrayList2.add("tamper_status=" + Internal.sanitize(this.tamper_status));
        arrayList2.add("tamper_time=" + Internal.sanitize(this.tamper_time));
        arrayList2.add("tamper_type=" + this.tamper_type);
        return CollectionsKt.joinToString$default(arrayList, ", ", "TamperModeEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ TamperModeEvent copy$default(TamperModeEvent tamperModeEvent, String str, String str2, String str3, TamperType tamperType, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tamperModeEvent.tamper_mode;
        }
        if ((i & 2) != 0) {
            str2 = tamperModeEvent.tamper_status;
        }
        if ((i & 4) != 0) {
            str3 = tamperModeEvent.tamper_time;
        }
        if ((i & 8) != 0) {
            tamperType = tamperModeEvent.tamper_type;
        }
        if ((i & 16) != 0) {
            byteString = tamperModeEvent.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str4 = str3;
        return tamperModeEvent.copy(str, str2, str4, tamperType, byteString2);
    }

    public final TamperModeEvent copy(String tamper_mode, String tamper_status, String tamper_time, TamperType tamper_type, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(tamper_mode, "tamper_mode");
        Intrinsics.checkNotNullParameter(tamper_status, "tamper_status");
        Intrinsics.checkNotNullParameter(tamper_time, "tamper_time");
        Intrinsics.checkNotNullParameter(tamper_type, "tamper_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new TamperModeEvent(tamper_mode, tamper_status, tamper_time, tamper_type, unknownFields);
    }

    /* JADX INFO: compiled from: TamperModeEvent.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;", "()V", "tamper_mode", "", "tamper_status", "tamper_time", "tamper_type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<TamperModeEvent, Builder> {
        public String tamper_mode = "";
        public String tamper_status = "";
        public String tamper_time = "";
        public TamperType tamper_type = TamperType.TAMPER_TYPE_INVALID;

        public final Builder tamper_mode(String tamper_mode) {
            Intrinsics.checkNotNullParameter(tamper_mode, "tamper_mode");
            this.tamper_mode = tamper_mode;
            return this;
        }

        public final Builder tamper_status(String tamper_status) {
            Intrinsics.checkNotNullParameter(tamper_status, "tamper_status");
            this.tamper_status = tamper_status;
            return this;
        }

        public final Builder tamper_time(String tamper_time) {
            Intrinsics.checkNotNullParameter(tamper_time, "tamper_time");
            this.tamper_time = tamper_time;
            return this;
        }

        public final Builder tamper_type(TamperType tamper_type) {
            Intrinsics.checkNotNullParameter(tamper_type, "tamper_type");
            this.tamper_type = tamper_type;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public TamperModeEvent build() {
            return new TamperModeEvent(this.tamper_mode, this.tamper_status, this.tamper_time, this.tamper_type, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: TamperModeEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ TamperModeEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TamperModeEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<TamperModeEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.TamperModeEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(TamperModeEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.tamper_mode, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.tamper_mode);
                }
                if (!Intrinsics.areEqual(value.tamper_status, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.tamper_status);
                }
                if (!Intrinsics.areEqual(value.tamper_time, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.tamper_time);
                }
                return value.tamper_type != TamperType.TAMPER_TYPE_INVALID ? size + TamperType.ADAPTER.encodedSizeWithTag(4, value.tamper_type) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, TamperModeEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.tamper_mode, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.tamper_mode);
                }
                if (!Intrinsics.areEqual(value.tamper_status, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.tamper_status);
                }
                if (!Intrinsics.areEqual(value.tamper_time, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.tamper_time);
                }
                if (value.tamper_type != TamperType.TAMPER_TYPE_INVALID) {
                    TamperType.ADAPTER.encodeWithTag(writer, 4, value.tamper_type);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, TamperModeEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.tamper_type != TamperType.TAMPER_TYPE_INVALID) {
                    TamperType.ADAPTER.encodeWithTag(writer, 4, value.tamper_type);
                }
                if (!Intrinsics.areEqual(value.tamper_time, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.tamper_time);
                }
                if (!Intrinsics.areEqual(value.tamper_status, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.tamper_status);
                }
                if (Intrinsics.areEqual(value.tamper_mode, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.tamper_mode);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public TamperModeEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                TamperType tamperTypeDecode = TamperType.TAMPER_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                while (true) {
                    TamperType tamperType = tamperTypeDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new TamperModeEvent(strDecode, strDecode2, strDecode3, tamperType, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            strDecode3 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 4) {
                            try {
                                tamperTypeDecode = TamperType.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public TamperModeEvent redact(TamperModeEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return TamperModeEvent.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }
        };
    }
}
