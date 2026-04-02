package q0;

import android.support.v4.media.h;
import android.util.Log;
import cn.huidu.lcd.transmit.model.cache.UpgradeCache;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import l.l;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.util.StringUtil;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import t1.i;
import x2.m;
import x2.r;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static int A(String str, Throwable th) {
        return Log.w("greenDAO", str, th);
    }

    public static <T> Class<T> B(Class<T> cls) {
        return cls == Integer.TYPE ? Integer.class : cls == Float.TYPE ? Float.class : cls == Byte.TYPE ? Byte.class : cls == Double.TYPE ? Double.class : cls == Long.TYPE ? Long.class : cls == Character.TYPE ? Character.class : cls == Boolean.TYPE ? Boolean.class : cls == Short.TYPE ? Short.class : cls == Void.TYPE ? Void.class : cls;
    }

    public static void a(boolean z3) {
        if (!z3) {
            throw new IllegalArgumentException();
        }
    }

    public static boolean b() {
        boolean z3;
        if (l.e.d(l.e.o())) {
            z3 = true;
        } else {
            Log.w("CommandUtils", "clearPlayTask:: delete PlayTask dir failed!");
            z3 = false;
        }
        l lVarE = l.e();
        synchronized (lVarE.f2357a) {
            lVarE.f2357a.clear();
        }
        lVarE.k();
        File fileF = lVarE.f();
        l.e.d(fileF);
        File fileR = l.e.r();
        if (!fileR.getAbsolutePath().equals(fileF.getAbsolutePath())) {
            l.e.d(fileR);
        }
        return z3;
    }

    public static byte[] c(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        byte[] bArr = new byte[iPosition];
        System.arraycopy(byteBuffer.array(), 0, bArr, 0, iPosition);
        return bArr;
    }

    public static Document d() {
        try {
            return DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
        } catch (ParserConfigurationException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static m e(int i4) {
        return (i4 == 4 || i4 == 5) ? new r(i4) : new m(i4);
    }

    public static int f(String str) {
        return Log.d("greenDAO", str);
    }

    public static boolean g(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static Element h(Element element, String str) {
        NodeList elementsByTagName = element.getElementsByTagName(str);
        if (elementsByTagName == null || elementsByTagName.getLength() == 0) {
            return null;
        }
        return (Element) elementsByTagName.item(0);
    }

    public static byte[] i(String str) {
        byte[] bytes = str.getBytes();
        byte[] bArr = new byte[15];
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        return bArr;
    }

    public static String j(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 15) {
            Log.w("DataUtils", "getCardId: buffer remaining is not enough!");
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        for (int i4 = 0; i4 < 15; i4++) {
            char c4 = (char) byteBuffer.get();
            if (c4 == 0) {
                z3 = true;
            }
            if (!z3) {
                sb.append(c4);
            }
        }
        return sb.toString().replace("\\n", "").trim();
    }

    public static List<Element> k(Element element) {
        ArrayList arrayList = new ArrayList();
        NodeList childNodes = element.getChildNodes();
        for (int i4 = 0; i4 < childNodes.getLength(); i4++) {
            Node nodeItem = childNodes.item(i4);
            if (nodeItem instanceof Element) {
                arrayList.add((Element) nodeItem);
            }
        }
        return arrayList;
    }

    public static int l(Element element, String str) {
        if (element == null || !element.hasAttribute(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(element.getAttribute(str));
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String m(ByteBuffer byteBuffer) {
        byte b4;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (byteBuffer.remaining() > 0 && (b4 = byteBuffer.get()) != 0) {
            byteArrayOutputStream.write(b4);
        }
        return byteArrayOutputStream.toString();
    }

    public static byte[] n(byte[] bArr, int i4, int i5) {
        byte[] bArr2 = new byte[i5];
        System.arraycopy(bArr, i4, bArr2, 0, i5);
        return bArr2;
    }

    public static boolean o(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean p(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean q(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean r(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static Document s(File file) {
        if (file == null || !file.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(fileInputStream);
                fileInputStream.close();
                return document;
            } finally {
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static <T> T t(Object obj, Class<T> cls, String str) throws r0.a {
        if (obj == null) {
            throw new r0.a(h.a("[", str, "] cannot be null"));
        }
        try {
            i iVar = new i();
            if (!(obj instanceof String)) {
                return (T) iVar.d(iVar.k(obj), cls);
            }
            return (T) B(cls).cast(iVar.c((String) obj, cls));
        } catch (Exception e4) {
            e4.printStackTrace();
            StringBuilder sbA = androidx.appcompat.view.b.a("parse [", str, "] failed: ");
            sbA.append(e4.getMessage());
            throw new r0.a(sbA.toString());
        }
    }

    public static boolean u(String str) {
        return (str.equals(HttpMethods.GET) || str.equals(HttpMethods.HEAD)) ? false : true;
    }

    public static void v(Document document, OutputStream outputStream, boolean z3) throws TransformerException {
        Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
        transformerNewTransformer.setOutputProperty("encoding", StringUtil.__UTF8);
        transformerNewTransformer.setOutputProperty("method", "xml");
        transformerNewTransformer.setOutputProperty("indent", z3 ? "yes" : "no");
        transformerNewTransformer.transform(new DOMSource(document), new StreamResult(outputStream));
    }

    public static boolean w(Document document, File file, boolean z3) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                v(document, fileOutputStream, z3);
                fileOutputStream.getFD().sync();
                fileOutputStream.close();
                return true;
            } finally {
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static boolean x(UpgradeCache upgradeCache) {
        return l.e.D(h.a.y0(upgradeCache), new File(l.e.w(l.e.f(), "Transmit"), "UpgradeCache.json"));
    }

    public static String y(Object obj) throws r0.b {
        try {
            return new i().h(obj);
        } catch (Exception e4) {
            e4.printStackTrace();
            throw new r0.b("kInternalError", "object to json failed: " + obj);
        }
    }

    public static void z(String str, boolean z3) {
        int i4;
        try {
            int length = str.getBytes(StringUtil.__UTF8).length;
            boolean z4 = false;
            if (length < 1 || length > 65535) {
                throw new IllegalArgumentException(String.format("Invalid topic length, should be in range[%d, %d]!", 1, 65535));
            }
            if (!z3) {
                char[] charArray = "#+".toCharArray();
                if (!q(str)) {
                    if (!(charArray == null || charArray.length == 0)) {
                        int length2 = str.length();
                        int length3 = charArray.length;
                        int i5 = length2 - 1;
                        int i6 = length3 - 1;
                        loop3: for (int i7 = 0; i7 < length2; i7++) {
                            char cCharAt = str.charAt(i7);
                            for (int i8 = 0; i8 < length3; i8++) {
                                if (charArray[i8] == cCharAt && (!Character.isHighSurrogate(cCharAt) || i8 == i6 || (i7 < i5 && charArray[i8 + 1] == str.charAt(i7 + 1)))) {
                                    z4 = true;
                                    break loop3;
                                }
                            }
                        }
                    }
                }
                if (z4) {
                    throw new IllegalArgumentException("The topic name MUST NOT contain any wildcard characters (#+)");
                }
                return;
            }
            String[] strArr = {"#", "+"};
            boolean z5 = false;
            for (int i9 = 0; i9 < 2; i9++) {
                z5 = z5 || strArr[i9].equals(str);
            }
            if (z5) {
                return;
            }
            if (q(str) || q("#")) {
                i4 = 0;
            } else {
                int length4 = 0;
                i4 = 0;
                while (true) {
                    int iIndexOf = str.toString().indexOf("#".toString(), length4);
                    if (iIndexOf == -1) {
                        break;
                    }
                    i4++;
                    length4 = iIndexOf + "#".length();
                }
            }
            if (i4 > 1 || (str.contains("#") && !str.endsWith("/#"))) {
                throw new IllegalArgumentException("Invalid usage of multi-level wildcard in topic string: " + str);
            }
            char cCharAt2 = "+".charAt(0);
            char cCharAt3 = "/".charAt(0);
            char[] charArray2 = str.toCharArray();
            int length5 = charArray2.length;
            int i10 = 0;
            while (i10 < length5) {
                int i11 = i10 - 1;
                char c4 = i11 >= 0 ? charArray2[i11] : (char) 0;
                int i12 = i10 + 1;
                char c5 = i12 < length5 ? charArray2[i12] : (char) 0;
                if (charArray2[i10] == cCharAt2 && ((c4 != cCharAt3 && c4 != 0) || (c5 != cCharAt3 && c5 != 0))) {
                    throw new IllegalArgumentException(String.format("Invalid usage of single-level wildcard in topic string '%s'!", str));
                }
                i10 = i12;
            }
        } catch (UnsupportedEncodingException e4) {
            throw new IllegalStateException(e4.getMessage());
        }
    }
}
