package l;

import java.io.File;
import java.util.Map;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile b f2294a;

    public static b c() {
        if (f2294a == null) {
            synchronized (b.class) {
                if (f2294a == null) {
                    f2294a = new b();
                }
            }
        }
        return f2294a;
    }

    public <T extends n.b> T a(Class<T> cls) {
        try {
            T tNewInstance = cls.newInstance();
            Document documentS = q0.a.s(b(tNewInstance.f2624a));
            int i4 = 0;
            if (documentS != null) {
                Map<String, String> map = tNewInstance.f2625b.f2626a;
                NodeList elementsByTagName = documentS.getElementsByTagName("item");
                while (i4 < elementsByTagName.getLength()) {
                    Element element = (Element) elementsByTagName.item(i4);
                    String attribute = element.getAttribute("name");
                    String textContent = element.getTextContent();
                    if (attribute != null && textContent != null) {
                        map.put(attribute, textContent);
                    }
                    i4++;
                }
                i4 = 1;
            }
            tNewInstance.a(tNewInstance.f2625b);
            if (i4 == 0) {
                d(tNewInstance);
            }
            return tNewInstance;
        } catch (IllegalAccessException | InstantiationException e4) {
            throw new RuntimeException("cannot newInstance: " + cls, e4.getCause());
        }
    }

    public final File b(String str) {
        return new File(e.w(e.g(), "config"), androidx.appcompat.view.a.a(str, ".xml"));
    }

    public boolean d(n.b bVar) {
        boolean zW;
        File fileB = b(bVar.f2624a);
        bVar.b(bVar.f2625b);
        Document documentD = q0.a.d();
        if (documentD == null) {
            zW = false;
        } else {
            Map<String, String> map = bVar.f2625b.f2626a;
            Element elementCreateElement = documentD.createElement("config");
            documentD.appendChild(elementCreateElement);
            for (String str : map.keySet()) {
                String str2 = map.get(str);
                Element elementCreateElement2 = documentD.createElement("item");
                elementCreateElement2.setAttribute("name", str);
                elementCreateElement2.setTextContent(str2);
                elementCreateElement.appendChild(elementCreateElement2);
            }
            zW = q0.a.w(documentD, fileB, true);
        }
        StringBuilder sbA = android.support.v4.media.f.a("Save config: ");
        sbA.append(bVar.f2624a);
        sbA.append(", success: ");
        sbA.append(zW);
        s.h.a(sbA.toString());
        h.a.C0();
        return zW;
    }
}
