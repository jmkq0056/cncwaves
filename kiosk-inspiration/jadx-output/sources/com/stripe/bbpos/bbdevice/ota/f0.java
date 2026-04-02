package com.stripe.bbpos.bbdevice.ota;

import android.content.Context;
import android.content.IntentFilter;
import android.os.BatteryManager;
import androidx.core.app.NotificationCompat;
import com.stripe.hardware.emv.TlvMap;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
final class f0 {
    static final char[] a = "0123456789ABCDEF".toCharArray();

    static String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            int i2 = i * 2;
            char[] cArr2 = a;
            cArr[i2] = cArr2[(b & 255) >>> 4];
            cArr[i2 + 1] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    static String b(int i) {
        return String.format("%04X", Integer.valueOf(i));
    }

    static String c(int i) {
        String string = Integer.toString(i, 16);
        while (string.length() % 2 != 0) {
            string = TlbConst.TYPELIB_MINOR_VERSION_SHELL + string;
        }
        if (i < 128) {
            return string;
        }
        return Integer.toString((string.length() / 2) | 128, 16) + string;
    }

    static String d(String str, String str2) {
        if (str2 != null) {
            return str + c(str2.length() / 2) + str2;
        }
        return null;
    }

    static int e(String str) {
        if (j(str)) {
            return i(str)[0];
        }
        return 0;
    }

    public static String f(String str) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(new File(str));
        String strA = a((InputStream) fileInputStream);
        fileInputStream.close();
        return strA;
    }

    static int h(String str) {
        return Integer.parseInt(str, 16);
    }

    static byte[] i(String str) {
        int i;
        int i2;
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i3 = 0; i3 < length; i3 += 2) {
            char cCharAt = str.charAt(i3);
            char cCharAt2 = str.charAt(i3 + 1);
            if (cCharAt >= '0' && cCharAt <= '9') {
                i = cCharAt - '0';
            } else if (cCharAt >= 'A' && cCharAt <= 'F') {
                i = cCharAt - '7';
            } else {
                if (cCharAt < 'a' || cCharAt > 'f') {
                    throw new IllegalArgumentException();
                }
                i = cCharAt - 'W';
            }
            if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                i2 = cCharAt2 - '0';
            } else if (cCharAt2 >= 'A' && cCharAt2 <= 'F') {
                i2 = cCharAt2 - '7';
            } else {
                if (cCharAt2 < 'a' || cCharAt2 > 'f') {
                    throw new IllegalArgumentException();
                }
                i2 = cCharAt2 - 'W';
            }
            bArr[i3 >> 1] = (byte) ((i << 4) | i2);
        }
        return bArr;
    }

    static boolean j(String str) {
        if (str != null && str.length() != 0 && str.length() % 2 == 0) {
            try {
                i(str);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    static boolean k(String str) {
        return (str == null || str.equalsIgnoreCase("")) ? false : true;
    }

    static String b(String str) {
        return str == null ? "" : str;
    }

    static int d(String str) {
        if (!j(str)) {
            return 0;
        }
        byte[] bArrI = i(str);
        if (bArrI.length >= 2) {
            return bArrI[1];
        }
        return 0;
    }

    static Hashtable<String, Object> b(Hashtable<String, String> hashtable) {
        if (hashtable == null) {
            return null;
        }
        Hashtable<String, Object> hashtable2 = new Hashtable<>();
        Object[] array = hashtable.keySet().toArray();
        Arrays.sort(array);
        for (Object obj : array) {
            hashtable2.put((String) obj, hashtable.get(obj));
        }
        return hashtable2;
    }

    static String g(String str) {
        if (str == null) {
            return "";
        }
        if (str.contains(" ")) {
            str = str.replaceAll(" ", "");
        }
        if (str.length() % 2 != 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            int i2 = i + 2;
            sb.append((char) Integer.parseInt(str.substring(i, i2), 16));
            i = i2;
        }
        return sb.toString();
    }

    static String l(String str) {
        if (str == null) {
            return "";
        }
        int i = Integer.parseInt(str, 16);
        switch (i) {
            case 1:
                return "Failed to send encrypted firmware to device. (No tag data type)";
            case 2:
                return "Failed to send encrypted firmware to device. (No tag addr offset)";
            case 3:
                return "Failed to send encrypted firmware to device. (No tag data)";
            case 4:
                return "Failed to send encrypted firmware to device. (No tag data mac)";
            case 5:
                return "Failed to send encrypted firmware to device. (Fail to get plk)";
            case 6:
                return "Failed to send encrypted firmware to device. (Fail to get cmack)";
            case 7:
                return "Failed to send encrypted firmware to device. (Fail mac check)";
            case 8:
                return "Failed to send encrypted firmware to device. (Fail download files)";
            case 9:
                return "The input firmware hex is not compatible with the device.";
            case 10:
                return "The input config hex is not compatible with the device.";
            default:
                return "Unknown error (" + i + ")";
        }
    }

    static String b(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, null);
        } catch (Exception unused) {
            return str2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:1402:0x1ff1  */
    /* JADX WARN: Removed duplicated region for block: B:1404:0x200d A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.String c(java.lang.String r25, java.lang.String r26) {
        /*
            Method dump skipped, instruction units count: 8239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.ota.f0.c(java.lang.String, java.lang.String):java.lang.String");
    }

    static String a(byte b) {
        char[] cArr = a;
        return new String(new char[]{cArr[(b & 255) >>> 4], cArr[b & 15]});
    }

    static boolean b(Context context) {
        int intExtra = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")).getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
        return intExtra == 2 || intExtra == 5;
    }

    static String a(String str) {
        char[] charArray = str.toCharArray();
        StringBuffer stringBuffer = new StringBuffer();
        for (char c : charArray) {
            stringBuffer.append(Integer.toHexString(c));
        }
        return stringBuffer.toString();
    }

    static String a(List<b0> list) {
        String str = "";
        if (list != null && list.size() > 0) {
            for (int i = 0; i < list.size(); i++) {
                str = str + d(list.get(i).a, list.get(i).c);
            }
        }
        return str;
    }

    static String a(Object obj, String str) {
        String strA;
        if (str.equalsIgnoreCase("DF6A")) {
            String strA2 = a(obj, byte[].class);
            if (strA2 == null || strA2.length() == 0) {
                return null;
            }
            strA = a(strA2, 2);
        } else if (str.equalsIgnoreCase("DF69")) {
            String strA3 = a(obj, Integer.class);
            if (strA3 == null || strA3.length() == 0 || strA3.length() > 8) {
                return null;
            }
            strA = a(strA3, 8);
        } else {
            if (str.equalsIgnoreCase("DF6C") || str.equalsIgnoreCase("DF74") || str.equalsIgnoreCase("DF6F") || str.equalsIgnoreCase("DF7D") || str.equalsIgnoreCase("DF864A") || str.equalsIgnoreCase("DF6E") || str.equalsIgnoreCase("DF72") || str.equalsIgnoreCase("DF8770") || str.equalsIgnoreCase("DF876F")) {
                strA = a(obj, byte[].class);
                if (strA != null && strA.length() != 0) {
                }
                return null;
            }
            strA = null;
        }
        if (strA != null) {
            return str + c(strA.length() / 2) + strA;
        }
        return null;
    }

    static <T> String a(Object obj, Class<T> cls) {
        int iIntValue;
        if (cls == byte[].class) {
            if (obj instanceof String) {
                String str = (String) obj;
                while (str.length() % 2 != 0) {
                    str = TlbConst.TYPELIB_MINOR_VERSION_SHELL + str;
                }
                if (j(str)) {
                    return str;
                }
                return null;
            }
            if (obj instanceof byte[]) {
                return a((byte[]) obj);
            }
        } else {
            if (cls == Integer.class) {
                if (obj instanceof String) {
                    try {
                        iIntValue = Integer.parseInt((String) obj);
                    } catch (Exception unused) {
                        return null;
                    }
                } else {
                    if (!(obj instanceof Integer)) {
                        return null;
                    }
                    iIntValue = ((Integer) obj).intValue();
                }
                if (iIntValue < 0) {
                    return null;
                }
                String hexString = Integer.toHexString(iIntValue);
                while (hexString.length() % 2 != 0) {
                    hexString = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString;
                }
                return hexString;
            }
            if (cls == Boolean.class) {
                if (obj instanceof String) {
                    try {
                        return Boolean.parseBoolean((String) obj) ? TlvMap.SET_BUZZER_DISABLED_VALUE : TlvMap.SET_BUZZER_ENABLED_VALUE;
                    } catch (Exception unused2) {
                        return null;
                    }
                }
                if (obj instanceof Boolean) {
                    return ((Boolean) obj).booleanValue() ? TlvMap.SET_BUZZER_DISABLED_VALUE : TlvMap.SET_BUZZER_ENABLED_VALUE;
                }
            }
        }
        return null;
    }

    static String a(String str, int i) {
        if (str == null) {
            str = "";
        }
        if (i < 0) {
            return "";
        }
        if (str.length() == i) {
            return str;
        }
        if (str.length() < i) {
            while (str.length() < i) {
                str = TlbConst.TYPELIB_MINOR_VERSION_SHELL + str;
            }
            return str;
        }
        return str.substring(str.length() - i);
    }

    public static String a(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        Boolean bool = Boolean.TRUE;
        while (true) {
            String line = bufferedReader.readLine();
            if (line != null) {
                if (bool.booleanValue()) {
                    sb.append(line);
                    bool = Boolean.FALSE;
                } else {
                    sb.append("\n").append(line);
                }
            } else {
                bufferedReader.close();
                return sb.toString();
            }
        }
    }

    public static String a(String str, String str2) {
        if (str2.length() != 48) {
            return "";
        }
        String strSubstring = str2.substring(0, 16);
        String strSubstring2 = str2.substring(16, 32);
        String strSubstring3 = str2.substring(32, 48);
        while (str.length() % 16 != 0) {
            str = str + TlbConst.TYPELIB_MINOR_VERSION_SHELL;
        }
        String strC = n.c(str, strSubstring);
        return n.b(n.a(strC.substring(strC.length() - 16), strSubstring2), strSubstring3);
    }

    static String a(int i) {
        Random random = new Random();
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            int i2 = i * 2;
            if (stringBuffer.length() < i2) {
                stringBuffer.append(Integer.toHexString(random.nextInt()));
            } else {
                return stringBuffer.toString().substring(0, i2);
            }
        }
    }

    static Hashtable<String, String> a(Hashtable<String, Object> hashtable) {
        if (hashtable == null) {
            return null;
        }
        Hashtable<String, String> hashtable2 = new Hashtable<>();
        Object[] array = hashtable.keySet().toArray();
        Arrays.sort(array);
        for (Object obj : array) {
            Object obj2 = hashtable.get(obj);
            if (obj2 instanceof String) {
                hashtable2.put((String) obj, (String) obj2);
            }
        }
        return hashtable2;
    }

    static Hashtable<String, String> a(JSONObject jSONObject) {
        Hashtable<String, String> hashtable = new Hashtable<>();
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof String) {
                    hashtable.put(next, (String) obj);
                } else if (obj instanceof Integer) {
                    hashtable.put(next, "" + ((Integer) obj).intValue());
                }
            }
        } catch (Exception unused) {
        }
        return hashtable;
    }

    static int a(String str, String str2, int i) {
        int i2;
        int i3;
        try {
            String[] strArrSplit = str.split("\\.|-");
            String[] strArrSplit2 = str2.split("\\.|-");
            for (int i4 = 0; i4 < i + 1; i4++) {
                if (i4 < strArrSplit.length) {
                    try {
                        i2 = Integer.parseInt(strArrSplit[i4].replaceAll("[^\\d.]", ""));
                    } catch (Exception unused) {
                        i2 = 0;
                    }
                } else {
                    i2 = 0;
                }
                if (i4 < strArrSplit2.length) {
                    try {
                        i3 = Integer.parseInt(strArrSplit2[i4].replaceAll("[^\\d.]", ""));
                    } catch (Exception unused2) {
                        i3 = 0;
                    }
                } else {
                    i3 = 0;
                }
                if (i4 < i) {
                    if (i2 > i3) {
                        return 1;
                    }
                    if (i2 < i3) {
                        return -1;
                    }
                } else if (strArrSplit.length > i && strArrSplit2.length > i) {
                    String str3 = strArrSplit[i4];
                    Locale locale = Locale.ROOT;
                    if (!str3.toLowerCase(locale).startsWith("beta") || !strArrSplit2[i4].toLowerCase(locale).startsWith("beta")) {
                        if (strArrSplit[i4].toLowerCase(locale).startsWith("beta")) {
                            return -1;
                        }
                        return strArrSplit2[i4].toLowerCase(locale).startsWith("beta") ? 1 : -99;
                    }
                    if (i2 > i3) {
                        return 1;
                    }
                    if (i2 < i3) {
                        return -1;
                    }
                } else {
                    if (strArrSplit.length > i) {
                        return strArrSplit[i4].toLowerCase(Locale.ROOT).startsWith("beta") ? -1 : 1;
                    }
                    if (strArrSplit2.length > i) {
                        return strArrSplit2[i4].toLowerCase(Locale.ROOT).startsWith("beta") ? 1 : -1;
                    }
                }
            }
            return 0;
        } catch (Exception unused3) {
            return -99;
        }
    }

    static boolean a(byte[] bArr, byte[] bArr2, int i) {
        if (bArr.length < i || bArr2.length < i) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    static int a(Context context) {
        return ((BatteryManager) context.getSystemService("batterymanager")).getIntProperty(4);
    }

    static boolean a(Object obj) {
        Boolean bool = Boolean.FALSE;
        if (obj instanceof Boolean) {
            bool = (Boolean) obj;
        } else if ((obj instanceof String) && ((String) obj).equalsIgnoreCase("true")) {
            bool = Boolean.TRUE;
        }
        return bool.booleanValue();
    }

    static String c(String str) {
        return str == null ? "" : str;
    }

    static <T> String c(Hashtable<String, T> hashtable) {
        String str = "{";
        if (hashtable != null) {
            Object[] array = hashtable.keySet().toArray();
            Arrays.sort(array);
            int i = 0;
            for (Object obj : array) {
                String str2 = str + obj + "=";
                Object obj2 = hashtable.get(obj);
                if (!obj.equals("VendorID") && !obj.equals("vendorID") && !obj.equals("VendorSecret") && !obj.equals("vendorSecret") && !obj.equals("AppID") && !obj.equals("appID") && !obj.equals("AppSecret") && !obj.equals("appSecret")) {
                    if (!obj.equals("encHex") && !obj.equals("encHexFilePath")) {
                        str = str2 + obj2;
                    } else {
                        String str3 = (String) obj2;
                        if (str3.length() > 3000) {
                            str3 = str3.substring(0, 3000) + "......";
                        }
                        str = str2 + str3;
                    }
                } else {
                    str = str2 + "********";
                }
                if (i < array.length - 1) {
                    str = str + ", ";
                }
                i++;
            }
        }
        return str + "}";
    }
}
