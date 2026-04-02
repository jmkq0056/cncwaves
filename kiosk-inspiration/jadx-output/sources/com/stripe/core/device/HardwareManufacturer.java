package com.stripe.core.device;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HardwareManufacturer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\bR\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\u0082\u0001\u0003\t\n\u000bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/device/HardwareManufacturer;", "", "value", "", "getValue", "()Ljava/lang/String;", "Bbpos", "Other", "Verifone", "Lcom/stripe/core/device/HardwareManufacturer$Bbpos;", "Lcom/stripe/core/device/HardwareManufacturer$Other;", "Lcom/stripe/core/device/HardwareManufacturer$Verifone;", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface HardwareManufacturer {
    String getValue();

    /* JADX INFO: compiled from: HardwareManufacturer.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u0004HÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/stripe/core/device/HardwareManufacturer$Bbpos;", "Lcom/stripe/core/device/HardwareManufacturer;", "()V", "value", "", "getValue", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "toString", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Bbpos implements HardwareManufacturer {
        public static final Bbpos INSTANCE = new Bbpos();
        private static final String value = "BBPOS";

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Bbpos)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 641200348;
        }

        public String toString() {
            return "Bbpos";
        }

        private Bbpos() {
        }

        @Override // com.stripe.core.device.HardwareManufacturer
        public String getValue() {
            return value;
        }
    }

    /* JADX INFO: compiled from: HardwareManufacturer.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u0004HÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/stripe/core/device/HardwareManufacturer$Verifone;", "Lcom/stripe/core/device/HardwareManufacturer;", "()V", "value", "", "getValue", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "toString", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Verifone implements HardwareManufacturer {
        public static final Verifone INSTANCE = new Verifone();
        private static final String value = "VERIFONE";

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Verifone)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1195454110;
        }

        public String toString() {
            return "Verifone";
        }

        private Verifone() {
        }

        @Override // com.stripe.core.device.HardwareManufacturer
        public String getValue() {
            return value;
        }
    }

    /* JADX INFO: compiled from: HardwareManufacturer.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/core/device/HardwareManufacturer$Other;", "Lcom/stripe/core/device/HardwareManufacturer;", "value", "", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Other implements HardwareManufacturer {
        private final String value;

        public static /* synthetic */ Other copy$default(Other other, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = other.value;
            }
            return other.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getValue() {
            return this.value;
        }

        public final Other copy(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new Other(value);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Other) && Intrinsics.areEqual(this.value, ((Other) other).value);
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return "Other(value=" + this.value + ')';
        }

        public Other(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.value = value;
        }

        @Override // com.stripe.core.device.HardwareManufacturer
        public String getValue() {
            return this.value;
        }
    }
}
