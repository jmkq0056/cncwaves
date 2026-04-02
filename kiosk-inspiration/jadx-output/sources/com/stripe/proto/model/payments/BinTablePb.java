package com.stripe.proto.model.payments;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.payments.BinTablePb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: BinTablePb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0013\u0014\u0015\u0016B\u001f\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/payments/BinTablePb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/payments/BinTablePb$Builder;", "card_bin_entry", "", "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "BinEntry", "Builder", "CardBinEntry", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BinTablePb extends Message<BinTablePb, Builder> {
    public static final ProtoAdapter<BinTablePb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.payments.BinTablePb$CardBinEntry#ADAPTER", jsonName = "cardBinEntry", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<CardBinEntry> card_bin_entry;

    /* JADX WARN: Multi-variable type inference failed */
    public BinTablePb() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ BinTablePb(List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinTablePb(List<CardBinEntry> card_bin_entry, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(card_bin_entry, "card_bin_entry");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.card_bin_entry = Internal.immutableCopyOf("card_bin_entry", card_bin_entry);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.card_bin_entry = this.card_bin_entry;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof BinTablePb)) {
            return false;
        }
        BinTablePb binTablePb = (BinTablePb) other;
        return Intrinsics.areEqual(unknownFields(), binTablePb.unknownFields()) && Intrinsics.areEqual(this.card_bin_entry, binTablePb.card_bin_entry);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.card_bin_entry.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.card_bin_entry.isEmpty()) {
            arrayList.add("card_bin_entry=" + this.card_bin_entry);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "BinTablePb{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BinTablePb copy$default(BinTablePb binTablePb, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = binTablePb.card_bin_entry;
        }
        if ((i & 2) != 0) {
            byteString = binTablePb.unknownFields();
        }
        return binTablePb.copy(list, byteString);
    }

    public final BinTablePb copy(List<CardBinEntry> card_bin_entry, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(card_bin_entry, "card_bin_entry");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new BinTablePb(card_bin_entry, unknownFields);
    }

    /* JADX INFO: compiled from: BinTablePb.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/payments/BinTablePb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/payments/BinTablePb;", "()V", "card_bin_entry", "", "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<BinTablePb, Builder> {
        public List<CardBinEntry> card_bin_entry = CollectionsKt.emptyList();

        public final Builder card_bin_entry(List<CardBinEntry> card_bin_entry) {
            Intrinsics.checkNotNullParameter(card_bin_entry, "card_bin_entry");
            Internal.checkElementsNotNull(card_bin_entry);
            this.card_bin_entry = card_bin_entry;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public BinTablePb build() {
            return new BinTablePb(this.card_bin_entry, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: BinTablePb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/payments/BinTablePb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/BinTablePb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/payments/BinTablePb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ BinTablePb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BinTablePb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<BinTablePb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.payments.BinTablePb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(BinTablePb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + BinTablePb.CardBinEntry.ADAPTER.asRepeated().encodedSizeWithTag(1, value.card_bin_entry);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, BinTablePb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                BinTablePb.CardBinEntry.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.card_bin_entry);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, BinTablePb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                BinTablePb.CardBinEntry.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.card_bin_entry);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public BinTablePb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new BinTablePb(arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(BinTablePb.CardBinEntry.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public BinTablePb redact(BinTablePb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.copy(Internal.m361redactElements(value.card_bin_entry, BinTablePb.CardBinEntry.ADAPTER), ByteString.EMPTY);
            }
        };
    }

    /* JADX INFO: compiled from: BinTablePb.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;", "bin_range_start", "", "bin_range_end", "unknownFields", "Lokio/ByteString;", "(IILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class BinEntry extends Message<BinEntry, Builder> {
        public static final ProtoAdapter<BinEntry> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "binRangeEnd", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final int bin_range_end;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "binRangeStart", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final int bin_range_start;

        public BinEntry() {
            this(0, 0, null, 7, null);
        }

        public /* synthetic */ BinEntry(int i, int i2, ByteString byteString, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BinEntry(int i, int i2, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.bin_range_start = i;
            this.bin_range_end = i2;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.bin_range_start = this.bin_range_start;
            builder.bin_range_end = this.bin_range_end;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof BinEntry)) {
                return false;
            }
            BinEntry binEntry = (BinEntry) other;
            return Intrinsics.areEqual(unknownFields(), binEntry.unknownFields()) && this.bin_range_start == binEntry.bin_range_start && this.bin_range_end == binEntry.bin_range_end;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + Integer.hashCode(this.bin_range_start)) * 37) + Integer.hashCode(this.bin_range_end);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("bin_range_start=" + this.bin_range_start);
            arrayList2.add("bin_range_end=" + this.bin_range_end);
            return CollectionsKt.joinToString$default(arrayList, ", ", "BinEntry{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ BinEntry copy$default(BinEntry binEntry, int i, int i2, ByteString byteString, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = binEntry.bin_range_start;
            }
            if ((i3 & 2) != 0) {
                i2 = binEntry.bin_range_end;
            }
            if ((i3 & 4) != 0) {
                byteString = binEntry.unknownFields();
            }
            return binEntry.copy(i, i2, byteString);
        }

        public final BinEntry copy(int bin_range_start, int bin_range_end, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new BinEntry(bin_range_start, bin_range_end, unknownFields);
        }

        /* JADX INFO: compiled from: BinTablePb.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\b\u0010\u0007\u001a\u00020\u0002H\u0016R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;", "()V", "bin_range_end", "", "bin_range_start", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<BinEntry, Builder> {
            public int bin_range_end;
            public int bin_range_start;

            public final Builder bin_range_start(int bin_range_start) {
                this.bin_range_start = bin_range_start;
                return this;
            }

            public final Builder bin_range_end(int bin_range_end) {
                this.bin_range_end = bin_range_end;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public BinEntry build() {
                return new BinEntry(this.bin_range_start, this.bin_range_end, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: BinTablePb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ BinEntry build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BinEntry.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<BinEntry>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.payments.BinTablePb$BinEntry$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(BinTablePb.BinEntry value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.bin_range_start != 0) {
                        size += ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.bin_range_start));
                    }
                    return value.bin_range_end != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.bin_range_end)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, BinTablePb.BinEntry value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.bin_range_start != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.bin_range_start));
                    }
                    if (value.bin_range_end != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.bin_range_end));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, BinTablePb.BinEntry value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.bin_range_end != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.bin_range_end));
                    }
                    if (value.bin_range_start != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.bin_range_start));
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public BinTablePb.BinEntry redact(BinTablePb.BinEntry value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return BinTablePb.BinEntry.copy$default(value, 0, 0, ByteString.EMPTY, 3, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public BinTablePb.BinEntry decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    int iIntValue = 0;
                    int iIntValue2 = 0;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new BinTablePb.BinEntry(iIntValue, iIntValue2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                        } else if (iNextTag == 2) {
                            iIntValue2 = ProtoAdapter.INT32.decode(reader).intValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: BinTablePb.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBW\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011JX\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;", "instrument_type", "Lcom/stripe/proto/model/payments/InstrumentType;", "card_brand", "Lcom/stripe/proto/model/payments/CreditCardBrand;", "ranges", "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;", "ebt_state", "Lcom/stripe/proto/model/payments/EbtState;", "prepaid_card", "", "commercial_card", "hsa_fsa_card", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/payments/EbtState;ZZZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CardBinEntry extends Message<CardBinEntry, Builder> {
        public static final ProtoAdapter<CardBinEntry> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.model.payments.CreditCardBrand#ADAPTER", jsonName = "cardBrand", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final CreditCardBrand card_brand;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "commercialCard", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
        public final boolean commercial_card;

        @WireField(adapter = "com.stripe.proto.model.payments.EbtState#ADAPTER", jsonName = "ebtState", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final EbtState ebt_state;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "hsaFsaCard", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
        public final boolean hsa_fsa_card;

        @WireField(adapter = "com.stripe.proto.model.payments.InstrumentType#ADAPTER", jsonName = "instrumentType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final InstrumentType instrument_type;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "prepaidCard", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
        public final boolean prepaid_card;

        @WireField(adapter = "com.stripe.proto.model.payments.BinTablePb$BinEntry#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final BinEntry ranges;

        public CardBinEntry() {
            this(null, null, null, null, false, false, false, null, 255, null);
        }

        public /* synthetic */ CardBinEntry(InstrumentType instrumentType, CreditCardBrand creditCardBrand, BinEntry binEntry, EbtState ebtState, boolean z, boolean z2, boolean z3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? InstrumentType.UNKNOWN_TYPE : instrumentType, (i & 2) != 0 ? CreditCardBrand.INVALID_CARD_BRAND : creditCardBrand, (i & 4) != 0 ? null : binEntry, (i & 8) != 0 ? EbtState.UNKNOWN_STATE : ebtState, (i & 16) != 0 ? false : z, (i & 32) != 0 ? false : z2, (i & 64) != 0 ? false : z3, (i & 128) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CardBinEntry(InstrumentType instrument_type, CreditCardBrand card_brand, BinEntry binEntry, EbtState ebt_state, boolean z, boolean z2, boolean z3, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(instrument_type, "instrument_type");
            Intrinsics.checkNotNullParameter(card_brand, "card_brand");
            Intrinsics.checkNotNullParameter(ebt_state, "ebt_state");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.instrument_type = instrument_type;
            this.card_brand = card_brand;
            this.ranges = binEntry;
            this.ebt_state = ebt_state;
            this.prepaid_card = z;
            this.commercial_card = z2;
            this.hsa_fsa_card = z3;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.instrument_type = this.instrument_type;
            builder.card_brand = this.card_brand;
            builder.ranges = this.ranges;
            builder.ebt_state = this.ebt_state;
            builder.prepaid_card = this.prepaid_card;
            builder.commercial_card = this.commercial_card;
            builder.hsa_fsa_card = this.hsa_fsa_card;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof CardBinEntry)) {
                return false;
            }
            CardBinEntry cardBinEntry = (CardBinEntry) other;
            return Intrinsics.areEqual(unknownFields(), cardBinEntry.unknownFields()) && this.instrument_type == cardBinEntry.instrument_type && this.card_brand == cardBinEntry.card_brand && Intrinsics.areEqual(this.ranges, cardBinEntry.ranges) && this.ebt_state == cardBinEntry.ebt_state && this.prepaid_card == cardBinEntry.prepaid_card && this.commercial_card == cardBinEntry.commercial_card && this.hsa_fsa_card == cardBinEntry.hsa_fsa_card;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((unknownFields().hashCode() * 37) + this.instrument_type.hashCode()) * 37) + this.card_brand.hashCode()) * 37;
            BinEntry binEntry = this.ranges;
            int iHashCode2 = ((((((((iHashCode + (binEntry != null ? binEntry.hashCode() : 0)) * 37) + this.ebt_state.hashCode()) * 37) + Boolean.hashCode(this.prepaid_card)) * 37) + Boolean.hashCode(this.commercial_card)) * 37) + Boolean.hashCode(this.hsa_fsa_card);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("instrument_type=" + this.instrument_type);
            arrayList2.add("card_brand=" + this.card_brand);
            if (this.ranges != null) {
                arrayList2.add("ranges=" + this.ranges);
            }
            arrayList2.add("ebt_state=" + this.ebt_state);
            arrayList2.add("prepaid_card=" + this.prepaid_card);
            arrayList2.add("commercial_card=" + this.commercial_card);
            arrayList2.add("hsa_fsa_card=" + this.hsa_fsa_card);
            return CollectionsKt.joinToString$default(arrayList, ", ", "CardBinEntry{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ CardBinEntry copy$default(CardBinEntry cardBinEntry, InstrumentType instrumentType, CreditCardBrand creditCardBrand, BinEntry binEntry, EbtState ebtState, boolean z, boolean z2, boolean z3, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                instrumentType = cardBinEntry.instrument_type;
            }
            if ((i & 2) != 0) {
                creditCardBrand = cardBinEntry.card_brand;
            }
            if ((i & 4) != 0) {
                binEntry = cardBinEntry.ranges;
            }
            if ((i & 8) != 0) {
                ebtState = cardBinEntry.ebt_state;
            }
            if ((i & 16) != 0) {
                z = cardBinEntry.prepaid_card;
            }
            if ((i & 32) != 0) {
                z2 = cardBinEntry.commercial_card;
            }
            if ((i & 64) != 0) {
                z3 = cardBinEntry.hsa_fsa_card;
            }
            if ((i & 128) != 0) {
                byteString = cardBinEntry.unknownFields();
            }
            boolean z4 = z3;
            ByteString byteString2 = byteString;
            boolean z5 = z;
            boolean z6 = z2;
            return cardBinEntry.copy(instrumentType, creditCardBrand, binEntry, ebtState, z5, z6, z4, byteString2);
        }

        public final CardBinEntry copy(InstrumentType instrument_type, CreditCardBrand card_brand, BinEntry ranges, EbtState ebt_state, boolean prepaid_card, boolean commercial_card, boolean hsa_fsa_card, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(instrument_type, "instrument_type");
            Intrinsics.checkNotNullParameter(card_brand, "card_brand");
            Intrinsics.checkNotNullParameter(ebt_state, "ebt_state");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new CardBinEntry(instrument_type, card_brand, ranges, ebt_state, prepaid_card, commercial_card, hsa_fsa_card, unknownFields);
        }

        /* JADX INFO: compiled from: BinTablePb.kt */
        @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;", "()V", "card_brand", "Lcom/stripe/proto/model/payments/CreditCardBrand;", "commercial_card", "", "ebt_state", "Lcom/stripe/proto/model/payments/EbtState;", "hsa_fsa_card", "instrument_type", "Lcom/stripe/proto/model/payments/InstrumentType;", "prepaid_card", "ranges", "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<CardBinEntry, Builder> {
            public boolean commercial_card;
            public boolean hsa_fsa_card;
            public boolean prepaid_card;
            public BinEntry ranges;
            public InstrumentType instrument_type = InstrumentType.UNKNOWN_TYPE;
            public CreditCardBrand card_brand = CreditCardBrand.INVALID_CARD_BRAND;
            public EbtState ebt_state = EbtState.UNKNOWN_STATE;

            public final Builder instrument_type(InstrumentType instrument_type) {
                Intrinsics.checkNotNullParameter(instrument_type, "instrument_type");
                this.instrument_type = instrument_type;
                return this;
            }

            public final Builder card_brand(CreditCardBrand card_brand) {
                Intrinsics.checkNotNullParameter(card_brand, "card_brand");
                this.card_brand = card_brand;
                return this;
            }

            public final Builder ranges(BinEntry ranges) {
                this.ranges = ranges;
                return this;
            }

            public final Builder ebt_state(EbtState ebt_state) {
                Intrinsics.checkNotNullParameter(ebt_state, "ebt_state");
                this.ebt_state = ebt_state;
                return this;
            }

            public final Builder prepaid_card(boolean prepaid_card) {
                this.prepaid_card = prepaid_card;
                return this;
            }

            public final Builder commercial_card(boolean commercial_card) {
                this.commercial_card = commercial_card;
                return this;
            }

            public final Builder hsa_fsa_card(boolean hsa_fsa_card) {
                this.hsa_fsa_card = hsa_fsa_card;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public CardBinEntry build() {
                return new CardBinEntry(this.instrument_type, this.card_brand, this.ranges, this.ebt_state, this.prepaid_card, this.commercial_card, this.hsa_fsa_card, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: BinTablePb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ CardBinEntry build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CardBinEntry.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<CardBinEntry>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.payments.BinTablePb$CardBinEntry$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(BinTablePb.CardBinEntry value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.instrument_type != InstrumentType.UNKNOWN_TYPE) {
                        size += InstrumentType.ADAPTER.encodedSizeWithTag(1, value.instrument_type);
                    }
                    if (value.card_brand != CreditCardBrand.INVALID_CARD_BRAND) {
                        size += CreditCardBrand.ADAPTER.encodedSizeWithTag(2, value.card_brand);
                    }
                    if (value.ranges != null) {
                        size += BinTablePb.BinEntry.ADAPTER.encodedSizeWithTag(3, value.ranges);
                    }
                    if (value.ebt_state != EbtState.UNKNOWN_STATE) {
                        size += EbtState.ADAPTER.encodedSizeWithTag(4, value.ebt_state);
                    }
                    if (value.prepaid_card) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(5, Boolean.valueOf(value.prepaid_card));
                    }
                    if (value.commercial_card) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(6, Boolean.valueOf(value.commercial_card));
                    }
                    return value.hsa_fsa_card ? size + ProtoAdapter.BOOL.encodedSizeWithTag(7, Boolean.valueOf(value.hsa_fsa_card)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, BinTablePb.CardBinEntry value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.instrument_type != InstrumentType.UNKNOWN_TYPE) {
                        InstrumentType.ADAPTER.encodeWithTag(writer, 1, value.instrument_type);
                    }
                    if (value.card_brand != CreditCardBrand.INVALID_CARD_BRAND) {
                        CreditCardBrand.ADAPTER.encodeWithTag(writer, 2, value.card_brand);
                    }
                    if (value.ranges != null) {
                        BinTablePb.BinEntry.ADAPTER.encodeWithTag(writer, 3, value.ranges);
                    }
                    if (value.ebt_state != EbtState.UNKNOWN_STATE) {
                        EbtState.ADAPTER.encodeWithTag(writer, 4, value.ebt_state);
                    }
                    if (value.prepaid_card) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.prepaid_card));
                    }
                    if (value.commercial_card) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.commercial_card));
                    }
                    if (value.hsa_fsa_card) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.hsa_fsa_card));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, BinTablePb.CardBinEntry value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.hsa_fsa_card) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.hsa_fsa_card));
                    }
                    if (value.commercial_card) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.commercial_card));
                    }
                    if (value.prepaid_card) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.prepaid_card));
                    }
                    if (value.ebt_state != EbtState.UNKNOWN_STATE) {
                        EbtState.ADAPTER.encodeWithTag(writer, 4, value.ebt_state);
                    }
                    if (value.ranges != null) {
                        BinTablePb.BinEntry.ADAPTER.encodeWithTag(writer, 3, value.ranges);
                    }
                    if (value.card_brand != CreditCardBrand.INVALID_CARD_BRAND) {
                        CreditCardBrand.ADAPTER.encodeWithTag(writer, 2, value.card_brand);
                    }
                    if (value.instrument_type != InstrumentType.UNKNOWN_TYPE) {
                        InstrumentType.ADAPTER.encodeWithTag(writer, 1, value.instrument_type);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                /*  JADX ERROR: UnsupportedOperationException in pass: SwitchBreakVisitor
                    java.lang.UnsupportedOperationException
                    	at java.base/java.util.AbstractList.remove(AbstractList.java:167)
                    	at jadx.core.utils.ListUtils.removeLast(ListUtils.java:82)
                    	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.removeBreak(SwitchBreakVisitor.java:254)
                    	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processBranchRegion(SwitchBreakVisitor.java:110)
                    	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processRegion(SwitchBreakVisitor.java:64)
                    	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.enterRegion(SwitchBreakVisitor.java:202)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
                    	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$IterativeSwitchRegionVisitor.leaveRegion(SwitchBreakVisitor.java:177)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
                    	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.runSwitchTraverse(SwitchBreakVisitor.java:52)
                    	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.visit(SwitchBreakVisitor.java:45)
                    */
                @Override // com.squareup.wire.ProtoAdapter
                public com.stripe.proto.model.payments.BinTablePb.CardBinEntry decode(com.squareup.wire.ProtoReader r18) throws java.io.IOException {
                    /*
                        r17 = this;
                        r1 = r18
                        java.lang.String r0 = "reader"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                        com.stripe.proto.model.payments.InstrumentType r0 = com.stripe.proto.model.payments.InstrumentType.UNKNOWN_TYPE
                        com.stripe.proto.model.payments.CreditCardBrand r2 = com.stripe.proto.model.payments.CreditCardBrand.INVALID_CARD_BRAND
                        com.stripe.proto.model.payments.EbtState r3 = com.stripe.proto.model.payments.EbtState.UNKNOWN_STATE
                        long r4 = r1.beginMessage()
                        r6 = 0
                        r7 = 0
                        r13 = r7
                        r14 = r13
                        r15 = r14
                        r7 = r6
                        r6 = r3
                        r3 = r2
                    L19:
                        r2 = r0
                    L1a:
                        int r8 = r1.nextTag()
                        r0 = -1
                        if (r8 == r0) goto L9c
                        switch(r8) {
                            case 1: goto L86;
                            case 2: goto L70;
                            case 3: goto L68;
                            case 4: goto L52;
                            case 5: goto L44;
                            case 6: goto L36;
                            case 7: goto L28;
                            default: goto L24;
                        }
                    L24:
                        r1.readUnknownField(r8)
                        goto L1a
                    L28:
                        com.squareup.wire.ProtoAdapter<java.lang.Boolean> r0 = com.squareup.wire.ProtoAdapter.BOOL
                        java.lang.Object r0 = r0.decode(r1)
                        java.lang.Boolean r0 = (java.lang.Boolean) r0
                        boolean r0 = r0.booleanValue()
                        r15 = r0
                        goto L1a
                    L36:
                        com.squareup.wire.ProtoAdapter<java.lang.Boolean> r0 = com.squareup.wire.ProtoAdapter.BOOL
                        java.lang.Object r0 = r0.decode(r1)
                        java.lang.Boolean r0 = (java.lang.Boolean) r0
                        boolean r0 = r0.booleanValue()
                        r14 = r0
                        goto L1a
                    L44:
                        com.squareup.wire.ProtoAdapter<java.lang.Boolean> r0 = com.squareup.wire.ProtoAdapter.BOOL
                        java.lang.Object r0 = r0.decode(r1)
                        java.lang.Boolean r0 = (java.lang.Boolean) r0
                        boolean r0 = r0.booleanValue()
                        r13 = r0
                        goto L1a
                    L52:
                        com.squareup.wire.ProtoAdapter<com.stripe.proto.model.payments.EbtState> r0 = com.stripe.proto.model.payments.EbtState.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L5a
                        java.lang.Object r0 = r0.decode(r1)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L5a
                        r6 = r0
                        goto L1a
                    L5a:
                        r0 = move-exception
                        com.squareup.wire.FieldEncoding r9 = com.squareup.wire.FieldEncoding.VARINT
                        int r0 = r0.value
                        long r10 = (long) r0
                        java.lang.Long r0 = java.lang.Long.valueOf(r10)
                        r1.addUnknownField(r8, r9, r0)
                        goto L1a
                    L68:
                        com.squareup.wire.ProtoAdapter<com.stripe.proto.model.payments.BinTablePb$BinEntry> r0 = com.stripe.proto.model.payments.BinTablePb.BinEntry.ADAPTER
                        java.lang.Object r0 = r0.decode(r1)
                        r7 = r0
                        goto L1a
                    L70:
                        com.squareup.wire.ProtoAdapter<com.stripe.proto.model.payments.CreditCardBrand> r0 = com.stripe.proto.model.payments.CreditCardBrand.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L78
                        java.lang.Object r0 = r0.decode(r1)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L78
                        r3 = r0
                        goto L1a
                    L78:
                        r0 = move-exception
                        com.squareup.wire.FieldEncoding r9 = com.squareup.wire.FieldEncoding.VARINT
                        int r0 = r0.value
                        long r10 = (long) r0
                        java.lang.Long r0 = java.lang.Long.valueOf(r10)
                        r1.addUnknownField(r8, r9, r0)
                        goto L1a
                    L86:
                        com.squareup.wire.ProtoAdapter<com.stripe.proto.model.payments.InstrumentType> r0 = com.stripe.proto.model.payments.InstrumentType.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L8d
                        java.lang.Object r0 = r0.decode(r1)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L8d
                        goto L19
                    L8d:
                        r0 = move-exception
                        com.squareup.wire.FieldEncoding r9 = com.squareup.wire.FieldEncoding.VARINT
                        int r0 = r0.value
                        long r10 = (long) r0
                        java.lang.Long r0 = java.lang.Long.valueOf(r10)
                        r1.addUnknownField(r8, r9, r0)
                        goto L1a
                    L9c:
                        okio.ByteString r16 = r1.endMessageAndGetUnknownFields(r4)
                        com.stripe.proto.model.payments.BinTablePb$CardBinEntry r8 = new com.stripe.proto.model.payments.BinTablePb$CardBinEntry
                        r9 = r2
                        com.stripe.proto.model.payments.InstrumentType r9 = (com.stripe.proto.model.payments.InstrumentType) r9
                        r10 = r3
                        com.stripe.proto.model.payments.CreditCardBrand r10 = (com.stripe.proto.model.payments.CreditCardBrand) r10
                        r11 = r7
                        com.stripe.proto.model.payments.BinTablePb$BinEntry r11 = (com.stripe.proto.model.payments.BinTablePb.BinEntry) r11
                        r12 = r6
                        com.stripe.proto.model.payments.EbtState r12 = (com.stripe.proto.model.payments.EbtState) r12
                        r8.<init>(r9, r10, r11, r12, r13, r14, r15, r16)
                        return r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.model.payments.BinTablePb$CardBinEntry$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.model.payments.BinTablePb$CardBinEntry");
                }

                @Override // com.squareup.wire.ProtoAdapter
                public BinTablePb.CardBinEntry redact(BinTablePb.CardBinEntry value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    BinTablePb.BinEntry binEntry = value.ranges;
                    return BinTablePb.CardBinEntry.copy$default(value, null, null, binEntry != null ? BinTablePb.BinEntry.ADAPTER.redact(binEntry) : null, null, false, false, false, ByteString.EMPTY, 123, null);
                }
            };
        }
    }
}
