package org.fourthline.cling.model;

import androidx.appcompat.view.a;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class ModelUtil {
    public static final boolean ANDROID_EMULATOR;
    public static final boolean ANDROID_RUNTIME;

    static {
        boolean z3 = true;
        boolean z4 = false;
        ANDROID_RUNTIME = Thread.currentThread().getContextClassLoader().loadClass("android.os.Build").getField("ID").get(null) != null;
        try {
            String str = (String) Thread.currentThread().getContextClassLoader().loadClass("android.os.Build").getField("PRODUCT").get(null);
            if (!"google_sdk".equals(str)) {
                if (!"sdk".equals(str)) {
                    z3 = false;
                }
            }
            z4 = z3;
        } catch (Exception unused) {
        }
        ANDROID_EMULATOR = z4;
    }

    public static String commaToNewline(String str) {
        StringBuilder sb = new StringBuilder();
        for (String str2 : str.split(",")) {
            sb.append(str2);
            sb.append(",");
            sb.append("\n");
        }
        if (sb.length() > 2) {
            sb.deleteCharAt(sb.length() - 2);
        }
        return sb.toString();
    }

    public static String[] fromCommaSeparatedList(String str) {
        return fromCommaSeparatedList(str, true);
    }

    public static long fromTimeString(String str) {
        if (str.lastIndexOf(".") != -1) {
            str = str.substring(0, str.lastIndexOf("."));
        }
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length != 3) {
            throw new IllegalArgumentException(a.a("Can't parse time string: ", str));
        }
        return Long.parseLong(strArrSplit[2]) + (Long.parseLong(strArrSplit[1]) * 60) + (Long.parseLong(strArrSplit[0]) * 3600);
    }

    public static byte[] getFirstNetworkInterfaceHardwareAddress() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (!networkInterface.isLoopback() && networkInterface.isUp() && networkInterface.getHardwareAddress() != null) {
                    return networkInterface.getHardwareAddress();
                }
            }
            throw new RuntimeException("Could not discover first network interface hardware address");
        } catch (Exception unused) {
            throw new RuntimeException("Could not discover first network interface hardware address");
        }
    }

    public static InetAddress getInetAddressByName(String str) {
        try {
            return InetAddress.getByName(str);
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public static String getLocalHostName(boolean z3) {
        try {
            String hostName = InetAddress.getLocalHost().getHostName();
            return (z3 || hostName.indexOf(".") == -1) ? hostName : hostName.substring(0, hostName.indexOf("."));
        } catch (Exception unused) {
            return "UNKNOWN HOST";
        }
    }

    public static boolean isStringConvertibleType(Set<Class> set, Class cls) {
        if (cls.isEnum()) {
            return true;
        }
        Iterator<Class> it = set.iterator();
        while (it.hasNext()) {
            if (it.next().isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isValidUDAName(String str) {
        return ANDROID_RUNTIME ? (str == null || str.length() == 0) ? false : true : (str == null || str.length() == 0 || str.toLowerCase(Locale.ROOT).startsWith("xml") || !str.matches(Constants.REGEX_UDA_NAME)) ? false : true;
    }

    public static String toCommaSeparatedList(Object[] objArr) {
        return toCommaSeparatedList(objArr, true, false);
    }

    public static String toTimeString(long j4) {
        long j5 = j4 / 3600;
        long j6 = j4 % 3600;
        long j7 = j6 / 60;
        long j8 = j6 % 60;
        StringBuilder sb = new StringBuilder();
        sb.append(j5 < 10 ? "0" : "");
        sb.append(j5);
        sb.append(":");
        sb.append(j7 < 10 ? "0" : "");
        sb.append(j7);
        sb.append(":");
        sb.append(j8 >= 10 ? "" : "0");
        sb.append(j8);
        return sb.toString();
    }

    public static String[] fromCommaSeparatedList(String str, boolean z3) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (z3) {
            str = str.replaceAll("\\\\,", "XXX1122334455XXX");
        }
        String[] strArrSplit = str.split(",");
        for (int i4 = 0; i4 < strArrSplit.length; i4++) {
            strArrSplit[i4] = strArrSplit[i4].replaceAll("XXX1122334455XXX", ",");
            strArrSplit[i4] = strArrSplit[i4].replaceAll("\\\\\\\\", "\\\\");
        }
        return strArrSplit;
    }

    public static String toCommaSeparatedList(Object[] objArr, boolean z3, boolean z4) {
        if (objArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            String strReplaceAll = obj.toString().replaceAll("\\\\", "\\\\\\\\");
            if (z3) {
                strReplaceAll = strReplaceAll.replaceAll(",", "\\\\,");
            }
            if (z4) {
                strReplaceAll = strReplaceAll.replaceAll("\"", "\\\"");
            }
            sb.append(strReplaceAll);
            sb.append(",");
        }
        if (sb.length() > 1) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }
}
