package com.stripe.stripeterminal.internal.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LocationRegistration.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/models/LocationRegistration;", "", "UseId", "UsePreSet", "Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UseId;", "Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UsePreSet;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LocationRegistration {

    /* JADX INFO: compiled from: LocationRegistration.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UseId;", "Lcom/stripe/stripeterminal/internal/models/LocationRegistration;", "locationId", "", "(Ljava/lang/String;)V", "getLocationId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class UseId implements LocationRegistration {
        private final String locationId;

        public static /* synthetic */ UseId copy$default(UseId useId, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = useId.locationId;
            }
            return useId.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getLocationId() {
            return this.locationId;
        }

        public final UseId copy(String locationId) {
            Intrinsics.checkNotNullParameter(locationId, "locationId");
            return new UseId(locationId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof UseId) && Intrinsics.areEqual(this.locationId, ((UseId) other).locationId);
        }

        public int hashCode() {
            return this.locationId.hashCode();
        }

        public String toString() {
            return "UseId(locationId=" + this.locationId + ')';
        }

        public UseId(String locationId) {
            Intrinsics.checkNotNullParameter(locationId, "locationId");
            this.locationId = locationId;
        }

        public final String getLocationId() {
            return this.locationId;
        }
    }

    /* JADX INFO: compiled from: LocationRegistration.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UsePreSet;", "Lcom/stripe/stripeterminal/internal/models/LocationRegistration;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class UsePreSet implements LocationRegistration {
        public static final UsePreSet INSTANCE = new UsePreSet();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UsePreSet)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1425301238;
        }

        public String toString() {
            return "UsePreSet";
        }

        private UsePreSet() {
        }
    }
}
