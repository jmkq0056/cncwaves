package com.stripe.core.aidlrpc;

import com.stripe.core.device.HardwareManufacturer;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppPackageName.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0006\u0007R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\u0082\u0001\u0002\b\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/aidlrpc/AppPackageName;", "", "value", "", "getValue", "()Ljava/lang/String;", "Reader", "Updater", "Lcom/stripe/core/aidlrpc/AppPackageName$Reader;", "Lcom/stripe/core/aidlrpc/AppPackageName$Updater;", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface AppPackageName {
    String getValue();

    /* JADX INFO: compiled from: AppPackageName.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\n\u001a\u00020\u0006HÆ\u0003J\u0013\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0006HÖ\u0001R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0013"}, d2 = {"Lcom/stripe/core/aidlrpc/AppPackageName$Reader;", "Lcom/stripe/core/aidlrpc/AppPackageName;", "hardwareManufacturer", "Lcom/stripe/core/device/HardwareManufacturer;", "(Lcom/stripe/core/device/HardwareManufacturer;)V", "value", "", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Reader implements AppPackageName {
        private final String value;

        public static /* synthetic */ Reader copy$default(Reader reader, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = reader.value;
            }
            return reader.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getValue() {
            return this.value;
        }

        public final Reader copy(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new Reader(value);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Reader) && Intrinsics.areEqual(this.value, ((Reader) other).value);
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return "Reader(value=" + this.value + ')';
        }

        public Reader(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.value = value;
        }

        @Override // com.stripe.core.aidlrpc.AppPackageName
        public String getValue() {
            return this.value;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Reader(HardwareManufacturer hardwareManufacturer) {
            String str;
            Intrinsics.checkNotNullParameter(hardwareManufacturer, "hardwareManufacturer");
            if (hardwareManufacturer instanceof HardwareManufacturer.Verifone) {
                str = "com.stripe.reader.verifone";
            } else {
                if (!(hardwareManufacturer instanceof HardwareManufacturer.Bbpos ? true : hardwareManufacturer instanceof HardwareManufacturer.Other)) {
                    throw new NoWhenBranchMatchedException();
                }
                str = "com.stripe.reader";
            }
            this(str);
        }
    }

    /* JADX INFO: compiled from: AppPackageName.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u0004HÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/stripe/core/aidlrpc/AppPackageName$Updater;", "Lcom/stripe/core/aidlrpc/AppPackageName;", "()V", "value", "", "getValue", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "toString", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Updater implements AppPackageName {
        public static final Updater INSTANCE = new Updater();
        private static final String value = "com.stripe.updater";

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Updater)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1367000481;
        }

        public String toString() {
            return "Updater";
        }

        private Updater() {
        }

        @Override // com.stripe.core.aidlrpc.AppPackageName
        public String getValue() {
            return value;
        }
    }
}
