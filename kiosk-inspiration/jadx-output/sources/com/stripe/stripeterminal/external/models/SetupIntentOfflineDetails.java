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

/* JADX INFO: compiled from: SetupIntentOfflineDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 22\u00060\u0001j\u0002`\u0002:\u000212B+\b\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\tBA\b\u0011\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012B1\b\u0000\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0013J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010 \u001a\u00020\u0006HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\rHÆ\u0003J\t\u0010\"\u001a\u00020\u000fHÆ\u0003J5\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000fHÆ\u0001J\u0013\u0010$\u001a\u00020\u000f2\b\u0010%\u001a\u0004\u0018\u00010&HÖ\u0003J\t\u0010'\u001a\u00020\u000bHÖ\u0001J\t\u0010(\u001a\u00020\u0004HÖ\u0001J&\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/HÁ\u0001¢\u0006\u0002\b0R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u001e¨\u00063"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", OfflineStorageConstantsKt.ID, "", "storedAtMs", "", "emvData", "readMethod", "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V", "seen1", "", "cardPresentDetails", "Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;", "requiresUpload", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Z)V", "getCardPresentDetails", "()Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;", "getId$annotations", "()V", "getId", "()Ljava/lang/String;", "getRequiresUpload", "()Z", "getStoredAtMs$annotations", "getStoredAtMs", "()J", "component1", "component2", "component3", "component4", "copy", "equals", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class SetupIntentOfflineDetails implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final OfflineCardPresentDetails cardPresentDetails;
    private final String id;
    private final boolean requiresUpload;
    private final long storedAtMs;

    public static /* synthetic */ SetupIntentOfflineDetails copy$default(SetupIntentOfflineDetails setupIntentOfflineDetails, String str, long j, OfflineCardPresentDetails offlineCardPresentDetails, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = setupIntentOfflineDetails.id;
        }
        if ((i & 2) != 0) {
            j = setupIntentOfflineDetails.storedAtMs;
        }
        if ((i & 4) != 0) {
            offlineCardPresentDetails = setupIntentOfflineDetails.cardPresentDetails;
        }
        if ((i & 8) != 0) {
            z = setupIntentOfflineDetails.requiresUpload;
        }
        return setupIntentOfflineDetails.copy(str, j, offlineCardPresentDetails, z);
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
    public final boolean getRequiresUpload() {
        return this.requiresUpload;
    }

    public final SetupIntentOfflineDetails copy(String id, long storedAtMs, OfflineCardPresentDetails cardPresentDetails, boolean requiresUpload) {
        return new SetupIntentOfflineDetails(id, storedAtMs, cardPresentDetails, requiresUpload);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SetupIntentOfflineDetails)) {
            return false;
        }
        SetupIntentOfflineDetails setupIntentOfflineDetails = (SetupIntentOfflineDetails) other;
        return Intrinsics.areEqual(this.id, setupIntentOfflineDetails.id) && this.storedAtMs == setupIntentOfflineDetails.storedAtMs && Intrinsics.areEqual(this.cardPresentDetails, setupIntentOfflineDetails.cardPresentDetails) && this.requiresUpload == setupIntentOfflineDetails.requiresUpload;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (((str == null ? 0 : str.hashCode()) * 31) + Long.hashCode(this.storedAtMs)) * 31;
        OfflineCardPresentDetails offlineCardPresentDetails = this.cardPresentDetails;
        return ((iHashCode + (offlineCardPresentDetails != null ? offlineCardPresentDetails.hashCode() : 0)) * 31) + Boolean.hashCode(this.requiresUpload);
    }

    public String toString() {
        return "SetupIntentOfflineDetails(id=" + this.id + ", storedAtMs=" + this.storedAtMs + ", cardPresentDetails=" + this.cardPresentDetails + ", requiresUpload=" + this.requiresUpload + ')';
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ SetupIntentOfflineDetails(int i, String str, @SerialName("storedAt") long j, OfflineCardPresentDetails offlineCardPresentDetails, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
        if (2 != (i & 2)) {
            PluginExceptionsKt.throwMissingFieldException(i, 2, SetupIntentOfflineDetails$$serializer.INSTANCE.getDescriptor());
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
            this.requiresUpload = true;
        } else {
            this.requiresUpload = z;
        }
    }

    public SetupIntentOfflineDetails(String str, long j, OfflineCardPresentDetails offlineCardPresentDetails, boolean z) {
        this.id = str;
        this.storedAtMs = j;
        this.cardPresentDetails = offlineCardPresentDetails;
        this.requiresUpload = z;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(SetupIntentOfflineDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.id != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.id);
        }
        output.encodeLongElement(serialDesc, 1, self.storedAtMs);
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.cardPresentDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, OfflineCardPresentDetails$$serializer.INSTANCE, self.cardPresentDetails);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 3) && self.requiresUpload) {
            return;
        }
        output.encodeBooleanElement(serialDesc, 3, self.requiresUpload);
    }

    public /* synthetic */ SetupIntentOfflineDetails(String str, long j, OfflineCardPresentDetails offlineCardPresentDetails, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, j, (i & 4) != 0 ? null : offlineCardPresentDetails, (i & 8) != 0 ? true : z);
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

    public final boolean getRequiresUpload() {
        return this.requiresUpload;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SetupIntentOfflineDetails(String str, long j, String emvData, String str2) {
        this(str, j, OfflineCardPresentDetails.INSTANCE.fromEmvDataAndReadMethod(emvData, str2), false, 8, (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(emvData, "emvData");
    }

    /* JADX INFO: compiled from: SetupIntentOfflineDetails.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0007J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u000eHÆ\u0001¨\u0006\u000f"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails$Companion;", "", "()V", "make", "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;", OfflineStorageConstantsKt.ID, "", "storedAtMs", "", "cardPresentDetails", "Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;", "requiresUpload", "", "serializer", "Lkotlinx/serialization/KSerializer;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<SetupIntentOfflineDetails> serializer() {
            return SetupIntentOfflineDetails$$serializer.INSTANCE;
        }

        public static /* synthetic */ SetupIntentOfflineDetails make$default(Companion companion, String str, long j, OfflineCardPresentDetails offlineCardPresentDetails, boolean z, int i, Object obj) {
            if ((i & 4) != 0) {
                offlineCardPresentDetails = null;
            }
            OfflineCardPresentDetails offlineCardPresentDetails2 = offlineCardPresentDetails;
            if ((i & 8) != 0) {
                z = true;
            }
            return companion.make(str, j, offlineCardPresentDetails2, z);
        }

        public final SetupIntentOfflineDetails make(String id, long storedAtMs, OfflineCardPresentDetails cardPresentDetails, boolean requiresUpload) {
            return new SetupIntentOfflineDetails(id, storedAtMs, cardPresentDetails, requiresUpload);
        }
    }
}
