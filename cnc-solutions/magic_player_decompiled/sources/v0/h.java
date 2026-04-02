package v0;

import cn.huidu.lcd.render.model.AreaNode;
import cn.huidu.lcd.render.model.WidgetNode;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class h {
    public static void a(AreaNode areaNode, int i4) {
        if (areaNode.childCount() == 1) {
            WidgetNode child = areaNode.getChild(0);
            if (child.getDuration() <= 0) {
                if (i4 <= 0) {
                    i4 = 5000;
                }
                child.setDuration(i4);
                areaNode.setDuration(child.getDuration());
            }
        }
    }

    public static boolean b(List<String> list) {
        if (list == null || list.size() == 0) {
            return false;
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            if (!l.e.u(list.get(i4))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:174:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0481 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0489  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0499 A[LOOP:2: B:198:0x0493->B:200:0x0499, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x04c6 A[LOOP:1: B:203:0x04c0->B:205:0x04c6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0514  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x06a9  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0761  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0763  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0799 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:332:0x07b2  */
    /* JADX WARN: Removed duplicated region for block: B:453:0x0a75  */
    /* JADX WARN: Removed duplicated region for block: B:527:0x0a81 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01ab  */
    /* JADX WARN: Type inference failed for: r20v4, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r2v36, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r3v56, types: [v0.g] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(cn.huidu.lcd.render.model.AreaNode r33, java.io.File r34) {
        /*
            Method dump skipped, instruction units count: 2758
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v0.h.c(cn.huidu.lcd.render.model.AreaNode, java.io.File):void");
    }
}
