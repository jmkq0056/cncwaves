package h0;

import android.text.TextUtils;
import android.util.Log;
import cn.huidu.lcd.core.entity.model.LocalFileInfo;
import cn.huidu.lcd.render.model.AreaNode;
import cn.huidu.lcd.render.model.HtmlNode;
import cn.huidu.lcd.render.model.ImageNode;
import cn.huidu.lcd.render.model.OfficeNode;
import cn.huidu.lcd.render.model.PlayTaskNode;
import cn.huidu.lcd.render.model.ProgramNode;
import cn.huidu.lcd.render.model.ScreenNode;
import cn.huidu.lcd.render.model.TextNode;
import cn.huidu.lcd.render.model.VideoNode;
import cn.huidu.lcd.render.model.WidgetNode;
import cn.huidu.lcd.render.model.extra.TagControl;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* JADX INFO: loaded from: classes.dex */
public class g {
    public static void a(List<LocalFileInfo> list, String str) {
        LocalFileInfo localFileInfo;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean z3 = false;
        Iterator<LocalFileInfo> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (str.equals(it.next().getPath())) {
                z3 = true;
                break;
            }
        }
        if (z3) {
            return;
        }
        LocalFileInfo localFileInfoD = l.l.e().d(str);
        if (localFileInfoD == null) {
            File file = new File(str);
            if (file.exists()) {
                Log.d("PlayTaskUtils", "loadFileInfo: " + str);
                localFileInfo = new LocalFileInfo();
                localFileInfo.setPath(file.getAbsolutePath());
                localFileInfo.setSize(file.length());
                localFileInfo.setName(file.getName());
                localFileInfo.setMd5(w0.h.f(file));
            } else {
                android.support.v4.media.c.a("loadFileInfo: file not exists: ", str, "PlayTaskUtils");
                localFileInfo = null;
            }
            localFileInfoD = localFileInfo;
        }
        if (localFileInfoD != null) {
            list.add(localFileInfoD);
        }
    }

    public static void b(List<LocalFileInfo> list, List<String> list2) {
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        Iterator<String> it = list2.iterator();
        while (it.hasNext()) {
            a(list, it.next());
        }
    }

    public static void c(WidgetNode widgetNode, List<LocalFileInfo> list) {
        if (widgetNode instanceof ImageNode) {
            a(list, ((ImageNode) widgetNode).getImagePath());
            return;
        }
        if (widgetNode instanceof VideoNode) {
            a(list, ((VideoNode) widgetNode).getVideoPath());
            return;
        }
        if (widgetNode instanceof TextNode) {
            b(list, ((TextNode) widgetNode).getFileList());
        } else if (widgetNode instanceof HtmlNode) {
            a(list, ((HtmlNode) widgetNode).getFilePath());
        } else if (widgetNode instanceof OfficeNode) {
            b(list, ((OfficeNode) widgetNode).getFileList());
        }
    }

    public static File d(int i4) {
        File fileO = l.e.o();
        File file = i4 == 1 ? new File(fileO, "InterCut") : new File(fileO, "Common");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static List<LocalFileInfo> e(PlayTaskNode playTaskNode) {
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < playTaskNode.childCount(); i4++) {
            ProgramNode child = playTaskNode.getChild(i4);
            a(arrayList, child.getBackgroundMusic());
            a(arrayList, child.getBackgroundImage());
            for (int i5 = 0; i5 < child.childCount(); i5++) {
                AreaNode child2 = child.getChild(i5);
                a(arrayList, child2.getBackgroundImage());
                for (int i6 = 0; i6 < child2.childCount(); i6++) {
                    c(child2.getChild(i6), arrayList);
                }
            }
            List<ScreenNode> subScreens = child.getSubScreens();
            if (subScreens != null) {
                for (ScreenNode screenNode : subScreens) {
                    for (int i7 = 0; i7 < screenNode.childCount(); i7++) {
                        AreaNode child3 = screenNode.getChild(i7);
                        a(arrayList, child3.getBackgroundImage());
                        for (int i8 = 0; i8 < child3.childCount(); i8++) {
                            c(child3.getChild(i8), arrayList);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public static PlayTaskNode f(int i4) {
        return g(d(i4));
    }

    public static PlayTaskNode g(File file) {
        File file2 = new File(file, "PlayTask.xml");
        f fVar = f.f1823b;
        Document documentS = q0.a.s(file2);
        return (PlayTaskNode) (documentS == null ? null : y0.a.o(documentS.getDocumentElement(), PlayTaskNode.class, fVar));
    }

    public static TagControl h() {
        Document documentS = q0.a.s(new File(d(0), "TagControl.xml"));
        return (TagControl) (documentS != null ? y0.a.o(documentS.getDocumentElement(), TagControl.class, null) : null);
    }

    public static boolean i(PlayTaskNode playTaskNode, File file) {
        Element elementP;
        if (playTaskNode != null) {
            File file2 = new File(file, "PlayTask.xml");
            Document documentD = q0.a.d();
            if (documentD == null || (elementP = y0.a.p(null, playTaskNode, documentD)) == null) {
                documentD = null;
            } else {
                documentD.appendChild(elementP);
            }
            if (documentD != null) {
                return q0.a.w(documentD, file2, true);
            }
        }
        return false;
    }
}
