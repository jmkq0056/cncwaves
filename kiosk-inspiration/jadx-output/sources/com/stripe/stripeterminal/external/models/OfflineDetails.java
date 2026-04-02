package com.stripe.stripeterminal.external.models;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: OfflineDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 92\u00060\u0001j\u0002`\u0002:\u000289B5\b\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u000bBK\b\u0011\u0012\u0006\u0010\f\u001a\u00020\r\u0012\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\u0002\u0010\u0016B=\b\u0000\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0017J\u000b\u0010%\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010&\u001a\u00020\u0006HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\t\u0010)\u001a\u00020\u0013HÆ\u0003JA\u0010*\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0013HÆ\u0001J\u0013\u0010+\u001a\u00020\u00132\b\u0010,\u001a\u0004\u0018\u00010-HÖ\u0003J\t\u0010.\u001a\u00020\rHÖ\u0001J\t\u0010/\u001a\u00020\u0004HÖ\u0001J&\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u00002\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u000206HÁ\u0001¢\u0006\u0002\b7R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\"\u0010\u001d\u001a\u0004\b#\u0010$¨\u0006:"}, d2 = {"Lcom/stripe/stripeterminal/external/models/OfflineDetails;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", OfflineStorageConstantsKt.ID, "", "storedAtMs", "", "emvData", "tip", "Lcom/stripe/stripeterminal/external/models/Tip;", "readMethod", "(Ljava/lang/String;JLjava/lang/String;Lcom/stripe/stripeterminal/external/models/Tip;Ljava/lang/String;)V", "seen1", "", "cardPresentDetails", "Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;", "amountDetails", "Lcom/stripe/stripeterminal/external/models/AmountDetails;", "requiresUpload", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;Z)V", "getAmountDetails", "()Lcom/stripe/stripeterminal/external/models/AmountDetails;", "getCardPresentDetails", "()Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;", "getId$annotations", "()V", "getId", "()Ljava/lang/String;", "getRequiresUpload", "()Z", "getStoredAtMs$annotations", "getStoredAtMs", "()J", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class OfflineDetails implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final AmountDetails amountDetails;
    private final OfflineCardPresentDetails cardPresentDetails;
    private final String id;
    private final boolean requiresUpload;
    private final long storedAtMs;

    public static /* synthetic */ OfflineDetails copy$default(OfflineDetails offlineDetails, String str, long j, OfflineCardPresentDetails offlineCardPresentDetails, AmountDetails amountDetails, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = offlineDetails.id;
        }
        if ((i & 2) != 0) {
            j = offlineDetails.storedAtMs;
        }
        if ((i & 4) != 0) {
            offlineCardPresentDetails = offlineDetails.cardPresentDetails;
        }
        if ((i & 8) != 0) {
            amountDetails = offlineDetails.amountDetails;
        }
        if ((i & 16) != 0) {
            z = offlineDetails.requiresUpload;
        }
        boolean z2 = z;
        OfflineCardPresentDetails offlineCardPresentDetails2 = offlineCardPresentDetails;
        return offlineDetails.copy(str, j, offlineCardPresentDetails2, amountDetails, z2);
    }

    public static /* synthetic */ void getId$annotations() {
    }

    @SerialName("storedAt")
    public static /* synthetic */ void getStoredAtMs$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getStoredAtMs() {
        return this.storedAtMs;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final OfflineCardPresentDetails getCardPresentDetails() {
        return this.cardPresentDetails;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final AmountDetails getAmountDetails() {
        return this.amountDetails;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getRequiresUpload() {
        return this.requiresUpload;
    }

    public final OfflineDetails copy(String id, long storedAtMs, OfflineCardPresentDetails cardPresentDetails, AmountDetails amountDetails, boolean requiresUpload) {
        return new OfflineDetails(id, storedAtMs, cardPresentDetails, amountDetails, requiresUpload);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflineDetails)) {
            return false;
        }
        OfflineDetails offlineDetails = (OfflineDetails) other;
        return Intrinsics.areEqual(this.id, offlineDetails.id) && this.storedAtMs == offlineDetails.storedAtMs && Intrinsics.areEqual(this.cardPresentDetails, offlineDetails.cardPresentDetails) && Intrinsics.areEqual(this.amountDetails, offlineDetails.amountDetails) && this.requiresUpload == offlineDetails.requiresUpload;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (((str == null ? 0 : str.hashCode()) * 31) + Long.hashCode(this.storedAtMs)) * 31;
        OfflineCardPresentDetails offlineCardPresentDetails = this.cardPresentDetails;
        int iHashCode2 = (iHashCode + (offlineCardPresentDetails == null ? 0 : offlineCardPresentDetails.hashCode())) * 31;
        AmountDetails amountDetails = this.amountDetails;
        return ((iHashCode2 + (amountDetails != null ? amountDetails.hashCode() : 0)) * 31) + Boolean.hashCode(this.requiresUpload);
    }

    public String toString() {
        return "OfflineDetails(id=" + this.id + ", storedAtMs=" + this.storedAtMs + ", cardPresentDetails=" + this.cardPresentDetails + ", amountDetails=" + this.amountDetails + ", requiresUpload=" + this.requiresUpload + ')';
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ OfflineDetails(int i, String str, @SerialName("storedAt") long j, OfflineCardPresentDetails offlineCardPresentDetails, AmountDetails amountDetails, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
        if (2 != (i & 2)) {
            PluginExceptionsKt.throwMissingFieldException(i, 2, OfflineDetails$$serializer.INSTANCE.getDescriptor());
        }
        if ((i & 1) == 0) {
            this.id = null;
        } else {
            this.id = str;
        }
        this.storedAtMs = j;
        if ((i & 4) == 0) {
            this.cardPresentDetails = null;
        } else {
            this.cardPresentDetails = offlineCardPresentDetails;
        }
        if ((i & 8) == 0) {
            this.amountDetails = null;
        } else {
            this.amountDetails = amountDetails;
        }
        if ((i & 16) == 0) {
            this.requiresUpload = true;
        } else {
            this.requiresUpload = z;
        }
    }

    public OfflineDetails(String str, long j, OfflineCardPresentDetails offlineCardPresentDetails, AmountDetails amountDetails, boolean z) {
        this.id = str;
        this.storedAtMs = j;
        this.cardPresentDetails = offlineCardPresentDetails;
        this.amountDetails = amountDetails;
        this.requiresUpload = z;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(OfflineDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.id != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.id);
        }
        output.encodeLongElement(serialDesc, 1, self.storedAtMs);
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.cardPresentDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, OfflineCardPresentDetails$$serializer.INSTANCE, self.cardPresentDetails);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.amountDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, AmountDetails$$serializer.INSTANCE, self.amountDetails);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 4) && self.requiresUpload) {
            return;
        }
        output.encodeBooleanElement(serialDesc, 4, self.requiresUpload);
    }

    public /* synthetic */ OfflineDetails(String str, long j, OfflineCardPresentDetails offlineCardPresentDetails, AmountDetails amountDetails, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, j, (i & 4) != 0 ? null : offlineCardPresentDetails, (i & 8) != 0 ? null : amountDetails, (i & 16) != 0 ? true : z);
    }

    public final String getId() {
        return this.id;
    }

    public final long getStoredAtMs() {
        return this.storedAtMs;
    }

    public final OfflineCardPresentDetails getCardPresentDetails() {
        return this.cardPresentDetails;
    }

    public final AmountDetails getAmountDetails() {
        return this.amountDetails;
    }

    public final boolean getRequiresUpload() {
        return this.requiresUpload;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OfflineDetails(String str, long j, String emvData, Tip tip, String str2) {
        AmountDetails amountDetails;
        Intrinsics.checkNotNullParameter(emvData, "emvData");
        OfflineCardPresentDetails offlineCardPresentDetailsFromEmvDataAndReadMethod = OfflineCardPresentDetails.INSTANCE.fromEmvDataAndReadMethod(emvData, str2);
        SurchargeDetails surchargeDetails = null;
        Object[] objArr = 0;
        if (tip != null) {
            amountDetails = new AmountDetails(tip, surchargeDetails, 2, (DefaultConstructorMarker) (objArr == true ? 1 : 0));
        } else {
            amountDetails = null;
        }
        this(str, j, offlineCardPresentDetailsFromEmvDataAndReadMethod, amountDetails, false, 16, (DefaultConstructorMarker) null);
    }

    /* JADX INFO: compiled from: OfflineDetails.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J<\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007J\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0010HÆ\u0001¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/external/models/OfflineDetails$Companion;", "", "()V", "make", "Lcom/stripe/stripeterminal/external/models/OfflineDetails;", OfflineStorageConstantsKt.ID, "", "storedAtMs", "", "cardPresentDetails", "Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;", "amountDetails", "Lcom/stripe/stripeterminal/external/models/AmountDetails;", "requiresUpload", "", "serializer", "Lkotlinx/serialization/KSerializer;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<OfflineDetails> serializer() {
            return OfflineDetails$$serializer.INSTANCE;
        }

        public static /* synthetic */ OfflineDetails make$default(Companion companion, String str, long j, OfflineCardPresentDetails offlineCardPresentDetails, AmountDetails amountDetails, boolean z, int i, Object obj) {
            if ((i & 4) != 0) {
                offlineCardPresentDetails = null;
            }
            if ((i & 8) != 0) {
                amountDetails = null;
            }
            if ((i & 16) != 0) {
                z = true;
            }
            return companion.make(str, j, offlineCardPresentDetails, amountDetails, z);
        }

        public final OfflineDetails make(String id, long storedAtMs, OfflineCardPresentDetails cardPresentDetails, AmountDetails amountDetails, boolean requiresUpload) {
            return new OfflineDetails(id, storedAtMs, cardPresentDetails, amountDetails, requiresUpload);
        }
    }
}
