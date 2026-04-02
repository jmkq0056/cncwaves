package com.stripe.core.device;

import com.stripe.core.device.HardwareManufacturer;
import com.stripe.serialnumber.SmartPOSDeviceMetadata;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientDeviceType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\t\t\n\u000b\f\r\u000e\u000f\u0010\u0011R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004R\u0012\u0010\u0005\u001a\u00020\u0006X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\u0082\u0001\u0003\u0012\u0013\u0014ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0015À\u0006\u0001"}, d2 = {"Lcom/stripe/core/device/ClientDeviceType;", "", "isDevKit", "", "()Z", "manufacturer", "Lcom/stripe/core/device/HardwareManufacturer;", "getManufacturer", "()Lcom/stripe/core/device/HardwareManufacturer;", "BbposDevice", "Emulator", "Etna", "MorphDevice", "MorphVfs0100", "S700", "S710", "Unknown", "WisePosE", "Lcom/stripe/core/device/ClientDeviceType$BbposDevice;", "Lcom/stripe/core/device/ClientDeviceType$Emulator;", "Lcom/stripe/core/device/ClientDeviceType$MorphDevice;", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ClientDeviceType {

    /* JADX INFO: compiled from: ClientDeviceType.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\u0082\u0001\u0005\u0006\u0007\b\t\nø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/device/ClientDeviceType$BbposDevice;", "Lcom/stripe/core/device/ClientDeviceType;", "metadata", "Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "getMetadata", "()Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "Lcom/stripe/core/device/ClientDeviceType$Etna;", "Lcom/stripe/core/device/ClientDeviceType$S700;", "Lcom/stripe/core/device/ClientDeviceType$S710;", "Lcom/stripe/core/device/ClientDeviceType$Unknown;", "Lcom/stripe/core/device/ClientDeviceType$WisePosE;", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface BbposDevice extends ClientDeviceType {
        SmartPOSDeviceMetadata getMetadata();
    }

    /* JADX INFO: compiled from: ClientDeviceType.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001\u0082\u0001\u0002\u0002\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Lcom/stripe/core/device/ClientDeviceType$MorphDevice;", "Lcom/stripe/core/device/ClientDeviceType;", "Lcom/stripe/core/device/ClientDeviceType$MorphVfs0100;", "Lcom/stripe/core/device/ClientDeviceType$Unknown;", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface MorphDevice extends ClientDeviceType {
    }

    HardwareManufacturer getManufacturer();

    /* JADX INFO: renamed from: isDevKit */
    boolean getIsDevKit();

    /* JADX INFO: compiled from: ClientDeviceType.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0014\u0010\u0007\u001a\u00020\u0003X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\bR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/core/device/ClientDeviceType$Emulator;", "Lcom/stripe/core/device/ClientDeviceType;", "isTablet", "", "manufacturer", "Lcom/stripe/core/device/HardwareManufacturer$Other;", "(ZLcom/stripe/core/device/HardwareManufacturer$Other;)V", "isDevKit", "()Z", "getManufacturer", "()Lcom/stripe/core/device/HardwareManufacturer$Other;", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toString", "", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Emulator implements ClientDeviceType {
        private final boolean isDevKit;
        private final boolean isTablet;
        private final HardwareManufacturer.Other manufacturer;

        public static /* synthetic */ Emulator copy$default(Emulator emulator, boolean z, HardwareManufacturer.Other other, int i, Object obj) {
            if ((i & 1) != 0) {
                z = emulator.isTablet;
            }
            if ((i & 2) != 0) {
                other = emulator.manufacturer;
            }
            return emulator.copy(z, other);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsTablet() {
            return this.isTablet;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final HardwareManufacturer.Other getManufacturer() {
            return this.manufacturer;
        }

        public final Emulator copy(boolean isTablet, HardwareManufacturer.Other manufacturer) {
            Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
            return new Emulator(isTablet, manufacturer);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Emulator)) {
                return false;
            }
            Emulator emulator = (Emulator) other;
            return this.isTablet == emulator.isTablet && Intrinsics.areEqual(this.manufacturer, emulator.manufacturer);
        }

        public int hashCode() {
            return (Boolean.hashCode(this.isTablet) * 31) + this.manufacturer.hashCode();
        }

        public String toString() {
            return "Emulator(isTablet=" + this.isTablet + ", manufacturer=" + this.manufacturer + ')';
        }

        public Emulator(boolean z, HardwareManufacturer.Other manufacturer) {
            Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
            this.isTablet = z;
            this.manufacturer = manufacturer;
        }

        public final boolean isTablet() {
            return this.isTablet;
        }

        @Override // com.stripe.core.device.ClientDeviceType
        public HardwareManufacturer.Other getManufacturer() {
            return this.manufacturer;
        }

        @Override // com.stripe.core.device.ClientDeviceType
        /* JADX INFO: renamed from: isDevKit, reason: from getter */
        public boolean getIsDevKit() {
            return this.isDevKit;
        }
    }

    /* JADX INFO: compiled from: ClientDeviceType.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010\u000f\u001a\u00020\u0004HÆ\u0003J\u0013\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/stripe/core/device/ClientDeviceType$Unknown;", "Lcom/stripe/core/device/ClientDeviceType$BbposDevice;", "Lcom/stripe/core/device/ClientDeviceType$MorphDevice;", "manufacturer", "Lcom/stripe/core/device/HardwareManufacturer$Other;", "(Lcom/stripe/core/device/HardwareManufacturer$Other;)V", "isDevKit", "", "()Z", "getManufacturer", "()Lcom/stripe/core/device/HardwareManufacturer$Other;", "metadata", "Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "getMetadata", "()Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Unknown implements BbposDevice, MorphDevice {
        private final boolean isDevKit;
        private final HardwareManufacturer.Other manufacturer;
        private final SmartPOSDeviceMetadata metadata;

        public static /* synthetic */ Unknown copy$default(Unknown unknown, HardwareManufacturer.Other other, int i, Object obj) {
            if ((i & 1) != 0) {
                other = unknown.manufacturer;
            }
            return unknown.copy(other);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final HardwareManufacturer.Other getManufacturer() {
            return this.manufacturer;
        }

        public final Unknown copy(HardwareManufacturer.Other manufacturer) {
            Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
            return new Unknown(manufacturer);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Unknown) && Intrinsics.areEqual(this.manufacturer, ((Unknown) other).manufacturer);
        }

        public int hashCode() {
            return this.manufacturer.hashCode();
        }

        public String toString() {
            return "Unknown(manufacturer=" + this.manufacturer + ')';
        }

        public Unknown(HardwareManufacturer.Other manufacturer) {
            Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
            this.manufacturer = manufacturer;
            this.metadata = SmartPOSDeviceMetadata.UnknownDevice;
        }

        @Override // com.stripe.core.device.ClientDeviceType
        public HardwareManufacturer.Other getManufacturer() {
            return this.manufacturer;
        }

        @Override // com.stripe.core.device.ClientDeviceType
        /* JADX INFO: renamed from: isDevKit, reason: from getter */
        public boolean getIsDevKit() {
            return this.isDevKit;
        }

        @Override // com.stripe.core.device.ClientDeviceType.BbposDevice
        public SmartPOSDeviceMetadata getMetadata() {
            return this.metadata;
        }
    }

    /* JADX INFO: compiled from: ClientDeviceType.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u000e\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0015"}, d2 = {"Lcom/stripe/core/device/ClientDeviceType$Etna;", "Lcom/stripe/core/device/ClientDeviceType$BbposDevice;", "()V", "isDevKit", "", "()Z", "manufacturer", "Lcom/stripe/core/device/HardwareManufacturer$Bbpos;", "getManufacturer", "()Lcom/stripe/core/device/HardwareManufacturer$Bbpos;", "metadata", "Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "getMetadata", "()Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "equals", "other", "", "hashCode", "", "toString", "", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Etna implements BbposDevice {
        private static final boolean isDevKit = false;
        public static final Etna INSTANCE = new Etna();
        private static final HardwareManufacturer.Bbpos manufacturer = HardwareManufacturer.Bbpos.INSTANCE;
        private static final SmartPOSDeviceMetadata metadata = SmartPOSDeviceMetadata.Etna;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Etna)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 38274712;
        }

        public String toString() {
            return "Etna";
        }

        private Etna() {
        }

        @Override // com.stripe.core.device.ClientDeviceType
        /* JADX INFO: renamed from: isDevKit */
        public boolean getIsDevKit() {
            return isDevKit;
        }

        @Override // com.stripe.core.device.ClientDeviceType
        public HardwareManufacturer.Bbpos getManufacturer() {
            return manufacturer;
        }

        @Override // com.stripe.core.device.ClientDeviceType.BbposDevice
        public SmartPOSDeviceMetadata getMetadata() {
            return metadata;
        }
    }

    /* JADX INFO: compiled from: ClientDeviceType.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/stripe/core/device/ClientDeviceType$WisePosE;", "Lcom/stripe/core/device/ClientDeviceType$BbposDevice;", "isDevKit", "", "(Z)V", "()Z", "manufacturer", "Lcom/stripe/core/device/HardwareManufacturer$Bbpos;", "getManufacturer", "()Lcom/stripe/core/device/HardwareManufacturer$Bbpos;", "metadata", "Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "getMetadata", "()Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class WisePosE implements BbposDevice {
        private final boolean isDevKit;
        private final HardwareManufacturer.Bbpos manufacturer = HardwareManufacturer.Bbpos.INSTANCE;
        private final SmartPOSDeviceMetadata metadata;

        public static /* synthetic */ WisePosE copy$default(WisePosE wisePosE, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = wisePosE.isDevKit;
            }
            return wisePosE.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsDevKit() {
            return this.isDevKit;
        }

        public final WisePosE copy(boolean isDevKit) {
            return new WisePosE(isDevKit);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof WisePosE) && this.isDevKit == ((WisePosE) other).isDevKit;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isDevKit);
        }

        public String toString() {
            return "WisePosE(isDevKit=" + this.isDevKit + ')';
        }

        public WisePosE(boolean z) {
            SmartPOSDeviceMetadata smartPOSDeviceMetadata;
            this.isDevKit = z;
            if (getIsDevKit()) {
                smartPOSDeviceMetadata = SmartPOSDeviceMetadata.WisePosEDevKit;
            } else {
                smartPOSDeviceMetadata = SmartPOSDeviceMetadata.WisePosE;
            }
            this.metadata = smartPOSDeviceMetadata;
        }

        @Override // com.stripe.core.device.ClientDeviceType
        /* JADX INFO: renamed from: isDevKit */
        public boolean getIsDevKit() {
            return this.isDevKit;
        }

        @Override // com.stripe.core.device.ClientDeviceType
        public HardwareManufacturer.Bbpos getManufacturer() {
            return this.manufacturer;
        }

        @Override // com.stripe.core.device.ClientDeviceType.BbposDevice
        public SmartPOSDeviceMetadata getMetadata() {
            return this.metadata;
        }
    }

    /* JADX INFO: compiled from: ClientDeviceType.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/stripe/core/device/ClientDeviceType$S700;", "Lcom/stripe/core/device/ClientDeviceType$BbposDevice;", "isDevKit", "", "(Z)V", "()Z", "manufacturer", "Lcom/stripe/core/device/HardwareManufacturer$Bbpos;", "getManufacturer", "()Lcom/stripe/core/device/HardwareManufacturer$Bbpos;", "metadata", "Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "getMetadata", "()Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class S700 implements BbposDevice {
        private final boolean isDevKit;
        private final HardwareManufacturer.Bbpos manufacturer = HardwareManufacturer.Bbpos.INSTANCE;
        private final SmartPOSDeviceMetadata metadata;

        public static /* synthetic */ S700 copy$default(S700 s700, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = s700.isDevKit;
            }
            return s700.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsDevKit() {
            return this.isDevKit;
        }

        public final S700 copy(boolean isDevKit) {
            return new S700(isDevKit);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof S700) && this.isDevKit == ((S700) other).isDevKit;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isDevKit);
        }

        public String toString() {
            return "S700(isDevKit=" + this.isDevKit + ')';
        }

        public S700(boolean z) {
            SmartPOSDeviceMetadata smartPOSDeviceMetadata;
            this.isDevKit = z;
            if (getIsDevKit()) {
                smartPOSDeviceMetadata = SmartPOSDeviceMetadata.S700DevKit;
            } else {
                smartPOSDeviceMetadata = SmartPOSDeviceMetadata.S700;
            }
            this.metadata = smartPOSDeviceMetadata;
        }

        @Override // com.stripe.core.device.ClientDeviceType
        /* JADX INFO: renamed from: isDevKit */
        public boolean getIsDevKit() {
            return this.isDevKit;
        }

        @Override // com.stripe.core.device.ClientDeviceType
        public HardwareManufacturer.Bbpos getManufacturer() {
            return this.manufacturer;
        }

        @Override // com.stripe.core.device.ClientDeviceType.BbposDevice
        public SmartPOSDeviceMetadata getMetadata() {
            return this.metadata;
        }
    }

    /* JADX INFO: compiled from: ClientDeviceType.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/stripe/core/device/ClientDeviceType$S710;", "Lcom/stripe/core/device/ClientDeviceType$BbposDevice;", "isDevKit", "", "(Z)V", "()Z", "manufacturer", "Lcom/stripe/core/device/HardwareManufacturer$Bbpos;", "getManufacturer", "()Lcom/stripe/core/device/HardwareManufacturer$Bbpos;", "metadata", "Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "getMetadata", "()Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class S710 implements BbposDevice {
        private final boolean isDevKit;
        private final HardwareManufacturer.Bbpos manufacturer = HardwareManufacturer.Bbpos.INSTANCE;
        private final SmartPOSDeviceMetadata metadata;

        public static /* synthetic */ S710 copy$default(S710 s710, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = s710.isDevKit;
            }
            return s710.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsDevKit() {
            return this.isDevKit;
        }

        public final S710 copy(boolean isDevKit) {
            return new S710(isDevKit);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof S710) && this.isDevKit == ((S710) other).isDevKit;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isDevKit);
        }

        public String toString() {
            return "S710(isDevKit=" + this.isDevKit + ')';
        }

        public S710(boolean z) {
            SmartPOSDeviceMetadata smartPOSDeviceMetadata;
            this.isDevKit = z;
            if (getIsDevKit()) {
                smartPOSDeviceMetadata = SmartPOSDeviceMetadata.S710DevKit;
            } else {
                smartPOSDeviceMetadata = SmartPOSDeviceMetadata.S710;
            }
            this.metadata = smartPOSDeviceMetadata;
        }

        @Override // com.stripe.core.device.ClientDeviceType
        /* JADX INFO: renamed from: isDevKit */
        public boolean getIsDevKit() {
            return this.isDevKit;
        }

        @Override // com.stripe.core.device.ClientDeviceType
        public HardwareManufacturer.Bbpos getManufacturer() {
            return this.manufacturer;
        }

        @Override // com.stripe.core.device.ClientDeviceType.BbposDevice
        public SmartPOSDeviceMetadata getMetadata() {
            return this.metadata;
        }
    }

    /* JADX INFO: compiled from: ClientDeviceType.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\n\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/device/ClientDeviceType$MorphVfs0100;", "Lcom/stripe/core/device/ClientDeviceType$MorphDevice;", "()V", "isDevKit", "", "()Z", "manufacturer", "Lcom/stripe/core/device/HardwareManufacturer$Verifone;", "getManufacturer", "()Lcom/stripe/core/device/HardwareManufacturer$Verifone;", "equals", "other", "", "hashCode", "", "toString", "", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class MorphVfs0100 implements MorphDevice {
        private static final boolean isDevKit = false;
        public static final MorphVfs0100 INSTANCE = new MorphVfs0100();
        private static final HardwareManufacturer.Verifone manufacturer = HardwareManufacturer.Verifone.INSTANCE;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof MorphVfs0100)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1628271058;
        }

        public String toString() {
            return "MorphVfs0100";
        }

        private MorphVfs0100() {
        }

        @Override // com.stripe.core.device.ClientDeviceType
        /* JADX INFO: renamed from: isDevKit */
        public boolean getIsDevKit() {
            return isDevKit;
        }

        @Override // com.stripe.core.device.ClientDeviceType
        public HardwareManufacturer.Verifone getManufacturer() {
            return manufacturer;
        }
    }
}
