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
import com.stripe.proto.model.payments.VantivBinTablePb;
import com.sun.jna.platform.win32.WinNT;
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

/* JADX INFO: compiled from: VantivBinTablePb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B\u001f\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/payments/VantivBinTablePb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/payments/VantivBinTablePb$Builder;", "vantiv_bin_entries", "", "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "VantivBinEntryPb", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VantivBinTablePb extends Message<VantivBinTablePb, Builder> {
    public static final ProtoAdapter<VantivBinTablePb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.payments.VantivBinTablePb$VantivBinEntryPb#ADAPTER", jsonName = "vantivBinEntries", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<VantivBinEntryPb> vantiv_bin_entries;

    /* JADX WARN: Multi-variable type inference failed */
    public VantivBinTablePb() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ VantivBinTablePb(List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VantivBinTablePb(List<VantivBinEntryPb> vantiv_bin_entries, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(vantiv_bin_entries, "vantiv_bin_entries");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.vantiv_bin_entries = Internal.immutableCopyOf("vantiv_bin_entries", vantiv_bin_entries);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.vantiv_bin_entries = this.vantiv_bin_entries;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof VantivBinTablePb)) {
            return false;
        }
        VantivBinTablePb vantivBinTablePb = (VantivBinTablePb) other;
        return Intrinsics.areEqual(unknownFields(), vantivBinTablePb.unknownFields()) && Intrinsics.areEqual(this.vantiv_bin_entries, vantivBinTablePb.vantiv_bin_entries);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.vantiv_bin_entries.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.vantiv_bin_entries.isEmpty()) {
            arrayList.add("vantiv_bin_entries=" + this.vantiv_bin_entries);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "VantivBinTablePb{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VantivBinTablePb copy$default(VantivBinTablePb vantivBinTablePb, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = vantivBinTablePb.vantiv_bin_entries;
        }
        if ((i & 2) != 0) {
            byteString = vantivBinTablePb.unknownFields();
        }
        return vantivBinTablePb.copy(list, byteString);
    }

    public final VantivBinTablePb copy(List<VantivBinEntryPb> vantiv_bin_entries, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(vantiv_bin_entries, "vantiv_bin_entries");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new VantivBinTablePb(vantiv_bin_entries, unknownFields);
    }

    /* JADX INFO: compiled from: VantivBinTablePb.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/payments/VantivBinTablePb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/payments/VantivBinTablePb;", "()V", "vantiv_bin_entries", "", "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<VantivBinTablePb, Builder> {
        public List<VantivBinEntryPb> vantiv_bin_entries = CollectionsKt.emptyList();

        public final Builder vantiv_bin_entries(List<VantivBinEntryPb> vantiv_bin_entries) {
            Intrinsics.checkNotNullParameter(vantiv_bin_entries, "vantiv_bin_entries");
            Internal.checkElementsNotNull(vantiv_bin_entries);
            this.vantiv_bin_entries = vantiv_bin_entries;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public VantivBinTablePb build() {
            return new VantivBinTablePb(this.vantiv_bin_entries, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: VantivBinTablePb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/payments/VantivBinTablePb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/VantivBinTablePb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/payments/VantivBinTablePb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ VantivBinTablePb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(VantivBinTablePb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<VantivBinTablePb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.payments.VantivBinTablePb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(VantivBinTablePb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + VantivBinTablePb.VantivBinEntryPb.ADAPTER.asRepeated().encodedSizeWithTag(1, value.vantiv_bin_entries);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, VantivBinTablePb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                VantivBinTablePb.VantivBinEntryPb.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.vantiv_bin_entries);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, VantivBinTablePb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                VantivBinTablePb.VantivBinEntryPb.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.vantiv_bin_entries);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public VantivBinTablePb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new VantivBinTablePb(arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(VantivBinTablePb.VantivBinEntryPb.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public VantivBinTablePb redact(VantivBinTablePb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.copy(Internal.m361redactElements(value.vantiv_bin_entries, VantivBinTablePb.VantivBinEntryPb.ADAPTER), ByteString.EMPTY);
            }
        };
    }

    /* JADX INFO: compiled from: VantivBinTablePb.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002#$BÍ\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0017\u001a\u00020\t\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u001a¢\u0006\u0002\u0010\u001bJÎ\u0001\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\u000b2\b\b\u0002\u0010\u000f\u001a\u00020\u000b2\b\b\u0002\u0010\u0010\u001a\u00020\u000b2\b\b\u0002\u0010\u0011\u001a\u00020\u000b2\b\b\u0002\u0010\u0012\u001a\u00020\u000b2\b\b\u0002\u0010\u0013\u001a\u00020\u000b2\b\b\u0002\u0010\u0014\u001a\u00020\u000b2\b\b\u0002\u0010\u0015\u001a\u00020\u000b2\b\b\u0002\u0010\u0016\u001a\u00020\u000b2\b\b\u0002\u0010\u0017\u001a\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\u000b2\b\b\u0002\u0010\u0019\u001a\u00020\u001aJ\u0013\u0010\u001d\u001a\u00020\u000b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\b\u0010 \u001a\u00020\u0004H\u0016J\b\u0010!\u001a\u00020\u0002H\u0016J\b\u0010\"\u001a\u00020\tH\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;", "sequence_number", "", "bin_length", "pan_length", "bin_number", "table_id", "", "debit_card_indicator", "", "check_card_indicator", "credit_card_indicator", "gift_card_indictor", "commercial_card_indicator", "fleet_card_indicator", "prepaid_card_indicator", "hsa_fsa_account_indicator", "pinless_bill_pay_indicator", "ebt_indicator", "wic_bin_indicator", "international_bin_indicator", "durbin_bin_regulation_indicator", "pinless_pos", "unknownFields", "Lokio/ByteString;", "(IIIILjava/lang/String;ZZZZZZZZZZZZLjava/lang/String;ZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class VantivBinEntryPb extends Message<VantivBinEntryPb, Builder> {
        public static final ProtoAdapter<VantivBinEntryPb> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "binLength", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final int bin_length;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "binNumber", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final int bin_number;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "checkCardIndicator", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
        public final boolean check_card_indicator;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "commercialCardIndicator", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
        public final boolean commercial_card_indicator;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "creditCardIndicator", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
        public final boolean credit_card_indicator;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "debitCardIndicator", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
        public final boolean debit_card_indicator;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "durbinBinRegulationIndicator", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 17, tag = 18)
        public final String durbin_bin_regulation_indicator;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "ebtIndicator", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 15)
        public final boolean ebt_indicator;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "fleetCardIndicator", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
        public final boolean fleet_card_indicator;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "giftCardIndictor", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
        public final boolean gift_card_indictor;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "hsaFsaAccountIndicator", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
        public final boolean hsa_fsa_account_indicator;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "internationalBinIndicator", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 16, tag = 17)
        public final boolean international_bin_indicator;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "panLength", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final int pan_length;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "pinlessBillPayIndicator", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 14)
        public final boolean pinless_bill_pay_indicator;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "pinlessPos", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 18, tag = 19)
        public final boolean pinless_pos;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "prepaidCardIndicator", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
        public final boolean prepaid_card_indicator;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "sequenceNumber", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final int sequence_number;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "tableId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
        public final String table_id;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "wicBinIndicator", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 15, tag = 16)
        public final boolean wic_bin_indicator;

        public VantivBinEntryPb() {
            this(0, 0, 0, 0, null, false, false, false, false, false, false, false, false, false, false, false, false, null, false, null, WinNT.NLS_VALID_LOCALE_MASK, null);
        }

        public /* synthetic */ VantivBinEntryPb(int i, int i2, int i3, int i4, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, String str2, boolean z13, ByteString byteString, int i5, DefaultConstructorMarker defaultConstructorMarker) {
            this((i5 & 1) != 0 ? 0 : i, (i5 & 2) != 0 ? 0 : i2, (i5 & 4) != 0 ? 0 : i3, (i5 & 8) != 0 ? 0 : i4, (i5 & 16) != 0 ? "" : str, (i5 & 32) != 0 ? false : z, (i5 & 64) != 0 ? false : z2, (i5 & 128) != 0 ? false : z3, (i5 & 256) != 0 ? false : z4, (i5 & 512) != 0 ? false : z5, (i5 & 1024) != 0 ? false : z6, (i5 & 2048) != 0 ? false : z7, (i5 & 4096) != 0 ? false : z8, (i5 & 8192) != 0 ? false : z9, (i5 & 16384) != 0 ? false : z10, (i5 & 32768) != 0 ? false : z11, (i5 & 65536) != 0 ? false : z12, (i5 & 131072) == 0 ? str2 : "", (i5 & 262144) != 0 ? false : z13, (i5 & 524288) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VantivBinEntryPb(int i, int i2, int i3, int i4, String table_id, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, String durbin_bin_regulation_indicator, boolean z13, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(table_id, "table_id");
            Intrinsics.checkNotNullParameter(durbin_bin_regulation_indicator, "durbin_bin_regulation_indicator");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.sequence_number = i;
            this.bin_length = i2;
            this.pan_length = i3;
            this.bin_number = i4;
            this.table_id = table_id;
            this.debit_card_indicator = z;
            this.check_card_indicator = z2;
            this.credit_card_indicator = z3;
            this.gift_card_indictor = z4;
            this.commercial_card_indicator = z5;
            this.fleet_card_indicator = z6;
            this.prepaid_card_indicator = z7;
            this.hsa_fsa_account_indicator = z8;
            this.pinless_bill_pay_indicator = z9;
            this.ebt_indicator = z10;
            this.wic_bin_indicator = z11;
            this.international_bin_indicator = z12;
            this.durbin_bin_regulation_indicator = durbin_bin_regulation_indicator;
            this.pinless_pos = z13;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.sequence_number = this.sequence_number;
            builder.bin_length = this.bin_length;
            builder.pan_length = this.pan_length;
            builder.bin_number = this.bin_number;
            builder.table_id = this.table_id;
            builder.debit_card_indicator = this.debit_card_indicator;
            builder.check_card_indicator = this.check_card_indicator;
            builder.credit_card_indicator = this.credit_card_indicator;
            builder.gift_card_indictor = this.gift_card_indictor;
            builder.commercial_card_indicator = this.commercial_card_indicator;
            builder.fleet_card_indicator = this.fleet_card_indicator;
            builder.prepaid_card_indicator = this.prepaid_card_indicator;
            builder.hsa_fsa_account_indicator = this.hsa_fsa_account_indicator;
            builder.pinless_bill_pay_indicator = this.pinless_bill_pay_indicator;
            builder.ebt_indicator = this.ebt_indicator;
            builder.wic_bin_indicator = this.wic_bin_indicator;
            builder.international_bin_indicator = this.international_bin_indicator;
            builder.durbin_bin_regulation_indicator = this.durbin_bin_regulation_indicator;
            builder.pinless_pos = this.pinless_pos;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof VantivBinEntryPb)) {
                return false;
            }
            VantivBinEntryPb vantivBinEntryPb = (VantivBinEntryPb) other;
            return Intrinsics.areEqual(unknownFields(), vantivBinEntryPb.unknownFields()) && this.sequence_number == vantivBinEntryPb.sequence_number && this.bin_length == vantivBinEntryPb.bin_length && this.pan_length == vantivBinEntryPb.pan_length && this.bin_number == vantivBinEntryPb.bin_number && Intrinsics.areEqual(this.table_id, vantivBinEntryPb.table_id) && this.debit_card_indicator == vantivBinEntryPb.debit_card_indicator && this.check_card_indicator == vantivBinEntryPb.check_card_indicator && this.credit_card_indicator == vantivBinEntryPb.credit_card_indicator && this.gift_card_indictor == vantivBinEntryPb.gift_card_indictor && this.commercial_card_indicator == vantivBinEntryPb.commercial_card_indicator && this.fleet_card_indicator == vantivBinEntryPb.fleet_card_indicator && this.prepaid_card_indicator == vantivBinEntryPb.prepaid_card_indicator && this.hsa_fsa_account_indicator == vantivBinEntryPb.hsa_fsa_account_indicator && this.pinless_bill_pay_indicator == vantivBinEntryPb.pinless_bill_pay_indicator && this.ebt_indicator == vantivBinEntryPb.ebt_indicator && this.wic_bin_indicator == vantivBinEntryPb.wic_bin_indicator && this.international_bin_indicator == vantivBinEntryPb.international_bin_indicator && Intrinsics.areEqual(this.durbin_bin_regulation_indicator, vantivBinEntryPb.durbin_bin_regulation_indicator) && this.pinless_pos == vantivBinEntryPb.pinless_pos;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((((((((((((((((((((((((((((((((((unknownFields().hashCode() * 37) + Integer.hashCode(this.sequence_number)) * 37) + Integer.hashCode(this.bin_length)) * 37) + Integer.hashCode(this.pan_length)) * 37) + Integer.hashCode(this.bin_number)) * 37) + this.table_id.hashCode()) * 37) + Boolean.hashCode(this.debit_card_indicator)) * 37) + Boolean.hashCode(this.check_card_indicator)) * 37) + Boolean.hashCode(this.credit_card_indicator)) * 37) + Boolean.hashCode(this.gift_card_indictor)) * 37) + Boolean.hashCode(this.commercial_card_indicator)) * 37) + Boolean.hashCode(this.fleet_card_indicator)) * 37) + Boolean.hashCode(this.prepaid_card_indicator)) * 37) + Boolean.hashCode(this.hsa_fsa_account_indicator)) * 37) + Boolean.hashCode(this.pinless_bill_pay_indicator)) * 37) + Boolean.hashCode(this.ebt_indicator)) * 37) + Boolean.hashCode(this.wic_bin_indicator)) * 37) + Boolean.hashCode(this.international_bin_indicator)) * 37) + this.durbin_bin_regulation_indicator.hashCode()) * 37) + Boolean.hashCode(this.pinless_pos);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("sequence_number=" + this.sequence_number);
            arrayList2.add("bin_length=" + this.bin_length);
            arrayList2.add("pan_length=" + this.pan_length);
            arrayList2.add("bin_number=" + this.bin_number);
            arrayList2.add("table_id=" + Internal.sanitize(this.table_id));
            arrayList2.add("debit_card_indicator=" + this.debit_card_indicator);
            arrayList2.add("check_card_indicator=" + this.check_card_indicator);
            arrayList2.add("credit_card_indicator=" + this.credit_card_indicator);
            arrayList2.add("gift_card_indictor=" + this.gift_card_indictor);
            arrayList2.add("commercial_card_indicator=" + this.commercial_card_indicator);
            arrayList2.add("fleet_card_indicator=" + this.fleet_card_indicator);
            arrayList2.add("prepaid_card_indicator=" + this.prepaid_card_indicator);
            arrayList2.add("hsa_fsa_account_indicator=" + this.hsa_fsa_account_indicator);
            arrayList2.add("pinless_bill_pay_indicator=" + this.pinless_bill_pay_indicator);
            arrayList2.add("ebt_indicator=" + this.ebt_indicator);
            arrayList2.add("wic_bin_indicator=" + this.wic_bin_indicator);
            arrayList2.add("international_bin_indicator=" + this.international_bin_indicator);
            arrayList2.add("durbin_bin_regulation_indicator=" + Internal.sanitize(this.durbin_bin_regulation_indicator));
            arrayList2.add("pinless_pos=" + this.pinless_pos);
            return CollectionsKt.joinToString$default(arrayList, ", ", "VantivBinEntryPb{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ VantivBinEntryPb copy$default(VantivBinEntryPb vantivBinEntryPb, int i, int i2, int i3, int i4, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, String str2, boolean z13, ByteString byteString, int i5, Object obj) {
            int i6 = (i5 & 1) != 0 ? vantivBinEntryPb.sequence_number : i;
            return vantivBinEntryPb.copy(i6, (i5 & 2) != 0 ? vantivBinEntryPb.bin_length : i2, (i5 & 4) != 0 ? vantivBinEntryPb.pan_length : i3, (i5 & 8) != 0 ? vantivBinEntryPb.bin_number : i4, (i5 & 16) != 0 ? vantivBinEntryPb.table_id : str, (i5 & 32) != 0 ? vantivBinEntryPb.debit_card_indicator : z, (i5 & 64) != 0 ? vantivBinEntryPb.check_card_indicator : z2, (i5 & 128) != 0 ? vantivBinEntryPb.credit_card_indicator : z3, (i5 & 256) != 0 ? vantivBinEntryPb.gift_card_indictor : z4, (i5 & 512) != 0 ? vantivBinEntryPb.commercial_card_indicator : z5, (i5 & 1024) != 0 ? vantivBinEntryPb.fleet_card_indicator : z6, (i5 & 2048) != 0 ? vantivBinEntryPb.prepaid_card_indicator : z7, (i5 & 4096) != 0 ? vantivBinEntryPb.hsa_fsa_account_indicator : z8, (i5 & 8192) != 0 ? vantivBinEntryPb.pinless_bill_pay_indicator : z9, (i5 & 16384) != 0 ? vantivBinEntryPb.ebt_indicator : z10, (i5 & 32768) != 0 ? vantivBinEntryPb.wic_bin_indicator : z11, (i5 & 65536) != 0 ? vantivBinEntryPb.international_bin_indicator : z12, (i5 & 131072) != 0 ? vantivBinEntryPb.durbin_bin_regulation_indicator : str2, (i5 & 262144) != 0 ? vantivBinEntryPb.pinless_pos : z13, (i5 & 524288) != 0 ? vantivBinEntryPb.unknownFields() : byteString);
        }

        public final VantivBinEntryPb copy(int sequence_number, int bin_length, int pan_length, int bin_number, String table_id, boolean debit_card_indicator, boolean check_card_indicator, boolean credit_card_indicator, boolean gift_card_indictor, boolean commercial_card_indicator, boolean fleet_card_indicator, boolean prepaid_card_indicator, boolean hsa_fsa_account_indicator, boolean pinless_bill_pay_indicator, boolean ebt_indicator, boolean wic_bin_indicator, boolean international_bin_indicator, String durbin_bin_regulation_indicator, boolean pinless_pos, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(table_id, "table_id");
            Intrinsics.checkNotNullParameter(durbin_bin_regulation_indicator, "durbin_bin_regulation_indicator");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new VantivBinEntryPb(sequence_number, bin_length, pan_length, bin_number, table_id, debit_card_indicator, check_card_indicator, credit_card_indicator, gift_card_indictor, commercial_card_indicator, fleet_card_indicator, prepaid_card_indicator, hsa_fsa_account_indicator, pinless_bill_pay_indicator, ebt_indicator, wic_bin_indicator, international_bin_indicator, durbin_bin_regulation_indicator, pinless_pos, unknownFields);
        }

        /* JADX INFO: compiled from: VantivBinTablePb.kt */
        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\bJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\bJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\bJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\bJ\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\bJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\bJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\bJ\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\bJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\rJ\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;", "()V", "bin_length", "", "bin_number", "check_card_indicator", "", "commercial_card_indicator", "credit_card_indicator", "debit_card_indicator", "durbin_bin_regulation_indicator", "", "ebt_indicator", "fleet_card_indicator", "gift_card_indictor", "hsa_fsa_account_indicator", "international_bin_indicator", "pan_length", "pinless_bill_pay_indicator", "pinless_pos", "prepaid_card_indicator", "sequence_number", "table_id", "wic_bin_indicator", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<VantivBinEntryPb, Builder> {
            public int bin_length;
            public int bin_number;
            public boolean check_card_indicator;
            public boolean commercial_card_indicator;
            public boolean credit_card_indicator;
            public boolean debit_card_indicator;
            public boolean ebt_indicator;
            public boolean fleet_card_indicator;
            public boolean gift_card_indictor;
            public boolean hsa_fsa_account_indicator;
            public boolean international_bin_indicator;
            public int pan_length;
            public boolean pinless_bill_pay_indicator;
            public boolean pinless_pos;
            public boolean prepaid_card_indicator;
            public int sequence_number;
            public boolean wic_bin_indicator;
            public String table_id = "";
            public String durbin_bin_regulation_indicator = "";

            public final Builder sequence_number(int sequence_number) {
                this.sequence_number = sequence_number;
                return this;
            }

            public final Builder bin_length(int bin_length) {
                this.bin_length = bin_length;
                return this;
            }

            public final Builder pan_length(int pan_length) {
                this.pan_length = pan_length;
                return this;
            }

            public final Builder bin_number(int bin_number) {
                this.bin_number = bin_number;
                return this;
            }

            public final Builder table_id(String table_id) {
                Intrinsics.checkNotNullParameter(table_id, "table_id");
                this.table_id = table_id;
                return this;
            }

            public final Builder debit_card_indicator(boolean debit_card_indicator) {
                this.debit_card_indicator = debit_card_indicator;
                return this;
            }

            public final Builder check_card_indicator(boolean check_card_indicator) {
                this.check_card_indicator = check_card_indicator;
                return this;
            }

            public final Builder credit_card_indicator(boolean credit_card_indicator) {
                this.credit_card_indicator = credit_card_indicator;
                return this;
            }

            public final Builder gift_card_indictor(boolean gift_card_indictor) {
                this.gift_card_indictor = gift_card_indictor;
                return this;
            }

            public final Builder commercial_card_indicator(boolean commercial_card_indicator) {
                this.commercial_card_indicator = commercial_card_indicator;
                return this;
            }

            public final Builder fleet_card_indicator(boolean fleet_card_indicator) {
                this.fleet_card_indicator = fleet_card_indicator;
                return this;
            }

            public final Builder prepaid_card_indicator(boolean prepaid_card_indicator) {
                this.prepaid_card_indicator = prepaid_card_indicator;
                return this;
            }

            public final Builder hsa_fsa_account_indicator(boolean hsa_fsa_account_indicator) {
                this.hsa_fsa_account_indicator = hsa_fsa_account_indicator;
                return this;
            }

            public final Builder pinless_bill_pay_indicator(boolean pinless_bill_pay_indicator) {
                this.pinless_bill_pay_indicator = pinless_bill_pay_indicator;
                return this;
            }

            public final Builder ebt_indicator(boolean ebt_indicator) {
                this.ebt_indicator = ebt_indicator;
                return this;
            }

            public final Builder wic_bin_indicator(boolean wic_bin_indicator) {
                this.wic_bin_indicator = wic_bin_indicator;
                return this;
            }

            public final Builder international_bin_indicator(boolean international_bin_indicator) {
                this.international_bin_indicator = international_bin_indicator;
                return this;
            }

            public final Builder durbin_bin_regulation_indicator(String durbin_bin_regulation_indicator) {
                Intrinsics.checkNotNullParameter(durbin_bin_regulation_indicator, "durbin_bin_regulation_indicator");
                this.durbin_bin_regulation_indicator = durbin_bin_regulation_indicator;
                return this;
            }

            public final Builder pinless_pos(boolean pinless_pos) {
                this.pinless_pos = pinless_pos;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public VantivBinEntryPb build() {
                return new VantivBinEntryPb(this.sequence_number, this.bin_length, this.pan_length, this.bin_number, this.table_id, this.debit_card_indicator, this.check_card_indicator, this.credit_card_indicator, this.gift_card_indictor, this.commercial_card_indicator, this.fleet_card_indicator, this.prepaid_card_indicator, this.hsa_fsa_account_indicator, this.pinless_bill_pay_indicator, this.ebt_indicator, this.wic_bin_indicator, this.international_bin_indicator, this.durbin_bin_regulation_indicator, this.pinless_pos, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: VantivBinTablePb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ VantivBinEntryPb build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(VantivBinEntryPb.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<VantivBinEntryPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.payments.VantivBinTablePb$VantivBinEntryPb$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(VantivBinTablePb.VantivBinEntryPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.sequence_number != 0) {
                        size += ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.sequence_number));
                    }
                    if (value.bin_length != 0) {
                        size += ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.bin_length));
                    }
                    if (value.pan_length != 0) {
                        size += ProtoAdapter.INT32.encodedSizeWithTag(3, Integer.valueOf(value.pan_length));
                    }
                    if (value.bin_number != 0) {
                        size += ProtoAdapter.INT32.encodedSizeWithTag(4, Integer.valueOf(value.bin_number));
                    }
                    if (!Intrinsics.areEqual(value.table_id, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.table_id);
                    }
                    if (value.debit_card_indicator) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(6, Boolean.valueOf(value.debit_card_indicator));
                    }
                    if (value.check_card_indicator) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(7, Boolean.valueOf(value.check_card_indicator));
                    }
                    if (value.credit_card_indicator) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(8, Boolean.valueOf(value.credit_card_indicator));
                    }
                    if (value.gift_card_indictor) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(9, Boolean.valueOf(value.gift_card_indictor));
                    }
                    if (value.commercial_card_indicator) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(10, Boolean.valueOf(value.commercial_card_indicator));
                    }
                    if (value.fleet_card_indicator) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(11, Boolean.valueOf(value.fleet_card_indicator));
                    }
                    if (value.prepaid_card_indicator) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(12, Boolean.valueOf(value.prepaid_card_indicator));
                    }
                    if (value.hsa_fsa_account_indicator) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(13, Boolean.valueOf(value.hsa_fsa_account_indicator));
                    }
                    if (value.pinless_bill_pay_indicator) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(14, Boolean.valueOf(value.pinless_bill_pay_indicator));
                    }
                    if (value.ebt_indicator) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(15, Boolean.valueOf(value.ebt_indicator));
                    }
                    if (value.wic_bin_indicator) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(16, Boolean.valueOf(value.wic_bin_indicator));
                    }
                    if (value.international_bin_indicator) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(17, Boolean.valueOf(value.international_bin_indicator));
                    }
                    if (!Intrinsics.areEqual(value.durbin_bin_regulation_indicator, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(18, value.durbin_bin_regulation_indicator);
                    }
                    return value.pinless_pos ? size + ProtoAdapter.BOOL.encodedSizeWithTag(19, Boolean.valueOf(value.pinless_pos)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, VantivBinTablePb.VantivBinEntryPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.sequence_number != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.sequence_number));
                    }
                    if (value.bin_length != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.bin_length));
                    }
                    if (value.pan_length != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.pan_length));
                    }
                    if (value.bin_number != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.bin_number));
                    }
                    if (!Intrinsics.areEqual(value.table_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 5, value.table_id);
                    }
                    if (value.debit_card_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.debit_card_indicator));
                    }
                    if (value.check_card_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.check_card_indicator));
                    }
                    if (value.credit_card_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 8, Boolean.valueOf(value.credit_card_indicator));
                    }
                    if (value.gift_card_indictor) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 9, Boolean.valueOf(value.gift_card_indictor));
                    }
                    if (value.commercial_card_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 10, Boolean.valueOf(value.commercial_card_indicator));
                    }
                    if (value.fleet_card_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 11, Boolean.valueOf(value.fleet_card_indicator));
                    }
                    if (value.prepaid_card_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 12, Boolean.valueOf(value.prepaid_card_indicator));
                    }
                    if (value.hsa_fsa_account_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 13, Boolean.valueOf(value.hsa_fsa_account_indicator));
                    }
                    if (value.pinless_bill_pay_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 14, Boolean.valueOf(value.pinless_bill_pay_indicator));
                    }
                    if (value.ebt_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 15, Boolean.valueOf(value.ebt_indicator));
                    }
                    if (value.wic_bin_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 16, Boolean.valueOf(value.wic_bin_indicator));
                    }
                    if (value.international_bin_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 17, Boolean.valueOf(value.international_bin_indicator));
                    }
                    if (!Intrinsics.areEqual(value.durbin_bin_regulation_indicator, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 18, value.durbin_bin_regulation_indicator);
                    }
                    if (value.pinless_pos) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 19, Boolean.valueOf(value.pinless_pos));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, VantivBinTablePb.VantivBinEntryPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.pinless_pos) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 19, Boolean.valueOf(value.pinless_pos));
                    }
                    if (!Intrinsics.areEqual(value.durbin_bin_regulation_indicator, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 18, value.durbin_bin_regulation_indicator);
                    }
                    if (value.international_bin_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 17, Boolean.valueOf(value.international_bin_indicator));
                    }
                    if (value.wic_bin_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 16, Boolean.valueOf(value.wic_bin_indicator));
                    }
                    if (value.ebt_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 15, Boolean.valueOf(value.ebt_indicator));
                    }
                    if (value.pinless_bill_pay_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 14, Boolean.valueOf(value.pinless_bill_pay_indicator));
                    }
                    if (value.hsa_fsa_account_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 13, Boolean.valueOf(value.hsa_fsa_account_indicator));
                    }
                    if (value.prepaid_card_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 12, Boolean.valueOf(value.prepaid_card_indicator));
                    }
                    if (value.fleet_card_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 11, Boolean.valueOf(value.fleet_card_indicator));
                    }
                    if (value.commercial_card_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 10, Boolean.valueOf(value.commercial_card_indicator));
                    }
                    if (value.gift_card_indictor) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 9, Boolean.valueOf(value.gift_card_indictor));
                    }
                    if (value.credit_card_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 8, Boolean.valueOf(value.credit_card_indicator));
                    }
                    if (value.check_card_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.check_card_indicator));
                    }
                    if (value.debit_card_indicator) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.debit_card_indicator));
                    }
                    if (!Intrinsics.areEqual(value.table_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 5, value.table_id);
                    }
                    if (value.bin_number != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.bin_number));
                    }
                    if (value.pan_length != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.pan_length));
                    }
                    if (value.bin_length != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.bin_length));
                    }
                    if (value.sequence_number != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.sequence_number));
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public VantivBinTablePb.VantivBinEntryPb redact(VantivBinTablePb.VantivBinEntryPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return VantivBinTablePb.VantivBinEntryPb.copy$default(value, 0, 0, 0, 0, null, false, false, false, false, false, false, false, false, false, false, false, false, null, false, ByteString.EMPTY, 524287, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public VantivBinTablePb.VantivBinEntryPb decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    int iIntValue = 0;
                    int iIntValue2 = 0;
                    int iIntValue3 = 0;
                    int iIntValue4 = 0;
                    boolean zBooleanValue = false;
                    boolean zBooleanValue2 = false;
                    boolean zBooleanValue3 = false;
                    boolean zBooleanValue4 = false;
                    boolean zBooleanValue5 = false;
                    boolean zBooleanValue6 = false;
                    boolean zBooleanValue7 = false;
                    boolean zBooleanValue8 = false;
                    boolean zBooleanValue9 = false;
                    boolean zBooleanValue10 = false;
                    boolean zBooleanValue11 = false;
                    boolean zBooleanValue12 = false;
                    boolean zBooleanValue13 = false;
                    String strDecode2 = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                    break;
                                case 2:
                                    iIntValue2 = ProtoAdapter.INT32.decode(reader).intValue();
                                    break;
                                case 3:
                                    iIntValue3 = ProtoAdapter.INT32.decode(reader).intValue();
                                    break;
                                case 4:
                                    iIntValue4 = ProtoAdapter.INT32.decode(reader).intValue();
                                    break;
                                case 5:
                                    strDecode = ProtoAdapter.STRING.decode(reader);
                                    break;
                                case 6:
                                    zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 7:
                                    zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 8:
                                    zBooleanValue3 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 9:
                                    zBooleanValue4 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 10:
                                    zBooleanValue5 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 11:
                                    zBooleanValue6 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 12:
                                    zBooleanValue7 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 13:
                                    zBooleanValue8 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 14:
                                    zBooleanValue9 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 15:
                                    zBooleanValue10 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 16:
                                    zBooleanValue11 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 17:
                                    zBooleanValue12 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 18:
                                    strDecode2 = ProtoAdapter.STRING.decode(reader);
                                    break;
                                case 19:
                                    zBooleanValue13 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                default:
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                        } else {
                            return new VantivBinTablePb.VantivBinEntryPb(iIntValue, iIntValue2, iIntValue3, iIntValue4, strDecode, zBooleanValue, zBooleanValue2, zBooleanValue3, zBooleanValue4, zBooleanValue5, zBooleanValue6, zBooleanValue7, zBooleanValue8, zBooleanValue9, zBooleanValue10, zBooleanValue11, zBooleanValue12, strDecode2, zBooleanValue13, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }
    }
}
