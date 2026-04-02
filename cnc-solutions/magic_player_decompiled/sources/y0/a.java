package y0;

import android.support.v4.media.f;
import android.util.Log;
import androidx.annotation.Nullable;
import cn.huidu.lcd.render.model.NodeTags;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xbill.DNS.WKSRecord;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: y0.a$a, reason: collision with other inner class name */
    public interface InterfaceC0057a {
    }

    public static void a(Class cls, List<Field> list) {
        try {
            for (Field field : cls.getDeclaredFields()) {
                if ((field.getModifiers() & WKSRecord.Service.PROFILE) == 0) {
                    list.add(field);
                }
            }
            Class superclass = cls.getSuperclass();
            if (superclass != null) {
                a(superclass, list);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [T, java.lang.Object[]] */
    public static <T> T b(Class<T> cls, Element element, InterfaceC0057a interfaceC0057a) {
        String[] strArrSplit;
        int length;
        try {
            Class<?> componentType = cls.getComponentType();
            int i4 = 0;
            if (!componentType.isPrimitive()) {
                ArrayList arrayList = (ArrayList) q0.a.k(element);
                ?? r12 = (T) ((Object[]) Array.newInstance(componentType, arrayList.size()));
                while (i4 < arrayList.size()) {
                    Element element2 = (Element) arrayList.get(i4);
                    Class clsG = g(interfaceC0057a, element2.getTagName(), componentType);
                    if (clsG == null) {
                        break;
                    }
                    r12[i4] = o(element2, clsG, interfaceC0057a);
                    i4++;
                }
                return r12;
            }
            String strH = h(element);
            if (strH == null || strH.length() == 0) {
                strArrSplit = null;
                length = 0;
            } else {
                strArrSplit = strH.split("[|]");
                length = strArrSplit.length;
            }
            T t3 = (T) Array.newInstance(componentType, length);
            if (t3 instanceof byte[]) {
                while (i4 < length) {
                    ((byte[]) t3)[i4] = Byte.parseByte(strArrSplit[i4]);
                    i4++;
                }
            } else if (t3 instanceof int[]) {
                while (i4 < length) {
                    ((int[]) t3)[i4] = Integer.parseInt(strArrSplit[i4]);
                    i4++;
                }
            } else if (t3 instanceof long[]) {
                while (i4 < length) {
                    ((long[]) t3)[i4] = Long.parseLong(strArrSplit[i4]);
                    i4++;
                }
            } else if (t3 instanceof short[]) {
                while (i4 < length) {
                    ((short[]) t3)[i4] = Short.parseShort(strArrSplit[i4]);
                    i4++;
                }
            } else if (t3 instanceof float[]) {
                while (i4 < length) {
                    ((float[]) t3)[i4] = Float.parseFloat(strArrSplit[i4]);
                    i4++;
                }
            } else if (t3 instanceof double[]) {
                while (i4 < length) {
                    ((double[]) t3)[i4] = Double.parseDouble(strArrSplit[i4]);
                    i4++;
                }
            } else if (t3 instanceof boolean[]) {
                while (i4 < length) {
                    ((boolean[]) t3)[i4] = Boolean.parseBoolean(strArrSplit[i4]);
                    i4++;
                }
            } else if (t3 instanceof char[]) {
                for (int i5 = 0; i5 < length; i5++) {
                    ((char[]) t3)[i5] = strArrSplit[i5].charAt(0);
                }
            }
            return t3;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static Element c(@Nullable String str, Object obj, Document document) {
        Element elementCreateElement = document.createElement("Array");
        if (str != null) {
            elementCreateElement.setAttribute("name", str);
        }
        int i4 = 0;
        if (obj.getClass().getComponentType().isPrimitive()) {
            StringBuilder sb = new StringBuilder();
            while (i4 < Array.getLength(obj)) {
                if (i4 > 0) {
                    sb.append("|");
                }
                sb.append(Array.get(obj, i4));
                i4++;
            }
            elementCreateElement.setAttribute("value", sb.toString());
        } else {
            while (i4 < Array.getLength(obj)) {
                Element elementP = p(null, Array.get(obj, i4), elementCreateElement.getOwnerDocument());
                if (elementP != null) {
                    elementCreateElement.appendChild(elementP);
                }
                i4++;
            }
        }
        return elementCreateElement;
    }

    public static String d(String str) {
        if (str == null) {
            return null;
        }
        return str.replace("&lt;", "<").replace("&gt;", ">").replace("&apos;", "'").replace("&quot;", "\"").replace("&amp;", "&");
    }

    public static String e(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < str.length(); i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt >= '\t' && ((cCharAt <= '\n' || cCharAt >= '\r') && ((cCharAt <= '\r' || cCharAt >= ' ') && ((cCharAt <= 55295 || cCharAt >= 57344) && cCharAt != 65534 && cCharAt != 65535)))) {
                if (cCharAt == '&') {
                    sb.append("&amp;");
                } else if (cCharAt == '<') {
                    sb.append("&lt;");
                } else if (cCharAt == '>') {
                    sb.append("&gt;");
                } else if (cCharAt == '\"') {
                    sb.append("&apos;");
                } else if (cCharAt == '\'') {
                    sb.append("&quot;");
                } else {
                    sb.append(cCharAt);
                }
            }
        }
        return sb.toString();
    }

    public static Element f(List<Element> list, String str) {
        if (str == null) {
            return null;
        }
        for (Element element : list) {
            String attribute = element.getAttribute("name");
            if (k(attribute)) {
                attribute = element.getAttribute("id");
            }
            if (str.equals(attribute)) {
                return element;
            }
        }
        return null;
    }

    public static Class g(InterfaceC0057a interfaceC0057a, String str, Class cls) {
        Class classByTag;
        return (interfaceC0057a == null || (classByTag = NodeTags.getClassByTag(str)) == null) ? cls : classByTag;
    }

    public static String h(Element element) {
        String attribute = element.getAttribute("value");
        return k(attribute) ? element.getTextContent() : attribute;
    }

    public static Class i(Field field, int i4) {
        Type genericType = field.getGenericType();
        if (!(genericType instanceof ParameterizedType)) {
            return null;
        }
        Type[] actualTypeArguments = ((ParameterizedType) genericType).getActualTypeArguments();
        if (i4 >= actualTypeArguments.length || !(actualTypeArguments[i4] instanceof Class)) {
            return null;
        }
        return (Class) actualTypeArguments[i4];
    }

    public static String j(Object obj, Field field) {
        try {
            Class<?> type = field.getType();
            if (type == Byte.TYPE) {
                return String.valueOf((int) field.getByte(obj));
            }
            if (type == Short.TYPE) {
                return String.valueOf((int) field.getShort(obj));
            }
            if (type == Integer.TYPE) {
                return String.valueOf(field.getInt(obj));
            }
            if (type == Long.TYPE) {
                return String.valueOf(field.getLong(obj));
            }
            if (type == Float.TYPE) {
                return String.valueOf(field.getFloat(obj));
            }
            if (type == Double.TYPE) {
                return String.valueOf(field.getDouble(obj));
            }
            if (type == Boolean.TYPE) {
                return String.valueOf(field.getBoolean(obj));
            }
            if (type == Character.TYPE) {
                return String.valueOf(field.getChar(obj));
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static boolean k(@Nullable CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> java.util.List<T> l(org.w3c.dom.Element r5, java.lang.Class r6, java.lang.Class<T> r7, y0.a.InterfaceC0057a r8) {
        /*
            r0 = 0
            if (r6 == 0) goto L17
            boolean r1 = r6.isInterface()     // Catch: java.lang.Exception -> L15
            if (r1 != 0) goto L17
            java.lang.Object r6 = r6.newInstance()     // Catch: java.lang.Exception -> L10
            java.util.List r6 = (java.util.List) r6     // Catch: java.lang.Exception -> L10
            goto L18
        L10:
            r6 = move-exception
            r6.printStackTrace()     // Catch: java.lang.Exception -> L15
            goto L17
        L15:
            r5 = move-exception
            goto L65
        L17:
            r6 = r0
        L18:
            if (r6 != 0) goto L1f
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch: java.lang.Exception -> L15
            r6.<init>()     // Catch: java.lang.Exception -> L15
        L1f:
            java.util.List r5 = q0.a.k(r5)     // Catch: java.lang.Exception -> L15
            java.util.ArrayList r5 = (java.util.ArrayList) r5     // Catch: java.lang.Exception -> L15
            java.util.Iterator r5 = r5.iterator()     // Catch: java.lang.Exception -> L15
        L29:
            boolean r1 = r5.hasNext()     // Catch: java.lang.Exception -> L15
            if (r1 == 0) goto L64
            java.lang.Object r1 = r5.next()     // Catch: java.lang.Exception -> L15
            org.w3c.dom.Element r1 = (org.w3c.dom.Element) r1     // Catch: java.lang.Exception -> L15
            java.lang.String r2 = r1.getTagName()     // Catch: java.lang.Exception -> L15
            java.lang.Class r2 = g(r8, r2, r7)     // Catch: java.lang.Exception -> L15
            if (r2 != 0) goto L5a
            java.lang.String r2 = "ObjectXml"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L15
            r3.<init>()     // Catch: java.lang.Exception -> L15
            java.lang.String r4 = "cannot get class type of list item: "
            r3.append(r4)     // Catch: java.lang.Exception -> L15
            java.lang.String r1 = r1.getTagName()     // Catch: java.lang.Exception -> L15
            r3.append(r1)     // Catch: java.lang.Exception -> L15
            java.lang.String r1 = r3.toString()     // Catch: java.lang.Exception -> L15
            android.util.Log.w(r2, r1)     // Catch: java.lang.Exception -> L15
            goto L29
        L5a:
            java.lang.Object r1 = o(r1, r2, r8)     // Catch: java.lang.Exception -> L15
            if (r1 == 0) goto L29
            r6.add(r1)     // Catch: java.lang.Exception -> L15
            goto L29
        L64:
            return r6
        L65:
            r5.printStackTrace()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: y0.a.l(org.w3c.dom.Element, java.lang.Class, java.lang.Class, y0.a$a):java.util.List");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <K, V> java.util.Map<K, V> m(org.w3c.dom.Element r8, java.lang.Class r9, java.lang.Class<K> r10, java.lang.Class<V> r11, y0.a.InterfaceC0057a r12) {
        /*
            r0 = 0
            if (r9 == 0) goto L18
            boolean r1 = r9.isInterface()     // Catch: java.lang.Exception -> L15
            if (r1 != 0) goto L18
            java.lang.Object r9 = r9.newInstance()     // Catch: java.lang.Exception -> L10
            java.util.Map r9 = (java.util.Map) r9     // Catch: java.lang.Exception -> L10
            goto L19
        L10:
            r9 = move-exception
            r9.printStackTrace()     // Catch: java.lang.Exception -> L15
            goto L18
        L15:
            r8 = move-exception
            goto Lb2
        L18:
            r9 = r0
        L19:
            if (r9 != 0) goto L20
            java.util.HashMap r9 = new java.util.HashMap     // Catch: java.lang.Exception -> L15
            r9.<init>()     // Catch: java.lang.Exception -> L15
        L20:
            java.lang.String r1 = "Entry"
            r2 = 0
            if (r8 == 0) goto L4a
            org.w3c.dom.NodeList r8 = r8.getElementsByTagName(r1)     // Catch: java.lang.Exception -> L15
            if (r8 == 0) goto L4a
            int r1 = r8.getLength()     // Catch: java.lang.Exception -> L15
            if (r1 != 0) goto L32
            goto L4a
        L32:
            int r1 = r8.getLength()     // Catch: java.lang.Exception -> L15
            org.w3c.dom.Element[] r1 = new org.w3c.dom.Element[r1]     // Catch: java.lang.Exception -> L15
            r3 = 0
        L39:
            int r4 = r8.getLength()     // Catch: java.lang.Exception -> L15
            if (r3 >= r4) goto L4b
            org.w3c.dom.Node r4 = r8.item(r3)     // Catch: java.lang.Exception -> L15
            org.w3c.dom.Element r4 = (org.w3c.dom.Element) r4     // Catch: java.lang.Exception -> L15
            r1[r3] = r4     // Catch: java.lang.Exception -> L15
            int r3 = r3 + 1
            goto L39
        L4a:
            r1 = r0
        L4b:
            if (r1 != 0) goto L4e
            return r0
        L4e:
            int r8 = r1.length     // Catch: java.lang.Exception -> L15
        L4f:
            if (r2 >= r8) goto Lb1
            r3 = r1[r2]     // Catch: java.lang.Exception -> L15
            java.util.List r3 = q0.a.k(r3)     // Catch: java.lang.Exception -> L15
            java.lang.String r4 = "key"
            org.w3c.dom.Element r4 = f(r3, r4)     // Catch: java.lang.Exception -> L15
            java.lang.String r5 = "value"
            org.w3c.dom.Element r3 = f(r3, r5)     // Catch: java.lang.Exception -> L15
            java.lang.String r5 = r4.getTagName()     // Catch: java.lang.Exception -> L15
            java.lang.Class r5 = g(r12, r5, r10)     // Catch: java.lang.Exception -> L15
            java.lang.String r6 = r3.getTagName()     // Catch: java.lang.Exception -> L15
            java.lang.Class r6 = g(r12, r6, r11)     // Catch: java.lang.Exception -> L15
            if (r5 == 0) goto L88
            if (r6 != 0) goto L78
            goto L88
        L78:
            java.lang.Object r4 = o(r4, r5, r12)     // Catch: java.lang.Exception -> L15
            java.lang.Object r3 = o(r3, r6, r12)     // Catch: java.lang.Exception -> L15
            if (r4 == 0) goto Lae
            if (r3 == 0) goto Lae
            r9.put(r4, r3)     // Catch: java.lang.Exception -> L15
            goto Lae
        L88:
            java.lang.String r5 = "ObjectXml"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L15
            r6.<init>()     // Catch: java.lang.Exception -> L15
            java.lang.String r7 = "cannot get class type of map entry: "
            r6.append(r7)     // Catch: java.lang.Exception -> L15
            java.lang.String r4 = r4.getTagName()     // Catch: java.lang.Exception -> L15
            r6.append(r4)     // Catch: java.lang.Exception -> L15
            java.lang.String r4 = " - "
            r6.append(r4)     // Catch: java.lang.Exception -> L15
            java.lang.String r3 = r3.getTagName()     // Catch: java.lang.Exception -> L15
            r6.append(r3)     // Catch: java.lang.Exception -> L15
            java.lang.String r3 = r6.toString()     // Catch: java.lang.Exception -> L15
            android.util.Log.w(r5, r3)     // Catch: java.lang.Exception -> L15
        Lae:
            int r2 = r2 + 1
            goto L4f
        Lb1:
            return r9
        Lb2:
            r8.printStackTrace()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: y0.a.m(org.w3c.dom.Element, java.lang.Class, java.lang.Class, java.lang.Class, y0.a$a):java.util.Map");
    }

    public static Element n(@Nullable String str, Map map, Document document) {
        Element elementP;
        Element elementP2;
        Element elementCreateElement = document.createElement("Map");
        if (str != null) {
            elementCreateElement.setAttribute("name", str);
        }
        for (Object obj : map.keySet()) {
            Object obj2 = map.get(obj);
            if (obj2 != null && (elementP = p("key", obj, elementCreateElement.getOwnerDocument())) != null && (elementP2 = p("value", obj2, elementCreateElement.getOwnerDocument())) != null) {
                Element elementCreateElement2 = elementCreateElement.getOwnerDocument().createElement("Entry");
                elementCreateElement2.appendChild(elementP);
                elementCreateElement2.appendChild(elementP2);
                elementCreateElement.appendChild(elementCreateElement2);
            }
        }
        return elementCreateElement;
    }

    public static <T> T o(Element element, Class<T> cls, InterfaceC0057a interfaceC0057a) {
        try {
            if (cls.isArray()) {
                return (T) b(cls, element, interfaceC0057a);
            }
            if (cls == Byte.class) {
                return (T) Byte.valueOf(h(element));
            }
            if (cls == Short.class) {
                return (T) Short.valueOf(h(element));
            }
            if (cls == Integer.class) {
                return (T) Integer.valueOf(h(element));
            }
            if (cls == Long.class) {
                return (T) Long.valueOf(h(element));
            }
            if (cls == Float.class) {
                return (T) Float.valueOf(h(element));
            }
            if (cls == Double.class) {
                return (T) Double.valueOf(h(element));
            }
            if (cls == Boolean.class) {
                return (T) Boolean.valueOf(h(element));
            }
            if (cls == Character.class) {
                String strH = h(element);
                if (strH == null || strH.length() <= 0) {
                    return null;
                }
                return (T) Character.valueOf(strH.charAt(0));
            }
            if (cls == String.class) {
                return (T) d(h(element));
            }
            if (!cls.isInterface() && !Modifier.isAbstract(cls.getModifiers())) {
                T tNewInstance = cls.newInstance();
                q(tNewInstance, element, interfaceC0057a);
                return tNewInstance;
            }
            Log.w("ObjectXml", "cannot load abstract class: " + cls.getSimpleName() + " from element: " + element.getTagName());
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static Element p(@Nullable String str, Object obj, Document document) {
        if (obj != null && document != null) {
            try {
                if (obj instanceof List) {
                    List list = (List) obj;
                    Element elementCreateElement = document.createElement("List");
                    if (str != null) {
                        elementCreateElement.setAttribute("name", str);
                    }
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Element elementP = p(null, it.next(), elementCreateElement.getOwnerDocument());
                        if (elementP != null) {
                            elementCreateElement.appendChild(elementP);
                        }
                    }
                    return elementCreateElement;
                }
                if (obj instanceof Map) {
                    return n(str, (Map) obj, document);
                }
                if (obj.getClass().isArray()) {
                    return c(str, obj, document);
                }
                Class<?> cls = obj.getClass();
                b bVar = (b) cls.getAnnotation(b.class);
                Element elementCreateElement2 = document.createElement(bVar != null ? bVar.tagName() : cls.getSimpleName());
                if (str != null) {
                    elementCreateElement2.setAttribute("name", str);
                }
                if (!(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Double) && !(obj instanceof Boolean) && !(obj instanceof Character)) {
                    if (obj instanceof String) {
                        elementCreateElement2.setAttribute("value", e((String) obj));
                        return elementCreateElement2;
                    }
                    t(obj, elementCreateElement2);
                    return elementCreateElement2;
                }
                elementCreateElement2.setAttribute("value", obj.toString());
                return elementCreateElement2;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return null;
    }

    public static void q(Object obj, Element element, InterfaceC0057a interfaceC0057a) {
        String name;
        z0.a aVar;
        ArrayList<Field> arrayList = new ArrayList();
        a(obj.getClass(), arrayList);
        List<Element> listK = q0.a.k(element);
        for (Field field : arrayList) {
            boolean z3 = true;
            try {
                field.setAccessible(true);
                name = field.getName();
                aVar = (z0.a) field.getAnnotation(z0.a.class);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (aVar != null) {
                if (!aVar.ignore()) {
                    if (!k(aVar.name())) {
                        name = aVar.name();
                    }
                }
            }
            Element elementF = f(listK, name);
            if (elementF != null) {
                Class<?> type = field.getType();
                if (type.isPrimitive()) {
                    u(obj, field, h(elementF));
                } else if (type == List.class || type == ArrayList.class || type == LinkedList.class) {
                    r(obj, field, elementF, interfaceC0057a);
                } else {
                    if (type != Map.class && type != HashMap.class && type != TreeMap.class) {
                        z3 = false;
                    }
                    if (z3) {
                        s(obj, field, elementF, interfaceC0057a);
                    } else {
                        Object objO = o(elementF, type, interfaceC0057a);
                        if (objO != null) {
                            field.set(obj, objO);
                        }
                    }
                }
            }
        }
    }

    public static void r(Object obj, Field field, Element element, InterfaceC0057a interfaceC0057a) {
        Class clsI = i(field, 0);
        if (clsI == null && interfaceC0057a == null) {
            StringBuilder sbA = f.a("cannot get generic class of field: ");
            sbA.append(field.getName());
            sbA.append("|");
            sbA.append(obj);
            Log.w("ObjectXml", sbA.toString());
            return;
        }
        List listL = l(element, field.getType(), clsI, interfaceC0057a);
        if (listL == null || listL.isEmpty()) {
            return;
        }
        try {
            field.set(obj, listL);
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        }
    }

    public static void s(Object obj, Field field, Element element, InterfaceC0057a interfaceC0057a) {
        Class clsI = i(field, 0);
        Class clsI2 = i(field, 1);
        if ((clsI == null || clsI2 == null) && interfaceC0057a == null) {
            StringBuilder sbA = f.a("cannot get generic class of field: ");
            sbA.append(field.getName());
            sbA.append("|");
            sbA.append(obj);
            Log.w("ObjectXml", sbA.toString());
            return;
        }
        Map mapM = m(element, field.getType(), clsI, clsI2, interfaceC0057a);
        if (mapM == null || mapM.isEmpty()) {
            return;
        }
        try {
            field.set(obj, mapM);
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        }
    }

    public static void t(Object obj, Element element) {
        String name;
        z0.a aVar;
        Element elementCreateElement;
        ArrayList<Field> arrayList = new ArrayList();
        a(obj.getClass(), arrayList);
        for (Field field : arrayList) {
            try {
                field.setAccessible(true);
                name = field.getName();
                aVar = (z0.a) field.getAnnotation(z0.a.class);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (aVar != null) {
                if (!aVar.ignore()) {
                    if (!k(aVar.name())) {
                        name = aVar.name();
                    }
                }
            }
            Class<?> type = field.getType();
            if (type.isPrimitive()) {
                elementCreateElement = element.getOwnerDocument().createElement(type.getSimpleName());
                elementCreateElement.setAttribute("name", name);
                elementCreateElement.setAttribute("value", j(obj, field));
            } else {
                Object obj2 = field.get(obj);
                if (obj2 != null && (elementCreateElement = p(name, obj2, element.getOwnerDocument())) != null) {
                }
            }
            element.appendChild(elementCreateElement);
        }
    }

    public static void u(Object obj, Field field, String str) {
        try {
            Class<?> type = field.getType();
            if (type == Byte.TYPE) {
                field.setByte(obj, Byte.parseByte(str));
            } else if (type == Short.TYPE) {
                field.setShort(obj, Short.parseShort(str));
            } else if (type == Integer.TYPE) {
                field.setInt(obj, Integer.parseInt(str));
            } else if (type == Long.TYPE) {
                field.setLong(obj, Long.parseLong(str));
            } else if (type == Float.TYPE) {
                field.setFloat(obj, Float.parseFloat(str));
            } else if (type == Double.TYPE) {
                field.setDouble(obj, Double.parseDouble(str));
            } else if (type == Boolean.TYPE) {
                field.setBoolean(obj, Boolean.parseBoolean(str));
            } else if (type == Character.TYPE) {
                field.setChar(obj, str.charAt(0));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
