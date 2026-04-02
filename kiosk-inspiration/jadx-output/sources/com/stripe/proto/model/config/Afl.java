package com.stripe.proto.model.config;

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

/* JADX INFO: compiled from: Afl.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ.\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/config/Afl;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/Afl$Builder;", "sfi", "", "start_record", "end_record", "unknownFields", "Lokio/ByteString;", "(IIILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Afl extends Message<Afl, Builder> {
    public static final ProtoAdapter<Afl> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", jsonName = "endRecord", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final int end_record;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final int sfi;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", jsonName = "startRecord", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final int start_record;

    public Afl() {
        this(0, 0, 0, null, 15, null);
    }

    public /* synthetic */ Afl(int i, int i2, int i3, ByteString byteString, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0 : i, (i4 & 2) != 0 ? 0 : i2, (i4 & 4) != 0 ? 0 : i3, (i4 & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Afl(int i, int i2, int i3, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.sfi = i;
        this.start_record = i2;
        this.end_record = i3;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.sfi = this.sfi;
        builder.start_record = this.start_record;
        builder.end_record = this.end_record;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Afl)) {
            return false;
        }
        Afl afl = (Afl) other;
        return Intrinsics.areEqual(unknownFields(), afl.unknownFields()) && this.sfi == afl.sfi && this.start_record == afl.start_record && this.end_record == afl.end_record;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + Integer.hashCode(this.sfi)) * 37) + Integer.hashCode(this.start_record)) * 37) + Integer.hashCode(this.end_record);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("sfi=" + this.sfi);
        arrayList2.add("start_record=" + this.start_record);
        arrayList2.add("end_record=" + this.end_record);
        return CollectionsKt.joinToString$default(arrayList, ", ", "Afl{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Afl copy$default(Afl afl, int i, int i2, int i3, ByteString byteString, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = afl.sfi;
        }
        if ((i4 & 2) != 0) {
            i2 = afl.start_record;
        }
        if ((i4 & 4) != 0) {
            i3 = afl.end_record;
        }
        if ((i4 & 8) != 0) {
            byteString = afl.unknownFields();
        }
        return afl.copy(i, i2, i3, byteString);
    }

    public final Afl copy(int sfi, int start_record, int end_record, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Afl(sfi, start_record, end_record, unknownFields);
    }

    /* JADX INFO: compiled from: Afl.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/Afl$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/Afl;", "()V", "end_record", "", "sfi", "start_record", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Afl, Builder> {
        public int end_record;
        public int sfi;
        public int start_record;

        public final Builder sfi(int sfi) {
            this.sfi = sfi;
            return this;
        }

        public final Builder start_record(int start_record) {
            this.start_record = start_record;
            return this;
        }

        public final Builder end_record(int end_record) {
            this.end_record = end_record;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Afl build() {
            return new Afl(this.sfi, this.start_record, this.end_record, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Afl.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/Afl$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/Afl;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/Afl$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Afl build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Afl.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Afl>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.Afl$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Afl value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.sfi != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(1, Integer.valueOf(value.sfi));
                }
                if (value.start_record != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(2, Integer.valueOf(value.start_record));
                }
                return value.end_record != 0 ? size + ProtoAdapter.UINT32.encodedSizeWithTag(3, Integer.valueOf(value.end_record)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Afl value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.sfi != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 1, Integer.valueOf(value.sfi));
                }
                if (value.start_record != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 2, Integer.valueOf(value.start_record));
                }
                if (value.end_record != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 3, Integer.valueOf(value.end_record));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Afl value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.end_record != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 3, Integer.valueOf(value.end_record));
                }
                if (value.start_record != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 2, Integer.valueOf(value.start_record));
                }
                if (value.sfi != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 1, Integer.valueOf(value.sfi));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Afl redact(Afl value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return Afl.copy$default(value, 0, 0, 0, ByteString.EMPTY, 7, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Afl decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                int iIntValue = 0;
                int iIntValue2 = 0;
                int iIntValue3 = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new Afl(iIntValue, iIntValue2, iIntValue3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        iIntValue = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else if (iNextTag == 2) {
                        iIntValue2 = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else if (iNextTag == 3) {
                        iIntValue3 = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
