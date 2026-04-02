package com.stripe.bbpos.bbdevice;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.os.BatteryManager;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.hardware.emv.TlvMap;
import com.sun.jna.Function;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class ccc071zz {
    static final char[] aaa000 = "0123456789ABCDEF".toCharArray();

    static /* synthetic */ class aaa000zz {
        static final /* synthetic */ int[] aaa000;
        static final /* synthetic */ int[] aaa001;

        static {
            int[] iArr = new int[BBDeviceController.CardScheme.values().length];
            aaa001 = iArr;
            try {
                iArr[BBDeviceController.CardScheme.VISA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                aaa001[BBDeviceController.CardScheme.MASTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                aaa001[BBDeviceController.CardScheme.UNIONPAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[BBDeviceController.CheckCardMode.values().length];
            aaa000 = iArr2;
            try {
                iArr2[BBDeviceController.CheckCardMode.SWIPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                aaa000[BBDeviceController.CheckCardMode.INSERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                aaa000[BBDeviceController.CheckCardMode.TAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                aaa000[BBDeviceController.CheckCardMode.SWIPE_OR_INSERT.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    static Hashtable<String, BBDeviceController.TerminalSettingStatus> aaa000(Hashtable<String, aaa003zz.aaa015zz> hashtable) {
        Hashtable<String, BBDeviceController.TerminalSettingStatus> hashtable2 = new Hashtable<>();
        for (Map.Entry<String, aaa003zz.aaa015zz> entry : hashtable.entrySet()) {
            hashtable2.put(entry.getKey(), entry.getValue().aaa000());
        }
        return hashtable2;
    }

    static Hashtable<String, Object> aaa001(Hashtable<String, Object> hashtable) {
        Hashtable<String, Object> hashtable2 = new Hashtable<>();
        for (Map.Entry<String, Object> entry : hashtable.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                hashtable2.put(key, value);
            } else if (value instanceof aaa003zz.aaa015zz) {
                hashtable2.put(key, ((aaa003zz.aaa015zz) value).aaa000());
            } else if (value instanceof BBDeviceController.TerminalSettingStatus) {
                hashtable2.put(key, value);
            } else if (value instanceof Hashtable) {
                Hashtable hashtable3 = new Hashtable();
                for (Map.Entry entry2 : ((Hashtable) value).entrySet()) {
                    String str = (String) entry2.getKey();
                    Object value2 = entry2.getValue();
                    if (value2 instanceof aaa003zz.aaa015zz) {
                        hashtable3.put(str, ((aaa003zz.aaa015zz) value2).aaa000());
                    } else {
                        hashtable3.put(str, value2);
                    }
                }
                hashtable2.put(key, hashtable3);
            }
        }
        return hashtable2;
    }

    static Hashtable<String, Object> aaa002(Hashtable<String, Object> hashtable) {
        Hashtable<String, Object> hashtable2 = new Hashtable<>();
        for (Map.Entry<String, Object> entry : hashtable.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (entry.getValue() instanceof aaa003zz.aaa015zz) {
                hashtable2.put(key, ((aaa003zz.aaa015zz) value).aaa000());
            } else {
                hashtable2.put(key, value);
            }
        }
        return hashtable2;
    }

    static String aaa003(int i) {
        if (i < 0) {
            return "";
        }
        String hexString = Integer.toHexString(i);
        while (hexString.length() % 2 != 0) {
            hexString = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString;
        }
        return hexString;
    }

    static String aaa004(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("TLV length is less than 0");
        }
        String string = Integer.toString(i, 16);
        while (string.length() % 2 != 0) {
            string = TlbConst.TYPELIB_MINOR_VERSION_SHELL + string;
        }
        if (i < 128) {
            return string.toUpperCase(Locale.ROOT);
        }
        return (Integer.toString((string.length() / 2) | 128, 16) + string).toUpperCase(Locale.ROOT);
    }

    static byte[] aaa005(String str) {
        int i;
        int i2;
        if (str == null) {
            str = "";
        }
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

    static boolean aaa006(String str) {
        if (str != null && str.length() != 0 && str.length() % 2 == 0) {
            try {
                aaa005(str);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    static boolean aaa007(String str) {
        if (str != null && str.length() != 0) {
            try {
                Integer.parseInt(str);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    static boolean aaa008(String str) {
        return (str == null || str.equalsIgnoreCase("")) ? false : true;
    }

    static boolean aaa009(String str) {
        if (!aaa006(str)) {
            return false;
        }
        byte[] bArrAaa005 = aaa005(str);
        if (bArrAaa005.length == 1) {
            byte b = bArrAaa005[0];
            if (b == 0 || b == -1 || (b & 31) == 31) {
                return false;
            }
        } else {
            if ((bArrAaa005[0] & 31) != 31) {
                return false;
            }
            for (int i = 1; i < bArrAaa005.length; i++) {
                if (i == 1 && (bArrAaa005[i] & 127) == 0) {
                    return false;
                }
                if (i == bArrAaa005.length - 1) {
                    if ((bArrAaa005[i] & (-128)) != 0) {
                        return false;
                    }
                } else if ((bArrAaa005[i] & (-128)) == 0) {
                    return false;
                }
            }
        }
        return true;
    }

    static String aaa010(String str) throws IOException {
        Process processStart = new ProcessBuilder(new String[0]).command("/system/bin/getprop").redirectErrorStream(true).start();
        InputStream inputStream = processStart.getInputStream();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                if (line.contains(str)) {
                    String strSubstring = line.substring(line.indexOf("]: [") + 4);
                    sb.append(strSubstring.substring(0, strSubstring.length() - 1));
                }
            } catch (IOException unused) {
            }
        }
        System.out.println(inputStream);
        processStart.destroy();
        return sb.toString();
    }

    static String aaa011(String str) {
        return str.replace("{", "(").replace("}", ")").replace(",", ";");
    }

    static String aaa012(String str) {
        String strReplaceAll = str.replaceAll("f", "X").replaceAll("F", "X");
        while (strReplaceAll.endsWith("X")) {
            strReplaceAll = strReplaceAll.substring(0, strReplaceAll.length() - 1);
        }
        return strReplaceAll;
    }

    static byte[] aaa000(String str, int i) {
        int length = Function.USE_VARARGS / str.length();
        String str2 = "";
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            for (int i4 = 0; i4 < length; i4++) {
                str2 = str2 + str.charAt(i3);
            }
        }
        while (str2.length() % 8 != 0) {
            str2 = str2 + TlbConst.TYPELIB_MINOR_VERSION_SHELL;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(aaa005("1D6B21"), 0, 3);
        byteArrayOutputStream.write(i);
        byteArrayOutputStream.write((byte) str2.length());
        byteArrayOutputStream.write((byte) (str2.length() >> 8));
        while (i2 < str2.length()) {
            int i5 = i2 + 8;
            byteArrayOutputStream.write(Integer.parseInt(str2.substring(i2, i5), 2));
            i2 = i5;
        }
        return byteArrayOutputStream.toByteArray();
    }

    static String aaa003(String str) {
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

    static List<String> aaa002(String str) {
        ArrayList arrayList = new ArrayList();
        byte[] bArrAaa005 = aaa005(str);
        int i = 0;
        String str2 = "";
        for (int i2 = 0; i2 < bArrAaa005.length; i2++) {
            str2 = str2 + aaa000(bArrAaa005[i2]);
            if (!(i == 0 && (bArrAaa005[i2] & 31) == 31) && (i <= 0 || (bArrAaa005[i2] & (-128)) != -128)) {
                arrayList.add(str2);
                i = 0;
                str2 = "";
            } else {
                i++;
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean aaa004(java.util.Hashtable<java.lang.String, java.lang.String> r6) {
        /*
            java.util.Set r6 = r6.entrySet()
            java.util.Iterator r6 = r6.iterator()
            r0 = 1
            r1 = r0
        La:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L81
            java.lang.Object r2 = r6.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r3 = r2.getKey()
            java.lang.String r3 = (java.lang.String) r3
            java.lang.Object r2 = r2.getValue()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.String r4 = "location"
            boolean r4 = r3.equalsIgnoreCase(r4)
            r5 = 0
            if (r4 == 0) goto L2c
            goto L5d
        L2c:
            java.lang.String r4 = "rid"
            boolean r4 = r3.equalsIgnoreCase(r4)
            if (r4 == 0) goto L37
            r1 = 5
        L35:
            r3 = r0
            goto L70
        L37:
            java.lang.String r4 = "exponent"
            boolean r4 = r3.equalsIgnoreCase(r4)
            if (r4 == 0) goto L40
            goto L5d
        L40:
            java.lang.String r4 = "checksum"
            boolean r4 = r3.equalsIgnoreCase(r4)
            if (r4 == 0) goto L4b
            r1 = 20
            goto L35
        L4b:
            java.lang.String r4 = "size"
            boolean r4 = r3.equalsIgnoreCase(r4)
            if (r4 == 0) goto L55
            r1 = 2
            goto L35
        L55:
            java.lang.String r4 = "index"
            boolean r4 = r3.equalsIgnoreCase(r4)
            if (r4 == 0) goto L60
        L5d:
            r1 = r0
            r3 = r1
            goto L70
        L60:
            java.lang.String r4 = "modulus"
            boolean r3 = r3.equalsIgnoreCase(r4)
            if (r3 == 0) goto L6f
            boolean r3 = aaa006(r2)
            if (r3 != 0) goto L6f
            return r5
        L6f:
            r3 = r5
        L70:
            if (r3 != r0) goto La
            int r3 = r2.length()
            int r4 = r1 * 2
            if (r3 != r4) goto L80
            boolean r2 = aaa006(r2)
            if (r2 != 0) goto La
        L80:
            return r5
        L81:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.ccc071zz.aaa004(java.util.Hashtable):boolean");
    }

    static int aaa003(String str, int i) {
        try {
            return Integer.parseInt(str, 16);
        } catch (Exception unused) {
            return i;
        }
    }

    static Hashtable<String, String> aaa003(Hashtable<String, String> hashtable) {
        Hashtable<String, String> hashtable2 = new Hashtable<>();
        if (hashtable != null) {
            Object[] array = hashtable.keySet().toArray();
            Arrays.sort(array);
            for (Object obj : array) {
                hashtable2.put((String) obj, hashtable.get(obj));
            }
        }
        return hashtable2;
    }

    static String aaa002(String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        return str + aaa004(str2.length() / 2) + str2;
    }

    static String aaa001(List<CAPK> list) {
        String str = "{";
        if (list != null) {
            String str2 = "{";
            for (int i = 0; i < list.size(); i++) {
                try {
                    str2 = str2 + "{" + aaa000(list.get(i)) + "}";
                    if (i < list.size() - 1) {
                        str2 = str2 + ", ";
                    }
                } catch (Exception unused) {
                }
            }
            str = str2;
        }
        return str + "}";
    }

    static String aaa000(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            int i2 = i * 2;
            char[] cArr2 = aaa000;
            cArr[i2] = cArr2[(b & 255) >>> 4];
            cArr[i2 + 1] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    static String aaa002(String str, int i) {
        if (str.length() > i) {
            return str.substring(0, i);
        }
        while (str.length() < i) {
            str = str + TlbConst.TYPELIB_MINOR_VERSION_SHELL;
        }
        return str;
    }

    static void aaa002(int i) {
        try {
            Thread.sleep(i);
        } catch (Exception unused) {
        }
    }

    static boolean aaa002(Context context) {
        int intExtra = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")).getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
        return intExtra == 2 || intExtra == 5;
    }

    static String aaa000(byte b) {
        char[] cArr = aaa000;
        return new String(new char[]{cArr[(b & 255) >>> 4], cArr[b & 15]});
    }

    static String aaa001(Hashtable<String, String> hashtable, BBDeviceController.aaa004zz aaa004zzVar) {
        String str = "{";
        if (hashtable != null) {
            ArrayList<Map.Entry> arrayList = new ArrayList(hashtable.entrySet());
            Collections.sort(arrayList, new Comparator() { // from class: com.stripe.bbpos.bbdevice.ccc071zz$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ccc071zz.aaa001((Map.Entry) obj, (Map.Entry) obj2);
                }
            });
            int i = 0;
            for (Map.Entry entry : arrayList) {
                String str2 = (String) entry.getKey();
                String str3 = str + str2 + "=";
                if (aaa004zzVar != BBDeviceController.aaa004zz.SHOW_ALL_VALUES && (aaa004zzVar != BBDeviceController.aaa004zz.MASK_ACCORDING_MAPPING || ccc046zz.aaa000(str2))) {
                    str = str3 + "***";
                } else {
                    String str4 = (String) entry.getValue();
                    if (str2.equalsIgnoreCase("pan") && str4.length() > 10) {
                        str = str3 + ((str4.substring(0, 6) + aaa001("X", str4.length() - 10)) + str4.substring(str4.length() - 4));
                    } else {
                        str = str3 + str4;
                    }
                }
                if (i < arrayList.size() - 1) {
                    str = str + ", ";
                }
                i++;
            }
        }
        return str + "}";
    }

    static <T> String aaa000(Object obj, Class<T> cls) {
        int iIntValue;
        if (cls == byte[].class) {
            if (obj instanceof String) {
                String str = (String) obj;
                while (str.length() % 2 != 0) {
                    str = TlbConst.TYPELIB_MINOR_VERSION_SHELL + str;
                }
                if (aaa006(str)) {
                    return str;
                }
                return null;
            }
            if (obj instanceof byte[]) {
                return aaa000((byte[]) obj);
            }
        } else if (cls == BBDeviceController.CheckCardMode.class) {
            if (obj instanceof BBDeviceController.CheckCardMode) {
                int i = aaa000zz.aaa000[((BBDeviceController.CheckCardMode) obj).ordinal()];
                if (i == 1) {
                    return TlvMap.SET_BUZZER_DISABLED_VALUE;
                }
                if (i == 2) {
                    return "02";
                }
                if (i == 3) {
                    return "04";
                }
                if (i != 4) {
                    return null;
                }
                return "03";
            }
        } else {
            if (cls == Integer.class) {
                if (obj instanceof String) {
                    iIntValue = Integer.parseInt((String) obj);
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
            if (cls == BBDeviceController.CurrencyCharacter[].class) {
                if (obj instanceof BBDeviceController.CurrencyCharacter[]) {
                    BBDeviceController.CurrencyCharacter[] currencyCharacterArr = (BBDeviceController.CurrencyCharacter[]) obj;
                    if (currencyCharacterArr.length == 0) {
                        currencyCharacterArr = new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.SPACE};
                    }
                    String str2 = "";
                    for (BBDeviceController.CurrencyCharacter currencyCharacter : currencyCharacterArr) {
                        str2 = str2 + aaa000(ccc060zz.aaa000.get(currencyCharacter));
                    }
                    if (str2.equals("")) {
                        return null;
                    }
                    return str2;
                }
            } else if (cls == Boolean.class) {
                if (obj instanceof String) {
                    try {
                        return Integer.parseInt((String) obj) > 0 ? TlvMap.SET_BUZZER_DISABLED_VALUE : TlvMap.SET_BUZZER_ENABLED_VALUE;
                    } catch (Exception unused) {
                        return Boolean.parseBoolean((String) obj) ? TlvMap.SET_BUZZER_DISABLED_VALUE : TlvMap.SET_BUZZER_ENABLED_VALUE;
                    }
                }
                if (obj instanceof Boolean) {
                    return ((Boolean) obj).booleanValue() ? TlvMap.SET_BUZZER_DISABLED_VALUE : TlvMap.SET_BUZZER_ENABLED_VALUE;
                }
                if (obj instanceof Integer) {
                    return ((Integer) obj).intValue() > 0 ? TlvMap.SET_BUZZER_DISABLED_VALUE : TlvMap.SET_BUZZER_ENABLED_VALUE;
                }
            } else if (cls == String.class) {
                if (obj instanceof String) {
                    return (String) obj;
                }
            } else if (cls == BBDeviceController.CardScheme.class) {
                if (obj instanceof BBDeviceController.CardScheme) {
                    int i2 = aaa000zz.aaa001[((BBDeviceController.CardScheme) obj).ordinal()];
                    if (i2 == 1) {
                        return TlvMap.SET_BUZZER_DISABLED_VALUE;
                    }
                    if (i2 == 2) {
                        return "02";
                    }
                    if (i2 != 3) {
                        return null;
                    }
                    return "03";
                }
            } else if (cls == ccc045zz.class && (obj instanceof Boolean)) {
                return ((Boolean) obj).booleanValue() ? TlvMap.SET_BUZZER_ENABLED_VALUE : TlvMap.SET_BUZZER_DISABLED_VALUE;
            }
        }
        return null;
    }

    static int aaa004(String str) {
        return Integer.parseInt(str, 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int aaa001(Map.Entry entry, Map.Entry entry2) {
        return ((String) entry.getKey()).compareTo((String) entry2.getKey());
    }

    static String aaa001(String str, int i) {
        String str2 = "";
        for (int i2 = 0; i2 < i; i2++) {
            str2 = str2 + str;
        }
        return str2;
    }

    static String aaa001(int i) {
        return String.format("%04X", Integer.valueOf(i));
    }

    static String aaa001(String str, String str2) {
        String str3;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str3 = (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, null);
        } catch (Exception unused) {
        }
        return str3 == null ? str2 : str3;
    }

    static String aaa001(String str) {
        return str == null ? "" : str;
    }

    static String aaa001() {
        return "Build.MANUFACTURER : " + Build.MANUFACTURER + ", Build.MODEL : " + Build.MODEL + ", Build.VERSION.RELEASE : " + Build.VERSION.RELEASE + ", Build.DEVICE : " + Build.DEVICE + ", Build.FINGERPRINT : " + Build.FINGERPRINT;
    }

    static String aaa001(Context context) {
        try {
            return context.getApplicationContext().getPackageName();
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x009f, code lost:
    
        if (r6.length() > 2) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0297  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.String aaa000(java.lang.Object r6, java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 843
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.ccc071zz.aaa000(java.lang.Object, java.lang.String):java.lang.String");
    }

    static String aaa000(String str, String str2) {
        byte[] bArrAaa005 = aaa005(str);
        byte[] bArrAaa0052 = aaa005(str2);
        if (bArrAaa005 != null && bArrAaa0052 != null && bArrAaa005.length != 0 && bArrAaa0052.length != 0) {
            int length = bArrAaa005.length;
            if (bArrAaa0052.length < length) {
                length = bArrAaa0052.length;
            }
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                bArr[i] = (byte) (bArrAaa005[i] ^ bArrAaa0052[i]);
            }
            return aaa000(bArr);
        }
        return "";
    }

    static String aaa000(CAPK capk) {
        if (capk == null) {
            return "";
        }
        return "location : " + capk.location + ", rid : " + capk.rid + ", index : " + capk.index + ", exponent : " + capk.exponent + ", modulus : " + capk.modulus + ", checksum : " + capk.checksum + ", size : " + capk.size;
    }

    static String aaa000() {
        return new SimpleDateFormat("HH:mm:ss.SSS", Locale.ROOT).format(Calendar.getInstance().getTime());
    }

    static String aaa000(BluetoothDevice bluetoothDevice) {
        String str;
        try {
            str = "{[" + bluetoothDevice.getName() + ", " + bluetoothDevice.getAddress() + ", " + bluetoothDevice.getType() + ", " + System.identityHashCode(bluetoothDevice) + "], ";
        } catch (SecurityException unused) {
            str = "{";
        }
        return str + "}";
    }

    static String aaa000(List<BluetoothDevice> list) {
        String str = "{";
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                str = str + aaa000(list.get(i));
            }
        }
        return str + "}";
    }

    static String aaa000(BBDeviceController.CurrencyCharacter[] currencyCharacterArr) {
        String str = "{";
        if (currencyCharacterArr != null) {
            for (int i = 0; i < currencyCharacterArr.length; i++) {
                str = str + currencyCharacterArr[i];
                if (i < currencyCharacterArr.length - 1) {
                    str = str + ", ";
                }
            }
        }
        return str + "}";
    }

    static String aaa000(Hashtable<String, Object> hashtable, BBDeviceController.aaa004zz aaa004zzVar) {
        String str = "{";
        if (hashtable != null) {
            ArrayList<Map.Entry> arrayList = new ArrayList(hashtable.entrySet());
            Collections.sort(arrayList, new Comparator() { // from class: com.stripe.bbpos.bbdevice.ccc071zz$$ExternalSyntheticLambda1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ccc071zz.aaa000((Map.Entry) obj, (Map.Entry) obj2);
                }
            });
            int i = 0;
            for (Map.Entry entry : arrayList) {
                String str2 = (String) entry.getKey();
                str = str + str2 + "=";
                if (aaa004zzVar != BBDeviceController.aaa004zz.SHOW_ALL_VALUES && (aaa004zzVar != BBDeviceController.aaa004zz.MASK_ACCORDING_MAPPING || ccc046zz.aaa000(str2))) {
                    str = str + "***";
                } else {
                    Object value = entry.getValue();
                    try {
                        if (str2.equalsIgnoreCase("pan") && (value instanceof String) && ((String) value).length() > 10) {
                            value = (((String) value).substring(0, 6) + aaa001("X", ((String) value).length() - 10)) + ((String) value).substring(((String) value).length() - 4);
                        }
                        if (value instanceof BBDeviceController.CurrencyCharacter[]) {
                            str = str + aaa000((BBDeviceController.CurrencyCharacter[]) value);
                        } else if (value instanceof String[]) {
                            str = str + Arrays.toString((String[]) value);
                        } else if (value instanceof int[]) {
                            str = str + Arrays.toString((int[]) value);
                        } else if (value instanceof float[]) {
                            str = str + Arrays.toString((float[]) value);
                        } else if (value instanceof double[]) {
                            str = str + Arrays.toString((double[]) value);
                        } else if (value instanceof short[]) {
                            str = str + Arrays.toString((short[]) value);
                        } else if (value instanceof long[]) {
                            str = str + Arrays.toString((long[]) value);
                        } else if (value.getClass().isArray()) {
                            str = str + Arrays.toString((Object[]) value);
                        } else {
                            str = str + value;
                        }
                    } catch (Exception unused) {
                    }
                }
                if (i < arrayList.size() - 1) {
                    str = str + ", ";
                }
                i++;
            }
        }
        return str + "}";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int aaa000(Map.Entry entry, Map.Entry entry2) {
        return ((String) entry.getKey()).compareTo((String) entry2.getKey());
    }

    static String aaa000(int i) {
        return String.format("%08X", Integer.valueOf(i));
    }

    static String aaa000(int i, int i2) {
        if (i2 <= 0) {
            return Integer.toString(i);
        }
        return String.format("%0" + i2 + "d", Integer.valueOf(i));
    }

    static String aaa000(String str) {
        if (str == null) {
            return "";
        }
        return aaa000(str.getBytes());
    }

    static String aaa000(Bitmap bitmap) {
        int width = (bitmap.getWidth() * bitmap.getHeight()) / 16;
        short[] sArr = new short[width];
        int i = 0;
        for (int i2 = 0; i2 <= bitmap.getHeight() - 16; i2 += 16) {
            for (int i3 = 0; i3 < bitmap.getWidth(); i3++) {
                short s = 0;
                for (int i4 = 0; i4 < 16; i4++) {
                    int pixel = bitmap.getPixel(i3, i4 + i2);
                    int i5 = (pixel >> 16) & 255;
                    int i6 = (pixel >> 8) & 255;
                    int i7 = pixel & 255;
                    if (i5 != 255 || i6 != 255 || i7 != 255) {
                        s = (short) (s | ((short) (1 << (15 - i4))));
                    }
                }
                if (i < width) {
                    sArr[i] = s;
                    i++;
                }
            }
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(width * 2);
        for (int i8 = 0; i8 < width; i8++) {
            byteBufferAllocate.putShort(sArr[i8]);
        }
        return aaa000(byteBufferAllocate.array());
    }

    static String aaa000(ccc067zz ccc067zzVar) {
        if (ccc067zzVar == null) {
            return "";
        }
        return ccc067zzVar.aaa001;
    }

    static Hashtable<String, String> aaa000(Hashtable<String, String> hashtable, HashMap<String, String> map) {
        Hashtable<String, String> hashtableAaa003 = aaa003(hashtable);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (hashtableAaa003.containsKey(key)) {
                String str = hashtableAaa003.get(key);
                hashtableAaa003.remove(key);
                hashtableAaa003.put(value, str);
            }
        }
        return hashtableAaa003;
    }

    static int aaa000(Context context) {
        return ((BatteryManager) context.getSystemService("batterymanager")).getIntProperty(4);
    }
}
