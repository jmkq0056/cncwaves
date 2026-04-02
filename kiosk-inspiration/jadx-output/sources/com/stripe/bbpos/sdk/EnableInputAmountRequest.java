package com.stripe.bbpos.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
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

/* JADX INFO: compiled from: EnableInputAmountRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBQ\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011JR\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;", "setAmountTimeout", "", "amountInputType", "Lcom/stripe/bbpos/sdk/AmountInputType;", "otherAmountOption", "Lcom/stripe/bbpos/sdk/OtherAmountOption;", "percentageTips", "Lcom/stripe/bbpos/sdk/PercentageTips;", "fixedAmountTips", "Lcom/stripe/bbpos/sdk/FixedAmountTips;", "noTips", "Lcom/stripe/bbpos/sdk/NoTips;", "unknownFields", "Lokio/ByteString;", "(ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/bbpos/sdk/PercentageTips;Lcom/stripe/bbpos/sdk/FixedAmountTips;Lcom/stripe/bbpos/sdk/NoTips;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EnableInputAmountRequest extends Message<EnableInputAmountRequest, Builder> {
    public static final ProtoAdapter<EnableInputAmountRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.bbpos.sdk.AmountInputType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final AmountInputType amountInputType;

    @WireField(adapter = "com.stripe.bbpos.sdk.FixedAmountTips#ADAPTER", oneofName = "tipsConfig", schemaIndex = 4, tag = 5)
    public final FixedAmountTips fixedAmountTips;

    @WireField(adapter = "com.stripe.bbpos.sdk.NoTips#ADAPTER", oneofName = "tipsConfig", schemaIndex = 5, tag = 6)
    public final NoTips noTips;

    @WireField(adapter = "com.stripe.bbpos.sdk.OtherAmountOption#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final OtherAmountOption otherAmountOption;

    @WireField(adapter = "com.stripe.bbpos.sdk.PercentageTips#ADAPTER", oneofName = "tipsConfig", schemaIndex = 3, tag = 4)
    public final PercentageTips percentageTips;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final int setAmountTimeout;

    public EnableInputAmountRequest() {
        this(0, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ EnableInputAmountRequest(int i, AmountInputType amountInputType, OtherAmountOption otherAmountOption, PercentageTips percentageTips, FixedAmountTips fixedAmountTips, NoTips noTips, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? AmountInputType.AMOUNT_INPUT_TYPE_UNKNOWN : amountInputType, (i2 & 4) != 0 ? OtherAmountOption.OTHER_AMOUNT_OPTION_UNKNOWN : otherAmountOption, (i2 & 8) != 0 ? null : percentageTips, (i2 & 16) != 0 ? null : fixedAmountTips, (i2 & 32) != 0 ? null : noTips, (i2 & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnableInputAmountRequest(int i, AmountInputType amountInputType, OtherAmountOption otherAmountOption, PercentageTips percentageTips, FixedAmountTips fixedAmountTips, NoTips noTips, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(amountInputType, "amountInputType");
        Intrinsics.checkNotNullParameter(otherAmountOption, "otherAmountOption");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.setAmountTimeout = i;
        this.amountInputType = amountInputType;
        this.otherAmountOption = otherAmountOption;
        this.percentageTips = percentageTips;
        this.fixedAmountTips = fixedAmountTips;
        this.noTips = noTips;
        if (Internal.countNonNull(percentageTips, fixedAmountTips, noTips) > 1) {
            throw new IllegalArgumentException("At most one of percentageTips, fixedAmountTips, noTips may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.setAmountTimeout = this.setAmountTimeout;
        builder.amountInputType = this.amountInputType;
        builder.otherAmountOption = this.otherAmountOption;
        builder.percentageTips = this.percentageTips;
        builder.fixedAmountTips = this.fixedAmountTips;
        builder.noTips = this.noTips;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof EnableInputAmountRequest)) {
            return false;
        }
        EnableInputAmountRequest enableInputAmountRequest = (EnableInputAmountRequest) other;
        return Intrinsics.areEqual(unknownFields(), enableInputAmountRequest.unknownFields()) && this.setAmountTimeout == enableInputAmountRequest.setAmountTimeout && this.amountInputType == enableInputAmountRequest.amountInputType && this.otherAmountOption == enableInputAmountRequest.otherAmountOption && Intrinsics.areEqual(this.percentageTips, enableInputAmountRequest.percentageTips) && Intrinsics.areEqual(this.fixedAmountTips, enableInputAmountRequest.fixedAmountTips) && Intrinsics.areEqual(this.noTips, enableInputAmountRequest.noTips);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((unknownFields().hashCode() * 37) + Integer.hashCode(this.setAmountTimeout)) * 37) + this.amountInputType.hashCode()) * 37) + this.otherAmountOption.hashCode()) * 37;
        PercentageTips percentageTips = this.percentageTips;
        int iHashCode2 = (iHashCode + (percentageTips != null ? percentageTips.hashCode() : 0)) * 37;
        FixedAmountTips fixedAmountTips = this.fixedAmountTips;
        int iHashCode3 = (iHashCode2 + (fixedAmountTips != null ? fixedAmountTips.hashCode() : 0)) * 37;
        NoTips noTips = this.noTips;
        int iHashCode4 = iHashCode3 + (noTips != null ? noTips.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("setAmountTimeout=" + this.setAmountTimeout);
        arrayList2.add("amountInputType=" + this.amountInputType);
        arrayList2.add("otherAmountOption=" + this.otherAmountOption);
        if (this.percentageTips != null) {
            arrayList2.add("percentageTips=" + this.percentageTips);
        }
        if (this.fixedAmountTips != null) {
            arrayList2.add("fixedAmountTips=" + this.fixedAmountTips);
        }
        if (this.noTips != null) {
            arrayList2.add("noTips=" + this.noTips);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "EnableInputAmountRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ EnableInputAmountRequest copy$default(EnableInputAmountRequest enableInputAmountRequest, int i, AmountInputType amountInputType, OtherAmountOption otherAmountOption, PercentageTips percentageTips, FixedAmountTips fixedAmountTips, NoTips noTips, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = enableInputAmountRequest.setAmountTimeout;
        }
        if ((i2 & 2) != 0) {
            amountInputType = enableInputAmountRequest.amountInputType;
        }
        if ((i2 & 4) != 0) {
            otherAmountOption = enableInputAmountRequest.otherAmountOption;
        }
        if ((i2 & 8) != 0) {
            percentageTips = enableInputAmountRequest.percentageTips;
        }
        if ((i2 & 16) != 0) {
            fixedAmountTips = enableInputAmountRequest.fixedAmountTips;
        }
        if ((i2 & 32) != 0) {
            noTips = enableInputAmountRequest.noTips;
        }
        if ((i2 & 64) != 0) {
            byteString = enableInputAmountRequest.unknownFields();
        }
        NoTips noTips2 = noTips;
        ByteString byteString2 = byteString;
        FixedAmountTips fixedAmountTips2 = fixedAmountTips;
        OtherAmountOption otherAmountOption2 = otherAmountOption;
        return enableInputAmountRequest.copy(i, amountInputType, otherAmountOption2, percentageTips, fixedAmountTips2, noTips2, byteString2);
    }

    public final EnableInputAmountRequest copy(int setAmountTimeout, AmountInputType amountInputType, OtherAmountOption otherAmountOption, PercentageTips percentageTips, FixedAmountTips fixedAmountTips, NoTips noTips, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(amountInputType, "amountInputType");
        Intrinsics.checkNotNullParameter(otherAmountOption, "otherAmountOption");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new EnableInputAmountRequest(setAmountTimeout, amountInputType, otherAmountOption, percentageTips, fixedAmountTips, noTips, unknownFields);
    }

    /* JADX INFO: compiled from: EnableInputAmountRequest.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;", "()V", "amountInputType", "Lcom/stripe/bbpos/sdk/AmountInputType;", "fixedAmountTips", "Lcom/stripe/bbpos/sdk/FixedAmountTips;", "noTips", "Lcom/stripe/bbpos/sdk/NoTips;", "otherAmountOption", "Lcom/stripe/bbpos/sdk/OtherAmountOption;", "percentageTips", "Lcom/stripe/bbpos/sdk/PercentageTips;", "setAmountTimeout", "", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<EnableInputAmountRequest, Builder> {
        public FixedAmountTips fixedAmountTips;
        public NoTips noTips;
        public PercentageTips percentageTips;
        public int setAmountTimeout;
        public AmountInputType amountInputType = AmountInputType.AMOUNT_INPUT_TYPE_UNKNOWN;
        public OtherAmountOption otherAmountOption = OtherAmountOption.OTHER_AMOUNT_OPTION_UNKNOWN;

        public final Builder setAmountTimeout(int setAmountTimeout) {
            this.setAmountTimeout = setAmountTimeout;
            return this;
        }

        public final Builder amountInputType(AmountInputType amountInputType) {
            Intrinsics.checkNotNullParameter(amountInputType, "amountInputType");
            this.amountInputType = amountInputType;
            return this;
        }

        public final Builder otherAmountOption(OtherAmountOption otherAmountOption) {
            Intrinsics.checkNotNullParameter(otherAmountOption, "otherAmountOption");
            this.otherAmountOption = otherAmountOption;
            return this;
        }

        public final Builder percentageTips(PercentageTips percentageTips) {
            this.percentageTips = percentageTips;
            this.fixedAmountTips = null;
            this.noTips = null;
            return this;
        }

        public final Builder fixedAmountTips(FixedAmountTips fixedAmountTips) {
            this.fixedAmountTips = fixedAmountTips;
            this.percentageTips = null;
            this.noTips = null;
            return this;
        }

        public final Builder noTips(NoTips noTips) {
            this.noTips = noTips;
            this.percentageTips = null;
            this.fixedAmountTips = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public EnableInputAmountRequest build() {
            return new EnableInputAmountRequest(this.setAmountTimeout, this.amountInputType, this.otherAmountOption, this.percentageTips, this.fixedAmountTips, this.noTips, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: EnableInputAmountRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ EnableInputAmountRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EnableInputAmountRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<EnableInputAmountRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.EnableInputAmountRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(EnableInputAmountRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.setAmountTimeout != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(1, Integer.valueOf(value.setAmountTimeout));
                }
                if (value.amountInputType != AmountInputType.AMOUNT_INPUT_TYPE_UNKNOWN) {
                    size += AmountInputType.ADAPTER.encodedSizeWithTag(2, value.amountInputType);
                }
                if (value.otherAmountOption != OtherAmountOption.OTHER_AMOUNT_OPTION_UNKNOWN) {
                    size += OtherAmountOption.ADAPTER.encodedSizeWithTag(3, value.otherAmountOption);
                }
                return size + PercentageTips.ADAPTER.encodedSizeWithTag(4, value.percentageTips) + FixedAmountTips.ADAPTER.encodedSizeWithTag(5, value.fixedAmountTips) + NoTips.ADAPTER.encodedSizeWithTag(6, value.noTips);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, EnableInputAmountRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.setAmountTimeout != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 1, Integer.valueOf(value.setAmountTimeout));
                }
                if (value.amountInputType != AmountInputType.AMOUNT_INPUT_TYPE_UNKNOWN) {
                    AmountInputType.ADAPTER.encodeWithTag(writer, 2, value.amountInputType);
                }
                if (value.otherAmountOption != OtherAmountOption.OTHER_AMOUNT_OPTION_UNKNOWN) {
                    OtherAmountOption.ADAPTER.encodeWithTag(writer, 3, value.otherAmountOption);
                }
                PercentageTips.ADAPTER.encodeWithTag(writer, 4, value.percentageTips);
                FixedAmountTips.ADAPTER.encodeWithTag(writer, 5, value.fixedAmountTips);
                NoTips.ADAPTER.encodeWithTag(writer, 6, value.noTips);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, EnableInputAmountRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                NoTips.ADAPTER.encodeWithTag(writer, 6, value.noTips);
                FixedAmountTips.ADAPTER.encodeWithTag(writer, 5, value.fixedAmountTips);
                PercentageTips.ADAPTER.encodeWithTag(writer, 4, value.percentageTips);
                if (value.otherAmountOption != OtherAmountOption.OTHER_AMOUNT_OPTION_UNKNOWN) {
                    OtherAmountOption.ADAPTER.encodeWithTag(writer, 3, value.otherAmountOption);
                }
                if (value.amountInputType != AmountInputType.AMOUNT_INPUT_TYPE_UNKNOWN) {
                    AmountInputType.ADAPTER.encodeWithTag(writer, 2, value.amountInputType);
                }
                if (value.setAmountTimeout != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 1, Integer.valueOf(value.setAmountTimeout));
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
            public com.stripe.bbpos.sdk.EnableInputAmountRequest decode(com.squareup.wire.ProtoReader r14) throws java.io.IOException {
                /*
                    r13 = this;
                    java.lang.String r0 = "reader"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
                    com.stripe.bbpos.sdk.AmountInputType r0 = com.stripe.bbpos.sdk.AmountInputType.AMOUNT_INPUT_TYPE_UNKNOWN
                    com.stripe.bbpos.sdk.OtherAmountOption r1 = com.stripe.bbpos.sdk.OtherAmountOption.OTHER_AMOUNT_OPTION_UNKNOWN
                    long r2 = r14.beginMessage()
                    r4 = 0
                    r5 = 0
                    r6 = r4
                    r7 = r5
                    r8 = r7
                    r4 = r1
                L13:
                    r1 = r0
                L14:
                    int r9 = r14.nextTag()
                    r0 = -1
                    if (r9 == r0) goto L73
                    switch(r9) {
                        case 1: goto L65;
                        case 2: goto L50;
                        case 3: goto L3a;
                        case 4: goto L32;
                        case 5: goto L2a;
                        case 6: goto L22;
                        default: goto L1e;
                    }
                L1e:
                    r14.readUnknownField(r9)
                    goto L14
                L22:
                    com.squareup.wire.ProtoAdapter<com.stripe.bbpos.sdk.NoTips> r0 = com.stripe.bbpos.sdk.NoTips.ADAPTER
                    java.lang.Object r0 = r0.decode(r14)
                    r8 = r0
                    goto L14
                L2a:
                    com.squareup.wire.ProtoAdapter<com.stripe.bbpos.sdk.FixedAmountTips> r0 = com.stripe.bbpos.sdk.FixedAmountTips.ADAPTER
                    java.lang.Object r0 = r0.decode(r14)
                    r7 = r0
                    goto L14
                L32:
                    com.squareup.wire.ProtoAdapter<com.stripe.bbpos.sdk.PercentageTips> r0 = com.stripe.bbpos.sdk.PercentageTips.ADAPTER
                    java.lang.Object r0 = r0.decode(r14)
                    r5 = r0
                    goto L14
                L3a:
                    com.squareup.wire.ProtoAdapter<com.stripe.bbpos.sdk.OtherAmountOption> r0 = com.stripe.bbpos.sdk.OtherAmountOption.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L42
                    java.lang.Object r0 = r0.decode(r14)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L42
                    r4 = r0
                    goto L14
                L42:
                    r0 = move-exception
                    com.squareup.wire.FieldEncoding r10 = com.squareup.wire.FieldEncoding.VARINT
                    int r0 = r0.value
                    long r11 = (long) r0
                    java.lang.Long r0 = java.lang.Long.valueOf(r11)
                    r14.addUnknownField(r9, r10, r0)
                    goto L14
                L50:
                    com.squareup.wire.ProtoAdapter<com.stripe.bbpos.sdk.AmountInputType> r0 = com.stripe.bbpos.sdk.AmountInputType.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L57
                    java.lang.Object r0 = r0.decode(r14)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L57
                    goto L13
                L57:
                    r0 = move-exception
                    com.squareup.wire.FieldEncoding r10 = com.squareup.wire.FieldEncoding.VARINT
                    int r0 = r0.value
                    long r11 = (long) r0
                    java.lang.Long r0 = java.lang.Long.valueOf(r11)
                    r14.addUnknownField(r9, r10, r0)
                    goto L14
                L65:
                    com.squareup.wire.ProtoAdapter<java.lang.Integer> r0 = com.squareup.wire.ProtoAdapter.UINT32
                    java.lang.Object r0 = r0.decode(r14)
                    java.lang.Number r0 = (java.lang.Number) r0
                    int r0 = r0.intValue()
                    r6 = r0
                    goto L14
                L73:
                    okio.ByteString r12 = r14.endMessageAndGetUnknownFields(r2)
                    r14 = r5
                    com.stripe.bbpos.sdk.EnableInputAmountRequest r5 = new com.stripe.bbpos.sdk.EnableInputAmountRequest
                    com.stripe.bbpos.sdk.AmountInputType r1 = (com.stripe.bbpos.sdk.AmountInputType) r1
                    com.stripe.bbpos.sdk.OtherAmountOption r4 = (com.stripe.bbpos.sdk.OtherAmountOption) r4
                    r9 = r14
                    com.stripe.bbpos.sdk.PercentageTips r9 = (com.stripe.bbpos.sdk.PercentageTips) r9
                    r10 = r7
                    com.stripe.bbpos.sdk.FixedAmountTips r10 = (com.stripe.bbpos.sdk.FixedAmountTips) r10
                    r11 = r8
                    com.stripe.bbpos.sdk.NoTips r11 = (com.stripe.bbpos.sdk.NoTips) r11
                    r7 = r1
                    r8 = r4
                    r5.<init>(r6, r7, r8, r9, r10, r11, r12)
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.sdk.EnableInputAmountRequest$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.bbpos.sdk.EnableInputAmountRequest");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public EnableInputAmountRequest redact(EnableInputAmountRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PercentageTips percentageTips = value.percentageTips;
                PercentageTips percentageTipsRedact = percentageTips != null ? PercentageTips.ADAPTER.redact(percentageTips) : null;
                FixedAmountTips fixedAmountTips = value.fixedAmountTips;
                FixedAmountTips fixedAmountTipsRedact = fixedAmountTips != null ? FixedAmountTips.ADAPTER.redact(fixedAmountTips) : null;
                NoTips noTips = value.noTips;
                return EnableInputAmountRequest.copy$default(value, 0, null, null, percentageTipsRedact, fixedAmountTipsRedact, noTips != null ? NoTips.ADAPTER.redact(noTips) : null, ByteString.EMPTY, 7, null);
            }
        };
    }
}
