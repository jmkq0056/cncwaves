package com.stripe.core.connectivity;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.core.connectivity.wifi.WifiConfigurationUtilities;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: SubnetMaskUtilities.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\u0017\u0010\n\u001a\u0004\u0018\u00010\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0010\u001a\u00020\u0005J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0012\u001a\u00020\u0006R(\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\t¨\u0006\u0013"}, d2 = {"Lcom/stripe/core/connectivity/SubnetMaskUtilities;", "", "()V", "prefixLengthInetAddressMapping", "", "", "", "getPrefixLengthInetAddressMapping$connectivity_release$annotations", "getPrefixLengthInetAddressMapping$connectivity_release", "()Ljava/util/Map;", "inetAddressMappingToPrefixLength", "inetAddress", "Ljava/net/Inet4Address;", "(Ljava/net/Inet4Address;)Ljava/lang/Integer;", "(Ljava/lang/String;)Ljava/lang/Integer;", "prefixLengthToInetAddress", "length", "subnetMaskFromString", PrinterTextParser.ATTR_BARCODE_TEXT_POSITION, "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SubnetMaskUtilities {
    public static final SubnetMaskUtilities INSTANCE = new SubnetMaskUtilities();
    private static final Map<Integer, String> prefixLengthInetAddressMapping = MapsKt.mapOf(TuplesKt.to(8, "255.0.0.0"), TuplesKt.to(9, "255.128.0.0"), TuplesKt.to(10, "255.192.0.0"), TuplesKt.to(11, "255.224.0.0"), TuplesKt.to(12, "255.240.0.0"), TuplesKt.to(13, "255.248.0.0"), TuplesKt.to(14, "255.252.0.0"), TuplesKt.to(15, "255.254.0.0"), TuplesKt.to(16, "255.255.0.0"), TuplesKt.to(17, "255.255.128.0"), TuplesKt.to(18, "255.255.192.0"), TuplesKt.to(19, "255.255.224.0"), TuplesKt.to(20, "255.255.240.0"), TuplesKt.to(21, "255.255.248.0"), TuplesKt.to(22, "255.255.252.0"), TuplesKt.to(23, "255.255.254.0"), TuplesKt.to(24, "255.255.255.0"), TuplesKt.to(25, "255.255.255.128"), TuplesKt.to(26, "255.255.255.192"), TuplesKt.to(27, "255.255.255.224"), TuplesKt.to(28, "255.255.255.240"), TuplesKt.to(29, "255.255.255.248"), TuplesKt.to(30, "255.255.255.252"));

    public static /* synthetic */ void getPrefixLengthInetAddressMapping$connectivity_release$annotations() {
    }

    private SubnetMaskUtilities() {
    }

    public final Map<Integer, String> getPrefixLengthInetAddressMapping$connectivity_release() {
        return prefixLengthInetAddressMapping;
    }

    public final Inet4Address subnetMaskFromString(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        Integer numInetAddressMappingToPrefixLength = inetAddressMappingToPrefixLength(StringsKt.trim((CharSequence) text).toString());
        if (numInetAddressMappingToPrefixLength == null) {
            return null;
        }
        return INSTANCE.prefixLengthToInetAddress(numInetAddressMappingToPrefixLength.intValue());
    }

    public final Inet4Address prefixLengthToInetAddress(int length) {
        String str = prefixLengthInetAddressMapping.get(Integer.valueOf(length));
        if (str == null) {
            return null;
        }
        WifiConfigurationUtilities wifiConfigurationUtilities = WifiConfigurationUtilities.INSTANCE;
        InetAddress byName = InetAddress.getByName(str);
        Intrinsics.checkNotNullExpressionValue(byName, "getByName(...)");
        return wifiConfigurationUtilities.ipv4orNull(byName);
    }

    public final Integer inetAddressMappingToPrefixLength(Inet4Address inetAddress) {
        Intrinsics.checkNotNullParameter(inetAddress, "inetAddress");
        return inetAddressMappingToPrefixLength(inetAddress.getHostAddress());
    }

    public final Integer inetAddressMappingToPrefixLength(String inetAddress) {
        for (Map.Entry<Integer, String> entry : prefixLengthInetAddressMapping.entrySet()) {
            if (Intrinsics.areEqual(entry.getValue(), inetAddress)) {
                return entry.getKey();
            }
        }
        return null;
    }
}
