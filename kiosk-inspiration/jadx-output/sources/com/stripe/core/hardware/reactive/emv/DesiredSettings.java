package com.stripe.core.hardware.reactive.emv;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.hardware.emv.TlvMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DesiredSettings.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB-\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0019H\u0000¢\u0006\u0002\b\u001aR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u001c"}, d2 = {"Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;", "", "merchantName", "", RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, "buzzerEnabled", "configHash", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBuzzerEnabled", "()Ljava/lang/String;", "getConfigHash", "getCountryCode", "getMerchantName", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "toTlvMap", "", "toTlvMap$hardware_reactive_release", "Companion", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class DesiredSettings {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String buzzerEnabled;
    private final String configHash;
    private final String countryCode;
    private final String merchantName;

    public static /* synthetic */ DesiredSettings copy$default(DesiredSettings desiredSettings, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = desiredSettings.merchantName;
        }
        if ((i & 2) != 0) {
            str2 = desiredSettings.countryCode;
        }
        if ((i & 4) != 0) {
            str3 = desiredSettings.buzzerEnabled;
        }
        if ((i & 8) != 0) {
            str4 = desiredSettings.configHash;
        }
        return desiredSettings.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMerchantName() {
        return this.merchantName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getBuzzerEnabled() {
        return this.buzzerEnabled;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getConfigHash() {
        return this.configHash;
    }

    public final DesiredSettings copy(String merchantName, String countryCode, String buzzerEnabled, String configHash) {
        return new DesiredSettings(merchantName, countryCode, buzzerEnabled, configHash);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DesiredSettings)) {
            return false;
        }
        DesiredSettings desiredSettings = (DesiredSettings) other;
        return Intrinsics.areEqual(this.merchantName, desiredSettings.merchantName) && Intrinsics.areEqual(this.countryCode, desiredSettings.countryCode) && Intrinsics.areEqual(this.buzzerEnabled, desiredSettings.buzzerEnabled) && Intrinsics.areEqual(this.configHash, desiredSettings.configHash);
    }

    public int hashCode() {
        String str = this.merchantName;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.countryCode;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.buzzerEnabled;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.configHash;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "DesiredSettings(merchantName=" + this.merchantName + ", countryCode=" + this.countryCode + ", buzzerEnabled=" + this.buzzerEnabled + ", configHash=" + this.configHash + ')';
    }

    public DesiredSettings(String str, String str2, String str3, String str4) {
        this.merchantName = str;
        this.countryCode = str2;
        this.buzzerEnabled = str3;
        this.configHash = str4;
    }

    public final String getMerchantName() {
        return this.merchantName;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getBuzzerEnabled() {
        return this.buzzerEnabled;
    }

    public final String getConfigHash() {
        return this.configHash;
    }

    public final Map<String, String> toTlvMap$hardware_reactive_release() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String str = this.merchantName;
        if (str != null) {
        }
        String str2 = this.countryCode;
        if (str2 != null) {
        }
        String str3 = this.buzzerEnabled;
        if (str3 != null) {
        }
        String str4 = this.configHash;
        if (str4 != null) {
            linkedHashMap.put(TlvMap.TAG_CONFIG_HASH, str4);
        }
        return linkedHashMap;
    }

    /* JADX INFO: compiled from: DesiredSettings.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006¨\u0006\n"}, d2 = {"Lcom/stripe/core/hardware/reactive/emv/DesiredSettings$Companion;", "", "()V", "create", "Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;", "merchantName", "", RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, "buzzerEnabled", "configHash", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ DesiredSettings create$default(Companion companion, String str, String str2, String str3, String str4, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                str2 = null;
            }
            if ((i & 4) != 0) {
                str3 = null;
            }
            if ((i & 8) != 0) {
                str4 = null;
            }
            return companion.create(str, str2, str3, str4);
        }

        public final DesiredSettings create(String merchantName, String countryCode, String buzzerEnabled, String configHash) {
            return new DesiredSettings(merchantName, countryCode, buzzerEnabled, configHash);
        }
    }
}
