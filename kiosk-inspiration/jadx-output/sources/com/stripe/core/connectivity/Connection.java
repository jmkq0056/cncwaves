package com.stripe.core.connectivity;

import com.stripe.core.connectivity.Connection.Type;
import com.stripe.core.connectivity.wifi.WifiSecurity;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: ConnectivityDataClasses.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0004\u0005\u0006\u0007\bB\u0007\b\u0004¢\u0006\u0002\u0010\u0004\u0082\u0001\u0003\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/stripe/core/connectivity/Connection;", "T", "Lcom/stripe/core/connectivity/Connection$Type;", "", "()V", "Connected", "Disconnected", "Type", "Unknown", "Lcom/stripe/core/connectivity/Connection$Connected;", "Lcom/stripe/core/connectivity/Connection$Disconnected;", "Lcom/stripe/core/connectivity/Connection$Unknown;", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class Connection<T extends Type> {
    public /* synthetic */ Connection(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: ConnectivityDataClasses.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/connectivity/Connection$Type;", "", "Cellular", "Ethernet", "Wifi", "Lcom/stripe/core/connectivity/Connection$Type$Cellular;", "Lcom/stripe/core/connectivity/Connection$Type$Ethernet;", "Lcom/stripe/core/connectivity/Connection$Type$Wifi;", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Type {

        /* JADX INFO: compiled from: ConnectivityDataClasses.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/core/connectivity/Connection$Type$Cellular;", "Lcom/stripe/core/connectivity/Connection$Type;", "signalLevel", "", "(I)V", "getSignalLevel", "()I", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Cellular implements Type {
            private final int signalLevel;

            public static /* synthetic */ Cellular copy$default(Cellular cellular, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = cellular.signalLevel;
                }
                return cellular.copy(i);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getSignalLevel() {
                return this.signalLevel;
            }

            public final Cellular copy(int signalLevel) {
                return new Cellular(signalLevel);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Cellular) && this.signalLevel == ((Cellular) other).signalLevel;
            }

            public int hashCode() {
                return Integer.hashCode(this.signalLevel);
            }

            public String toString() {
                return "Cellular(signalLevel=" + this.signalLevel + ')';
            }

            public Cellular(int i) {
                this.signalLevel = i;
            }

            public final int getSignalLevel() {
                return this.signalLevel;
            }
        }

        /* JADX INFO: compiled from: ConnectivityDataClasses.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/connectivity/Connection$Type$Ethernet;", "Lcom/stripe/core/connectivity/Connection$Type;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Ethernet implements Type {
            public static final Ethernet INSTANCE = new Ethernet();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Ethernet)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1330362231;
            }

            public String toString() {
                return "Ethernet";
            }

            private Ethernet() {
            }
        }

        /* JADX INFO: compiled from: ConnectivityDataClasses.kt */
        @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\tHÆ\u0003J\t\u0010\u001f\u001a\u00020\u000bHÆ\u0003J\t\u0010 \u001a\u00020\rHÆ\u0003JO\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\rHÆ\u0001J\u0013\u0010\"\u001a\u00020\r2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020\u0005HÖ\u0001J\t\u0010&\u001a\u00020\u000bHÖ\u0001R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006'"}, d2 = {"Lcom/stripe/core/connectivity/Connection$Type$Wifi;", "Lcom/stripe/core/connectivity/Connection$Type;", "ssid", "Lcom/stripe/core/connectivity/WifiSSID;", "frequency", "", "signalLevel", "numSignalLevels", "wifiSecurity", "Lcom/stripe/core/connectivity/wifi/WifiSecurity;", "capabilities", "", "isRemoteConfiguredWifi", "", "(Lcom/stripe/core/connectivity/WifiSSID;IIILcom/stripe/core/connectivity/wifi/WifiSecurity;Ljava/lang/String;Z)V", "getCapabilities", "()Ljava/lang/String;", "getFrequency", "()I", "()Z", "getNumSignalLevels", "getSignalLevel", "getSsid", "()Lcom/stripe/core/connectivity/WifiSSID;", "getWifiSecurity", "()Lcom/stripe/core/connectivity/wifi/WifiSecurity;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "", "hashCode", "toString", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Wifi implements Type {
            private final String capabilities;
            private final int frequency;
            private final boolean isRemoteConfiguredWifi;
            private final int numSignalLevels;
            private final int signalLevel;
            private final WifiSSID ssid;
            private final WifiSecurity wifiSecurity;

            public static /* synthetic */ Wifi copy$default(Wifi wifi, WifiSSID wifiSSID, int i, int i2, int i3, WifiSecurity wifiSecurity, String str, boolean z, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    wifiSSID = wifi.ssid;
                }
                if ((i4 & 2) != 0) {
                    i = wifi.frequency;
                }
                if ((i4 & 4) != 0) {
                    i2 = wifi.signalLevel;
                }
                if ((i4 & 8) != 0) {
                    i3 = wifi.numSignalLevels;
                }
                if ((i4 & 16) != 0) {
                    wifiSecurity = wifi.wifiSecurity;
                }
                if ((i4 & 32) != 0) {
                    str = wifi.capabilities;
                }
                if ((i4 & 64) != 0) {
                    z = wifi.isRemoteConfiguredWifi;
                }
                String str2 = str;
                boolean z2 = z;
                WifiSecurity wifiSecurity2 = wifiSecurity;
                int i5 = i2;
                return wifi.copy(wifiSSID, i, i5, i3, wifiSecurity2, str2, z2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final WifiSSID getSsid() {
                return this.ssid;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final int getFrequency() {
                return this.frequency;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final int getSignalLevel() {
                return this.signalLevel;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final int getNumSignalLevels() {
                return this.numSignalLevels;
            }

            /* JADX INFO: renamed from: component5, reason: from getter */
            public final WifiSecurity getWifiSecurity() {
                return this.wifiSecurity;
            }

            /* JADX INFO: renamed from: component6, reason: from getter */
            public final String getCapabilities() {
                return this.capabilities;
            }

            /* JADX INFO: renamed from: component7, reason: from getter */
            public final boolean getIsRemoteConfiguredWifi() {
                return this.isRemoteConfiguredWifi;
            }

            public final Wifi copy(WifiSSID ssid, int frequency, int signalLevel, int numSignalLevels, WifiSecurity wifiSecurity, String capabilities, boolean isRemoteConfiguredWifi) {
                Intrinsics.checkNotNullParameter(ssid, "ssid");
                Intrinsics.checkNotNullParameter(wifiSecurity, "wifiSecurity");
                Intrinsics.checkNotNullParameter(capabilities, "capabilities");
                return new Wifi(ssid, frequency, signalLevel, numSignalLevels, wifiSecurity, capabilities, isRemoteConfiguredWifi);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Wifi)) {
                    return false;
                }
                Wifi wifi = (Wifi) other;
                return Intrinsics.areEqual(this.ssid, wifi.ssid) && this.frequency == wifi.frequency && this.signalLevel == wifi.signalLevel && this.numSignalLevels == wifi.numSignalLevels && this.wifiSecurity == wifi.wifiSecurity && Intrinsics.areEqual(this.capabilities, wifi.capabilities) && this.isRemoteConfiguredWifi == wifi.isRemoteConfiguredWifi;
            }

            public int hashCode() {
                return (((((((((((this.ssid.hashCode() * 31) + Integer.hashCode(this.frequency)) * 31) + Integer.hashCode(this.signalLevel)) * 31) + Integer.hashCode(this.numSignalLevels)) * 31) + this.wifiSecurity.hashCode()) * 31) + this.capabilities.hashCode()) * 31) + Boolean.hashCode(this.isRemoteConfiguredWifi);
            }

            public String toString() {
                return "Wifi(ssid=" + this.ssid + ", frequency=" + this.frequency + ", signalLevel=" + this.signalLevel + ", numSignalLevels=" + this.numSignalLevels + ", wifiSecurity=" + this.wifiSecurity + ", capabilities=" + this.capabilities + ", isRemoteConfiguredWifi=" + this.isRemoteConfiguredWifi + ')';
            }

            public Wifi(WifiSSID ssid, int i, int i2, int i3, WifiSecurity wifiSecurity, String capabilities, boolean z) {
                Intrinsics.checkNotNullParameter(ssid, "ssid");
                Intrinsics.checkNotNullParameter(wifiSecurity, "wifiSecurity");
                Intrinsics.checkNotNullParameter(capabilities, "capabilities");
                this.ssid = ssid;
                this.frequency = i;
                this.signalLevel = i2;
                this.numSignalLevels = i3;
                this.wifiSecurity = wifiSecurity;
                this.capabilities = capabilities;
                this.isRemoteConfiguredWifi = z;
            }

            public /* synthetic */ Wifi(WifiSSID wifiSSID, int i, int i2, int i3, WifiSecurity wifiSecurity, String str, boolean z, int i4, DefaultConstructorMarker defaultConstructorMarker) {
                this(wifiSSID, i, i2, i3, wifiSecurity, str, (i4 & 64) != 0 ? false : z);
            }

            public final WifiSSID getSsid() {
                return this.ssid;
            }

            public final int getFrequency() {
                return this.frequency;
            }

            public final int getSignalLevel() {
                return this.signalLevel;
            }

            public final int getNumSignalLevels() {
                return this.numSignalLevels;
            }

            public final WifiSecurity getWifiSecurity() {
                return this.wifiSecurity;
            }

            public final String getCapabilities() {
                return this.capabilities;
            }

            public final boolean isRemoteConfiguredWifi() {
                return this.isRemoteConfiguredWifi;
            }
        }
    }

    private Connection() {
    }

    /* JADX INFO: compiled from: ConnectivityDataClasses.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u0011*\b\b\u0001\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0011B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005HÂ\u0003J\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/core/connectivity/Connection$Unknown;", "T", "Lcom/stripe/core/connectivity/Connection$Type;", "Lcom/stripe/core/connectivity/Connection;", "typeClass", "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;)V", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Companion", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Unknown<T extends Type> extends Connection<T> {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final KClass<T> typeClass;

        private final KClass<T> component1() {
            return this.typeClass;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Unknown copy$default(Unknown unknown, KClass kClass, int i, Object obj) {
            if ((i & 1) != 0) {
                kClass = unknown.typeClass;
            }
            return unknown.copy(kClass);
        }

        public final Unknown<T> copy(KClass<T> typeClass) {
            Intrinsics.checkNotNullParameter(typeClass, "typeClass");
            return new Unknown<>(typeClass);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Unknown) && Intrinsics.areEqual(this.typeClass, ((Unknown) other).typeClass);
        }

        public int hashCode() {
            return this.typeClass.hashCode();
        }

        public String toString() {
            return "Unknown(typeClass=" + this.typeClass + ')';
        }

        /* JADX INFO: compiled from: ConnectivityDataClasses.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\n\b\u0002\u0010\u0005\u0018\u0001*\u00020\u0006H\u0086\n¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/connectivity/Connection$Unknown$Companion;", "", "()V", "invoke", "Lcom/stripe/core/connectivity/Connection$Unknown;", "T", "Lcom/stripe/core/connectivity/Connection$Type;", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ <T extends Type> Unknown<T> invoke() {
                Intrinsics.reifiedOperationMarker(4, "T");
                return new Unknown<>(Reflection.getOrCreateKotlinClass(Type.class));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Unknown(KClass<T> typeClass) {
            super(null);
            Intrinsics.checkNotNullParameter(typeClass, "typeClass");
            this.typeClass = typeClass;
        }
    }

    /* JADX INFO: compiled from: ConnectivityDataClasses.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u0011*\b\b\u0001\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0011B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005HÂ\u0003J\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/core/connectivity/Connection$Disconnected;", "T", "Lcom/stripe/core/connectivity/Connection$Type;", "Lcom/stripe/core/connectivity/Connection;", "typeClass", "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;)V", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Companion", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Disconnected<T extends Type> extends Connection<T> {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final KClass<T> typeClass;

        private final KClass<T> component1() {
            return this.typeClass;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Disconnected copy$default(Disconnected disconnected, KClass kClass, int i, Object obj) {
            if ((i & 1) != 0) {
                kClass = disconnected.typeClass;
            }
            return disconnected.copy(kClass);
        }

        public final Disconnected<T> copy(KClass<T> typeClass) {
            Intrinsics.checkNotNullParameter(typeClass, "typeClass");
            return new Disconnected<>(typeClass);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Disconnected) && Intrinsics.areEqual(this.typeClass, ((Disconnected) other).typeClass);
        }

        public int hashCode() {
            return this.typeClass.hashCode();
        }

        public String toString() {
            return "Disconnected(typeClass=" + this.typeClass + ')';
        }

        /* JADX INFO: compiled from: ConnectivityDataClasses.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\n\b\u0002\u0010\u0005\u0018\u0001*\u00020\u0006H\u0086\n¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/connectivity/Connection$Disconnected$Companion;", "", "()V", "invoke", "Lcom/stripe/core/connectivity/Connection$Disconnected;", "T", "Lcom/stripe/core/connectivity/Connection$Type;", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ <T extends Type> Disconnected<T> invoke() {
                Intrinsics.reifiedOperationMarker(4, "T");
                return new Disconnected<>(Reflection.getOrCreateKotlinClass(Type.class));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Disconnected(KClass<T> typeClass) {
            super(null);
            Intrinsics.checkNotNullParameter(typeClass, "typeClass");
            this.typeClass = typeClass;
        }
    }

    /* JADX INFO: compiled from: ConnectivityDataClasses.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0001¢\u0006\u0002\u0010\u0005J\u000e\u0010\t\u001a\u00028\u0001HÆ\u0003¢\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\u0004\u001a\u00028\u0001HÆ\u0001¢\u0006\u0002\u0010\u000bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0013\u0010\u0004\u001a\u00028\u0001¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"Lcom/stripe/core/connectivity/Connection$Connected;", "T", "Lcom/stripe/core/connectivity/Connection$Type;", "Lcom/stripe/core/connectivity/Connection;", "connectionType", "(Lcom/stripe/core/connectivity/Connection$Type;)V", "getConnectionType", "()Lcom/stripe/core/connectivity/Connection$Type;", "Lcom/stripe/core/connectivity/Connection$Type;", "component1", "copy", "(Lcom/stripe/core/connectivity/Connection$Type;)Lcom/stripe/core/connectivity/Connection$Connected;", "equals", "", "other", "", "hashCode", "", "toString", "", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Connected<T extends Type> extends Connection<T> {
        private final T connectionType;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Connected copy$default(Connected connected, Type type, int i, Object obj) {
            if ((i & 1) != 0) {
                type = connected.connectionType;
            }
            return connected.copy(type);
        }

        public final T component1() {
            return this.connectionType;
        }

        public final Connected<T> copy(T connectionType) {
            Intrinsics.checkNotNullParameter(connectionType, "connectionType");
            return new Connected<>(connectionType);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Connected) && Intrinsics.areEqual(this.connectionType, ((Connected) other).connectionType);
        }

        public int hashCode() {
            return this.connectionType.hashCode();
        }

        public String toString() {
            return "Connected(connectionType=" + this.connectionType + ')';
        }

        public final T getConnectionType() {
            return this.connectionType;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Connected(T connectionType) {
            super(null);
            Intrinsics.checkNotNullParameter(connectionType, "connectionType");
            this.connectionType = connectionType;
        }
    }
}
