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
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: OfflineStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \"2\u00060\u0001j\u0002`\u0002:\u0002!\"B-\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u0017\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J&\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fHÁ\u0001¢\u0006\u0002\b R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006#"}, d2 = {"Lcom/stripe/stripeterminal/external/models/OfflineStatus;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;", "sdk", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)V", "getReader", "()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;", "getSdk", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class OfflineStatus implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final OfflineStatusDetails reader;
    private final OfflineStatusDetails sdk;

    public static /* synthetic */ OfflineStatus copy$default(OfflineStatus offlineStatus, OfflineStatusDetails offlineStatusDetails, OfflineStatusDetails offlineStatusDetails2, int i, Object obj) {
        if ((i & 1) != 0) {
            offlineStatusDetails = offlineStatus.reader;
        }
        if ((i & 2) != 0) {
            offlineStatusDetails2 = offlineStatus.sdk;
        }
        return offlineStatus.copy(offlineStatusDetails, offlineStatusDetails2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final OfflineStatusDetails getReader() {
        return this.reader;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final OfflineStatusDetails getSdk() {
        return this.sdk;
    }

    public final OfflineStatus copy(OfflineStatusDetails reader, OfflineStatusDetails sdk) {
        Intrinsics.checkNotNullParameter(sdk, "sdk");
        return new OfflineStatus(reader, sdk);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflineStatus)) {
            return false;
        }
        OfflineStatus offlineStatus = (OfflineStatus) other;
        return Intrinsics.areEqual(this.reader, offlineStatus.reader) && Intrinsics.areEqual(this.sdk, offlineStatus.sdk);
    }

    public int hashCode() {
        OfflineStatusDetails offlineStatusDetails = this.reader;
        return ((offlineStatusDetails == null ? 0 : offlineStatusDetails.hashCode()) * 31) + this.sdk.hashCode();
    }

    public String toString() {
        return "OfflineStatus(reader=" + this.reader + ", sdk=" + this.sdk + ')';
    }

    /* JADX INFO: compiled from: OfflineStatus.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/OfflineStatus$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/OfflineStatus;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<OfflineStatus> serializer() {
            return OfflineStatus$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ OfflineStatus(int i, OfflineStatusDetails offlineStatusDetails, OfflineStatusDetails offlineStatusDetails2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, OfflineStatus$$serializer.INSTANCE.getDescriptor());
        }
        this.reader = offlineStatusDetails;
        this.sdk = offlineStatusDetails2;
    }

    public OfflineStatus(OfflineStatusDetails offlineStatusDetails, OfflineStatusDetails sdk) {
        Intrinsics.checkNotNullParameter(sdk, "sdk");
        this.reader = offlineStatusDetails;
        this.sdk = sdk;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(OfflineStatus self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeNullableSerializableElement(serialDesc, 0, OfflineStatusDetails$$serializer.INSTANCE, self.reader);
        output.encodeSerializableElement(serialDesc, 1, OfflineStatusDetails$$serializer.INSTANCE, self.sdk);
    }

    public final OfflineStatusDetails getReader() {
        return this.reader;
    }

    public final OfflineStatusDetails getSdk() {
        return this.sdk;
    }
}
