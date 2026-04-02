package com.example.digitalkiosk.msprintsdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.media.ThumbnailUtils;
import android.util.Base64;
import android.util.Log;
import com.google.zxing.common.StringUtils;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import com.sun.jna.platform.win32.Winspool;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.regex.Pattern;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EncodingUtils;

/* JADX INFO: loaded from: classes.dex */
public class UtilsTools {
    private static String hexString = "0123456789ABCDEF";

    public static int isOdd(int i) {
        return i & 1;
    }

    public static Bitmap convertToBlackWhite(Bitmap bitmap) {
        System.out.println(bitmap.getConfig());
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = width > 640 ? 640 : width;
        int i2 = i * height;
        int[] iArr = new int[i2];
        bitmap.getPixels(iArr, 0, i, 0, 0, i, height);
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < height; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                int i5 = (i * i3) + i4;
                try {
                    iArr2[i5] = (iArr[i5] & Winspool.PRINTER_ENUM_ICONMASK) >> 16;
                } catch (Exception e) {
                    Log.e("ContentValues", "PrintBmp:" + e.getMessage());
                }
            }
        }
        for (int i6 = 0; i6 < height; i6++) {
            for (int i7 = 0; i7 < i; i7++) {
                int i8 = (i * i6) + i7;
                int i9 = iArr2[i8];
                if (i9 >= 128) {
                    iArr[i8] = -1;
                    i9 -= 255;
                } else {
                    iArr[i8] = -16777216;
                }
                int i10 = i - 1;
                if (i7 < i10 && i6 < height - 1) {
                    int i11 = i8 + 1;
                    int i12 = (i9 * 3) / 8;
                    iArr2[i11] = iArr2[i11] + i12;
                    int i13 = ((i6 + 1) * i) + i7;
                    iArr2[i13] = iArr2[i13] + i12;
                    int i14 = i13 + 1;
                    iArr2[i14] = iArr2[i14] + (i9 / 4);
                } else if (i7 == i10 && i6 < height - 1) {
                    int i15 = ((i6 + 1) * i) + i7;
                    iArr2[i15] = iArr2[i15] + ((i9 * 3) / 8);
                } else if (i7 < i10 && i6 == height - 1) {
                    int i16 = i8 + 1;
                    iArr2[i16] = iArr2[i16] + (i9 / 4);
                }
            }
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, height, Bitmap.Config.RGB_565);
        bitmapCreateBitmap.setPixels(iArr, 0, i, 0, 0, i, height);
        return ThumbnailUtils.extractThumbnail(bitmapCreateBitmap, i, height);
    }

    public static int saveBmpFile(Bitmap bitmap, String str) {
        if (bitmap == null) {
            return -1;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = width * 3;
        int i2 = ((width % 4) + i) * height;
        try {
            File file = new File(str);
            if (!file.exists()) {
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            writeWord(fileOutputStream, 19778);
            writeDword(fileOutputStream, i2 + 54);
            writeWord(fileOutputStream, 0);
            writeWord(fileOutputStream, 0);
            writeDword(fileOutputStream, 54L);
            writeDword(fileOutputStream, 40L);
            writeLong(fileOutputStream, width);
            writeLong(fileOutputStream, height);
            writeWord(fileOutputStream, 1);
            writeWord(fileOutputStream, 24);
            writeDword(fileOutputStream, 0L);
            writeDword(fileOutputStream, 0L);
            writeLong(fileOutputStream, 0L);
            writeLong(fileOutputStream, 0L);
            writeDword(fileOutputStream, 0L);
            writeDword(fileOutputStream, 0L);
            byte[] bArr = new byte[i2];
            int i3 = i + (width % 4);
            int i4 = height - 1;
            int i5 = 0;
            while (i5 < height) {
                int i6 = 0;
                int i7 = 0;
                while (i6 < width) {
                    int pixel = bitmap.getPixel(i6, i5);
                    int i8 = (i4 * i3) + i7;
                    bArr[i8] = (byte) Color.blue(pixel);
                    bArr[i8 + 1] = (byte) Color.green(pixel);
                    bArr[i8 + 2] = (byte) Color.red(pixel);
                    i6++;
                    i7 += 3;
                }
                i5++;
                i4--;
            }
            fileOutputStream.write(bArr);
            fileOutputStream.flush();
            fileOutputStream.close();
            return 0;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return -1;
        } catch (IOException e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    protected static void writeWord(FileOutputStream fileOutputStream, int i) throws IOException {
        fileOutputStream.write(new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255)});
    }

    protected static void writeDword(FileOutputStream fileOutputStream, long j) throws IOException {
        fileOutputStream.write(new byte[]{(byte) (j & 255), (byte) ((j >> 8) & 255), (byte) ((j >> 16) & 255), (byte) ((j >> 24) & 255)});
    }

    protected static void writeLong(FileOutputStream fileOutputStream, long j) throws IOException {
        fileOutputStream.write(new byte[]{(byte) (j & 255), (byte) ((j >> 8) & 255), (byte) ((j >> 16) & 255), (byte) ((j >> 24) & 255)});
    }

    public static String readTxt(String str) {
        String str2 = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File(str)), HTTP.UTF_8));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return str2;
                }
                str2 = str2 + line;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return str2;
        }
    }

    public static String encodeCN(String str) {
        try {
            byte[] bytes = str.getBytes("gbk");
            StringBuilder sb = new StringBuilder(bytes.length * 2);
            for (int i = 0; i < bytes.length; i++) {
                sb.append(hexString.charAt((bytes[i] & 240) >> 4));
                sb.append(hexString.charAt(bytes[i] & 15));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String encodeStr(String str) {
        try {
            String str2 = "";
            for (byte b : str.getBytes("gbk")) {
                str2 = str2 + Integer.toString((b & 255) + 256, 16).substring(1);
            }
            return str2;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean isCN(String str) {
        return str.matches("^[一-龥]*$");
    }

    public static String getExtensionName(String str) {
        int iLastIndexOf;
        return (str == null || str.length() <= 0 || (iLastIndexOf = str.lastIndexOf(46)) <= -1 || iLastIndexOf >= str.length() + (-1)) ? str : str.substring(iLastIndexOf + 1);
    }

    private static byte[] hexStr2Bytesnoenter(String str) {
        String[] strArrSplit = str.split(" ");
        byte[] bArr = new byte[strArrSplit.length];
        for (int i = 0; i < strArrSplit.length; i++) {
            bArr[i] = Integer.decode("0x" + strArrSplit[i]).byteValue();
        }
        return bArr;
    }

    public static int[] bytesToInt(byte[] bArr, int i) {
        int[] iArr = new int[bArr.length / 4];
        for (int i2 = 0; i2 < bArr.length / 4; i2++) {
            iArr[i2] = (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
            i += 4;
        }
        return iArr;
    }

    public static String bytesToHex(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            String hexString2 = Integer.toHexString(b & 255);
            if (hexString2.length() < 2) {
                stringBuffer.append(0);
            }
            stringBuffer.append(hexString2);
        }
        return stringBuffer.toString();
    }

    public static String unicodeToUtf8(String str) {
        Log.e("TAG", getEncoding(str));
        try {
            if (getEncoding(str) == HTTP.UTF_8) {
                return new String(str.getBytes("GBK"), HTTP.UTF_8);
            }
            if (getEncoding(str) != "GBK" && getEncoding(str) != StringUtils.GB2312) {
                if (getEncoding(str) == "ISO-8859-1") {
                    return new String(str.getBytes("ISO-8859-1"), HTTP.UTF_8);
                }
                return null;
            }
            return new String(str.getBytes("GBK"), "GBK");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getEncoding(String str) {
        try {
            if (str.equals(new String(str.getBytes(StringUtils.GB2312), StringUtils.GB2312))) {
                return StringUtils.GB2312;
            }
        } catch (Exception unused) {
        }
        try {
            if (str.equals(new String(str.getBytes("ISO-8859-1"), "ISO-8859-1"))) {
                return "ISO-8859-1";
            }
        } catch (Exception unused2) {
        }
        try {
            if (str.equals(new String(str.getBytes(HTTP.UTF_8), HTTP.UTF_8))) {
                return HTTP.UTF_8;
            }
        } catch (Exception unused3) {
        }
        try {
            if (str.equals(new String(str.getBytes("GBK"), "GBK"))) {
                return "GBK";
            }
            return "";
        } catch (Exception unused4) {
            return "";
        }
    }

    public static byte[] byteSub(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        if (i + i2 > bArr.length) {
            bArr2 = new byte[bArr.length - i];
        }
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 + i;
            if (i4 >= bArr.length) {
                break;
            }
            bArr2[i3] = bArr[i4];
        }
        return bArr2;
    }

    public static boolean isHexStrValid(String str) {
        return Pattern.compile("^[0-9A-F]+$").matcher(str).matches();
    }

    public static byte[] hexToByteArr(String str) {
        byte[] bArr;
        int length = str.length();
        if (isOdd(length) == 1) {
            length++;
            bArr = new byte[length / 2];
            str = TlbConst.TYPELIB_MINOR_VERSION_SHELL + str;
        } else {
            bArr = new byte[length / 2];
        }
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i + 2;
            bArr[i2] = hexToByte(str.substring(i, i3));
            i2++;
            i = i3;
        }
        return bArr;
    }

    public static byte hexToByte(String str) {
        return (byte) Integer.parseInt(str, 16);
    }

    public static byte[] PrintBase64(String str) {
        Bitmap bitmapConvertToBlackWhite;
        Bitmap bitmapDecodeByteArray = null;
        try {
            byte[] bArrDecode = Base64.decode(readTxt(str).trim().split(",")[1], 0);
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
            bitmapConvertToBlackWhite = convertToBlackWhite(bitmapDecodeByteArray);
        } catch (Exception e) {
            e.printStackTrace();
            bitmapConvertToBlackWhite = bitmapDecodeByteArray;
        }
        int width = bitmapConvertToBlackWhite.getWidth();
        int height = bitmapConvertToBlackWhite.getHeight();
        int[] iArr = new int[width * height];
        bitmapConvertToBlackWhite.getPixels(iArr, 0, width, 0, 0, width, height);
        return PrintCmd.PrintDiskImagefile(iArr, width, height);
    }

    public static int[] getBitmapParamsData(String str) {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(str);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            fileInputStream = null;
        }
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream);
        System.out.println(str.substring(str.indexOf(".") + 1));
        if (!str.substring(str.indexOf(".") + 1).equals("bmp")) {
            bitmapDecodeStream = convertToBlackWhite(bitmapDecodeStream);
        }
        Bitmap bitmap = bitmapDecodeStream;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        return iArr;
    }

    public static byte[] hexStringToBytes(String str) {
        String[] strArrSplit = str.toLowerCase().split(" ");
        byte[] bArr = new byte[strArrSplit.length];
        for (int i = 0; i < strArrSplit.length; i++) {
            char[] charArray = strArrSplit[i].toCharArray();
            bArr[i] = (byte) (charToByte(charArray[1]) | (charToByte(charArray[0]) << 4));
        }
        return bArr;
    }

    private static byte charToByte(char c) {
        return (byte) "0123456789abcdef".indexOf(c);
    }

    public static String byteArrToHex(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(Byte2Hex(Byte.valueOf(b)));
            sb.append(" ");
        }
        return sb.toString();
    }

    public static String Byte2Hex(Byte b) {
        return String.format("%02x", b).toUpperCase();
    }

    public static String ReadTxtFile(String str) {
        new ArrayList();
        if (new File(str).isDirectory()) {
            Log.d("TestFile", "The File doesn't not exist.");
            return "";
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            byte[] bArr = new byte[fileInputStream.available()];
            fileInputStream.read(bArr);
            return EncodingUtils.getString(bArr, codetype(bArr));
        } catch (FileNotFoundException unused) {
            Log.d("TestFile", "The File doesn't not exist.");
            return "";
        } catch (IOException e) {
            Log.d("TestFile", e.getMessage());
            return "";
        }
    }

    private static String codetype(byte[] bArr) {
        byte[] bArr2 = new byte[3];
        System.arraycopy(bArr, 0, bArr2, 0, 3);
        byte b = bArr2[0];
        if (b == -1 && bArr2[1] == -2) {
            return HTTP.UTF_16;
        }
        if (b == -2 && bArr2[1] == -1) {
            return "UNICODE";
        }
        if (b == -17 && bArr2[1] == -69 && bArr2[2] == -65) {
            return HTTP.UTF_8;
        }
        return StringUtils.GB2312;
    }

    public static String getFromRaw(InputStream inputStream) {
        try {
            byte[] bArr = new byte[inputStream.available()];
            inputStream.read(bArr);
            return EncodingUtils.getString(bArr, "encoding");
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String data() {
        return new SimpleDateFormat("yyyy/MM/dd HH:mm:ss ").format(new Date());
    }
}
