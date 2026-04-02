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
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: SetupIntentCardPresentDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 #2\u00060\u0001j\u0002`\u0002:\u0002\"#B/\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u001f\b\u0000\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0003J!\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0006HÖ\u0001J&\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 HÁ\u0001¢\u0006\u0002\b!R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000f¨\u0006$"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "emvAuthData", "", "generatedCard", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;)V", "getEmvAuthData$annotations", "()V", "getEmvAuthData", "()Ljava/lang/String;", "getGeneratedCard", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class SetupIntentCardPresentDetails implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String emvAuthData;
    private final String generatedCard;

    /* JADX WARN: Multi-variable type inference failed */
    public SetupIntentCardPresentDetails() {
        this((String) null, (String) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public static /* synthetic */ SetupIntentCardPresentDetails copy$default(SetupIntentCardPresentDetails setupIntentCardPresentDetails, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = setupIntentCardPresentDetails.emvAuthData;
        }
        if ((i & 2) != 0) {
            str2 = setupIntentCardPresentDetails.generatedCard;
        }
        return setupIntentCardPresentDetails.copy(str, str2);
    }

    public static /* synthetic */ void getEmvAuthData$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEmvAuthData() {
        return this.emvAuthData;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getGeneratedCard() {
        return this.generatedCard;
    }

    public final SetupIntentCardPresentDetails copy(String emvAuthData, String generatedCard) {
        return new SetupIntentCardPresentDetails(emvAuthData, generatedCard);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SetupIntentCardPresentDetails)) {
            return false;
        }
        SetupIntentCardPresentDetails setupIntentCardPresentDetails = (SetupIntentCardPresentDetails) other;
        return Intrinsics.areEqual(this.emvAuthData, setupIntentCardPresentDetails.emvAuthData) && Intrinsics.areEqual(this.generatedCard, setupIntentCardPresentDetails.generatedCard);
    }

    public int hashCode() {
        String str = this.emvAuthData;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.generatedCard;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "SetupIntentCardPresentDetails(emvAuthData=" + this.emvAuthData + ", generatedCard=" + this.generatedCard + ')';
    }

    /* JADX INFO: compiled from: SetupIntentCardPresentDetails.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<SetupIntentCardPresentDetails> serializer() {
            return SetupIntentCardPresentDetails$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ SetupIntentCardPresentDetails(int i, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.emvAuthData = null;
        } else {
            this.emvAuthData = str;
        }
        if ((i & 2) == 0) {
            this.generatedCard = null;
        } else {
            this.generatedCard = str2;
        }
    }

    public SetupIntentCardPresentDetails(String str, String str2) {
        this.emvAuthData = str;
        this.generatedCard = str2;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(SetupIntentCardPresentDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.emvAuthData != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.emvAuthData);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 1) && self.generatedCard == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.generatedCard);
    }

    public /* synthetic */ SetupIntentCardPresentDetails(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
    }

    public final String getEmvAuthData() {
        return this.emvAuthData;
    }

    public final String getGeneratedCard() {
        return this.generatedCard;
    }
}
