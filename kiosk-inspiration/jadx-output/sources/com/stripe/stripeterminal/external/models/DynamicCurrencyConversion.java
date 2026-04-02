package com.stripe.stripeterminal.external.models;

import androidx.core.app.NotificationCompat;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: DynamicCurrencyConversion.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 :2\u00060\u0001j\u0002`\u0002:\u00029:Bi\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012BS\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u0013J\t\u0010!\u001a\u00020\u0006HÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010#\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010$\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010%\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010&\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010'\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010(\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015Jl\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010*J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010.HÖ\u0003J\t\u0010/\u001a\u00020\u0004HÖ\u0001J\t\u00100\u001a\u00020\u0006HÖ\u0001J&\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u00002\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000207HÁ\u0001¢\u0006\u0002\b8R\u0015\u0010\f\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0017\u0010\u0015R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u0015\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001b\u0010\u0015R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001c\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0015\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001f\u0010\u0015R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b \u0010\u0015¨\u0006;"}, d2 = {"Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", NotificationCompat.CATEGORY_STATUS, "", "originalAmount", "", "transactionFxRate", "", "transactionMarkupPercent", "cardholderRate", "referenceFxRate", "referenceMarkupPercent", "fxAsOf", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V", "getCardholderRate", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getFxAsOf", "getOriginalAmount", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getReferenceFxRate", "getReferenceMarkupPercent", "getStatus", "()Ljava/lang/String;", "getTransactionFxRate", "getTransactionMarkupPercent", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class DynamicCurrencyConversion implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Float cardholderRate;
    private final Float fxAsOf;
    private final Long originalAmount;
    private final Float referenceFxRate;
    private final Float referenceMarkupPercent;
    private final String status;
    private final Float transactionFxRate;
    private final Float transactionMarkupPercent;

    public static /* synthetic */ DynamicCurrencyConversion copy$default(DynamicCurrencyConversion dynamicCurrencyConversion, String str, Long l, Float f, Float f2, Float f3, Float f4, Float f5, Float f6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = dynamicCurrencyConversion.status;
        }
        if ((i & 2) != 0) {
            l = dynamicCurrencyConversion.originalAmount;
        }
        if ((i & 4) != 0) {
            f = dynamicCurrencyConversion.transactionFxRate;
        }
        if ((i & 8) != 0) {
            f2 = dynamicCurrencyConversion.transactionMarkupPercent;
        }
        if ((i & 16) != 0) {
            f3 = dynamicCurrencyConversion.cardholderRate;
        }
        if ((i & 32) != 0) {
            f4 = dynamicCurrencyConversion.referenceFxRate;
        }
        if ((i & 64) != 0) {
            f5 = dynamicCurrencyConversion.referenceMarkupPercent;
        }
        if ((i & 128) != 0) {
            f6 = dynamicCurrencyConversion.fxAsOf;
        }
        Float f7 = f5;
        Float f8 = f6;
        Float f9 = f3;
        Float f10 = f4;
        return dynamicCurrencyConversion.copy(str, l, f, f2, f9, f10, f7, f8);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getOriginalAmount() {
        return this.originalAmount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Float getTransactionFxRate() {
        return this.transactionFxRate;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Float getTransactionMarkupPercent() {
        return this.transactionMarkupPercent;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Float getCardholderRate() {
        return this.cardholderRate;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Float getReferenceFxRate() {
        return this.referenceFxRate;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Float getReferenceMarkupPercent() {
        return this.referenceMarkupPercent;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Float getFxAsOf() {
        return this.fxAsOf;
    }

    public final DynamicCurrencyConversion copy(String status, Long originalAmount, Float transactionFxRate, Float transactionMarkupPercent, Float cardholderRate, Float referenceFxRate, Float referenceMarkupPercent, Float fxAsOf) {
        Intrinsics.checkNotNullParameter(status, "status");
        return new DynamicCurrencyConversion(status, originalAmount, transactionFxRate, transactionMarkupPercent, cardholderRate, referenceFxRate, referenceMarkupPercent, fxAsOf);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DynamicCurrencyConversion)) {
            return false;
        }
        DynamicCurrencyConversion dynamicCurrencyConversion = (DynamicCurrencyConversion) other;
        return Intrinsics.areEqual(this.status, dynamicCurrencyConversion.status) && Intrinsics.areEqual(this.originalAmount, dynamicCurrencyConversion.originalAmount) && Intrinsics.areEqual((Object) this.transactionFxRate, (Object) dynamicCurrencyConversion.transactionFxRate) && Intrinsics.areEqual((Object) this.transactionMarkupPercent, (Object) dynamicCurrencyConversion.transactionMarkupPercent) && Intrinsics.areEqual((Object) this.cardholderRate, (Object) dynamicCurrencyConversion.cardholderRate) && Intrinsics.areEqual((Object) this.referenceFxRate, (Object) dynamicCurrencyConversion.referenceFxRate) && Intrinsics.areEqual((Object) this.referenceMarkupPercent, (Object) dynamicCurrencyConversion.referenceMarkupPercent) && Intrinsics.areEqual((Object) this.fxAsOf, (Object) dynamicCurrencyConversion.fxAsOf);
    }

    public int hashCode() {
        int iHashCode = this.status.hashCode() * 31;
        Long l = this.originalAmount;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        Float f = this.transactionFxRate;
        int iHashCode3 = (iHashCode2 + (f == null ? 0 : f.hashCode())) * 31;
        Float f2 = this.transactionMarkupPercent;
        int iHashCode4 = (iHashCode3 + (f2 == null ? 0 : f2.hashCode())) * 31;
        Float f3 = this.cardholderRate;
        int iHashCode5 = (iHashCode4 + (f3 == null ? 0 : f3.hashCode())) * 31;
        Float f4 = this.referenceFxRate;
        int iHashCode6 = (iHashCode5 + (f4 == null ? 0 : f4.hashCode())) * 31;
        Float f5 = this.referenceMarkupPercent;
        int iHashCode7 = (iHashCode6 + (f5 == null ? 0 : f5.hashCode())) * 31;
        Float f6 = this.fxAsOf;
        return iHashCode7 + (f6 != null ? f6.hashCode() : 0);
    }

    public String toString() {
        return "DynamicCurrencyConversion(status=" + this.status + ", originalAmount=" + this.originalAmount + ", transactionFxRate=" + this.transactionFxRate + ", transactionMarkupPercent=" + this.transactionMarkupPercent + ", cardholderRate=" + this.cardholderRate + ", referenceFxRate=" + this.referenceFxRate + ", referenceMarkupPercent=" + this.referenceMarkupPercent + ", fxAsOf=" + this.fxAsOf + ')';
    }

    /* JADX INFO: compiled from: DynamicCurrencyConversion.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<DynamicCurrencyConversion> serializer() {
            return DynamicCurrencyConversion$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ DynamicCurrencyConversion(int i, String str, Long l, Float f, Float f2, Float f3, Float f4, Float f5, Float f6, SerializationConstructorMarker serializationConstructorMarker) {
        if (255 != (i & 255)) {
            PluginExceptionsKt.throwMissingFieldException(i, 255, DynamicCurrencyConversion$$serializer.INSTANCE.getDescriptor());
        }
        this.status = str;
        this.originalAmount = l;
        this.transactionFxRate = f;
        this.transactionMarkupPercent = f2;
        this.cardholderRate = f3;
        this.referenceFxRate = f4;
        this.referenceMarkupPercent = f5;
        this.fxAsOf = f6;
    }

    public DynamicCurrencyConversion(String status, Long l, Float f, Float f2, Float f3, Float f4, Float f5, Float f6) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.status = status;
        this.originalAmount = l;
        this.transactionFxRate = f;
        this.transactionMarkupPercent = f2;
        this.cardholderRate = f3;
        this.referenceFxRate = f4;
        this.referenceMarkupPercent = f5;
        this.fxAsOf = f6;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(DynamicCurrencyConversion self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeStringElement(serialDesc, 0, self.status);
        output.encodeNullableSerializableElement(serialDesc, 1, LongSerializer.INSTANCE, self.originalAmount);
        output.encodeNullableSerializableElement(serialDesc, 2, FloatSerializer.INSTANCE, self.transactionFxRate);
        output.encodeNullableSerializableElement(serialDesc, 3, FloatSerializer.INSTANCE, self.transactionMarkupPercent);
        output.encodeNullableSerializableElement(serialDesc, 4, FloatSerializer.INSTANCE, self.cardholderRate);
        output.encodeNullableSerializableElement(serialDesc, 5, FloatSerializer.INSTANCE, self.referenceFxRate);
        output.encodeNullableSerializableElement(serialDesc, 6, FloatSerializer.INSTANCE, self.referenceMarkupPercent);
        output.encodeNullableSerializableElement(serialDesc, 7, FloatSerializer.INSTANCE, self.fxAsOf);
    }

    public final String getStatus() {
        return this.status;
    }

    public final Long getOriginalAmount() {
        return this.originalAmount;
    }

    public final Float getTransactionFxRate() {
        return this.transactionFxRate;
    }

    public final Float getTransactionMarkupPercent() {
        return this.transactionMarkupPercent;
    }

    public final Float getCardholderRate() {
        return this.cardholderRate;
    }

    public final Float getReferenceFxRate() {
        return this.referenceFxRate;
    }

    public final Float getReferenceMarkupPercent() {
        return this.referenceMarkupPercent;
    }

    public final Float getFxAsOf() {
        return this.fxAsOf;
    }
}
