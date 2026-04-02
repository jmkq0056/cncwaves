package s;

import cn.huidu.lcd.core.entity.model.LocalFileInfo;
import java.io.File;
import java.util.List;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    public static void a(File file, List<LocalFileInfo> list) {
        List<LocalFileInfo> listB;
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    a(file2, list);
                } else if ("FileList.xml".equals(file2.getName()) && (listB = b(file2)) != null && !listB.isEmpty()) {
                    for (int i4 = 0; i4 < listB.size(); i4++) {
                        LocalFileInfo localFileInfo = listB.get(i4);
                        if (l.e.u(localFileInfo.getPath())) {
                            list.add(localFileInfo);
                        }
                    }
                }
            }
        }
    }

    public static List<LocalFileInfo> b(File file) {
        Document documentS = q0.a.s(file);
        if (documentS == null) {
            return null;
        }
        return y0.a.l(documentS.getDocumentElement(), List.class, LocalFileInfo.class, null);
    }

    public static boolean c(List<LocalFileInfo> list, File file) {
        Element elementP;
        File file2 = new File(file, "FileList.xml");
        Document documentD = q0.a.d();
        if (documentD == null || (elementP = y0.a.p(null, list, documentD)) == null) {
            documentD = null;
        } else {
            documentD.appendChild(elementP);
        }
        if (documentD == null) {
            return false;
        }
        return q0.a.w(documentD, file2, true);
    }
}
