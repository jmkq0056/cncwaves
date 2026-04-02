package com.stripe.core.device;

import com.stripe.device.RomType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OsType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\n\u000b\f\rR\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0001\u0004\u000e\u000f\u0010\u0011ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0012À\u0006\u0001"}, d2 = {"Lcom/stripe/core/device/OsType;", "", "romType", "Lcom/stripe/device/RomType;", "getRomType", "()Lcom/stripe/device/RomType;", "value", "", "getValue", "()Ljava/lang/String;", "Eng", "Other", "User", "UserDebug", "Lcom/stripe/core/device/OsType$Eng;", "Lcom/stripe/core/device/OsType$Other;", "Lcom/stripe/core/device/OsType$User;", "Lcom/stripe/core/device/OsType$UserDebug;", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OsType {
    RomType getRomType();

    String getValue();

    /* JADX INFO: compiled from: OsType.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\bHÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0012"}, d2 = {"Lcom/stripe/core/device/OsType$User;", "Lcom/stripe/core/device/OsType;", "()V", "romType", "Lcom/stripe/device/RomType;", "getRomType", "()Lcom/stripe/device/RomType;", "value", "", "getValue", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "toString", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class User implements OsType {
        public static final User INSTANCE = new User();
        private static final String value = "user";
        private static final RomType romType = RomType.USER;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof User)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1984627454;
        }

        public String toString() {
            return "User";
        }

        private User() {
        }

        @Override // com.stripe.core.device.OsType
        public String getValue() {
            return value;
        }

        @Override // com.stripe.core.device.OsType
        public RomType getRomType() {
            return romType;
        }
    }

    /* JADX INFO: compiled from: OsType.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\bHÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0012"}, d2 = {"Lcom/stripe/core/device/OsType$UserDebug;", "Lcom/stripe/core/device/OsType;", "()V", "romType", "Lcom/stripe/device/RomType;", "getRomType", "()Lcom/stripe/device/RomType;", "value", "", "getValue", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "toString", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class UserDebug implements OsType {
        public static final UserDebug INSTANCE = new UserDebug();
        private static final String value = "userdebug";
        private static final RomType romType = RomType.USER_DEBUG;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UserDebug)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -542977547;
        }

        public String toString() {
            return "UserDebug";
        }

        private UserDebug() {
        }

        @Override // com.stripe.core.device.OsType
        public String getValue() {
            return value;
        }

        @Override // com.stripe.core.device.OsType
        public RomType getRomType() {
            return romType;
        }
    }

    /* JADX INFO: compiled from: OsType.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\bHÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0012"}, d2 = {"Lcom/stripe/core/device/OsType$Eng;", "Lcom/stripe/core/device/OsType;", "()V", "romType", "Lcom/stripe/device/RomType;", "getRomType", "()Lcom/stripe/device/RomType;", "value", "", "getValue", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "toString", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Eng implements OsType {
        public static final Eng INSTANCE = new Eng();
        private static final String value = "eng";
        private static final RomType romType = RomType.ENG;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Eng)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -767279285;
        }

        public String toString() {
            return "Eng";
        }

        private Eng() {
        }

        @Override // com.stripe.core.device.OsType
        public String getValue() {
            return value;
        }

        @Override // com.stripe.core.device.OsType
        public RomType getRomType() {
            return romType;
        }
    }

    /* JADX INFO: compiled from: OsType.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/stripe/core/device/OsType$Other;", "Lcom/stripe/core/device/OsType;", "value", "", "(Ljava/lang/String;)V", "romType", "Lcom/stripe/device/RomType;", "getRomType", "()Lcom/stripe/device/RomType;", "getValue", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Other implements OsType {
        private final RomType romType;
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
            this.romType = RomType.UNKNOWN;
        }

        @Override // com.stripe.core.device.OsType
        public String getValue() {
            return this.value;
        }

        @Override // com.stripe.core.device.OsType
        public RomType getRomType() {
            return this.romType;
        }
    }
}
