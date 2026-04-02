package com.stripe.core.connectivity.wifi;

import android.net.LinkAddress;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import com.stripe.core.connectivity.SubnetMaskUtilities;
import com.stripe.core.stripeterminal.log.AndroidLog;
import com.stripe.strings.StringsExtKt;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: WifiConfigurationUtilities.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001:\u00039:;B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0001H\u0002J+\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u00132\u0006\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u0017H\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0004J\u001e\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!J \u0010\"\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!H\u0002J\n\u0010#\u001a\u00020\n*\u00020\u000eJ\u0010\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00040\u0013*\u00020\u000eJ\n\u0010%\u001a\u00020&*\u00020\u000eJ\f\u0010'\u001a\u00020(*\u0004\u0018\u00010\u000eJ\u0010\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00040\u0013*\u00020\u000eJ\u0010\u0010*\u001a\u0006\u0012\u0002\b\u00030+*\u00020\u000eH\u0002J\u0010\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00040\u0013*\u00020\u000eJ\u0010\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00040\u0013*\u00020\u000eJ\u0010\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00040\u0013*\u00020\u000eJ\f\u0010/\u001a\u0004\u0018\u000100*\u000201J0\u00102\u001a\u00020!*\u00020\u000e2\u0006\u00103\u001a\u0002002\u0006\u00104\u001a\u0002002\u0006\u00105\u001a\u0002002\f\u00106\u001a\b\u0012\u0004\u0012\u0002000\u0013J\u0014\u00107\u001a\u00020\n*\u00020\u000e2\u0006\u00108\u001a\u00020&H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \b*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;", "", "()V", "DEFAULT_CONSTRUCTOR_IP_ADDRESS", "", "GATEWAY_FIELD", "IP_ADDRESS_FIELD", "TAG", "kotlin.jvm.PlatformType", "connectToNetwork", "", "wifiManager", "Landroid/net/wifi/WifiManager;", "wifiConfiguration", "Landroid/net/wifi/WifiConfiguration;", "forgetWifiConfiguration", "forgetWifiNetworkId", "getEmptyStaticIpConfiguration", "getValuesFromBitset", "", "bitSet", "Ljava/util/BitSet;", "strings", "", "getValuesFromBitset$connectivity_release", "(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/util/List;", "validateIPV4FromString", "Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;", "untrimmedText", "wifiConfigFromSSIDAndPassword", "ssid", "password", "isHidden", "", "wifiConfigFromSSIDAndPasswordHelper", "clearAdvancedInfo", "getAuthAlgorithms", "getConfigType", "Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;", "getCurrentStaticIpConfigurationOrEmpty", "Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;", "getGroupCiphers", "getIPAssignmentEnum", "", "getPairwiseCiphers", "getSupportedKeys", "getSupportedProtocols", "ipv4orNull", "Ljava/net/Inet4Address;", "Ljava/net/InetAddress;", "setAdvancedInfo", WifiConfigurationUtilities.IP_ADDRESS_FIELD, "subnetMask", WifiConfigurationUtilities.GATEWAY_FIELD, "dnsServers", "setIpAssignment", "config", "InetAddressParseError", "InetAddressValidation", "StaticIPConfigurationWrapper", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WifiConfigurationUtilities {
    private static final String DEFAULT_CONSTRUCTOR_IP_ADDRESS = "0.0.0.0";
    private static final String GATEWAY_FIELD = "gateway";
    public static final WifiConfigurationUtilities INSTANCE;
    private static final String IP_ADDRESS_FIELD = "ipAddress";
    private static final String TAG;

    private WifiConfigurationUtilities() {
    }

    public final Inet4Address ipv4orNull(InetAddress inetAddress) {
        Intrinsics.checkNotNullParameter(inetAddress, "<this>");
        if (inetAddress instanceof Inet4Address) {
            return (Inet4Address) inetAddress;
        }
        return null;
    }

    public final InetAddressValidation validateIPV4FromString(String untrimmedText) {
        Object objM817constructorimpl;
        InetAddressValidation.Error error;
        Intrinsics.checkNotNullParameter(untrimmedText, "untrimmedText");
        String string = StringsKt.trim((CharSequence) untrimmedText).toString();
        if (string.length() == 0 || Intrinsics.areEqual(string, DEFAULT_CONSTRUCTOR_IP_ADDRESS)) {
            return new InetAddressValidation.Error(InetAddressParseError.INVALID_STRING);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            WifiConfigurationUtilities wifiConfigurationUtilities = this;
            InetAddress byName = InetAddress.getByName(string);
            Intrinsics.checkNotNullExpressionValue(byName, "getByName(...)");
            Inet4Address inet4AddressIpv4orNull = ipv4orNull(byName);
            if (inet4AddressIpv4orNull != null) {
                error = new InetAddressValidation.Success(inet4AddressIpv4orNull);
            } else {
                error = new InetAddressValidation.Error(InetAddressParseError.IPV6_UNSUPPORTED);
            }
            objM817constructorimpl = Result.m817constructorimpl(error);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        InetAddressValidation.Error error2 = new InetAddressValidation.Error(InetAddressParseError.INVALID_STRING);
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            objM817constructorimpl = error2;
        }
        return (InetAddressValidation) objM817constructorimpl;
    }

    /* JADX INFO: compiled from: WifiConfigurationUtilities.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;", "", "()V", "Error", "Success", "Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;", "Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Success;", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class InetAddressValidation {
        public /* synthetic */ InetAddressValidation(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: WifiConfigurationUtilities.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Success;", "Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;", "ipv4Address", "Ljava/net/Inet4Address;", "(Ljava/net/Inet4Address;)V", "getIpv4Address", "()Ljava/net/Inet4Address;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Success extends InetAddressValidation {
            private final Inet4Address ipv4Address;

            public static /* synthetic */ Success copy$default(Success success, Inet4Address inet4Address, int i, Object obj) {
                if ((i & 1) != 0) {
                    inet4Address = success.ipv4Address;
                }
                return success.copy(inet4Address);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Inet4Address getIpv4Address() {
                return this.ipv4Address;
            }

            public final Success copy(Inet4Address ipv4Address) {
                Intrinsics.checkNotNullParameter(ipv4Address, "ipv4Address");
                return new Success(ipv4Address);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Success) && Intrinsics.areEqual(this.ipv4Address, ((Success) other).ipv4Address);
            }

            public int hashCode() {
                return this.ipv4Address.hashCode();
            }

            public String toString() {
                return "Success(ipv4Address=" + this.ipv4Address + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Success(Inet4Address ipv4Address) {
                super(null);
                Intrinsics.checkNotNullParameter(ipv4Address, "ipv4Address");
                this.ipv4Address = ipv4Address;
            }

            public final Inet4Address getIpv4Address() {
                return this.ipv4Address;
            }
        }

        private InetAddressValidation() {
        }

        /* JADX INFO: compiled from: WifiConfigurationUtilities.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;", "Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;", "error", "Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;", "(Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;)V", "getError", "()Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Error extends InetAddressValidation {
            private final InetAddressParseError error;

            public static /* synthetic */ Error copy$default(Error error, InetAddressParseError inetAddressParseError, int i, Object obj) {
                if ((i & 1) != 0) {
                    inetAddressParseError = error.error;
                }
                return error.copy(inetAddressParseError);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final InetAddressParseError getError() {
                return this.error;
            }

            public final Error copy(InetAddressParseError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                return new Error(error);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Error) && this.error == ((Error) other).error;
            }

            public int hashCode() {
                return this.error.hashCode();
            }

            public String toString() {
                return "Error(error=" + this.error + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(InetAddressParseError error) {
                super(null);
                Intrinsics.checkNotNullParameter(error, "error");
                this.error = error;
            }

            public final InetAddressParseError getError() {
                return this.error;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: WifiConfigurationUtilities.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;", "", "(Ljava/lang/String;I)V", "IPV6_UNSUPPORTED", "INVALID_STRING", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class InetAddressParseError {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ InetAddressParseError[] $VALUES;
        public static final InetAddressParseError IPV6_UNSUPPORTED = new InetAddressParseError("IPV6_UNSUPPORTED", 0);
        public static final InetAddressParseError INVALID_STRING = new InetAddressParseError("INVALID_STRING", 1);

        private static final /* synthetic */ InetAddressParseError[] $values() {
            return new InetAddressParseError[]{IPV6_UNSUPPORTED, INVALID_STRING};
        }

        public static EnumEntries<InetAddressParseError> getEntries() {
            return $ENTRIES;
        }

        public static InetAddressParseError valueOf(String str) {
            return (InetAddressParseError) Enum.valueOf(InetAddressParseError.class, str);
        }

        public static InetAddressParseError[] values() {
            return (InetAddressParseError[]) $VALUES.clone();
        }

        private InetAddressParseError(String str, int i) {
        }

        static {
            InetAddressParseError[] inetAddressParseErrorArr$values = $values();
            $VALUES = inetAddressParseErrorArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(inetAddressParseErrorArr$values);
        }
    }

    public final WifiConfiguration wifiConfigFromSSIDAndPassword(String ssid, String password, boolean isHidden) {
        Intrinsics.checkNotNullParameter(ssid, "ssid");
        Intrinsics.checkNotNullParameter(password, "password");
        return wifiConfigFromSSIDAndPasswordHelper(StringsExtKt.surroundInDoubleQuotes(ssid), password, isHidden);
    }

    private final WifiConfiguration wifiConfigFromSSIDAndPasswordHelper(String ssid, String password, boolean isHidden) {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.SSID = ssid;
        wifiConfiguration.hiddenSSID = isHidden;
        wifiConfiguration.preSharedKey = StringsExtKt.surroundInDoubleQuotes(password);
        return wifiConfiguration;
    }

    private final void forgetWifiNetworkId(WifiManager wifiManager, WifiConfiguration wifiConfiguration) {
        wifiManager.removeNetwork(wifiConfiguration.networkId);
        wifiManager.saveConfiguration();
    }

    public final void forgetWifiConfiguration(WifiManager wifiManager, WifiConfiguration wifiConfiguration) {
        Object next;
        Intrinsics.checkNotNullParameter(wifiManager, "wifiManager");
        Intrinsics.checkNotNullParameter(wifiConfiguration, "wifiConfiguration");
        try {
            List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
            Intrinsics.checkNotNullExpressionValue(configuredNetworks, "getConfiguredNetworks(...)");
            Iterator<T> it = configuredNetworks.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    if (Intrinsics.areEqual(((WifiConfiguration) next).SSID, wifiConfiguration.SSID)) {
                        break;
                    }
                }
            }
            WifiConfiguration wifiConfiguration2 = (WifiConfiguration) next;
            if (wifiConfiguration2 != null) {
                forgetWifiNetworkId(wifiManager, wifiConfiguration2);
            }
        } catch (SecurityException unused) {
        }
    }

    public final void connectToNetwork(WifiManager wifiManager, WifiConfiguration wifiConfiguration) {
        Intrinsics.checkNotNullParameter(wifiManager, "wifiManager");
        Intrinsics.checkNotNullParameter(wifiConfiguration, "wifiConfiguration");
        try {
            List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
            Intrinsics.checkNotNullExpressionValue(configuredNetworks, "getConfiguredNetworks(...)");
            for (WifiConfiguration wifiConfiguration2 : configuredNetworks) {
                WifiConfigurationUtilities wifiConfigurationUtilities = INSTANCE;
                Intrinsics.checkNotNull(wifiConfiguration2);
                wifiConfigurationUtilities.forgetWifiNetworkId(wifiManager, wifiConfiguration2);
            }
        } catch (SecurityException unused) {
        }
        int iAddNetwork = wifiManager.addNetwork(wifiConfiguration);
        wifiManager.disconnect();
        wifiManager.enableNetwork(iAddNetwork, true);
        wifiManager.reconnect();
    }

    private final Enum<?> getIPAssignmentEnum(WifiConfiguration wifiConfiguration) throws IllegalAccessException, InvocationTargetException {
        Object objInvoke = wifiConfiguration.getClass().getMethod("getIpAssignment", new Class[0]).invoke(wifiConfiguration, new Object[0]);
        Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type kotlin.Enum<*>");
        return (Enum) objInvoke;
    }

    private final Object getEmptyStaticIpConfiguration() throws IllegalAccessException, InstantiationException {
        Object objNewInstance = Class.forName("android.net.StaticIpConfiguration").newInstance();
        Intrinsics.checkNotNullExpressionValue(objNewInstance, "newInstance(...)");
        return objNewInstance;
    }

    public final StaticIPConfigurationWrapper getCurrentStaticIpConfigurationOrEmpty(WifiConfiguration wifiConfiguration) throws IllegalAccessException, InstantiationException {
        Class<?> cls;
        Method method;
        Object objInvoke = (wifiConfiguration == null || (cls = wifiConfiguration.getClass()) == null || (method = cls.getMethod("getStaticIpConfiguration", new Class[0])) == null) ? null : method.invoke(wifiConfiguration, new Object[0]);
        if (objInvoke == null) {
            objInvoke = getEmptyStaticIpConfiguration();
        }
        return new StaticIPConfigurationWrapper(objInvoke);
    }

    public final WifiAdvancedConfig getConfigType(WifiConfiguration wifiConfiguration) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(wifiConfiguration, "<this>");
        Enum<?> iPAssignmentEnum = getIPAssignmentEnum(wifiConfiguration);
        for (WifiAdvancedConfig wifiAdvancedConfig : WifiAdvancedConfig.getEntries()) {
            if (Intrinsics.areEqual(wifiAdvancedConfig.getEnumName(), iPAssignmentEnum.name())) {
                return wifiAdvancedConfig;
            }
        }
        return WifiAdvancedConfig.DHCP;
    }

    public final void clearAdvancedInfo(WifiConfiguration wifiConfiguration) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(wifiConfiguration, "<this>");
        setIpAssignment(wifiConfiguration, WifiAdvancedConfig.DHCP);
        wifiConfiguration.getClass().getMethod("setStaticIpConfiguration", getCurrentStaticIpConfigurationOrEmpty(wifiConfiguration).getJavaClass()).invoke(wifiConfiguration, getEmptyStaticIpConfiguration());
    }

    public final boolean setAdvancedInfo(WifiConfiguration wifiConfiguration, Inet4Address ipAddress, Inet4Address subnetMask, Inet4Address gateway, List<Inet4Address> dnsServers) throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(wifiConfiguration, "<this>");
        Intrinsics.checkNotNullParameter(ipAddress, "ipAddress");
        Intrinsics.checkNotNullParameter(subnetMask, "subnetMask");
        Intrinsics.checkNotNullParameter(gateway, "gateway");
        Intrinsics.checkNotNullParameter(dnsServers, "dnsServers");
        Integer numInetAddressMappingToPrefixLength = SubnetMaskUtilities.INSTANCE.inetAddressMappingToPrefixLength(subnetMask);
        int iIntValue = numInetAddressMappingToPrefixLength != null ? numInetAddressMappingToPrefixLength.intValue() : 0;
        if (dnsServers.isEmpty() || iIntValue == 0) {
            AndroidLog.INSTANCE.d("WifiConfigUtilities", "Ignoring setAdvancedInfo for invalid configuration");
            return false;
        }
        AndroidLog androidLog = AndroidLog.INSTANCE;
        String TAG2 = TAG;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        androidLog.d(TAG2, "setAdvancedInfo IP -> " + ipAddress);
        AndroidLog androidLog2 = AndroidLog.INSTANCE;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        androidLog2.d(TAG2, "setAdvancedInfo subnetMask -> " + subnetMask);
        AndroidLog androidLog3 = AndroidLog.INSTANCE;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        androidLog3.d(TAG2, "setAdvancedInfo gateway -> " + gateway);
        int i = 0;
        for (Object obj : dnsServers) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            AndroidLog androidLog4 = AndroidLog.INSTANCE;
            String TAG3 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            androidLog4.d(TAG3, "setAdvancedInfo DNS[" + i + "] -> " + ((Inet4Address) obj));
            i = i2;
        }
        setIpAssignment(wifiConfiguration, WifiAdvancedConfig.STATIC);
        StaticIPConfigurationWrapper staticIPConfigurationWrapper = new StaticIPConfigurationWrapper(getEmptyStaticIpConfiguration());
        Constructor constructor = LinkAddress.class.getConstructor(InetAddress.class, Integer.TYPE);
        Intrinsics.checkNotNullExpressionValue(constructor, "getConstructor(...)");
        Object objNewInstance = constructor.newInstance(ipAddress, Integer.valueOf(iIntValue));
        Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type android.net.LinkAddress");
        staticIPConfigurationWrapper.setField(IP_ADDRESS_FIELD, (LinkAddress) objNewInstance);
        staticIPConfigurationWrapper.setField(GATEWAY_FIELD, gateway);
        List<InetAddress> dnsServers2 = staticIPConfigurationWrapper.getDnsServers();
        dnsServers2.clear();
        dnsServers2.addAll(dnsServers);
        wifiConfiguration.getClass().getMethod("setStaticIpConfiguration", staticIPConfigurationWrapper.getJavaClass()).invoke(wifiConfiguration, staticIPConfigurationWrapper.getStaticConfig());
        return true;
    }

    /* JADX INFO: compiled from: WifiConfigurationUtilities.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u001a"}, d2 = {"Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;", "", "staticConfig", "(Ljava/lang/Object;)V", "javaClass", "Ljava/lang/Class;", "getJavaClass", "()Ljava/lang/Class;", "getStaticConfig", "()Ljava/lang/Object;", "equals", "", "other", "getDnsServers", "", "Ljava/net/InetAddress;", "getGateway", "getLinkAddress", "Landroid/net/LinkAddress;", "hashCode", "", "setField", "", "name", "", "value", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class StaticIPConfigurationWrapper {
        private final Class<Object> javaClass;
        private final Object staticConfig;

        public StaticIPConfigurationWrapper(Object staticConfig) {
            Intrinsics.checkNotNullParameter(staticConfig, "staticConfig");
            this.staticConfig = staticConfig;
            this.javaClass = staticConfig.getClass();
        }

        public final Object getStaticConfig() {
            return this.staticConfig;
        }

        public final List<InetAddress> getDnsServers() throws IllegalAccessException {
            Object obj = this.staticConfig.getClass().getField("dnsServers").get(this.staticConfig);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.MutableList<java.net.InetAddress>");
            return TypeIntrinsics.asMutableList(obj);
        }

        public final LinkAddress getLinkAddress() {
            return (LinkAddress) this.staticConfig.getClass().getField(WifiConfigurationUtilities.IP_ADDRESS_FIELD).get(this.staticConfig);
        }

        public final InetAddress getGateway() {
            return (InetAddress) this.staticConfig.getClass().getField(WifiConfigurationUtilities.GATEWAY_FIELD).get(this.staticConfig);
        }

        public final void setField(String name, Object value) throws IllegalAccessException {
            Intrinsics.checkNotNullParameter(name, "name");
            this.staticConfig.getClass().getField(name).set(this.staticConfig, value);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            Object obj = this.staticConfig;
            StaticIPConfigurationWrapper staticIPConfigurationWrapper = other instanceof StaticIPConfigurationWrapper ? (StaticIPConfigurationWrapper) other : null;
            return Objects.equals(obj, staticIPConfigurationWrapper != null ? staticIPConfigurationWrapper.staticConfig : null);
        }

        public int hashCode() {
            return this.staticConfig.hashCode();
        }

        public final Class<Object> getJavaClass() {
            return this.javaClass;
        }
    }

    static {
        WifiConfigurationUtilities wifiConfigurationUtilities = new WifiConfigurationUtilities();
        INSTANCE = wifiConfigurationUtilities;
        TAG = wifiConfigurationUtilities.getClass().getSimpleName();
    }

    public final List<String> getSupportedKeys(WifiConfiguration wifiConfiguration) {
        Intrinsics.checkNotNullParameter(wifiConfiguration, "<this>");
        BitSet allowedKeyManagement = wifiConfiguration.allowedKeyManagement;
        Intrinsics.checkNotNullExpressionValue(allowedKeyManagement, "allowedKeyManagement");
        String[] strings = WifiConfiguration.KeyMgmt.strings;
        Intrinsics.checkNotNullExpressionValue(strings, "strings");
        return getValuesFromBitset$connectivity_release(allowedKeyManagement, strings);
    }

    public final List<String> getSupportedProtocols(WifiConfiguration wifiConfiguration) {
        Intrinsics.checkNotNullParameter(wifiConfiguration, "<this>");
        BitSet allowedProtocols = wifiConfiguration.allowedProtocols;
        Intrinsics.checkNotNullExpressionValue(allowedProtocols, "allowedProtocols");
        String[] strings = WifiConfiguration.Protocol.strings;
        Intrinsics.checkNotNullExpressionValue(strings, "strings");
        return getValuesFromBitset$connectivity_release(allowedProtocols, strings);
    }

    public final List<String> getAuthAlgorithms(WifiConfiguration wifiConfiguration) {
        Intrinsics.checkNotNullParameter(wifiConfiguration, "<this>");
        BitSet allowedAuthAlgorithms = wifiConfiguration.allowedAuthAlgorithms;
        Intrinsics.checkNotNullExpressionValue(allowedAuthAlgorithms, "allowedAuthAlgorithms");
        String[] strings = WifiConfiguration.AuthAlgorithm.strings;
        Intrinsics.checkNotNullExpressionValue(strings, "strings");
        return getValuesFromBitset$connectivity_release(allowedAuthAlgorithms, strings);
    }

    public final List<String> getPairwiseCiphers(WifiConfiguration wifiConfiguration) {
        Intrinsics.checkNotNullParameter(wifiConfiguration, "<this>");
        BitSet allowedPairwiseCiphers = wifiConfiguration.allowedPairwiseCiphers;
        Intrinsics.checkNotNullExpressionValue(allowedPairwiseCiphers, "allowedPairwiseCiphers");
        String[] strings = WifiConfiguration.PairwiseCipher.strings;
        Intrinsics.checkNotNullExpressionValue(strings, "strings");
        return getValuesFromBitset$connectivity_release(allowedPairwiseCiphers, strings);
    }

    public final List<String> getGroupCiphers(WifiConfiguration wifiConfiguration) {
        Intrinsics.checkNotNullParameter(wifiConfiguration, "<this>");
        BitSet allowedGroupCiphers = wifiConfiguration.allowedGroupCiphers;
        Intrinsics.checkNotNullExpressionValue(allowedGroupCiphers, "allowedGroupCiphers");
        String[] strings = WifiConfiguration.GroupCipher.strings;
        Intrinsics.checkNotNullExpressionValue(strings, "strings");
        return getValuesFromBitset$connectivity_release(allowedGroupCiphers, strings);
    }

    public final List<String> getValuesFromBitset$connectivity_release(BitSet bitSet, String[] strings) {
        Intrinsics.checkNotNullParameter(bitSet, "bitSet");
        Intrinsics.checkNotNullParameter(strings, "strings");
        IntRange intRangeUntil = RangesKt.until(0, bitSet.size());
        ArrayList arrayList = new ArrayList();
        for (Integer num : intRangeUntil) {
            if (bitSet.get(num.intValue())) {
                arrayList.add(num);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) ArraysKt.getOrNull(strings, ((Number) it.next()).intValue());
            if (str != null) {
                arrayList2.add(str);
            }
        }
        return arrayList2;
    }

    private final void setIpAssignment(WifiConfiguration wifiConfiguration, WifiAdvancedConfig wifiAdvancedConfig) throws IllegalAccessException, InvocationTargetException {
        Class<?> cls = getIPAssignmentEnum(wifiConfiguration).getClass();
        Intrinsics.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<out kotlin.Enum<*>>");
        wifiConfiguration.getClass().getMethod("setIpAssignment", cls).invoke(wifiConfiguration, Enum.valueOf(cls, wifiAdvancedConfig.getEnumName()));
    }
}
