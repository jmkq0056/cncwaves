package com.stripe.stripeterminal.external.models;

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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: CardPresentOptions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 ;2\u00060\u0001j\u0002`\u0002:\u0002:;B_\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0002\u0010\u0014BK\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0015J\u0010\u0010$\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u0010\u0010%\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u000b\u0010&\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0011HÆ\u0003Jb\u0010+\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÆ\u0001¢\u0006\u0002\u0010,J\u0013\u0010-\u001a\u00020\u00062\b\u0010.\u001a\u0004\u0018\u00010/HÖ\u0003J\t\u00100\u001a\u00020\u0004HÖ\u0001J\t\u00101\u001a\u00020\u000bHÖ\u0001J&\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u00002\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000208HÁ\u0001¢\u0006\u0002\b9R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001a\u0010\u001bR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001d\u0010\u001bR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#¨\u0006<"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CardPresentOptions;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "requestExtendedAuthorization", "", "requestIncrementalAuthorizationSupport", "routing", "Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;", "requestDynamicCurrencyConversion", "", "dynamicCurrencyConversion", "Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;", "surcharge", "Lcom/stripe/stripeterminal/external/models/Surcharge;", "requestPartialAuthorization", "Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;Lcom/stripe/stripeterminal/external/models/Surcharge;Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;Lcom/stripe/stripeterminal/external/models/Surcharge;Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;)V", "getDynamicCurrencyConversion", "()Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;", "getRequestDynamicCurrencyConversion", "()Ljava/lang/String;", "getRequestExtendedAuthorization", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getRequestIncrementalAuthorizationSupport", "getRequestPartialAuthorization", "()Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;", "getRouting", "()Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;", "getSurcharge", "()Lcom/stripe/stripeterminal/external/models/Surcharge;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;Lcom/stripe/stripeterminal/external/models/Surcharge;Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;)Lcom/stripe/stripeterminal/external/models/CardPresentOptions;", "equals", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class CardPresentOptions implements java.io.Serializable {
    private final DynamicCurrencyConversionOptions dynamicCurrencyConversion;
    private final String requestDynamicCurrencyConversion;
    private final Boolean requestExtendedAuthorization;
    private final Boolean requestIncrementalAuthorizationSupport;
    private final CardPresentRequestPartialAuthorization requestPartialAuthorization;
    private final CardPresentRoutingOptions routing;
    private final Surcharge surcharge;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, CardPresentRequestPartialAuthorization.INSTANCE.serializer()};

    public static /* synthetic */ CardPresentOptions copy$default(CardPresentOptions cardPresentOptions, Boolean bool, Boolean bool2, CardPresentRoutingOptions cardPresentRoutingOptions, String str, DynamicCurrencyConversionOptions dynamicCurrencyConversionOptions, Surcharge surcharge, CardPresentRequestPartialAuthorization cardPresentRequestPartialAuthorization, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = cardPresentOptions.requestExtendedAuthorization;
        }
        if ((i & 2) != 0) {
            bool2 = cardPresentOptions.requestIncrementalAuthorizationSupport;
        }
        if ((i & 4) != 0) {
            cardPresentRoutingOptions = cardPresentOptions.routing;
        }
        if ((i & 8) != 0) {
            str = cardPresentOptions.requestDynamicCurrencyConversion;
        }
        if ((i & 16) != 0) {
            dynamicCurrencyConversionOptions = cardPresentOptions.dynamicCurrencyConversion;
        }
        if ((i & 32) != 0) {
            surcharge = cardPresentOptions.surcharge;
        }
        if ((i & 64) != 0) {
            cardPresentRequestPartialAuthorization = cardPresentOptions.requestPartialAuthorization;
        }
        Surcharge surcharge2 = surcharge;
        CardPresentRequestPartialAuthorization cardPresentRequestPartialAuthorization2 = cardPresentRequestPartialAuthorization;
        DynamicCurrencyConversionOptions dynamicCurrencyConversionOptions2 = dynamicCurrencyConversionOptions;
        CardPresentRoutingOptions cardPresentRoutingOptions2 = cardPresentRoutingOptions;
        return cardPresentOptions.copy(bool, bool2, cardPresentRoutingOptions2, str, dynamicCurrencyConversionOptions2, surcharge2, cardPresentRequestPartialAuthorization2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getRequestExtendedAuthorization() {
        return this.requestExtendedAuthorization;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Boolean getRequestIncrementalAuthorizationSupport() {
        return this.requestIncrementalAuthorizationSupport;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final CardPresentRoutingOptions getRouting() {
        return this.routing;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getRequestDynamicCurrencyConversion() {
        return this.requestDynamicCurrencyConversion;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final DynamicCurrencyConversionOptions getDynamicCurrencyConversion() {
        return this.dynamicCurrencyConversion;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Surcharge getSurcharge() {
        return this.surcharge;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final CardPresentRequestPartialAuthorization getRequestPartialAuthorization() {
        return this.requestPartialAuthorization;
    }

    public final CardPresentOptions copy(Boolean requestExtendedAuthorization, Boolean requestIncrementalAuthorizationSupport, CardPresentRoutingOptions routing, String requestDynamicCurrencyConversion, DynamicCurrencyConversionOptions dynamicCurrencyConversion, Surcharge surcharge, CardPresentRequestPartialAuthorization requestPartialAuthorization) {
        return new CardPresentOptions(requestExtendedAuthorization, requestIncrementalAuthorizationSupport, routing, requestDynamicCurrencyConversion, dynamicCurrencyConversion, surcharge, requestPartialAuthorization);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CardPresentOptions)) {
            return false;
        }
        CardPresentOptions cardPresentOptions = (CardPresentOptions) other;
        return Intrinsics.areEqual(this.requestExtendedAuthorization, cardPresentOptions.requestExtendedAuthorization) && Intrinsics.areEqual(this.requestIncrementalAuthorizationSupport, cardPresentOptions.requestIncrementalAuthorizationSupport) && Intrinsics.areEqual(this.routing, cardPresentOptions.routing) && Intrinsics.areEqual(this.requestDynamicCurrencyConversion, cardPresentOptions.requestDynamicCurrencyConversion) && Intrinsics.areEqual(this.dynamicCurrencyConversion, cardPresentOptions.dynamicCurrencyConversion) && Intrinsics.areEqual(this.surcharge, cardPresentOptions.surcharge) && this.requestPartialAuthorization == cardPresentOptions.requestPartialAuthorization;
    }

    public int hashCode() {
        Boolean bool = this.requestExtendedAuthorization;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.requestIncrementalAuthorizationSupport;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        CardPresentRoutingOptions cardPresentRoutingOptions = this.routing;
        int iHashCode3 = (iHashCode2 + (cardPresentRoutingOptions == null ? 0 : cardPresentRoutingOptions.hashCode())) * 31;
        String str = this.requestDynamicCurrencyConversion;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        DynamicCurrencyConversionOptions dynamicCurrencyConversionOptions = this.dynamicCurrencyConversion;
        int iHashCode5 = (iHashCode4 + (dynamicCurrencyConversionOptions == null ? 0 : dynamicCurrencyConversionOptions.hashCode())) * 31;
        Surcharge surcharge = this.surcharge;
        int iHashCode6 = (iHashCode5 + (surcharge == null ? 0 : surcharge.hashCode())) * 31;
        CardPresentRequestPartialAuthorization cardPresentRequestPartialAuthorization = this.requestPartialAuthorization;
        return iHashCode6 + (cardPresentRequestPartialAuthorization != null ? cardPresentRequestPartialAuthorization.hashCode() : 0);
    }

    public String toString() {
        return "CardPresentOptions(requestExtendedAuthorization=" + this.requestExtendedAuthorization + ", requestIncrementalAuthorizationSupport=" + this.requestIncrementalAuthorizationSupport + ", routing=" + this.routing + ", requestDynamicCurrencyConversion=" + this.requestDynamicCurrencyConversion + ", dynamicCurrencyConversion=" + this.dynamicCurrencyConversion + ", surcharge=" + this.surcharge + ", requestPartialAuthorization=" + this.requestPartialAuthorization + ')';
    }

    /* JADX INFO: compiled from: CardPresentOptions.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CardPresentOptions$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/CardPresentOptions;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<CardPresentOptions> serializer() {
            return CardPresentOptions$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ CardPresentOptions(int i, Boolean bool, Boolean bool2, CardPresentRoutingOptions cardPresentRoutingOptions, String str, DynamicCurrencyConversionOptions dynamicCurrencyConversionOptions, Surcharge surcharge, CardPresentRequestPartialAuthorization cardPresentRequestPartialAuthorization, SerializationConstructorMarker serializationConstructorMarker) {
        if (127 != (i & 127)) {
            PluginExceptionsKt.throwMissingFieldException(i, 127, CardPresentOptions$$serializer.INSTANCE.getDescriptor());
        }
        this.requestExtendedAuthorization = bool;
        this.requestIncrementalAuthorizationSupport = bool2;
        this.routing = cardPresentRoutingOptions;
        this.requestDynamicCurrencyConversion = str;
        this.dynamicCurrencyConversion = dynamicCurrencyConversionOptions;
        this.surcharge = surcharge;
        this.requestPartialAuthorization = cardPresentRequestPartialAuthorization;
    }

    public CardPresentOptions(Boolean bool, Boolean bool2, CardPresentRoutingOptions cardPresentRoutingOptions, String str, DynamicCurrencyConversionOptions dynamicCurrencyConversionOptions, Surcharge surcharge, CardPresentRequestPartialAuthorization cardPresentRequestPartialAuthorization) {
        this.requestExtendedAuthorization = bool;
        this.requestIncrementalAuthorizationSupport = bool2;
        this.routing = cardPresentRoutingOptions;
        this.requestDynamicCurrencyConversion = str;
        this.dynamicCurrencyConversion = dynamicCurrencyConversionOptions;
        this.surcharge = surcharge;
        this.requestPartialAuthorization = cardPresentRequestPartialAuthorization;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(CardPresentOptions self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeNullableSerializableElement(serialDesc, 0, BooleanSerializer.INSTANCE, self.requestExtendedAuthorization);
        output.encodeNullableSerializableElement(serialDesc, 1, BooleanSerializer.INSTANCE, self.requestIncrementalAuthorizationSupport);
        output.encodeNullableSerializableElement(serialDesc, 2, CardPresentRoutingOptions$$serializer.INSTANCE, self.routing);
        output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.requestDynamicCurrencyConversion);
        output.encodeNullableSerializableElement(serialDesc, 4, DynamicCurrencyConversionOptions$$serializer.INSTANCE, self.dynamicCurrencyConversion);
        output.encodeNullableSerializableElement(serialDesc, 5, Surcharge$$serializer.INSTANCE, self.surcharge);
        output.encodeNullableSerializableElement(serialDesc, 6, kSerializerArr[6], self.requestPartialAuthorization);
    }

    public final Boolean getRequestExtendedAuthorization() {
        return this.requestExtendedAuthorization;
    }

    public final Boolean getRequestIncrementalAuthorizationSupport() {
        return this.requestIncrementalAuthorizationSupport;
    }

    public final CardPresentRoutingOptions getRouting() {
        return this.routing;
    }

    public final String getRequestDynamicCurrencyConversion() {
        return this.requestDynamicCurrencyConversion;
    }

    public final DynamicCurrencyConversionOptions getDynamicCurrencyConversion() {
        return this.dynamicCurrencyConversion;
    }

    public final Surcharge getSurcharge() {
        return this.surcharge;
    }

    public final CardPresentRequestPartialAuthorization getRequestPartialAuthorization() {
        return this.requestPartialAuthorization;
    }
}
