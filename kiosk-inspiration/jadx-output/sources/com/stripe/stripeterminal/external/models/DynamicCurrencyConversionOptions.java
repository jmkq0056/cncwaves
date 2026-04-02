package com.stripe.stripeterminal.external.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
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
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: DynamicCurrencyConversion.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 :2\u00060\u0001j\u0002`\u0002:\u00029:B_\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012BI\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0002\u0010\u0013J\t\u0010!\u001a\u00020\u0006HÆ\u0003J\t\u0010\"\u001a\u00020\bHÆ\u0003J\t\u0010#\u001a\u00020\nHÆ\u0003J\t\u0010$\u001a\u00020\nHÆ\u0003J\t\u0010%\u001a\u00020\nHÆ\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u0010'\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u001cJ\t\u0010(\u001a\u00020\nHÆ\u0003Jb\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000f\u001a\u00020\nHÆ\u0001¢\u0006\u0002\u0010*J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010.HÖ\u0003J\t\u0010/\u001a\u00020\u0004HÖ\u0001J\t\u00100\u001a\u00020\bHÖ\u0001J&\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u00002\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000207HÁ\u0001¢\u0006\u0002\b8R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\f\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u000f\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0017R\u0015\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001b\u0010\u001cR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001e\u0010\u001cR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0017¨\u0006;"}, d2 = {"Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", FirebaseAnalytics.Param.CURRENCY, "", "transactionFxRate", "", "transactionMarkupPercent", "cardholderRate", "referenceFxRate", "referenceMarkupPercent", "fxAsOf", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IJLjava/lang/String;FFFLjava/lang/Float;Ljava/lang/Float;FLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(JLjava/lang/String;FFFLjava/lang/Float;Ljava/lang/Float;F)V", "getAmount", "()J", "getCardholderRate", "()F", "getCurrency", "()Ljava/lang/String;", "getFxAsOf", "getReferenceFxRate", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getReferenceMarkupPercent", "getTransactionFxRate", "getTransactionMarkupPercent", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(JLjava/lang/String;FFFLjava/lang/Float;Ljava/lang/Float;F)Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class DynamicCurrencyConversionOptions implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final long amount;
    private final float cardholderRate;
    private final String currency;
    private final float fxAsOf;
    private final Float referenceFxRate;
    private final Float referenceMarkupPercent;
    private final float transactionFxRate;
    private final float transactionMarkupPercent;

    public static /* synthetic */ DynamicCurrencyConversionOptions copy$default(DynamicCurrencyConversionOptions dynamicCurrencyConversionOptions, long j, String str, float f, float f2, float f3, Float f4, Float f5, float f6, int i, Object obj) {
        if ((i & 1) != 0) {
            j = dynamicCurrencyConversionOptions.amount;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = dynamicCurrencyConversionOptions.currency;
        }
        String str2 = str;
        if ((i & 4) != 0) {
            f = dynamicCurrencyConversionOptions.transactionFxRate;
        }
        float f7 = f;
        if ((i & 8) != 0) {
            f2 = dynamicCurrencyConversionOptions.transactionMarkupPercent;
        }
        return dynamicCurrencyConversionOptions.copy(j2, str2, f7, f2, (i & 16) != 0 ? dynamicCurrencyConversionOptions.cardholderRate : f3, (i & 32) != 0 ? dynamicCurrencyConversionOptions.referenceFxRate : f4, (i & 64) != 0 ? dynamicCurrencyConversionOptions.referenceMarkupPercent : f5, (i & 128) != 0 ? dynamicCurrencyConversionOptions.fxAsOf : f6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final float getTransactionFxRate() {
        return this.transactionFxRate;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final float getTransactionMarkupPercent() {
        return this.transactionMarkupPercent;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final float getCardholderRate() {
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
    public final float getFxAsOf() {
        return this.fxAsOf;
    }

    public final DynamicCurrencyConversionOptions copy(long amount, String currency, float transactionFxRate, float transactionMarkupPercent, float cardholderRate, Float referenceFxRate, Float referenceMarkupPercent, float fxAsOf) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        return new DynamicCurrencyConversionOptions(amount, currency, transactionFxRate, transactionMarkupPercent, cardholderRate, referenceFxRate, referenceMarkupPercent, fxAsOf);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DynamicCurrencyConversionOptions)) {
            return false;
        }
        DynamicCurrencyConversionOptions dynamicCurrencyConversionOptions = (DynamicCurrencyConversionOptions) other;
        return this.amount == dynamicCurrencyConversionOptions.amount && Intrinsics.areEqual(this.currency, dynamicCurrencyConversionOptions.currency) && Float.compare(this.transactionFxRate, dynamicCurrencyConversionOptions.transactionFxRate) == 0 && Float.compare(this.transactionMarkupPercent, dynamicCurrencyConversionOptions.transactionMarkupPercent) == 0 && Float.compare(this.cardholderRate, dynamicCurrencyConversionOptions.cardholderRate) == 0 && Intrinsics.areEqual((Object) this.referenceFxRate, (Object) dynamicCurrencyConversionOptions.referenceFxRate) && Intrinsics.areEqual((Object) this.referenceMarkupPercent, (Object) dynamicCurrencyConversionOptions.referenceMarkupPercent) && Float.compare(this.fxAsOf, dynamicCurrencyConversionOptions.fxAsOf) == 0;
    }

    public int hashCode() {
        int iHashCode = ((((((((Long.hashCode(this.amount) * 31) + this.currency.hashCode()) * 31) + Float.hashCode(this.transactionFxRate)) * 31) + Float.hashCode(this.transactionMarkupPercent)) * 31) + Float.hashCode(this.cardholderRate)) * 31;
        Float f = this.referenceFxRate;
        int iHashCode2 = (iHashCode + (f == null ? 0 : f.hashCode())) * 31;
        Float f2 = this.referenceMarkupPercent;
        return ((iHashCode2 + (f2 != null ? f2.hashCode() : 0)) * 31) + Float.hashCode(this.fxAsOf);
    }

    public String toString() {
        return "DynamicCurrencyConversionOptions(amount=" + this.amount + ", currency=" + this.currency + ", transactionFxRate=" + this.transactionFxRate + ", transactionMarkupPercent=" + this.transactionMarkupPercent + ", cardholderRate=" + this.cardholderRate + ", referenceFxRate=" + this.referenceFxRate + ", referenceMarkupPercent=" + this.referenceMarkupPercent + ", fxAsOf=" + this.fxAsOf + ')';
    }

    /* JADX INFO: compiled from: DynamicCurrencyConversion.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<DynamicCurrencyConversionOptions> serializer() {
            return DynamicCurrencyConversionOptions$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ DynamicCurrencyConversionOptions(int i, long j, String str, float f, float f2, float f3, Float f4, Float f5, float f6, SerializationConstructorMarker serializationConstructorMarker) {
        if (255 != (i & 255)) {
            PluginExceptionsKt.throwMissingFieldException(i, 255, DynamicCurrencyConversionOptions$$serializer.INSTANCE.getDescriptor());
        }
        this.amount = j;
        this.currency = str;
        this.transactionFxRate = f;
        this.transactionMarkupPercent = f2;
        this.cardholderRate = f3;
        this.referenceFxRate = f4;
        this.referenceMarkupPercent = f5;
        this.fxAsOf = f6;
    }

    public DynamicCurrencyConversionOptions(long j, String currency, float f, float f2, float f3, Float f4, Float f5, float f6) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        this.amount = j;
        this.currency = currency;
        this.transactionFxRate = f;
        this.transactionMarkupPercent = f2;
        this.cardholderRate = f3;
        this.referenceFxRate = f4;
        this.referenceMarkupPercent = f5;
        this.fxAsOf = f6;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(DynamicCurrencyConversionOptions self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeLongElement(serialDesc, 0, self.amount);
        output.encodeStringElement(serialDesc, 1, self.currency);
        output.encodeFloatElement(serialDesc, 2, self.transactionFxRate);
        output.encodeFloatElement(serialDesc, 3, self.transactionMarkupPercent);
        output.encodeFloatElement(serialDesc, 4, self.cardholderRate);
        output.encodeNullableSerializableElement(serialDesc, 5, FloatSerializer.INSTANCE, self.referenceFxRate);
        output.encodeNullableSerializableElement(serialDesc, 6, FloatSerializer.INSTANCE, self.referenceMarkupPercent);
        output.encodeFloatElement(serialDesc, 7, self.fxAsOf);
    }

    public final long getAmount() {
        return this.amount;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final float getTransactionFxRate() {
        return this.transactionFxRate;
    }

    public final float getTransactionMarkupPercent() {
        return this.transactionMarkupPercent;
    }

    public final float getCardholderRate() {
        return this.cardholderRate;
    }

    public final Float getReferenceFxRate() {
        return this.referenceFxRate;
    }

    public final Float getReferenceMarkupPercent() {
        return this.referenceMarkupPercent;
    }

    public final float getFxAsOf() {
        return this.fxAsOf;
    }
}
