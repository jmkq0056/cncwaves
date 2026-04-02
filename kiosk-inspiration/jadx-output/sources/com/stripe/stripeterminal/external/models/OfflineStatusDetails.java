package com.stripe.stripeterminal.external.models;

import java.util.Map;
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
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: OfflineStatusDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 ,2\u00060\u0001j\u0002`\u0002:\u0002+,BI\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fB1\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\u0010J\t\u0010\u0018\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0004HÆ\u0003J\u0015\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bHÆ\u0003J\t\u0010\u001b\u001a\u00020\fHÆ\u0003J=\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u0004HÖ\u0001J\t\u0010\"\u001a\u00020\tHÖ\u0001J&\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)HÁ\u0001¢\u0006\u0002\b*R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016¨\u0006-"}, d2 = {"Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "offlinePaymentsCount", "offlineSetupIntentsCount", "offlinePaymentAmountsByCurrency", "", "", "", "networkStatus", "Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IIILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(IILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)V", "getNetworkStatus", "()Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "getOfflinePaymentAmountsByCurrency", "()Ljava/util/Map;", "getOfflinePaymentsCount", "()I", "getOfflineSetupIntentsCount", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class OfflineStatusDetails implements java.io.Serializable {
    private final NetworkStatus networkStatus;
    private final Map<String, Long> offlinePaymentAmountsByCurrency;
    private final int offlinePaymentsCount;
    private final int offlineSetupIntentsCount;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, LongSerializer.INSTANCE), NetworkStatus.INSTANCE.serializer()};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OfflineStatusDetails copy$default(OfflineStatusDetails offlineStatusDetails, int i, int i2, Map map, NetworkStatus networkStatus, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = offlineStatusDetails.offlinePaymentsCount;
        }
        if ((i3 & 2) != 0) {
            i2 = offlineStatusDetails.offlineSetupIntentsCount;
        }
        if ((i3 & 4) != 0) {
            map = offlineStatusDetails.offlinePaymentAmountsByCurrency;
        }
        if ((i3 & 8) != 0) {
            networkStatus = offlineStatusDetails.networkStatus;
        }
        return offlineStatusDetails.copy(i, i2, map, networkStatus);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getOfflinePaymentsCount() {
        return this.offlinePaymentsCount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getOfflineSetupIntentsCount() {
        return this.offlineSetupIntentsCount;
    }

    public final Map<String, Long> component3() {
        return this.offlinePaymentAmountsByCurrency;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final NetworkStatus getNetworkStatus() {
        return this.networkStatus;
    }

    public final OfflineStatusDetails copy(int offlinePaymentsCount, int offlineSetupIntentsCount, Map<String, Long> offlinePaymentAmountsByCurrency, NetworkStatus networkStatus) {
        Intrinsics.checkNotNullParameter(offlinePaymentAmountsByCurrency, "offlinePaymentAmountsByCurrency");
        Intrinsics.checkNotNullParameter(networkStatus, "networkStatus");
        return new OfflineStatusDetails(offlinePaymentsCount, offlineSetupIntentsCount, offlinePaymentAmountsByCurrency, networkStatus);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflineStatusDetails)) {
            return false;
        }
        OfflineStatusDetails offlineStatusDetails = (OfflineStatusDetails) other;
        return this.offlinePaymentsCount == offlineStatusDetails.offlinePaymentsCount && this.offlineSetupIntentsCount == offlineStatusDetails.offlineSetupIntentsCount && Intrinsics.areEqual(this.offlinePaymentAmountsByCurrency, offlineStatusDetails.offlinePaymentAmountsByCurrency) && this.networkStatus == offlineStatusDetails.networkStatus;
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.offlinePaymentsCount) * 31) + Integer.hashCode(this.offlineSetupIntentsCount)) * 31) + this.offlinePaymentAmountsByCurrency.hashCode()) * 31) + this.networkStatus.hashCode();
    }

    public String toString() {
        return "OfflineStatusDetails(offlinePaymentsCount=" + this.offlinePaymentsCount + ", offlineSetupIntentsCount=" + this.offlineSetupIntentsCount + ", offlinePaymentAmountsByCurrency=" + this.offlinePaymentAmountsByCurrency + ", networkStatus=" + this.networkStatus + ')';
    }

    /* JADX INFO: compiled from: OfflineStatusDetails.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<OfflineStatusDetails> serializer() {
            return OfflineStatusDetails$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ OfflineStatusDetails(int i, int i2, int i3, Map map, NetworkStatus networkStatus, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, OfflineStatusDetails$$serializer.INSTANCE.getDescriptor());
        }
        this.offlinePaymentsCount = i2;
        this.offlineSetupIntentsCount = i3;
        this.offlinePaymentAmountsByCurrency = map;
        this.networkStatus = networkStatus;
    }

    public OfflineStatusDetails(int i, int i2, Map<String, Long> offlinePaymentAmountsByCurrency, NetworkStatus networkStatus) {
        Intrinsics.checkNotNullParameter(offlinePaymentAmountsByCurrency, "offlinePaymentAmountsByCurrency");
        Intrinsics.checkNotNullParameter(networkStatus, "networkStatus");
        this.offlinePaymentsCount = i;
        this.offlineSetupIntentsCount = i2;
        this.offlinePaymentAmountsByCurrency = offlinePaymentAmountsByCurrency;
        this.networkStatus = networkStatus;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(OfflineStatusDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeIntElement(serialDesc, 0, self.offlinePaymentsCount);
        output.encodeIntElement(serialDesc, 1, self.offlineSetupIntentsCount);
        output.encodeSerializableElement(serialDesc, 2, kSerializerArr[2], self.offlinePaymentAmountsByCurrency);
        output.encodeSerializableElement(serialDesc, 3, kSerializerArr[3], self.networkStatus);
    }

    public final int getOfflinePaymentsCount() {
        return this.offlinePaymentsCount;
    }

    public final int getOfflineSetupIntentsCount() {
        return this.offlineSetupIntentsCount;
    }

    public final Map<String, Long> getOfflinePaymentAmountsByCurrency() {
        return this.offlinePaymentAmountsByCurrency;
    }

    public final NetworkStatus getNetworkStatus() {
        return this.networkStatus;
    }
}
