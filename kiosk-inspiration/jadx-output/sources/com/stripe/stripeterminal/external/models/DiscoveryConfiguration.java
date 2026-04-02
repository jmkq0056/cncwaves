package com.stripe.stripeterminal.external.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DiscoveryConfiguration.android.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\rø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "", "BluetoothDiscoveryConfiguration", "EmbeddedDiscoveryConfiguration", "HandoffDiscoveryConfiguration", "InternetDiscoveryConfiguration", "TapToPayDiscoveryConfiguration", "UsbDiscoveryConfiguration", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$BluetoothDiscoveryConfiguration;", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$EmbeddedDiscoveryConfiguration;", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$HandoffDiscoveryConfiguration;", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$TapToPayDiscoveryConfiguration;", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$UsbDiscoveryConfiguration;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface DiscoveryConfiguration {

    /* JADX INFO: compiled from: DiscoveryConfiguration.android.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\r\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$BluetoothDiscoveryConfiguration;", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "timeout", "", "isSimulated", "", "(IZ)V", "()Z", "getTimeout", "()I", "component1", "component2", "copy", "equals", "other", "", "hashCode", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class BluetoothDiscoveryConfiguration implements DiscoveryConfiguration {
        private final boolean isSimulated;
        private final int timeout;

        /* JADX WARN: Multi-variable type inference failed */
        public BluetoothDiscoveryConfiguration() {
            this(0, 0 == true ? 1 : 0, 3, null);
        }

        public static /* synthetic */ BluetoothDiscoveryConfiguration copy$default(BluetoothDiscoveryConfiguration bluetoothDiscoveryConfiguration, int i, boolean z, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = bluetoothDiscoveryConfiguration.timeout;
            }
            if ((i2 & 2) != 0) {
                z = bluetoothDiscoveryConfiguration.isSimulated;
            }
            return bluetoothDiscoveryConfiguration.copy(i, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getTimeout() {
            return this.timeout;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getIsSimulated() {
            return this.isSimulated;
        }

        public final BluetoothDiscoveryConfiguration copy(int timeout, boolean isSimulated) {
            return new BluetoothDiscoveryConfiguration(timeout, isSimulated);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof BluetoothDiscoveryConfiguration)) {
                return false;
            }
            BluetoothDiscoveryConfiguration bluetoothDiscoveryConfiguration = (BluetoothDiscoveryConfiguration) other;
            return this.timeout == bluetoothDiscoveryConfiguration.timeout && this.isSimulated == bluetoothDiscoveryConfiguration.isSimulated;
        }

        public int hashCode() {
            return (Integer.hashCode(this.timeout) * 31) + Boolean.hashCode(this.isSimulated);
        }

        public String toString() {
            return "BluetoothDiscoveryConfiguration(timeout=" + this.timeout + ", isSimulated=" + this.isSimulated + ')';
        }

        public BluetoothDiscoveryConfiguration(int i, boolean z) {
            this.timeout = i;
            this.isSimulated = z;
        }

        public /* synthetic */ BluetoothDiscoveryConfiguration(int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? false : z);
        }

        public final int getTimeout() {
            return this.timeout;
        }

        public final boolean isSimulated() {
            return this.isSimulated;
        }
    }

    /* JADX INFO: compiled from: DiscoveryConfiguration.android.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\r\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$UsbDiscoveryConfiguration;", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "timeout", "", "isSimulated", "", "(IZ)V", "()Z", "getTimeout", "()I", "component1", "component2", "copy", "equals", "other", "", "hashCode", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class UsbDiscoveryConfiguration implements DiscoveryConfiguration {
        private final boolean isSimulated;
        private final int timeout;

        /* JADX WARN: Multi-variable type inference failed */
        public UsbDiscoveryConfiguration() {
            this(0, 0 == true ? 1 : 0, 3, null);
        }

        public static /* synthetic */ UsbDiscoveryConfiguration copy$default(UsbDiscoveryConfiguration usbDiscoveryConfiguration, int i, boolean z, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = usbDiscoveryConfiguration.timeout;
            }
            if ((i2 & 2) != 0) {
                z = usbDiscoveryConfiguration.isSimulated;
            }
            return usbDiscoveryConfiguration.copy(i, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getTimeout() {
            return this.timeout;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getIsSimulated() {
            return this.isSimulated;
        }

        public final UsbDiscoveryConfiguration copy(int timeout, boolean isSimulated) {
            return new UsbDiscoveryConfiguration(timeout, isSimulated);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UsbDiscoveryConfiguration)) {
                return false;
            }
            UsbDiscoveryConfiguration usbDiscoveryConfiguration = (UsbDiscoveryConfiguration) other;
            return this.timeout == usbDiscoveryConfiguration.timeout && this.isSimulated == usbDiscoveryConfiguration.isSimulated;
        }

        public int hashCode() {
            return (Integer.hashCode(this.timeout) * 31) + Boolean.hashCode(this.isSimulated);
        }

        public String toString() {
            return "UsbDiscoveryConfiguration(timeout=" + this.timeout + ", isSimulated=" + this.isSimulated + ')';
        }

        public UsbDiscoveryConfiguration(int i, boolean z) {
            this.timeout = i;
            this.isSimulated = z;
        }

        public /* synthetic */ UsbDiscoveryConfiguration(int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? false : z);
        }

        public final int getTimeout() {
            return this.timeout;
        }

        public final boolean isSimulated() {
            return this.isSimulated;
        }
    }

    /* JADX INFO: compiled from: DiscoveryConfiguration.android.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0007HÆ\u0003J)\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "timeout", "", FirebaseAnalytics.Param.LOCATION, "", "isSimulated", "", "(ILjava/lang/String;Z)V", "()Z", "getLocation", "()Ljava/lang/String;", "getTimeout", "()I", "component1", "component2", "component3", "copy", "equals", "other", "", "hashCode", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class InternetDiscoveryConfiguration implements DiscoveryConfiguration {
        private final boolean isSimulated;
        private final String location;
        private final int timeout;

        public InternetDiscoveryConfiguration() {
            this(0, null, false, 7, null);
        }

        public static /* synthetic */ InternetDiscoveryConfiguration copy$default(InternetDiscoveryConfiguration internetDiscoveryConfiguration, int i, String str, boolean z, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = internetDiscoveryConfiguration.timeout;
            }
            if ((i2 & 2) != 0) {
                str = internetDiscoveryConfiguration.location;
            }
            if ((i2 & 4) != 0) {
                z = internetDiscoveryConfiguration.isSimulated;
            }
            return internetDiscoveryConfiguration.copy(i, str, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getTimeout() {
            return this.timeout;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getLocation() {
            return this.location;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getIsSimulated() {
            return this.isSimulated;
        }

        public final InternetDiscoveryConfiguration copy(int timeout, String location, boolean isSimulated) {
            return new InternetDiscoveryConfiguration(timeout, location, isSimulated);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof InternetDiscoveryConfiguration)) {
                return false;
            }
            InternetDiscoveryConfiguration internetDiscoveryConfiguration = (InternetDiscoveryConfiguration) other;
            return this.timeout == internetDiscoveryConfiguration.timeout && Intrinsics.areEqual(this.location, internetDiscoveryConfiguration.location) && this.isSimulated == internetDiscoveryConfiguration.isSimulated;
        }

        public int hashCode() {
            int iHashCode = Integer.hashCode(this.timeout) * 31;
            String str = this.location;
            return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Boolean.hashCode(this.isSimulated);
        }

        public String toString() {
            return "InternetDiscoveryConfiguration(timeout=" + this.timeout + ", location=" + this.location + ", isSimulated=" + this.isSimulated + ')';
        }

        public InternetDiscoveryConfiguration(int i, String str, boolean z) {
            this.timeout = i;
            this.location = str;
            this.isSimulated = z;
        }

        public /* synthetic */ InternetDiscoveryConfiguration(int i, String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? false : z);
        }

        public final int getTimeout() {
            return this.timeout;
        }

        public final String getLocation() {
            return this.location;
        }

        public final boolean isSimulated() {
            return this.isSimulated;
        }
    }

    /* JADX INFO: compiled from: DiscoveryConfiguration.android.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0006\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0005¨\u0006\u000f"}, d2 = {"Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$TapToPayDiscoveryConfiguration;", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "isSimulated", "", "(Z)V", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class TapToPayDiscoveryConfiguration implements DiscoveryConfiguration {
        private final boolean isSimulated;

        public TapToPayDiscoveryConfiguration() {
            this(false, 1, null);
        }

        public static /* synthetic */ TapToPayDiscoveryConfiguration copy$default(TapToPayDiscoveryConfiguration tapToPayDiscoveryConfiguration, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = tapToPayDiscoveryConfiguration.isSimulated;
            }
            return tapToPayDiscoveryConfiguration.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsSimulated() {
            return this.isSimulated;
        }

        public final TapToPayDiscoveryConfiguration copy(boolean isSimulated) {
            return new TapToPayDiscoveryConfiguration(isSimulated);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof TapToPayDiscoveryConfiguration) && this.isSimulated == ((TapToPayDiscoveryConfiguration) other).isSimulated;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isSimulated);
        }

        public String toString() {
            return "TapToPayDiscoveryConfiguration(isSimulated=" + this.isSimulated + ')';
        }

        public TapToPayDiscoveryConfiguration(boolean z) {
            this.isSimulated = z;
        }

        public /* synthetic */ TapToPayDiscoveryConfiguration(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z);
        }

        public final boolean isSimulated() {
            return this.isSimulated;
        }
    }

    /* JADX INFO: compiled from: DiscoveryConfiguration.android.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0096\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$HandoffDiscoveryConfiguration;", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "()V", "equals", "", "other", "", "hashCode", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class HandoffDiscoveryConfiguration implements DiscoveryConfiguration {
        public int hashCode() {
            return 0;
        }

        public boolean equals(Object other) {
            return other instanceof HandoffDiscoveryConfiguration;
        }
    }

    /* JADX INFO: compiled from: DiscoveryConfiguration.android.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$EmbeddedDiscoveryConfiguration;", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class EmbeddedDiscoveryConfiguration implements DiscoveryConfiguration {
        public static final EmbeddedDiscoveryConfiguration INSTANCE = new EmbeddedDiscoveryConfiguration();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof EmbeddedDiscoveryConfiguration)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -2118235002;
        }

        public String toString() {
            return "EmbeddedDiscoveryConfiguration";
        }

        private EmbeddedDiscoveryConfiguration() {
        }
    }
}
