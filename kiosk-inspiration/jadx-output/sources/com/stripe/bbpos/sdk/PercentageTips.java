package com.stripe.bbpos.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
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

/* JADX INFO: compiled from: PercentageTips.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B=\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ>\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0007H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/bbpos/sdk/PercentageTips;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/PercentageTips$Builder;", BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, "", BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME, BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "tipsPercentageOptions", "", "unknownFields", "Lokio/ByteString;", "(IILjava/lang/String;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PercentageTips extends Message<PercentageTips, Builder> {
    public static final ProtoAdapter<PercentageTips> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final int currencyCode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final int currencyExponent;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 3, tag = 4)
    public final List<String> tipsPercentageOptions;

    public PercentageTips() {
        this(0, 0, null, null, null, 31, null);
    }

    public /* synthetic */ PercentageTips(int i, int i2, String str, List list, ByteString byteString, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? "" : str, (i3 & 8) != 0 ? CollectionsKt.emptyList() : list, (i3 & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PercentageTips(int i, int i2, String amount, List<String> tipsPercentageOptions, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(tipsPercentageOptions, "tipsPercentageOptions");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.currencyCode = i;
        this.currencyExponent = i2;
        this.amount = amount;
        this.tipsPercentageOptions = Internal.immutableCopyOf("tipsPercentageOptions", tipsPercentageOptions);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.currencyCode = this.currencyCode;
        builder.currencyExponent = this.currencyExponent;
        builder.amount = this.amount;
        builder.tipsPercentageOptions = this.tipsPercentageOptions;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PercentageTips)) {
            return false;
        }
        PercentageTips percentageTips = (PercentageTips) other;
        return Intrinsics.areEqual(unknownFields(), percentageTips.unknownFields()) && this.currencyCode == percentageTips.currencyCode && this.currencyExponent == percentageTips.currencyExponent && Intrinsics.areEqual(this.amount, percentageTips.amount) && Intrinsics.areEqual(this.tipsPercentageOptions, percentageTips.tipsPercentageOptions);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + Integer.hashCode(this.currencyCode)) * 37) + Integer.hashCode(this.currencyExponent)) * 37) + this.amount.hashCode()) * 37) + this.tipsPercentageOptions.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("currencyCode=" + this.currencyCode);
        arrayList2.add("currencyExponent=" + this.currencyExponent);
        arrayList2.add("amount=" + Internal.sanitize(this.amount));
        if (!this.tipsPercentageOptions.isEmpty()) {
            arrayList2.add("tipsPercentageOptions=" + Internal.sanitize(this.tipsPercentageOptions));
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "PercentageTips{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PercentageTips copy$default(PercentageTips percentageTips, int i, int i2, String str, List list, ByteString byteString, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = percentageTips.currencyCode;
        }
        if ((i3 & 2) != 0) {
            i2 = percentageTips.currencyExponent;
        }
        if ((i3 & 4) != 0) {
            str = percentageTips.amount;
        }
        if ((i3 & 8) != 0) {
            list = percentageTips.tipsPercentageOptions;
        }
        if ((i3 & 16) != 0) {
            byteString = percentageTips.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str2 = str;
        return percentageTips.copy(i, i2, str2, list, byteString2);
    }

    public final PercentageTips copy(int currencyCode, int currencyExponent, String amount, List<String> tipsPercentageOptions, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(tipsPercentageOptions, "tipsPercentageOptions");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PercentageTips(currencyCode, currencyExponent, amount, tipsPercentageOptions, unknownFields);
    }

    /* JADX INFO: compiled from: PercentageTips.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u0014\u0010\t\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/bbpos/sdk/PercentageTips$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/PercentageTips;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, "", BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME, "tipsPercentageOptions", "", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PercentageTips, Builder> {
        public int currencyCode;
        public int currencyExponent;
        public String amount = "";
        public List<String> tipsPercentageOptions = CollectionsKt.emptyList();

        public final Builder currencyCode(int currencyCode) {
            this.currencyCode = currencyCode;
            return this;
        }

        public final Builder currencyExponent(int currencyExponent) {
            this.currencyExponent = currencyExponent;
            return this;
        }

        public final Builder amount(String amount) {
            Intrinsics.checkNotNullParameter(amount, "amount");
            this.amount = amount;
            return this;
        }

        public final Builder tipsPercentageOptions(List<String> tipsPercentageOptions) {
            Intrinsics.checkNotNullParameter(tipsPercentageOptions, "tipsPercentageOptions");
            Internal.checkElementsNotNull(tipsPercentageOptions);
            this.tipsPercentageOptions = tipsPercentageOptions;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PercentageTips build() {
            return new PercentageTips(this.currencyCode, this.currencyExponent, this.amount, this.tipsPercentageOptions, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PercentageTips.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/PercentageTips$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/PercentageTips;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/PercentageTips$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PercentageTips build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PercentageTips.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PercentageTips>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.PercentageTips$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PercentageTips value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.currencyCode != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(1, Integer.valueOf(value.currencyCode));
                }
                if (value.currencyExponent != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(2, Integer.valueOf(value.currencyExponent));
                }
                if (!Intrinsics.areEqual(value.amount, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.amount);
                }
                return size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(4, value.tipsPercentageOptions);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PercentageTips value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.currencyCode != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 1, Integer.valueOf(value.currencyCode));
                }
                if (value.currencyExponent != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 2, Integer.valueOf(value.currencyExponent));
                }
                if (!Intrinsics.areEqual(value.amount, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.amount);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 4, value.tipsPercentageOptions);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PercentageTips value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 4, value.tipsPercentageOptions);
                if (!Intrinsics.areEqual(value.amount, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.amount);
                }
                if (value.currencyExponent != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 2, Integer.valueOf(value.currencyExponent));
                }
                if (value.currencyCode != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 1, Integer.valueOf(value.currencyCode));
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PercentageTips decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                int iIntValue = 0;
                String strDecode = "";
                int iIntValue2 = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new PercentageTips(iIntValue, iIntValue2, strDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        iIntValue = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else if (iNextTag == 2) {
                        iIntValue2 = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else if (iNextTag == 3) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        arrayList.add(ProtoAdapter.STRING.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PercentageTips redact(PercentageTips value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return PercentageTips.copy$default(value, 0, 0, null, null, ByteString.EMPTY, 15, null);
            }
        };
    }
}
