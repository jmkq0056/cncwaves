package com.stripe.proto.model.payments;

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

/* JADX INFO: compiled from: EbtBinEntry.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/payments/EbtBinEntry;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/payments/EbtBinEntry$Builder;", "bin_number", "", "ebt_state", "Lcom/stripe/proto/model/payments/EbtState;", "unknownFields", "Lokio/ByteString;", "(ILcom/stripe/proto/model/payments/EbtState;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EbtBinEntry extends Message<EbtBinEntry, Builder> {
    public static final ProtoAdapter<EbtBinEntry> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "binNumber", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final int bin_number;

    @WireField(adapter = "com.stripe.proto.model.payments.EbtState#ADAPTER", jsonName = "ebtState", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final EbtState ebt_state;

    public EbtBinEntry() {
        this(0, null, null, 7, null);
    }

    public /* synthetic */ EbtBinEntry(int i, EbtState ebtState, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? EbtState.UNKNOWN_STATE : ebtState, (i2 & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EbtBinEntry(int i, EbtState ebt_state, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(ebt_state, "ebt_state");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.bin_number = i;
        this.ebt_state = ebt_state;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.bin_number = this.bin_number;
        builder.ebt_state = this.ebt_state;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof EbtBinEntry)) {
            return false;
        }
        EbtBinEntry ebtBinEntry = (EbtBinEntry) other;
        return Intrinsics.areEqual(unknownFields(), ebtBinEntry.unknownFields()) && this.bin_number == ebtBinEntry.bin_number && this.ebt_state == ebtBinEntry.ebt_state;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + Integer.hashCode(this.bin_number)) * 37) + this.ebt_state.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("bin_number=" + this.bin_number);
        arrayList2.add("ebt_state=" + this.ebt_state);
        return CollectionsKt.joinToString$default(arrayList, ", ", "EbtBinEntry{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ EbtBinEntry copy$default(EbtBinEntry ebtBinEntry, int i, EbtState ebtState, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = ebtBinEntry.bin_number;
        }
        if ((i2 & 2) != 0) {
            ebtState = ebtBinEntry.ebt_state;
        }
        if ((i2 & 4) != 0) {
            byteString = ebtBinEntry.unknownFields();
        }
        return ebtBinEntry.copy(i, ebtState, byteString);
    }

    public final EbtBinEntry copy(int bin_number, EbtState ebt_state, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(ebt_state, "ebt_state");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new EbtBinEntry(bin_number, ebt_state, unknownFields);
    }

    /* JADX INFO: compiled from: EbtBinEntry.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/payments/EbtBinEntry$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/payments/EbtBinEntry;", "()V", "bin_number", "", "ebt_state", "Lcom/stripe/proto/model/payments/EbtState;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<EbtBinEntry, Builder> {
        public int bin_number;
        public EbtState ebt_state = EbtState.UNKNOWN_STATE;

        public final Builder bin_number(int bin_number) {
            this.bin_number = bin_number;
            return this;
        }

        public final Builder ebt_state(EbtState ebt_state) {
            Intrinsics.checkNotNullParameter(ebt_state, "ebt_state");
            this.ebt_state = ebt_state;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public EbtBinEntry build() {
            return new EbtBinEntry(this.bin_number, this.ebt_state, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: EbtBinEntry.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/payments/EbtBinEntry$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/EbtBinEntry;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/payments/EbtBinEntry$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ EbtBinEntry build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EbtBinEntry.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<EbtBinEntry>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.payments.EbtBinEntry$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(EbtBinEntry value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.bin_number != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.bin_number));
                }
                return value.ebt_state != EbtState.UNKNOWN_STATE ? size + EbtState.ADAPTER.encodedSizeWithTag(2, value.ebt_state) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, EbtBinEntry value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.bin_number != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.bin_number));
                }
                if (value.ebt_state != EbtState.UNKNOWN_STATE) {
                    EbtState.ADAPTER.encodeWithTag(writer, 2, value.ebt_state);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, EbtBinEntry value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.ebt_state != EbtState.UNKNOWN_STATE) {
                    EbtState.ADAPTER.encodeWithTag(writer, 2, value.ebt_state);
                }
                if (value.bin_number != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.bin_number));
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public EbtBinEntry decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                EbtState ebtStateDecode = EbtState.UNKNOWN_STATE;
                long jBeginMessage = reader.beginMessage();
                int iIntValue = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new EbtBinEntry(iIntValue, ebtStateDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                    } else if (iNextTag == 2) {
                        try {
                            ebtStateDecode = EbtState.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public EbtBinEntry redact(EbtBinEntry value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return EbtBinEntry.copy$default(value, 0, null, ByteString.EMPTY, 3, null);
            }
        };
    }
}
