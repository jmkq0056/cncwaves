package com.stripe.proto.model.common;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import java.io.IOException;
import java.time.Instant;
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

/* JADX INFO: compiled from: TamperState.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B+\u0012\u0010\b\u0002\u0010\u0003\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ,\u0010\u000b\u001a\u00020\u00002\u0010\b\u0002\u0010\u0003\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/common/TamperState;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/TamperState$Builder;", "tampered_time", "Ljava/time/Instant;", "Lcom/squareup/wire/Instant;", "tamper_type", "Lcom/stripe/proto/model/common/TamperType;", "unknownFields", "Lokio/ByteString;", "(Ljava/time/Instant;Lcom/stripe/proto/model/common/TamperType;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TamperState extends Message<TamperState, Builder> {
    public static final ProtoAdapter<TamperState> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.TamperType#ADAPTER", jsonName = "tamperType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final TamperType tamper_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INSTANT", jsonName = "tamperedTime", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Instant tampered_time;

    public TamperState() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ TamperState(Instant instant, TamperType tamperType, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : instant, (i & 2) != 0 ? TamperType.TAMPER_TYPE_INVALID : tamperType, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TamperState(Instant instant, TamperType tamper_type, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(tamper_type, "tamper_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.tampered_time = instant;
        this.tamper_type = tamper_type;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.tampered_time = this.tampered_time;
        builder.tamper_type = this.tamper_type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof TamperState)) {
            return false;
        }
        TamperState tamperState = (TamperState) other;
        return Intrinsics.areEqual(unknownFields(), tamperState.unknownFields()) && Intrinsics.areEqual(this.tampered_time, tamperState.tampered_time) && this.tamper_type == tamperState.tamper_type;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Instant instant = this.tampered_time;
        int iHashCode2 = ((iHashCode + (instant != null ? instant.hashCode() : 0)) * 37) + this.tamper_type.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.tampered_time != null) {
            arrayList.add("tampered_time=" + this.tampered_time);
        }
        arrayList.add("tamper_type=" + this.tamper_type);
        return CollectionsKt.joinToString$default(arrayList, ", ", "TamperState{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ TamperState copy$default(TamperState tamperState, Instant instant, TamperType tamperType, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            instant = tamperState.tampered_time;
        }
        if ((i & 2) != 0) {
            tamperType = tamperState.tamper_type;
        }
        if ((i & 4) != 0) {
            byteString = tamperState.unknownFields();
        }
        return tamperState.copy(instant, tamperType, byteString);
    }

    public final TamperState copy(Instant tampered_time, TamperType tamper_type, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(tamper_type, "tamper_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new TamperState(tampered_time, tamper_type, unknownFields);
    }

    /* JADX INFO: compiled from: TamperState.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0016\u0010\u0006\u001a\u00020\u00002\u000e\u0010\u0006\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/model/common/TamperState$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/TamperState;", "()V", "tamper_type", "Lcom/stripe/proto/model/common/TamperType;", "tampered_time", "Ljava/time/Instant;", "Lcom/squareup/wire/Instant;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<TamperState, Builder> {
        public TamperType tamper_type = TamperType.TAMPER_TYPE_INVALID;
        public Instant tampered_time;

        public final Builder tampered_time(Instant tampered_time) {
            this.tampered_time = tampered_time;
            return this;
        }

        public final Builder tamper_type(TamperType tamper_type) {
            Intrinsics.checkNotNullParameter(tamper_type, "tamper_type");
            this.tamper_type = tamper_type;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public TamperState build() {
            return new TamperState(this.tampered_time, this.tamper_type, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: TamperState.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/TamperState$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/TamperState;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/TamperState$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ TamperState build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TamperState.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<TamperState>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.TamperState$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(TamperState value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.tampered_time != null) {
                    size += ProtoAdapter.INSTANT.encodedSizeWithTag(1, value.tampered_time);
                }
                return value.tamper_type != TamperType.TAMPER_TYPE_INVALID ? size + TamperType.ADAPTER.encodedSizeWithTag(2, value.tamper_type) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, TamperState value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.tampered_time != null) {
                    ProtoAdapter.INSTANT.encodeWithTag(writer, 1, value.tampered_time);
                }
                if (value.tamper_type != TamperType.TAMPER_TYPE_INVALID) {
                    TamperType.ADAPTER.encodeWithTag(writer, 2, value.tamper_type);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, TamperState value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.tamper_type != TamperType.TAMPER_TYPE_INVALID) {
                    TamperType.ADAPTER.encodeWithTag(writer, 2, value.tamper_type);
                }
                if (value.tampered_time != null) {
                    ProtoAdapter.INSTANT.encodeWithTag(writer, 1, value.tampered_time);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public TamperState decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                TamperType tamperTypeDecode = TamperType.TAMPER_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                Instant instantDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new TamperState(instantDecode, tamperTypeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        instantDecode = ProtoAdapter.INSTANT.decode(reader);
                    } else if (iNextTag == 2) {
                        try {
                            tamperTypeDecode = TamperType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public TamperState redact(TamperState value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Instant instant = value.tampered_time;
                return TamperState.copy$default(value, instant != null ? ProtoAdapter.INSTANT.redact(instant) : null, null, ByteString.EMPTY, 2, null);
            }
        };
    }
}
