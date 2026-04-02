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
import com.stripe.proto.model.payments.RabbitBinTablePb;
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
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: RabbitBinTablePb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u001d\u001e\u001f !Bs\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012Jt\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/stripe/proto/model/payments/RabbitBinTablePb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;", "credit_card_pipeline", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;", "commercial_card_pipeline", "prepaid_card_pipeline", "hsa_fsa_card_pipeline", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;", "wic_card_pipeline", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;", "ebt_card_pipeline", "credit_brand_exceptions", "", "Lcom/stripe/proto/model/payments/CreditBinEntry;", "unbranded_card_pipeline", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Ljava/util/List;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "BloomFilterCardPipeline", "Builder", "Companion", "EbtCardPipeline", "HsaFsaCardPipeline", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RabbitBinTablePb extends Message<RabbitBinTablePb, Builder> {
    public static final ProtoAdapter<RabbitBinTablePb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.payments.RabbitBinTablePb$BloomFilterCardPipeline#ADAPTER", jsonName = "commercialCardPipeline", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final BloomFilterCardPipeline commercial_card_pipeline;

    @WireField(adapter = "com.stripe.proto.model.payments.CreditBinEntry#ADAPTER", jsonName = "creditBrandExceptions", label = WireField.Label.REPEATED, schemaIndex = 6, tag = 7)
    public final List<CreditBinEntry> credit_brand_exceptions;

    @WireField(adapter = "com.stripe.proto.model.payments.RabbitBinTablePb$BloomFilterCardPipeline#ADAPTER", jsonName = "creditCardPipeline", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final BloomFilterCardPipeline credit_card_pipeline;

    @WireField(adapter = "com.stripe.proto.model.payments.RabbitBinTablePb$EbtCardPipeline#ADAPTER", jsonName = "ebtCardPipeline", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final EbtCardPipeline ebt_card_pipeline;

    @WireField(adapter = "com.stripe.proto.model.payments.RabbitBinTablePb$HsaFsaCardPipeline#ADAPTER", jsonName = "hsaFsaCardPipeline", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final HsaFsaCardPipeline hsa_fsa_card_pipeline;

    @WireField(adapter = "com.stripe.proto.model.payments.RabbitBinTablePb$BloomFilterCardPipeline#ADAPTER", jsonName = "prepaidCardPipeline", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final BloomFilterCardPipeline prepaid_card_pipeline;

    @WireField(adapter = "com.stripe.proto.model.payments.RabbitBinTablePb$BloomFilterCardPipeline#ADAPTER", jsonName = "unbrandedCardPipeline", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final BloomFilterCardPipeline unbranded_card_pipeline;

    @WireField(adapter = "com.stripe.proto.model.payments.RabbitBinTablePb$EbtCardPipeline#ADAPTER", jsonName = "wicCardPipeline", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final EbtCardPipeline wic_card_pipeline;

    public RabbitBinTablePb() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public /* synthetic */ RabbitBinTablePb(BloomFilterCardPipeline bloomFilterCardPipeline, BloomFilterCardPipeline bloomFilterCardPipeline2, BloomFilterCardPipeline bloomFilterCardPipeline3, HsaFsaCardPipeline hsaFsaCardPipeline, EbtCardPipeline ebtCardPipeline, EbtCardPipeline ebtCardPipeline2, List list, BloomFilterCardPipeline bloomFilterCardPipeline4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bloomFilterCardPipeline, (i & 2) != 0 ? null : bloomFilterCardPipeline2, (i & 4) != 0 ? null : bloomFilterCardPipeline3, (i & 8) != 0 ? null : hsaFsaCardPipeline, (i & 16) != 0 ? null : ebtCardPipeline, (i & 32) != 0 ? null : ebtCardPipeline2, (i & 64) != 0 ? CollectionsKt.emptyList() : list, (i & 128) != 0 ? null : bloomFilterCardPipeline4, (i & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RabbitBinTablePb(BloomFilterCardPipeline bloomFilterCardPipeline, BloomFilterCardPipeline bloomFilterCardPipeline2, BloomFilterCardPipeline bloomFilterCardPipeline3, HsaFsaCardPipeline hsaFsaCardPipeline, EbtCardPipeline ebtCardPipeline, EbtCardPipeline ebtCardPipeline2, List<CreditBinEntry> credit_brand_exceptions, BloomFilterCardPipeline bloomFilterCardPipeline4, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(credit_brand_exceptions, "credit_brand_exceptions");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.credit_card_pipeline = bloomFilterCardPipeline;
        this.commercial_card_pipeline = bloomFilterCardPipeline2;
        this.prepaid_card_pipeline = bloomFilterCardPipeline3;
        this.hsa_fsa_card_pipeline = hsaFsaCardPipeline;
        this.wic_card_pipeline = ebtCardPipeline;
        this.ebt_card_pipeline = ebtCardPipeline2;
        this.unbranded_card_pipeline = bloomFilterCardPipeline4;
        this.credit_brand_exceptions = Internal.immutableCopyOf("credit_brand_exceptions", credit_brand_exceptions);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.credit_card_pipeline = this.credit_card_pipeline;
        builder.commercial_card_pipeline = this.commercial_card_pipeline;
        builder.prepaid_card_pipeline = this.prepaid_card_pipeline;
        builder.hsa_fsa_card_pipeline = this.hsa_fsa_card_pipeline;
        builder.wic_card_pipeline = this.wic_card_pipeline;
        builder.ebt_card_pipeline = this.ebt_card_pipeline;
        builder.credit_brand_exceptions = this.credit_brand_exceptions;
        builder.unbranded_card_pipeline = this.unbranded_card_pipeline;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RabbitBinTablePb)) {
            return false;
        }
        RabbitBinTablePb rabbitBinTablePb = (RabbitBinTablePb) other;
        return Intrinsics.areEqual(unknownFields(), rabbitBinTablePb.unknownFields()) && Intrinsics.areEqual(this.credit_card_pipeline, rabbitBinTablePb.credit_card_pipeline) && Intrinsics.areEqual(this.commercial_card_pipeline, rabbitBinTablePb.commercial_card_pipeline) && Intrinsics.areEqual(this.prepaid_card_pipeline, rabbitBinTablePb.prepaid_card_pipeline) && Intrinsics.areEqual(this.hsa_fsa_card_pipeline, rabbitBinTablePb.hsa_fsa_card_pipeline) && Intrinsics.areEqual(this.wic_card_pipeline, rabbitBinTablePb.wic_card_pipeline) && Intrinsics.areEqual(this.ebt_card_pipeline, rabbitBinTablePb.ebt_card_pipeline) && Intrinsics.areEqual(this.credit_brand_exceptions, rabbitBinTablePb.credit_brand_exceptions) && Intrinsics.areEqual(this.unbranded_card_pipeline, rabbitBinTablePb.unbranded_card_pipeline);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        BloomFilterCardPipeline bloomFilterCardPipeline = this.credit_card_pipeline;
        int iHashCode2 = (iHashCode + (bloomFilterCardPipeline != null ? bloomFilterCardPipeline.hashCode() : 0)) * 37;
        BloomFilterCardPipeline bloomFilterCardPipeline2 = this.commercial_card_pipeline;
        int iHashCode3 = (iHashCode2 + (bloomFilterCardPipeline2 != null ? bloomFilterCardPipeline2.hashCode() : 0)) * 37;
        BloomFilterCardPipeline bloomFilterCardPipeline3 = this.prepaid_card_pipeline;
        int iHashCode4 = (iHashCode3 + (bloomFilterCardPipeline3 != null ? bloomFilterCardPipeline3.hashCode() : 0)) * 37;
        HsaFsaCardPipeline hsaFsaCardPipeline = this.hsa_fsa_card_pipeline;
        int iHashCode5 = (iHashCode4 + (hsaFsaCardPipeline != null ? hsaFsaCardPipeline.hashCode() : 0)) * 37;
        EbtCardPipeline ebtCardPipeline = this.wic_card_pipeline;
        int iHashCode6 = (iHashCode5 + (ebtCardPipeline != null ? ebtCardPipeline.hashCode() : 0)) * 37;
        EbtCardPipeline ebtCardPipeline2 = this.ebt_card_pipeline;
        int iHashCode7 = (((iHashCode6 + (ebtCardPipeline2 != null ? ebtCardPipeline2.hashCode() : 0)) * 37) + this.credit_brand_exceptions.hashCode()) * 37;
        BloomFilterCardPipeline bloomFilterCardPipeline4 = this.unbranded_card_pipeline;
        int iHashCode8 = iHashCode7 + (bloomFilterCardPipeline4 != null ? bloomFilterCardPipeline4.hashCode() : 0);
        this.hashCode = iHashCode8;
        return iHashCode8;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.credit_card_pipeline != null) {
            arrayList.add("credit_card_pipeline=" + this.credit_card_pipeline);
        }
        if (this.commercial_card_pipeline != null) {
            arrayList.add("commercial_card_pipeline=" + this.commercial_card_pipeline);
        }
        if (this.prepaid_card_pipeline != null) {
            arrayList.add("prepaid_card_pipeline=" + this.prepaid_card_pipeline);
        }
        if (this.hsa_fsa_card_pipeline != null) {
            arrayList.add("hsa_fsa_card_pipeline=" + this.hsa_fsa_card_pipeline);
        }
        if (this.wic_card_pipeline != null) {
            arrayList.add("wic_card_pipeline=" + this.wic_card_pipeline);
        }
        if (this.ebt_card_pipeline != null) {
            arrayList.add("ebt_card_pipeline=" + this.ebt_card_pipeline);
        }
        if (!this.credit_brand_exceptions.isEmpty()) {
            arrayList.add("credit_brand_exceptions=" + this.credit_brand_exceptions);
        }
        if (this.unbranded_card_pipeline != null) {
            arrayList.add("unbranded_card_pipeline=" + this.unbranded_card_pipeline);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "RabbitBinTablePb{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RabbitBinTablePb copy$default(RabbitBinTablePb rabbitBinTablePb, BloomFilterCardPipeline bloomFilterCardPipeline, BloomFilterCardPipeline bloomFilterCardPipeline2, BloomFilterCardPipeline bloomFilterCardPipeline3, HsaFsaCardPipeline hsaFsaCardPipeline, EbtCardPipeline ebtCardPipeline, EbtCardPipeline ebtCardPipeline2, List list, BloomFilterCardPipeline bloomFilterCardPipeline4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            bloomFilterCardPipeline = rabbitBinTablePb.credit_card_pipeline;
        }
        if ((i & 2) != 0) {
            bloomFilterCardPipeline2 = rabbitBinTablePb.commercial_card_pipeline;
        }
        if ((i & 4) != 0) {
            bloomFilterCardPipeline3 = rabbitBinTablePb.prepaid_card_pipeline;
        }
        if ((i & 8) != 0) {
            hsaFsaCardPipeline = rabbitBinTablePb.hsa_fsa_card_pipeline;
        }
        if ((i & 16) != 0) {
            ebtCardPipeline = rabbitBinTablePb.wic_card_pipeline;
        }
        if ((i & 32) != 0) {
            ebtCardPipeline2 = rabbitBinTablePb.ebt_card_pipeline;
        }
        if ((i & 64) != 0) {
            list = rabbitBinTablePb.credit_brand_exceptions;
        }
        if ((i & 128) != 0) {
            bloomFilterCardPipeline4 = rabbitBinTablePb.unbranded_card_pipeline;
        }
        if ((i & 256) != 0) {
            byteString = rabbitBinTablePb.unknownFields();
        }
        BloomFilterCardPipeline bloomFilterCardPipeline5 = bloomFilterCardPipeline4;
        ByteString byteString2 = byteString;
        EbtCardPipeline ebtCardPipeline3 = ebtCardPipeline2;
        List list2 = list;
        EbtCardPipeline ebtCardPipeline4 = ebtCardPipeline;
        BloomFilterCardPipeline bloomFilterCardPipeline6 = bloomFilterCardPipeline3;
        return rabbitBinTablePb.copy(bloomFilterCardPipeline, bloomFilterCardPipeline2, bloomFilterCardPipeline6, hsaFsaCardPipeline, ebtCardPipeline4, ebtCardPipeline3, list2, bloomFilterCardPipeline5, byteString2);
    }

    public final RabbitBinTablePb copy(BloomFilterCardPipeline credit_card_pipeline, BloomFilterCardPipeline commercial_card_pipeline, BloomFilterCardPipeline prepaid_card_pipeline, HsaFsaCardPipeline hsa_fsa_card_pipeline, EbtCardPipeline wic_card_pipeline, EbtCardPipeline ebt_card_pipeline, List<CreditBinEntry> credit_brand_exceptions, BloomFilterCardPipeline unbranded_card_pipeline, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(credit_brand_exceptions, "credit_brand_exceptions");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RabbitBinTablePb(credit_card_pipeline, commercial_card_pipeline, prepaid_card_pipeline, hsa_fsa_card_pipeline, wic_card_pipeline, ebt_card_pipeline, credit_brand_exceptions, unbranded_card_pipeline, unknownFields);
    }

    /* JADX INFO: compiled from: RabbitBinTablePb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb;", "()V", "commercial_card_pipeline", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;", "credit_brand_exceptions", "", "Lcom/stripe/proto/model/payments/CreditBinEntry;", "credit_card_pipeline", "ebt_card_pipeline", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;", "hsa_fsa_card_pipeline", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;", "prepaid_card_pipeline", "unbranded_card_pipeline", "wic_card_pipeline", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RabbitBinTablePb, Builder> {
        public BloomFilterCardPipeline commercial_card_pipeline;
        public List<CreditBinEntry> credit_brand_exceptions = CollectionsKt.emptyList();
        public BloomFilterCardPipeline credit_card_pipeline;
        public EbtCardPipeline ebt_card_pipeline;
        public HsaFsaCardPipeline hsa_fsa_card_pipeline;
        public BloomFilterCardPipeline prepaid_card_pipeline;
        public BloomFilterCardPipeline unbranded_card_pipeline;
        public EbtCardPipeline wic_card_pipeline;

        public final Builder credit_card_pipeline(BloomFilterCardPipeline credit_card_pipeline) {
            this.credit_card_pipeline = credit_card_pipeline;
            return this;
        }

        public final Builder commercial_card_pipeline(BloomFilterCardPipeline commercial_card_pipeline) {
            this.commercial_card_pipeline = commercial_card_pipeline;
            return this;
        }

        public final Builder prepaid_card_pipeline(BloomFilterCardPipeline prepaid_card_pipeline) {
            this.prepaid_card_pipeline = prepaid_card_pipeline;
            return this;
        }

        public final Builder hsa_fsa_card_pipeline(HsaFsaCardPipeline hsa_fsa_card_pipeline) {
            this.hsa_fsa_card_pipeline = hsa_fsa_card_pipeline;
            return this;
        }

        public final Builder wic_card_pipeline(EbtCardPipeline wic_card_pipeline) {
            this.wic_card_pipeline = wic_card_pipeline;
            return this;
        }

        public final Builder ebt_card_pipeline(EbtCardPipeline ebt_card_pipeline) {
            this.ebt_card_pipeline = ebt_card_pipeline;
            return this;
        }

        public final Builder credit_brand_exceptions(List<CreditBinEntry> credit_brand_exceptions) {
            Intrinsics.checkNotNullParameter(credit_brand_exceptions, "credit_brand_exceptions");
            Internal.checkElementsNotNull(credit_brand_exceptions);
            this.credit_brand_exceptions = credit_brand_exceptions;
            return this;
        }

        public final Builder unbranded_card_pipeline(BloomFilterCardPipeline unbranded_card_pipeline) {
            this.unbranded_card_pipeline = unbranded_card_pipeline;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RabbitBinTablePb build() {
            return new RabbitBinTablePb(this.credit_card_pipeline, this.commercial_card_pipeline, this.prepaid_card_pipeline, this.hsa_fsa_card_pipeline, this.wic_card_pipeline, this.ebt_card_pipeline, this.credit_brand_exceptions, this.unbranded_card_pipeline, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RabbitBinTablePb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/payments/RabbitBinTablePb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RabbitBinTablePb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RabbitBinTablePb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RabbitBinTablePb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.payments.RabbitBinTablePb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RabbitBinTablePb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.credit_card_pipeline != null) {
                    size += RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.encodedSizeWithTag(1, value.credit_card_pipeline);
                }
                if (value.commercial_card_pipeline != null) {
                    size += RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.encodedSizeWithTag(2, value.commercial_card_pipeline);
                }
                if (value.prepaid_card_pipeline != null) {
                    size += RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.encodedSizeWithTag(3, value.prepaid_card_pipeline);
                }
                if (value.hsa_fsa_card_pipeline != null) {
                    size += RabbitBinTablePb.HsaFsaCardPipeline.ADAPTER.encodedSizeWithTag(4, value.hsa_fsa_card_pipeline);
                }
                if (value.wic_card_pipeline != null) {
                    size += RabbitBinTablePb.EbtCardPipeline.ADAPTER.encodedSizeWithTag(5, value.wic_card_pipeline);
                }
                if (value.ebt_card_pipeline != null) {
                    size += RabbitBinTablePb.EbtCardPipeline.ADAPTER.encodedSizeWithTag(6, value.ebt_card_pipeline);
                }
                int iEncodedSizeWithTag = size + CreditBinEntry.ADAPTER.asRepeated().encodedSizeWithTag(7, value.credit_brand_exceptions);
                return value.unbranded_card_pipeline != null ? iEncodedSizeWithTag + RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.encodedSizeWithTag(8, value.unbranded_card_pipeline) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RabbitBinTablePb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.credit_card_pipeline != null) {
                    RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.encodeWithTag(writer, 1, value.credit_card_pipeline);
                }
                if (value.commercial_card_pipeline != null) {
                    RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.encodeWithTag(writer, 2, value.commercial_card_pipeline);
                }
                if (value.prepaid_card_pipeline != null) {
                    RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.encodeWithTag(writer, 3, value.prepaid_card_pipeline);
                }
                if (value.hsa_fsa_card_pipeline != null) {
                    RabbitBinTablePb.HsaFsaCardPipeline.ADAPTER.encodeWithTag(writer, 4, value.hsa_fsa_card_pipeline);
                }
                if (value.wic_card_pipeline != null) {
                    RabbitBinTablePb.EbtCardPipeline.ADAPTER.encodeWithTag(writer, 5, value.wic_card_pipeline);
                }
                if (value.ebt_card_pipeline != null) {
                    RabbitBinTablePb.EbtCardPipeline.ADAPTER.encodeWithTag(writer, 6, value.ebt_card_pipeline);
                }
                CreditBinEntry.ADAPTER.asRepeated().encodeWithTag(writer, 7, value.credit_brand_exceptions);
                if (value.unbranded_card_pipeline != null) {
                    RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.encodeWithTag(writer, 8, value.unbranded_card_pipeline);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RabbitBinTablePb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.unbranded_card_pipeline != null) {
                    RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.encodeWithTag(writer, 8, value.unbranded_card_pipeline);
                }
                CreditBinEntry.ADAPTER.asRepeated().encodeWithTag(writer, 7, value.credit_brand_exceptions);
                if (value.ebt_card_pipeline != null) {
                    RabbitBinTablePb.EbtCardPipeline.ADAPTER.encodeWithTag(writer, 6, value.ebt_card_pipeline);
                }
                if (value.wic_card_pipeline != null) {
                    RabbitBinTablePb.EbtCardPipeline.ADAPTER.encodeWithTag(writer, 5, value.wic_card_pipeline);
                }
                if (value.hsa_fsa_card_pipeline != null) {
                    RabbitBinTablePb.HsaFsaCardPipeline.ADAPTER.encodeWithTag(writer, 4, value.hsa_fsa_card_pipeline);
                }
                if (value.prepaid_card_pipeline != null) {
                    RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.encodeWithTag(writer, 3, value.prepaid_card_pipeline);
                }
                if (value.commercial_card_pipeline != null) {
                    RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.encodeWithTag(writer, 2, value.commercial_card_pipeline);
                }
                if (value.credit_card_pipeline != null) {
                    RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.encodeWithTag(writer, 1, value.credit_card_pipeline);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RabbitBinTablePb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                RabbitBinTablePb.BloomFilterCardPipeline bloomFilterCardPipelineDecode = null;
                RabbitBinTablePb.BloomFilterCardPipeline bloomFilterCardPipelineDecode2 = null;
                RabbitBinTablePb.BloomFilterCardPipeline bloomFilterCardPipelineDecode3 = null;
                RabbitBinTablePb.HsaFsaCardPipeline hsaFsaCardPipelineDecode = null;
                RabbitBinTablePb.EbtCardPipeline ebtCardPipelineDecode = null;
                RabbitBinTablePb.EbtCardPipeline ebtCardPipelineDecode2 = null;
                RabbitBinTablePb.BloomFilterCardPipeline bloomFilterCardPipelineDecode4 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                bloomFilterCardPipelineDecode = RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.decode(reader);
                                break;
                            case 2:
                                bloomFilterCardPipelineDecode2 = RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.decode(reader);
                                break;
                            case 3:
                                bloomFilterCardPipelineDecode3 = RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.decode(reader);
                                break;
                            case 4:
                                hsaFsaCardPipelineDecode = RabbitBinTablePb.HsaFsaCardPipeline.ADAPTER.decode(reader);
                                break;
                            case 5:
                                ebtCardPipelineDecode = RabbitBinTablePb.EbtCardPipeline.ADAPTER.decode(reader);
                                break;
                            case 6:
                                ebtCardPipelineDecode2 = RabbitBinTablePb.EbtCardPipeline.ADAPTER.decode(reader);
                                break;
                            case 7:
                                arrayList.add(CreditBinEntry.ADAPTER.decode(reader));
                                break;
                            case 8:
                                bloomFilterCardPipelineDecode4 = RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new RabbitBinTablePb(bloomFilterCardPipelineDecode, bloomFilterCardPipelineDecode2, bloomFilterCardPipelineDecode3, hsaFsaCardPipelineDecode, ebtCardPipelineDecode, ebtCardPipelineDecode2, arrayList, bloomFilterCardPipelineDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RabbitBinTablePb redact(RabbitBinTablePb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                RabbitBinTablePb.BloomFilterCardPipeline bloomFilterCardPipeline = value.credit_card_pipeline;
                RabbitBinTablePb.BloomFilterCardPipeline bloomFilterCardPipelineRedact = bloomFilterCardPipeline != null ? RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.redact(bloomFilterCardPipeline) : null;
                RabbitBinTablePb.BloomFilterCardPipeline bloomFilterCardPipeline2 = value.commercial_card_pipeline;
                RabbitBinTablePb.BloomFilterCardPipeline bloomFilterCardPipelineRedact2 = bloomFilterCardPipeline2 != null ? RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.redact(bloomFilterCardPipeline2) : null;
                RabbitBinTablePb.BloomFilterCardPipeline bloomFilterCardPipeline3 = value.prepaid_card_pipeline;
                RabbitBinTablePb.BloomFilterCardPipeline bloomFilterCardPipelineRedact3 = bloomFilterCardPipeline3 != null ? RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.redact(bloomFilterCardPipeline3) : null;
                RabbitBinTablePb.HsaFsaCardPipeline hsaFsaCardPipeline = value.hsa_fsa_card_pipeline;
                RabbitBinTablePb.HsaFsaCardPipeline hsaFsaCardPipelineRedact = hsaFsaCardPipeline != null ? RabbitBinTablePb.HsaFsaCardPipeline.ADAPTER.redact(hsaFsaCardPipeline) : null;
                RabbitBinTablePb.EbtCardPipeline ebtCardPipeline = value.wic_card_pipeline;
                RabbitBinTablePb.EbtCardPipeline ebtCardPipelineRedact = ebtCardPipeline != null ? RabbitBinTablePb.EbtCardPipeline.ADAPTER.redact(ebtCardPipeline) : null;
                RabbitBinTablePb.EbtCardPipeline ebtCardPipeline2 = value.ebt_card_pipeline;
                RabbitBinTablePb.EbtCardPipeline ebtCardPipelineRedact2 = ebtCardPipeline2 != null ? RabbitBinTablePb.EbtCardPipeline.ADAPTER.redact(ebtCardPipeline2) : null;
                List<CreditBinEntry> listM361redactElements = Internal.m361redactElements(value.credit_brand_exceptions, CreditBinEntry.ADAPTER);
                RabbitBinTablePb.BloomFilterCardPipeline bloomFilterCardPipeline4 = value.unbranded_card_pipeline;
                return value.copy(bloomFilterCardPipelineRedact, bloomFilterCardPipelineRedact2, bloomFilterCardPipelineRedact3, hsaFsaCardPipelineRedact, ebtCardPipelineRedact, ebtCardPipelineRedact2, listM361redactElements, bloomFilterCardPipeline4 != null ? RabbitBinTablePb.BloomFilterCardPipeline.ADAPTER.redact(bloomFilterCardPipeline4) : null, ByteString.EMPTY);
            }
        };
    }

    /* JADX INFO: compiled from: RabbitBinTablePb.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B9\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007¢\u0006\u0002\u0010\nJ:\u0010\u000b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\t\u001a\u00020\u0007J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0005H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;", "card_exceptions", "", "", "card_bloomfilter", "Lokio/ByteString;", "card_wildcard", "unknownFields", "(Ljava/util/List;Lokio/ByteString;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class BloomFilterCardPipeline extends Message<BloomFilterCardPipeline, Builder> {
        public static final ProtoAdapter<BloomFilterCardPipeline> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", jsonName = "cardBloomfilter", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final ByteString card_bloomfilter;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "cardExceptions", label = WireField.Label.PACKED, schemaIndex = 0, tag = 1)
        public final List<Integer> card_exceptions;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "cardWildcard", label = WireField.Label.PACKED, schemaIndex = 2, tag = 3)
        public final List<Integer> card_wildcard;

        public BloomFilterCardPipeline() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ BloomFilterCardPipeline(List list, ByteString byteString, List list2, ByteString byteString2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString, (i & 4) != 0 ? CollectionsKt.emptyList() : list2, (i & 8) != 0 ? ByteString.EMPTY : byteString2);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BloomFilterCardPipeline(List<Integer> card_exceptions, ByteString card_bloomfilter, List<Integer> card_wildcard, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(card_exceptions, "card_exceptions");
            Intrinsics.checkNotNullParameter(card_bloomfilter, "card_bloomfilter");
            Intrinsics.checkNotNullParameter(card_wildcard, "card_wildcard");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.card_bloomfilter = card_bloomfilter;
            this.card_exceptions = Internal.immutableCopyOf("card_exceptions", card_exceptions);
            this.card_wildcard = Internal.immutableCopyOf("card_wildcard", card_wildcard);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.card_exceptions = this.card_exceptions;
            builder.card_bloomfilter = this.card_bloomfilter;
            builder.card_wildcard = this.card_wildcard;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof BloomFilterCardPipeline)) {
                return false;
            }
            BloomFilterCardPipeline bloomFilterCardPipeline = (BloomFilterCardPipeline) other;
            return Intrinsics.areEqual(unknownFields(), bloomFilterCardPipeline.unknownFields()) && Intrinsics.areEqual(this.card_exceptions, bloomFilterCardPipeline.card_exceptions) && Intrinsics.areEqual(this.card_bloomfilter, bloomFilterCardPipeline.card_bloomfilter) && Intrinsics.areEqual(this.card_wildcard, bloomFilterCardPipeline.card_wildcard);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((unknownFields().hashCode() * 37) + this.card_exceptions.hashCode()) * 37) + this.card_bloomfilter.hashCode()) * 37) + this.card_wildcard.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.card_exceptions.isEmpty()) {
                arrayList.add("card_exceptions=" + this.card_exceptions);
            }
            ArrayList arrayList2 = arrayList;
            arrayList2.add("card_bloomfilter=" + this.card_bloomfilter);
            if (!this.card_wildcard.isEmpty()) {
                arrayList2.add("card_wildcard=" + this.card_wildcard);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "BloomFilterCardPipeline{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ BloomFilterCardPipeline copy$default(BloomFilterCardPipeline bloomFilterCardPipeline, List list, ByteString byteString, List list2, ByteString byteString2, int i, Object obj) {
            if ((i & 1) != 0) {
                list = bloomFilterCardPipeline.card_exceptions;
            }
            if ((i & 2) != 0) {
                byteString = bloomFilterCardPipeline.card_bloomfilter;
            }
            if ((i & 4) != 0) {
                list2 = bloomFilterCardPipeline.card_wildcard;
            }
            if ((i & 8) != 0) {
                byteString2 = bloomFilterCardPipeline.unknownFields();
            }
            return bloomFilterCardPipeline.copy(list, byteString, list2, byteString2);
        }

        public final BloomFilterCardPipeline copy(List<Integer> card_exceptions, ByteString card_bloomfilter, List<Integer> card_wildcard, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(card_exceptions, "card_exceptions");
            Intrinsics.checkNotNullParameter(card_bloomfilter, "card_bloomfilter");
            Intrinsics.checkNotNullParameter(card_wildcard, "card_wildcard");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new BloomFilterCardPipeline(card_exceptions, card_bloomfilter, card_wildcard, unknownFields);
        }

        /* JADX INFO: compiled from: RabbitBinTablePb.kt */
        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u0014\u0010\t\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;", "()V", "card_bloomfilter", "Lokio/ByteString;", "card_exceptions", "", "", "card_wildcard", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<BloomFilterCardPipeline, Builder> {
            public List<Integer> card_exceptions = CollectionsKt.emptyList();
            public ByteString card_bloomfilter = ByteString.EMPTY;
            public List<Integer> card_wildcard = CollectionsKt.emptyList();

            public final Builder card_exceptions(List<Integer> card_exceptions) {
                Intrinsics.checkNotNullParameter(card_exceptions, "card_exceptions");
                Internal.checkElementsNotNull(card_exceptions);
                this.card_exceptions = card_exceptions;
                return this;
            }

            public final Builder card_bloomfilter(ByteString card_bloomfilter) {
                Intrinsics.checkNotNullParameter(card_bloomfilter, "card_bloomfilter");
                this.card_bloomfilter = card_bloomfilter;
                return this;
            }

            public final Builder card_wildcard(List<Integer> card_wildcard) {
                Intrinsics.checkNotNullParameter(card_wildcard, "card_wildcard");
                Internal.checkElementsNotNull(card_wildcard);
                this.card_wildcard = card_wildcard;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public BloomFilterCardPipeline build() {
                return new BloomFilterCardPipeline(this.card_exceptions, this.card_bloomfilter, this.card_wildcard, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: RabbitBinTablePb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ BloomFilterCardPipeline build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BloomFilterCardPipeline.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<BloomFilterCardPipeline>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.payments.RabbitBinTablePb$BloomFilterCardPipeline$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(RabbitBinTablePb.BloomFilterCardPipeline value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size() + ProtoAdapter.INT32.asPacked().encodedSizeWithTag(1, value.card_exceptions);
                    if (!Intrinsics.areEqual(value.card_bloomfilter, ByteString.EMPTY)) {
                        size += ProtoAdapter.BYTES.encodedSizeWithTag(2, value.card_bloomfilter);
                    }
                    return size + ProtoAdapter.INT32.asPacked().encodedSizeWithTag(3, value.card_wildcard);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, RabbitBinTablePb.BloomFilterCardPipeline value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    ProtoAdapter.INT32.asPacked().encodeWithTag(writer, 1, value.card_exceptions);
                    if (!Intrinsics.areEqual(value.card_bloomfilter, ByteString.EMPTY)) {
                        ProtoAdapter.BYTES.encodeWithTag(writer, 2, value.card_bloomfilter);
                    }
                    ProtoAdapter.INT32.asPacked().encodeWithTag(writer, 3, value.card_wildcard);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, RabbitBinTablePb.BloomFilterCardPipeline value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    ProtoAdapter.INT32.asPacked().encodeWithTag(writer, 3, value.card_wildcard);
                    if (!Intrinsics.areEqual(value.card_bloomfilter, ByteString.EMPTY)) {
                        ProtoAdapter.BYTES.encodeWithTag(writer, 2, value.card_bloomfilter);
                    }
                    ProtoAdapter.INT32.asPacked().encodeWithTag(writer, 1, value.card_exceptions);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public RabbitBinTablePb.BloomFilterCardPipeline decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ByteString byteStringDecode = ByteString.EMPTY;
                    long jBeginMessage = reader.beginMessage();
                    ArrayList arrayList = null;
                    ArrayList arrayList2 = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            break;
                        }
                        if (iNextTag == 1) {
                            if (arrayList == null) {
                                arrayList = new ArrayList((int) RangesKt.coerceAtMost(reader.nextFieldMinLengthInBytes() / ((long) 1), 2147483647L));
                            }
                            arrayList.add(ProtoAdapter.INT32.decode(reader));
                        } else if (iNextTag == 2) {
                            byteStringDecode = ProtoAdapter.BYTES.decode(reader);
                        } else if (iNextTag == 3) {
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList((int) RangesKt.coerceAtMost(reader.nextFieldMinLengthInBytes() / ((long) 1), 2147483647L));
                            }
                            arrayList2.add(ProtoAdapter.INT32.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                    ByteString byteStringEndMessageAndGetUnknownFields = reader.endMessageAndGetUnknownFields(jBeginMessage);
                    ArrayList arrayListEmptyList = arrayList;
                    if (arrayListEmptyList == null) {
                        arrayListEmptyList = CollectionsKt.emptyList();
                    }
                    ByteString byteString = byteStringDecode;
                    ArrayList arrayListEmptyList2 = arrayList2;
                    if (arrayListEmptyList2 == null) {
                        arrayListEmptyList2 = CollectionsKt.emptyList();
                    }
                    return new RabbitBinTablePb.BloomFilterCardPipeline(arrayListEmptyList, byteString, arrayListEmptyList2, byteStringEndMessageAndGetUnknownFields);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public RabbitBinTablePb.BloomFilterCardPipeline redact(RabbitBinTablePb.BloomFilterCardPipeline value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return RabbitBinTablePb.BloomFilterCardPipeline.copy$default(value, null, null, null, ByteString.EMPTY, 7, null);
                }
            };
        }
    }

    /* JADX INFO: compiled from: RabbitBinTablePb.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B\u001f\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline$Builder;", "ebt_cards", "", "Lcom/stripe/proto/model/payments/EbtBinEntry;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class EbtCardPipeline extends Message<EbtCardPipeline, Builder> {
        public static final ProtoAdapter<EbtCardPipeline> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.model.payments.EbtBinEntry#ADAPTER", jsonName = "ebtCards", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
        public final List<EbtBinEntry> ebt_cards;

        /* JADX WARN: Multi-variable type inference failed */
        public EbtCardPipeline() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ EbtCardPipeline(List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EbtCardPipeline(List<EbtBinEntry> ebt_cards, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(ebt_cards, "ebt_cards");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.ebt_cards = Internal.immutableCopyOf("ebt_cards", ebt_cards);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.ebt_cards = this.ebt_cards;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof EbtCardPipeline)) {
                return false;
            }
            EbtCardPipeline ebtCardPipeline = (EbtCardPipeline) other;
            return Intrinsics.areEqual(unknownFields(), ebtCardPipeline.unknownFields()) && Intrinsics.areEqual(this.ebt_cards, ebtCardPipeline.ebt_cards);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.ebt_cards.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.ebt_cards.isEmpty()) {
                arrayList.add("ebt_cards=" + this.ebt_cards);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "EbtCardPipeline{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ EbtCardPipeline copy$default(EbtCardPipeline ebtCardPipeline, List list, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                list = ebtCardPipeline.ebt_cards;
            }
            if ((i & 2) != 0) {
                byteString = ebtCardPipeline.unknownFields();
            }
            return ebtCardPipeline.copy(list, byteString);
        }

        public final EbtCardPipeline copy(List<EbtBinEntry> ebt_cards, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(ebt_cards, "ebt_cards");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new EbtCardPipeline(ebt_cards, unknownFields);
        }

        /* JADX INFO: compiled from: RabbitBinTablePb.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;", "()V", "ebt_cards", "", "Lcom/stripe/proto/model/payments/EbtBinEntry;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<EbtCardPipeline, Builder> {
            public List<EbtBinEntry> ebt_cards = CollectionsKt.emptyList();

            public final Builder ebt_cards(List<EbtBinEntry> ebt_cards) {
                Intrinsics.checkNotNullParameter(ebt_cards, "ebt_cards");
                Internal.checkElementsNotNull(ebt_cards);
                this.ebt_cards = ebt_cards;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public EbtCardPipeline build() {
                return new EbtCardPipeline(this.ebt_cards, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: RabbitBinTablePb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ EbtCardPipeline build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EbtCardPipeline.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<EbtCardPipeline>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.payments.RabbitBinTablePb$EbtCardPipeline$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(RabbitBinTablePb.EbtCardPipeline value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + EbtBinEntry.ADAPTER.asRepeated().encodedSizeWithTag(1, value.ebt_cards);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, RabbitBinTablePb.EbtCardPipeline value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    EbtBinEntry.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.ebt_cards);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, RabbitBinTablePb.EbtCardPipeline value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    EbtBinEntry.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.ebt_cards);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public RabbitBinTablePb.EbtCardPipeline decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new RabbitBinTablePb.EbtCardPipeline(arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            arrayList.add(EbtBinEntry.ADAPTER.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public RabbitBinTablePb.EbtCardPipeline redact(RabbitBinTablePb.EbtCardPipeline value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.copy(Internal.m361redactElements(value.ebt_cards, EbtBinEntry.ADAPTER), ByteString.EMPTY);
                }
            };
        }
    }

    /* JADX INFO: compiled from: RabbitBinTablePb.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B/\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ0\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0005H\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;", "hsa_fsa_cards", "", "", "hsa_fsa_card_wildcard", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class HsaFsaCardPipeline extends Message<HsaFsaCardPipeline, Builder> {
        public static final ProtoAdapter<HsaFsaCardPipeline> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "hsaFsaCardWildcard", label = WireField.Label.PACKED, schemaIndex = 1, tag = 2)
        public final List<Integer> hsa_fsa_card_wildcard;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "hsaFsaCards", label = WireField.Label.PACKED, schemaIndex = 0, tag = 1)
        public final List<Integer> hsa_fsa_cards;

        public HsaFsaCardPipeline() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ HsaFsaCardPipeline(List list, List list2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? CollectionsKt.emptyList() : list2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HsaFsaCardPipeline(List<Integer> hsa_fsa_cards, List<Integer> hsa_fsa_card_wildcard, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(hsa_fsa_cards, "hsa_fsa_cards");
            Intrinsics.checkNotNullParameter(hsa_fsa_card_wildcard, "hsa_fsa_card_wildcard");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.hsa_fsa_cards = Internal.immutableCopyOf("hsa_fsa_cards", hsa_fsa_cards);
            this.hsa_fsa_card_wildcard = Internal.immutableCopyOf("hsa_fsa_card_wildcard", hsa_fsa_card_wildcard);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.hsa_fsa_cards = this.hsa_fsa_cards;
            builder.hsa_fsa_card_wildcard = this.hsa_fsa_card_wildcard;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof HsaFsaCardPipeline)) {
                return false;
            }
            HsaFsaCardPipeline hsaFsaCardPipeline = (HsaFsaCardPipeline) other;
            return Intrinsics.areEqual(unknownFields(), hsaFsaCardPipeline.unknownFields()) && Intrinsics.areEqual(this.hsa_fsa_cards, hsaFsaCardPipeline.hsa_fsa_cards) && Intrinsics.areEqual(this.hsa_fsa_card_wildcard, hsaFsaCardPipeline.hsa_fsa_card_wildcard);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.hsa_fsa_cards.hashCode()) * 37) + this.hsa_fsa_card_wildcard.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.hsa_fsa_cards.isEmpty()) {
                arrayList.add("hsa_fsa_cards=" + this.hsa_fsa_cards);
            }
            if (!this.hsa_fsa_card_wildcard.isEmpty()) {
                arrayList.add("hsa_fsa_card_wildcard=" + this.hsa_fsa_card_wildcard);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "HsaFsaCardPipeline{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ HsaFsaCardPipeline copy$default(HsaFsaCardPipeline hsaFsaCardPipeline, List list, List list2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                list = hsaFsaCardPipeline.hsa_fsa_cards;
            }
            if ((i & 2) != 0) {
                list2 = hsaFsaCardPipeline.hsa_fsa_card_wildcard;
            }
            if ((i & 4) != 0) {
                byteString = hsaFsaCardPipeline.unknownFields();
            }
            return hsaFsaCardPipeline.copy(list, list2, byteString);
        }

        public final HsaFsaCardPipeline copy(List<Integer> hsa_fsa_cards, List<Integer> hsa_fsa_card_wildcard, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(hsa_fsa_cards, "hsa_fsa_cards");
            Intrinsics.checkNotNullParameter(hsa_fsa_card_wildcard, "hsa_fsa_card_wildcard");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new HsaFsaCardPipeline(hsa_fsa_cards, hsa_fsa_card_wildcard, unknownFields);
        }

        /* JADX INFO: compiled from: RabbitBinTablePb.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0007\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;", "()V", "hsa_fsa_card_wildcard", "", "", "hsa_fsa_cards", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<HsaFsaCardPipeline, Builder> {
            public List<Integer> hsa_fsa_cards = CollectionsKt.emptyList();
            public List<Integer> hsa_fsa_card_wildcard = CollectionsKt.emptyList();

            public final Builder hsa_fsa_cards(List<Integer> hsa_fsa_cards) {
                Intrinsics.checkNotNullParameter(hsa_fsa_cards, "hsa_fsa_cards");
                Internal.checkElementsNotNull(hsa_fsa_cards);
                this.hsa_fsa_cards = hsa_fsa_cards;
                return this;
            }

            public final Builder hsa_fsa_card_wildcard(List<Integer> hsa_fsa_card_wildcard) {
                Intrinsics.checkNotNullParameter(hsa_fsa_card_wildcard, "hsa_fsa_card_wildcard");
                Internal.checkElementsNotNull(hsa_fsa_card_wildcard);
                this.hsa_fsa_card_wildcard = hsa_fsa_card_wildcard;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public HsaFsaCardPipeline build() {
                return new HsaFsaCardPipeline(this.hsa_fsa_cards, this.hsa_fsa_card_wildcard, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: RabbitBinTablePb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ HsaFsaCardPipeline build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HsaFsaCardPipeline.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<HsaFsaCardPipeline>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.payments.RabbitBinTablePb$HsaFsaCardPipeline$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(RabbitBinTablePb.HsaFsaCardPipeline value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + ProtoAdapter.INT32.asPacked().encodedSizeWithTag(1, value.hsa_fsa_cards) + ProtoAdapter.INT32.asPacked().encodedSizeWithTag(2, value.hsa_fsa_card_wildcard);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, RabbitBinTablePb.HsaFsaCardPipeline value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    ProtoAdapter.INT32.asPacked().encodeWithTag(writer, 1, value.hsa_fsa_cards);
                    ProtoAdapter.INT32.asPacked().encodeWithTag(writer, 2, value.hsa_fsa_card_wildcard);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, RabbitBinTablePb.HsaFsaCardPipeline value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    ProtoAdapter.INT32.asPacked().encodeWithTag(writer, 2, value.hsa_fsa_card_wildcard);
                    ProtoAdapter.INT32.asPacked().encodeWithTag(writer, 1, value.hsa_fsa_cards);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public RabbitBinTablePb.HsaFsaCardPipeline redact(RabbitBinTablePb.HsaFsaCardPipeline value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return RabbitBinTablePb.HsaFsaCardPipeline.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public RabbitBinTablePb.HsaFsaCardPipeline decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    ArrayList arrayList = null;
                    ArrayList arrayList2 = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            break;
                        }
                        if (iNextTag == 1) {
                            if (arrayList == null) {
                                arrayList = new ArrayList((int) RangesKt.coerceAtMost(reader.nextFieldMinLengthInBytes() / ((long) 1), 2147483647L));
                            }
                            arrayList.add(ProtoAdapter.INT32.decode(reader));
                        } else if (iNextTag == 2) {
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList((int) RangesKt.coerceAtMost(reader.nextFieldMinLengthInBytes() / ((long) 1), 2147483647L));
                            }
                            arrayList2.add(ProtoAdapter.INT32.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                    ByteString byteStringEndMessageAndGetUnknownFields = reader.endMessageAndGetUnknownFields(jBeginMessage);
                    ArrayList arrayListEmptyList = arrayList;
                    if (arrayListEmptyList == null) {
                        arrayListEmptyList = CollectionsKt.emptyList();
                    }
                    ArrayList arrayListEmptyList2 = arrayList2;
                    if (arrayListEmptyList2 == null) {
                        arrayListEmptyList2 = CollectionsKt.emptyList();
                    }
                    return new RabbitBinTablePb.HsaFsaCardPipeline(arrayListEmptyList, arrayListEmptyList2, byteStringEndMessageAndGetUnknownFields);
                }
            };
        }
    }
}
