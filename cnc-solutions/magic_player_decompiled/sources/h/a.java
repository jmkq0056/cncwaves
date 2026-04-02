package h;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.opengl.GLES20;
import android.support.v4.media.f;
import android.support.v4.media.g;
import android.text.Spannable;
import android.text.TextUtils;
import android.util.Log;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.huidu.lcd.core.R$array;
import cn.huidu.lcd.render.model.AreaNode;
import cn.huidu.lcd.render.model.EffectNode;
import cn.huidu.lcd.render.model.ImageNode;
import cn.huidu.lcd.render.model.PlayTaskNode;
import cn.huidu.lcd.render.model.ProgramNode;
import cn.huidu.lcd.render.model.TextNode;
import cn.huidu.lcd.render.model.VideoNode;
import cn.huidu.lcd.render.model.WidgetNode;
import cn.huidu.lcd.setting.R$string;
import com.google.android.material.datepicker.UtcDates;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import g3.c;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.reflect.Type;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.nio.FloatBuffer;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import java.util.regex.Pattern;
import l.e;
import o.b;
import o.d;
import org.eclipse.jetty.http.HttpStatus;
import org.xbill.DNS.SimpleResolver;
import org.xbill.DNS.WKSRecord;
import s.h;
import t1.i;
import t1.n;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static boolean A(List<d> list) {
        Iterator<d> it = list.iterator();
        boolean z3 = false;
        while (it.hasNext()) {
            if (it.next().f2830k) {
                z3 = true;
            }
        }
        return z3;
    }

    public static <T> T A0(Object obj, Class<T> cls) {
        T t3;
        try {
            i iVar = new i();
            if (obj instanceof String) {
                t3 = (T) q0.a.B(cls).cast(iVar.c((String) obj, cls));
            } else {
                t3 = (T) iVar.d(iVar.k(obj), cls);
            }
            return t3;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String B(String str) {
        Enumeration<NetworkInterface> networkInterfaces;
        try {
            networkInterfaces = NetworkInterface.getNetworkInterfaces();
        } catch (SocketException e4) {
            e4.printStackTrace();
        }
        while (networkInterfaces.hasMoreElements()) {
            NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
            if (str.equals(networkInterfaceNextElement.getName())) {
                byte[] hardwareAddress = networkInterfaceNextElement.getHardwareAddress();
                if (hardwareAddress == null) {
                    return null;
                }
                return j(hardwareAddress);
            }
            return null;
        }
        return null;
    }

    public static void B0(Object obj) {
        boolean zContainsKey;
        try {
            c cVarB = c.b();
            synchronized (cVarB) {
                zContainsKey = cVarB.f1739b.containsKey(obj);
            }
            if (zContainsKey) {
                c.b().l(obj);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static String C(int i4, String str) {
        int iR = R(i4, str);
        return iR == 0 ? "01" : iR < 10 ? android.support.v4.media.d.a("0", iR) : android.support.v4.media.d.a("", iR);
    }

    public static void C0() {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(e.g(), "ConfigVersion"));
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                fileOutputStream.write(String.valueOf(jCurrentTimeMillis).getBytes());
                fileOutputStream.getFD().sync();
                c.b().f(new j.d(jCurrentTimeMillis));
                fileOutputStream.close();
            } finally {
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static String D(String str) {
        int iR = R(59, str);
        return iR < 10 ? android.support.v4.media.d.a("0", iR) : android.support.v4.media.d.a("", iR);
    }

    public static void D0(byte[] bArr, int i4, long j4) {
        if (j4 == 0) {
            Arrays.fill(bArr, i4, i4 + 8, (byte) 0);
            return;
        }
        long j5 = j4 / 1000;
        long j6 = j4 - (j5 * 1000);
        long j7 = j5 + 2208988800L;
        int i5 = i4 + 1;
        bArr[i4] = (byte) (j7 >> 24);
        int i6 = i5 + 1;
        bArr[i5] = (byte) (j7 >> 16);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (j7 >> 8);
        int i8 = i7 + 1;
        bArr[i7] = (byte) (j7 >> 0);
        long j8 = (j6 * 4294967296L) / 1000;
        int i9 = i8 + 1;
        bArr[i8] = (byte) (j8 >> 24);
        int i10 = i9 + 1;
        bArr[i9] = (byte) (j8 >> 16);
        bArr[i10] = (byte) (j8 >> 8);
        bArr[i10 + 1] = (byte) (Math.random() * 255.0d);
    }

    public static String E(String str) {
        int iR = R(12, str);
        return iR == 0 ? "1" : android.support.v4.media.d.a("", iR);
    }

    public static String F(int i4) {
        return i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? String.valueOf(i4) : "singleCycle" : "balance" : "synchronous" : "listCycle";
    }

    public static List<Point> G(Spannable spannable, Class cls) {
        int length = spannable.length();
        byte[] bArr = new byte[length];
        Object[] spans = spannable.getSpans(0, spannable.length(), cls);
        for (int i4 = 0; i4 < spans.length; i4++) {
            int spanEnd = spannable.getSpanEnd(spans[i4]);
            for (int spanStart = spannable.getSpanStart(spans[i4]); spanStart < spanEnd; spanStart++) {
                if (spanStart >= 0 && spanStart < length) {
                    bArr[spanStart] = 1;
                }
            }
        }
        for (int i5 = 0; i5 < length; i5++) {
            if (spannable.charAt(i5) == '\n') {
                bArr[i5] = 1;
            }
        }
        ArrayList arrayList = new ArrayList();
        int i6 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            if (bArr[i7] != 0) {
                if (i7 > i6) {
                    arrayList.add(new Point(i6, i7));
                }
                i6 = i7 + 1;
            }
        }
        if (i6 < length) {
            arrayList.add(new Point(i6, length));
        }
        return arrayList;
    }

    public static ArrayList<String> H(Context context) {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(context.getResources().getString(R$string.open));
        arrayList.add(context.getResources().getString(R$string.close));
        return arrayList;
    }

    public static String I() {
        char[] cArr = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        int i4 = 0;
        while (i4 < 8) {
            int iAbs = Math.abs(random.nextInt(36));
            if (iAbs >= 0 && iAbs < 36) {
                sb.append(cArr[iAbs]);
                i4++;
            }
        }
        return sb.toString();
    }

    public static int J(Calendar calendar) {
        int i4 = calendar.get(11);
        return (((i4 * 60) + calendar.get(12)) * 60) + calendar.get(13);
    }

    public static ArrayList<String> K(Resources resources, int i4) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            arrayList.addAll(Arrays.asList(resources.getStringArray(i4)));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return arrayList;
    }

    public static String L(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static boolean M(int i4, int i5, int i6) {
        return i5 <= i6 ? i4 >= i5 && i4 < i6 : i5 <= i4 || i4 < i6;
    }

    public static String N(String str, int i4) {
        if (str != null) {
            String[] strArrSplit = str.split(":");
            if (strArrSplit.length > i4) {
                return strArrSplit[i4];
            }
        }
        return "0";
    }

    public static List<b> O(Resources resources) {
        ArrayList arrayList = new ArrayList();
        try {
            long time = new Date().getTime();
            for (String str : resources.getStringArray(R$array.system_timezone_name)) {
                b bVar = new b();
                String[] strArrSplit = str.split(";");
                String str2 = strArrSplit[0];
                bVar.f2810c = str2;
                bVar.f2808a = strArrSplit[2];
                bVar.f2811d = "GMT" + k(TimeZone.getTimeZone(str2).getOffset(time));
                arrayList.add(bVar);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return arrayList;
    }

    public static b P(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList<b> arrayList = (ArrayList) O(context.getResources());
        if (arrayList.size() <= 0) {
            return null;
        }
        for (b bVar : arrayList) {
            if (bVar.f2810c.equals(str)) {
                return bVar;
            }
        }
        return null;
    }

    public static int Q(String str) {
        int iIntValue = Integer.valueOf(N(str, 0)).intValue();
        return (Integer.valueOf(N(str, 1)).intValue() * 60) + (iIntValue * 60 * 60) + Integer.valueOf(N(str, 2)).intValue();
    }

    public static int R(int i4, String str) {
        if (str.contains(".")) {
            str = str.replace(".", "");
        }
        int iIntValue = Integer.valueOf(str).intValue();
        return iIntValue > i4 ? i4 : iIntValue;
    }

    public static long S() {
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(e.g(), "ConfigVersion"));
            try {
                byte[] bArr = new byte[64];
                int i4 = fileInputStream.read(bArr);
                if (i4 <= 0) {
                    fileInputStream.close();
                    return 0L;
                }
                long j4 = Long.parseLong(new String(bArr, 0, i4));
                fileInputStream.close();
                return j4;
            } finally {
            }
        } catch (Exception e4) {
            StringBuilder sbA = f.a("error: ");
            sbA.append(e4.getMessage());
            Log.d("ConfigVersionUtils", sbA.toString());
            return 0L;
        }
        StringBuilder sbA2 = f.a("error: ");
        sbA2.append(e4.getMessage());
        Log.d("ConfigVersionUtils", sbA2.toString());
        return 0L;
    }

    public static int T(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            String[] strArrSplit = str.substring(str.indexOf("V") + 1).split("\\.");
            if (strArrSplit.length == 1) {
                return Integer.parseInt(strArrSplit[0]);
            }
            String strValueOf = String.valueOf(strArrSplit[0]);
            String strValueOf2 = String.valueOf(strArrSplit[1]);
            if (strArrSplit.length == 3) {
                String strValueOf3 = String.valueOf(strArrSplit[2]);
                str2 = strValueOf + strValueOf2 + String.valueOf(strValueOf3.length()) + strValueOf3;
            } else if (strArrSplit.length == 4) {
                String strValueOf4 = String.valueOf(strArrSplit[2]);
                String strValueOf5 = String.valueOf(strValueOf4.length());
                String strValueOf6 = String.valueOf(strArrSplit[3]);
                str2 = strValueOf + strValueOf2 + strValueOf5 + strValueOf4 + String.valueOf(strValueOf6.length()) + strValueOf6;
            } else if (strArrSplit.length == 5) {
                String strValueOf7 = String.valueOf(strArrSplit[2]);
                String strValueOf8 = String.valueOf(strValueOf7.length());
                String strValueOf9 = String.valueOf(strArrSplit[3]);
                str2 = strValueOf + strValueOf2 + strValueOf8 + strValueOf7 + String.valueOf(strValueOf9.length()) + strValueOf9 + String.valueOf(strArrSplit[4]);
            } else {
                str2 = "";
            }
            return Integer.parseInt(str2);
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public static String U(String str) {
        int iR = R(2037, str);
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(iR);
        return (sb.toString().length() != 4 || iR >= 1970) ? android.support.v4.media.d.a("", iR) : "1970";
    }

    public static void V(TextView textView, String str) {
        if (!(textView instanceof EditText)) {
            textView.setText(((Object) textView.getText()) + str);
            return;
        }
        EditText editText = (EditText) textView;
        int selectionStart = editText.getSelectionStart();
        String string = editText.getText().toString();
        if (selectionStart <= 0) {
            editText.setText(str + string);
            editText.setSelection(str.length());
            return;
        }
        if (selectionStart >= string.length()) {
            editText.setText(string + str);
            editText.setSelection(editText.getText().length());
            return;
        }
        editText.setText(string.substring(0, selectionStart) + str + string.substring(selectionStart));
        editText.setSelection(str.length() + selectionStart);
    }

    public static String W(int i4) {
        int i5 = i4 / 8;
        int i6 = i4 % 8;
        int iPow = 0;
        for (int i7 = 8; i7 > 8 - i6; i7--) {
            iPow += (int) Math.pow(2.0d, i7 - 1);
        }
        if (i5 == 0) {
            return iPow + ".0.0.0";
        }
        if (i5 == 1) {
            return androidx.constraintlayout.solver.a.a("255.", iPow, ".0.0");
        }
        if (i5 == 2) {
            return androidx.constraintlayout.solver.a.a("255.255.", iPow, ".0");
        }
        if (i5 == 3) {
            return android.support.v4.media.d.a("255.255.255.", iPow);
        }
        if (i5 == 4) {
            return "255.255.255.255";
        }
        return null;
    }

    public static boolean X(List list) {
        return (list == null || list.isEmpty()) ? false : true;
    }

    public static boolean Y(String str, String str2, String str3, String str4) {
        if (a0(str3, str4, BaseTransientBottomBar.ANIMATION_FADE_DURATION)) {
            return a0(str, str2, BaseTransientBottomBar.ANIMATION_FADE_DURATION);
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00f8 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean Z(cn.huidu.lcd.render.model.ProgramNode r15, java.util.Calendar r16) {
        /*
            Method dump skipped, instruction units count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h.a.Z(cn.huidu.lcd.render.model.ProgramNode, java.util.Calendar):boolean");
    }

    public static void a(TextView textView, TextView textView2, TextView textView3, boolean z3) {
        int iIntValue = Integer.valueOf(textView.getText().toString()).intValue();
        int iIntValue2 = Integer.valueOf(textView2.getText().toString()).intValue();
        int iIntValue3 = Integer.valueOf(textView3.getText().toString()).intValue();
        int i4 = 1;
        int i5 = z3 ? iIntValue + 1 : iIntValue - 1;
        int i6 = iIntValue2 < 12 ? iIntValue2 <= 1 ? 1 : z3 ? iIntValue2 + 1 : iIntValue2 - 1 : 12;
        int iC = c(String.valueOf(i5), String.valueOf(i6));
        if (iIntValue3 >= iC) {
            i4 = iC;
        } else if (iIntValue3 > 1) {
            i4 = z3 ? 1 + iIntValue3 : iIntValue3 - 1;
        }
        textView.setText(String.valueOf(i5));
        textView2.setText(String.valueOf(i6));
        textView3.setText(String.valueOf(i4));
    }

    public static boolean a0(String str, String str2, int i4) {
        int iQ = Q(str);
        int iQ2 = Q(str2);
        if (iQ < iQ2) {
            if (86400 + iQ < iQ2 + i4) {
                return false;
            }
        } else if (86400 + iQ2 < iQ + i4) {
            return false;
        }
        return Math.abs(iQ2 - iQ) > i4;
    }

    public static String b(int i4) {
        int i5 = (-1) << (32 - i4);
        int[] iArr = new int[4];
        for (int i6 = 0; i6 < 4; i6++) {
            iArr[3 - i6] = (i5 >> (i6 * 8)) & 255;
        }
        StringBuilder sbA = f.a("");
        sbA.append(iArr[0]);
        String string = sbA.toString();
        for (int i7 = 1; i7 < 4; i7++) {
            StringBuilder sbA2 = g.a(string, ".");
            sbA2.append(iArr[i7]);
            string = sbA2.toString();
        }
        return string;
    }

    public static boolean b0(String str, String str2, int i4) {
        int iQ = Q(str);
        int iQ2 = Q(str2);
        if (iQ >= iQ2) {
            iQ2 = iQ;
            iQ = iQ2;
        }
        return (iQ + i4 <= iQ2) && ((iQ + 86400) - i4 >= iQ2);
    }

    public static int c(String str, String str2) {
        int iR = R(2037, str);
        int iR2 = R(12, str2);
        boolean z3 = true;
        if (iR2 < 1) {
            iR2 = 1;
        }
        if ((iR % 4 != 0 || iR % 100 == 0) && iR % HttpStatus.BAD_REQUEST_400 != 0) {
            z3 = false;
        }
        return iR2 == 2 ? z3 ? 29 : 28 : (iR2 == 4 || iR2 == 6 || iR2 == 9 || iR2 == 11) ? 30 : 31;
    }

    public static boolean c0(String str, String str2, String str3, String str4) {
        int iQ = Q(str);
        int iQ2 = Q(str2);
        if (iQ2 <= iQ) {
            iQ2 += 86400;
        }
        int iQ3 = Q(str3);
        int iQ4 = Q(str4);
        if (iQ4 <= iQ3) {
            iQ4 += 86400;
        }
        return iQ > iQ3 ? iQ <= iQ4 : iQ2 >= iQ3;
    }

    public static int d(PlayTaskNode playTaskNode) {
        if (playTaskNode == null) {
            return 0;
        }
        int i4 = 0;
        while (i4 < playTaskNode.childCount()) {
            ProgramNode child = playTaskNode.getChild(i4);
            if (child.getDuration() <= 0) {
                playTaskNode.removeChild(child);
                i4--;
            } else {
                for (int i5 = 0; i5 < child.childCount(); i5++) {
                    AreaNode child2 = child.getChild(i5);
                    for (int i6 = 0; i6 < child2.childCount(); i6++) {
                        WidgetNode child3 = child2.getChild(i6);
                        if (child3 instanceof ImageNode) {
                            ImageNode imageNode = (ImageNode) child3;
                            if (imageNode.getEffect() == null) {
                                imageNode.setEffect(new EffectNode());
                            }
                            String imagePath = imageNode.getImagePath();
                            if (!e.u(imagePath)) {
                                h.a("isPlayTaskValid: image file lost: " + imagePath);
                                return -1;
                            }
                        } else if (child3 instanceof VideoNode) {
                            String videoPath = ((VideoNode) child3).getVideoPath();
                            if (!e.u(videoPath)) {
                                h.a("isPlayTaskValid: video file lost: " + videoPath);
                                return -1;
                            }
                        } else if (child3 instanceof TextNode) {
                            TextNode textNode = (TextNode) child3;
                            if (textNode.getEffect() == null) {
                                textNode.setEffect(new EffectNode());
                            }
                            List<String> fileList = textNode.getFileList();
                            if (fileList != null && fileList.size() > 0) {
                                for (String str : fileList) {
                                    if (!e.u(str)) {
                                        h.a("isPlayTaskValid: text file lost: " + str);
                                        return -1;
                                    }
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            i4++;
        }
        return playTaskNode.childCount();
    }

    public static boolean d0(String str) {
        int i4;
        int iIndexOf = str.indexOf(46);
        int i5 = 0;
        int i6 = 0;
        while (i5 < str.length()) {
            if (-1 == iIndexOf) {
                iIndexOf = str.length();
            }
            try {
                i4 = Integer.parseInt(str.substring(i5, iIndexOf));
            } catch (NumberFormatException unused) {
            }
            if (i4 > 255 || i4 < 0) {
                return false;
            }
            i6++;
            i5 = iIndexOf + 1;
            iIndexOf = str.indexOf(46, i5);
        }
        return i6 == 4;
    }

    public static void e(String str) {
        String strValueOf;
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                return;
            }
            switch (iGlGetError) {
                case SimpleResolver.DEFAULT_EDNS_PAYLOADSIZE /* 1280 */:
                    strValueOf = "GL_INVALID_ENUM";
                    break;
                case 1281:
                    strValueOf = "GL_INVALID_VALUE";
                    break;
                case 1282:
                    strValueOf = "GL_INVALID_OPERATION";
                    break;
                case 1283:
                case 1284:
                default:
                    strValueOf = String.valueOf(iGlGetError);
                    break;
                case 1285:
                    strValueOf = "GL_OUT_OF_MEMORY";
                    break;
                case 1286:
                    strValueOf = "GL_INVALID_FRAMEBUFFER_OPERATION";
                    break;
            }
            Log.d("ShaderHelper", str + " error: " + strValueOf);
        }
    }

    public static int e0(String str) {
        int iIndexOf;
        if (!Pattern.compile("(^((\\d|[01]?\\d\\d|2[0-4]\\d|25[0-5])\\.){3}(\\d|[01]?\\d\\d|2[0-4]\\d|25[0-5])$)|^(\\d|[1-2]\\d|3[0-2])$").matcher(str).matches()) {
            return 0;
        }
        int i4 = 0;
        for (String str2 : str.split("\\.")) {
            String string = new StringBuffer(Integer.toBinaryString(Integer.parseInt(str2))).reverse().toString();
            int i5 = 0;
            int i6 = 0;
            while (i5 < string.length() && (iIndexOf = string.indexOf("1", i5)) != -1) {
                i6++;
                i5 = iIndexOf + 1;
            }
            i4 += i6;
        }
        return i4;
    }

    public static int f(int i4, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i4);
        e("glCreateShader");
        if (iGlCreateShader == 0) {
            Log.w("VideoShaderProgram", "Could not create new shader.");
            return 0;
        }
        GLES20.glShaderSource(iGlCreateShader, str);
        e("glShaderSource");
        GLES20.glCompileShader(iGlCreateShader);
        e("glCompileShader");
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        e("glGetShaderiv");
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        GLES20.glDeleteShader(iGlCreateShader);
        e("glDeleteShader");
        Log.d("ShaderHelper", "compileShader: failed!");
        return 0;
    }

    public static void f0(LinearLayoutManager linearLayoutManager, RecyclerView recyclerView, int i4) {
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        if (i4 <= iFindFirstVisibleItemPosition) {
            recyclerView.scrollToPosition(i4);
        } else if (i4 <= iFindLastVisibleItemPosition) {
            recyclerView.scrollBy(0, recyclerView.getChildAt(i4 - iFindFirstVisibleItemPosition).getTop());
        } else {
            recyclerView.scrollToPosition(i4);
        }
    }

    public static void g(TextView textView) {
        try {
            String string = textView.getText().toString();
            if (string.length() == 0) {
                return;
            }
            if (textView instanceof EditText) {
                EditText editText = (EditText) textView;
                int selectionStart = editText.getSelectionStart();
                if (selectionStart > 0) {
                    if (selectionStart < string.length()) {
                        String strSubstring = string.substring(0, selectionStart - 1);
                        editText.setText(strSubstring + string.substring(selectionStart));
                        editText.setSelection(strSubstring.length());
                    } else {
                        String strSubstring2 = string.substring(0, string.length() - 1);
                        editText.setText(strSubstring2);
                        editText.setSelection(strSubstring2.length());
                    }
                }
            } else {
                textView.setText(string.substring(0, string.length() - 1));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void g0(String str, o.c cVar) {
        try {
            if (str.contains("rtt")) {
                String strSubstring = str.substring(str.indexOf("rtt"));
                String[] strArrSplit = strSubstring.substring(strSubstring.indexOf("=") + 2).split("/");
                cVar.f2817e = Float.parseFloat(strArrSplit[0]);
                cVar.f2815c = Float.parseFloat(strArrSplit[1]);
                cVar.f2816d = Float.parseFloat(strArrSplit[2]);
                Float.parseFloat(strArrSplit[3].substring(0, strArrSplit[3].indexOf(" ms")));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:278:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:646:0x066f  */
    /* JADX WARN: Removed duplicated region for block: B:664:0x0692  */
    /* JADX WARN: Removed duplicated region for block: B:665:0x0694  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int h(java.util.List<o.d> r28, int r29) {
        /*
            Method dump skipped, instruction units count: 1768
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h.a.h(java.util.List, int):int");
    }

    public static int h0(String str) {
        if (str == null || str.length() == 0) {
            return 0;
        }
        String[] strArrSplit = str.split("[.]");
        if (strArrSplit.length != 4) {
            return 0;
        }
        byte[] bArr = new byte[4];
        for (int i4 = 0; i4 < 4; i4++) {
            try {
                int i5 = Integer.parseInt(strArrSplit[i4]);
                if (i5 >= 0 && i5 <= 255) {
                    bArr[i4] = (byte) i5;
                }
                return 0;
            } catch (Exception unused) {
            }
        }
        return (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 24);
    }

    public static String i(int i4) {
        return (i4 & 255) + "." + ((i4 >> 8) & 255) + "." + ((i4 >> 16) & 255) + "." + ((i4 >> 24) & 255);
    }

    public static void i0(String str, o.c cVar) {
        try {
            if (str.contains("statistics")) {
                String strSubstring = str.substring(str.indexOf("\n", str.indexOf("statistics")) + 1);
                for (String str2 : strSubstring.substring(0, strSubstring.indexOf("\n")).split(", ")) {
                    if (str2.contains(" packets transmitted")) {
                        cVar.f2813a = Integer.parseInt(str2.substring(0, str2.indexOf(" packets transmitted")));
                    }
                    if (str2.contains(" received")) {
                        cVar.f2814b = Integer.parseInt(str2.substring(0, str2.indexOf(" received")));
                    }
                    if (str2.contains(" errors")) {
                        cVar.f2818f = Integer.parseInt(str2.substring(0, str2.indexOf(" errors")));
                    }
                    if (str2.contains(" packet loss")) {
                        Float.parseFloat(str2.substring(0, str2.indexOf("%")));
                    }
                    if (str2.contains("time")) {
                        cVar.f2819g = Integer.parseInt(str2.substring(str2.lastIndexOf("e") + 2, str2.indexOf("ms")));
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static String j(byte[] bArr) {
        return String.format(Locale.US, "%02x:%02x:%02x:%02x:%02x:%02x", Byte.valueOf(bArr[0]), Byte.valueOf(bArr[1]), Byte.valueOf(bArr[2]), Byte.valueOf(bArr[3]), Byte.valueOf(bArr[4]), Byte.valueOf(bArr[5]));
    }

    public static int j0(String str) {
        try {
            String[] strArrSplit = str.split("\\-|:| ");
            int i4 = Integer.parseInt(strArrSplit[0]);
            int i5 = strArrSplit.length > 1 ? Integer.parseInt(strArrSplit[1]) : 0;
            int i6 = strArrSplit.length > 2 ? Integer.parseInt(strArrSplit[2]) : 0;
            int i7 = strArrSplit.length > 3 ? Integer.parseInt(strArrSplit[3]) : 0;
            int i8 = strArrSplit.length > 4 ? Integer.parseInt(strArrSplit[4]) : 0;
            return (i8 * 60) + (i7 * 3600) + (i6 * 24 * 3600) + (i5 * c(i4 + "", i5 + "") * 24 * 60 * 60) + (strArrSplit.length > 5 ? Integer.parseInt(strArrSplit[5]) : 0);
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public static String k(int i4) {
        String str;
        int i5 = i4 / 60000;
        if (i5 < 0) {
            i5 = -i5;
            str = "-";
        } else {
            str = "+";
        }
        return String.format(Locale.ENGLISH, "%s%02d:%02d", str, Integer.valueOf(i5 / 60), Integer.valueOf(i5 % 60));
    }

    public static int k0(String str) {
        if (str == null) {
            return 0;
        }
        try {
            String[] strArrSplit = str.split(":");
            if (strArrSplit.length < 2) {
                return 0;
            }
            return ((Integer.parseInt(strArrSplit[0]) * 60) + Integer.parseInt(strArrSplit[1])) * 60;
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public static int l(int i4) {
        switch (i4) {
            case 1:
                return 7;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            case 7:
                return 6;
            default:
                return 0;
        }
    }

    public static int l0(String str) {
        try {
            String[] strArrSplit = str.split(":");
            int i4 = Integer.parseInt(strArrSplit[0]);
            return ((strArrSplit.length > 1 ? Integer.parseInt(strArrSplit[1]) : 0) * 60) + (i4 * 60 * 60) + (strArrSplit.length > 2 ? Integer.parseInt(strArrSplit[2]) : 0);
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public static ArrayList<String> m(Context context) {
        return new ArrayList<>(Arrays.asList(context.getResources().getString(R$string.default_type), context.getResources().getString(R$string.customize)));
    }

    public static int m0(String str) {
        if (str == null) {
            return 0;
        }
        if (str.startsWith(UtcDates.UTC) || str.startsWith("GMT")) {
            str = str.substring(3);
        }
        if (str.length() == 0 || !str.matches("[+-]\\d+[:]\\d+")) {
            return 0;
        }
        boolean zStartsWith = str.startsWith("-");
        String[] strArrSplit = str.substring(1).split("[:]");
        if (strArrSplit.length == 2) {
            try {
                int i4 = ((Integer.parseInt(strArrSplit[0]) * 60) + Integer.parseInt(strArrSplit[1])) * 60 * 1000;
                return zStartsWith ? -i4 : i4;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return 0;
    }

    public static String n() {
        return new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(new Date());
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static o.c n0(int r7, int r8, java.lang.String r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h.a.n0(int, int, java.lang.String):o.c");
    }

    public static String o() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(System.currentTimeMillis()));
    }

    public static long o0(byte[] bArr, int i4) {
        int i5 = bArr[i4];
        int i6 = bArr[i4 + 1];
        int i7 = bArr[i4 + 2];
        int i8 = bArr[i4 + 3];
        if ((i5 & 128) == 128) {
            i5 = (i5 & WKSRecord.Service.LOCUS_CON) + 128;
        }
        if ((i6 & 128) == 128) {
            i6 = (i6 & WKSRecord.Service.LOCUS_CON) + 128;
        }
        if ((i7 & 128) == 128) {
            i7 = (i7 & WKSRecord.Service.LOCUS_CON) + 128;
        }
        if ((i8 & 128) == 128) {
            i8 = (i8 & WKSRecord.Service.LOCUS_CON) + 128;
        }
        return (((long) i5) << 24) + (((long) i6) << 16) + (((long) i7) << 8) + ((long) i8);
    }

    public static int p() {
        Calendar calendar = Calendar.getInstance();
        int i4 = calendar.get(1);
        int i5 = calendar.get(2);
        int i6 = calendar.get(5);
        int i7 = calendar.get(11);
        int i8 = calendar.get(12);
        int i9 = calendar.get(13);
        String str = i4 + "";
        StringBuilder sb = new StringBuilder();
        int i10 = i5 + 1;
        sb.append(i10);
        sb.append("");
        return (i8 * 60) + (i7 * 3600) + (i6 * 24 * 3600) + (c(str, sb.toString()) * i10 * 24 * 60 * 60) + i9;
    }

    public static long p0(byte[] bArr, int i4) {
        long jO0 = o0(bArr, i4);
        long jO02 = o0(bArr, i4 + 4);
        if (jO0 == 0 && jO02 == 0) {
            return 0L;
        }
        double d4 = jO02;
        Double.isNaN(d4);
        return ((jO0 - 2208988800L) * 1000) + Math.round((d4 * 1000.0d) / 4.294967296E9d);
    }

    public static int q() {
        Calendar calendar = Calendar.getInstance();
        int i4 = calendar.get(11);
        return (calendar.get(12) * 60) + (i4 * 3600) + calendar.get(13);
    }

    public static void q0(Object obj) {
        boolean zContainsKey;
        try {
            c cVarB = c.b();
            synchronized (cVarB) {
                zContainsKey = cVarB.f1739b.containsKey(obj);
            }
            if (zContainsKey) {
                return;
            }
            c.b().j(obj);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static int r() {
        return l(Calendar.getInstance().get(7));
    }

    public static boolean r0(String str, String str2) {
        try {
            Class.forName("android.os.SystemProperties").getMethod("set", String.class, String.class).invoke(null, str, str2);
            return true;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static int s(d dVar) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date date = simpleDateFormat.parse(dVar.f2831l);
            Date date2 = simpleDateFormat.parse(dVar.f2832m);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (date.getTime() <= date2.getTime()) {
                while (date.getTime() <= date2.getTime()) {
                    int day = date.getDay();
                    if (day == 0) {
                        day = 7;
                    }
                    arrayList.add(Integer.valueOf(day));
                    if (arrayList.size() == 14) {
                        break;
                    }
                    date.setTime(date.getTime() + 86400000);
                }
            } else {
                while (date.getTime() >= date2.getTime()) {
                    int day2 = date2.getDay();
                    if (day2 == 0) {
                        day2 = 7;
                    }
                    arrayList.add(Integer.valueOf(day2));
                    if (arrayList.size() == 14) {
                        break;
                    }
                    date2.setTime(date2.getTime() + 86400000);
                }
            }
            if (dVar.f2823d) {
                arrayList2.add(1);
            }
            if (dVar.f2824e) {
                arrayList2.add(2);
            }
            if (dVar.f2825f) {
                arrayList2.add(3);
            }
            if (dVar.f2826g) {
                arrayList2.add(4);
            }
            if (dVar.f2827h) {
                arrayList2.add(5);
            }
            if (dVar.f2828i) {
                arrayList2.add(6);
            }
            if (dVar.f2829j) {
                arrayList2.add(7);
            }
            int i4 = 0;
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                    if (((Integer) arrayList.get(i5)).intValue() == ((Integer) arrayList2.get(i6)).intValue()) {
                        i4++;
                    }
                }
            }
            return i4;
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public static void s0(FloatBuffer floatBuffer, float f4, float f5, float f6, float f7) {
        floatBuffer.position(0);
        floatBuffer.put(f4);
        floatBuffer.put(f7);
        floatBuffer.put(f5);
        floatBuffer.put(f7);
        floatBuffer.put(f4);
        floatBuffer.put(f6);
        floatBuffer.put(f5);
        floatBuffer.put(f6);
    }

    public static String t(String str, int i4) {
        if (str != null) {
            String[] strArrSplit = str.split("-");
            if (strArrSplit.length > i4) {
                return strArrSplit[i4];
            }
        }
        return "0";
    }

    public static void t0(Context context, String str) {
        Log.d("MiracastUtils", "startMiracastService: ");
        try {
            Intent intent = new Intent();
            intent.setPackage("com.rockchip.wfd");
            intent.setAction("com.rockchip.wfd.service");
            intent.putExtra("friendlyname", str);
            context.startService(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static String u(int i4, String str) {
        int iR = R(i4, str);
        return iR == 0 ? "1" : android.support.v4.media.d.a("", iR);
    }

    public static int u0(int i4, int i5) {
        if (i5 != 1 || cn.huidu.lcd.core.a.f337c == 103) {
            return 1;
        }
        return i4 % 10 == 0 ? 6 : 7;
    }

    public static String v(String str) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) w0.c.a("connectivity")).getActiveNetworkInfo();
        String strZ = (activeNetworkInfo == null || activeNetworkInfo.getType() != 9) ? null : z("eth0");
        return strZ != null ? strZ : str;
    }

    public static int v0(int i4, int i5) {
        if (i5 != 1 || cn.huidu.lcd.core.a.f337c == 103) {
            return 1;
        }
        if (i4 % 10 == 0 || (i4 + 7) % 10 == 0) {
            return 7;
        }
        return (i4 + 4) % 10 == 0 ? 6 : 1;
    }

    public static String w(String str) {
        int iR = R(23, str);
        return iR < 10 ? android.support.v4.media.d.a("0", iR) : android.support.v4.media.d.a("", iR);
    }

    public static void w0(Context context) {
        Log.d("MiracastUtils", "stopMiracastService: ");
        try {
            Intent intent = new Intent();
            intent.setPackage("com.rockchip.wfd");
            intent.setAction("com.rockchip.wfd.service");
            context.stopService(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static Inet4Address x(String str) {
        try {
            return (Inet4Address) Inet4Address.getByName(str);
        } catch (ClassCastException | IllegalArgumentException | UnknownHostException unused) {
            return null;
        }
    }

    public static void x0(TextView textView, TextView textView2, boolean z3) {
        int i4;
        int iIntValue = Integer.valueOf(textView.getText().toString()).intValue();
        int iIntValue2 = Integer.valueOf(textView2.getText().toString()).intValue();
        if (z3) {
            i4 = iIntValue2 + 30;
            if (i4 > 59) {
                i4 -= 60;
                iIntValue++;
                if (iIntValue > 23) {
                    iIntValue -= 24;
                }
            }
        } else {
            i4 = iIntValue2 - 30;
            if (i4 < 0) {
                i4 += 60;
                iIntValue--;
                if (iIntValue < 0) {
                    iIntValue += 24;
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        if (iIntValue < 10) {
            sb.append("0");
        } else {
            sb.append("");
        }
        sb.append(iIntValue);
        textView.setText(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        if (i4 < 10) {
            sb2.append("0");
        } else {
            sb2.append("");
        }
        sb2.append(i4);
        textView2.setText(sb2.toString());
    }

    public static String y() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) w0.c.a("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return null;
        }
        if (activeNetworkInfo.getType() == 9) {
            return z("eth0");
        }
        if (activeNetworkInfo.getType() == 1) {
            return z("wlan0");
        }
        if (activeNetworkInfo.getType() == 0) {
            return z("usb0") != null ? z("usb0") : z("ppp0") != null ? z("ppp0") : z("wwan0") != null ? z("wwan0") : z("eth1");
        }
        return null;
    }

    public static String y0(Object obj) {
        try {
            return new i().h(obj);
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static String z(String str) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) w0.c.a("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return null;
            }
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if (str.equals(networkInterfaceNextElement.getName())) {
                    Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                        if ((inetAddressNextElement instanceof Inet4Address) && !inetAddressNextElement.isLoopbackAddress() && activeNetworkInfo.isConnected()) {
                            return inetAddressNextElement.getHostAddress();
                        }
                    }
                }
            }
        } catch (SocketException e4) {
            e4.printStackTrace();
        }
        return null;
    }

    public static <T> List<T> z0(Object obj, Type type) {
        List<T> list;
        try {
            i iVar = new i();
            if (obj instanceof String) {
                list = (List) iVar.c((String) obj, type);
            } else {
                n nVarK = iVar.k(obj);
                list = (List) (nVarK == null ? null : iVar.b(new w1.e(nVarK), type));
            }
            return list;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
