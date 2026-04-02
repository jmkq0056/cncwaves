package h0;

import androidx.core.view.ViewCompat;
import cn.huidu.lcd.core.entity.model.MediaEffect;
import cn.huidu.lcd.render.model.AreaNode;
import cn.huidu.lcd.render.model.EWatchNode;
import cn.huidu.lcd.render.model.EffectNode;
import cn.huidu.lcd.render.model.ImageNode;
import cn.huidu.lcd.render.model.ProgramNode;
import cn.huidu.lcd.render.model.VideoNode;
import cn.huidu.lcd.render.model.WidgetNode;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.xbill.DNS.WKSRecord;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f1802a = {"avi", "mkv", "mp4", "mpg", "wmv", "mov", "3gp", "rm", "rmvb", "flv", "f4v", "ts", "webm", "asf", "dat", "vob"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f1803b = {"png", "jpg", "jpeg", "bmp", "gif"};

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f1804a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1805b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1806c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1807d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1808e;
    }

    public static AreaNode a(List<a> list, MediaEffect mediaEffect) {
        WidgetNode widgetNode;
        AreaNode areaNode = new AreaNode();
        areaNode.setName("NewArea");
        areaNode.setUuid(UUID.randomUUID().toString());
        areaNode.setWidth(-1);
        areaNode.setHeight(-1);
        int duration = 0;
        for (a aVar : list) {
            int i4 = aVar.f1805b;
            if (i4 == 1) {
                VideoNode videoNode = new VideoNode();
                videoNode.setUuid(UUID.randomUUID().toString());
                videoNode.setVideoPath(aVar.f1804a);
                videoNode.setWidth(aVar.f1807d);
                videoNode.setHeight(aVar.f1808e);
                videoNode.setDuration(aVar.f1806c);
                videoNode.setKeepAspectRatio(mediaEffect.getScaleType() == 1);
                widgetNode = videoNode;
            } else if (i4 == 0) {
                ImageNode imageNode = new ImageNode();
                imageNode.setUuid(UUID.randomUUID().toString());
                imageNode.setImagePath(aVar.f1804a);
                imageNode.setGif(false);
                g(imageNode, mediaEffect);
                widgetNode = imageNode;
            } else if (i4 == 2) {
                ImageNode imageNode2 = new ImageNode();
                imageNode2.setUuid(UUID.randomUUID().toString());
                imageNode2.setImagePath(aVar.f1804a);
                imageNode2.setDuration(aVar.f1806c);
                imageNode2.setGif(true);
                g(imageNode2, mediaEffect);
                widgetNode = imageNode2;
            } else {
                widgetNode = null;
            }
            if (widgetNode != null) {
                areaNode.addChild(widgetNode);
                duration += widgetNode.getDuration();
            }
        }
        areaNode.setDuration(duration);
        return areaNode;
    }

    public static AreaNode b(int i4) {
        AreaNode areaNode = new AreaNode();
        areaNode.setName("NewArea");
        areaNode.setUuid(UUID.randomUUID().toString());
        areaNode.setFrame(0, 0, WKSRecord.Service.PROFILE, 60);
        areaNode.setDuration(i4);
        EWatchNode eWatchNode = new EWatchNode();
        eWatchNode.setStyle(0);
        eWatchNode.setPadding(14);
        eWatchNode.setTextSize(32);
        eWatchNode.setTextColor(-1);
        eWatchNode.setStrokeColor(ViewCompat.MEASURED_STATE_MASK);
        eWatchNode.setDuration(i4);
        areaNode.addChild(eWatchNode);
        return areaNode;
    }

    public static ProgramNode c(File file, int i4, int i5, MediaEffect mediaEffect) throws Throwable {
        List<a> listD = d(file);
        if (((ArrayList) listD).isEmpty()) {
            return null;
        }
        ProgramNode programNode = new ProgramNode();
        programNode.setName(file.getName());
        programNode.setUuid(UUID.randomUUID().toString());
        AreaNode areaNodeA = a(listD, mediaEffect);
        areaNodeA.setWidth(i4);
        areaNodeA.setHeight(i5);
        programNode.addChild(areaNodeA);
        int duration = areaNodeA.getDuration();
        if (mediaEffect.isShowClock()) {
            programNode.addChild(b(duration + 1));
        }
        programNode.setMaxAreaDuration(duration);
        programNode.setDuration(duration);
        return programNode;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01b5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x001b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<h0.c.a> d(java.io.File r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h0.c.d(java.io.File):java.util.List");
    }

    public static List<File> e(File file) {
        List listAsList;
        ArrayList arrayList = new ArrayList();
        String[] list = file.list();
        if (list == null) {
            listAsList = null;
        } else {
            listAsList = Arrays.asList(list);
            Collections.sort(listAsList);
        }
        if (listAsList != null) {
            Iterator it = listAsList.iterator();
            while (it.hasNext()) {
                File file2 = new File(file, (String) it.next());
                if (file2.isDirectory()) {
                    arrayList.add(file2);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static cn.huidu.lcd.render.model.PlayTaskNode f(cn.huidu.lcd.core.entity.model.ExtStorage r20, cn.huidu.lcd.core.entity.model.MediaEffect r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 623
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h0.c.f(cn.huidu.lcd.core.entity.model.ExtStorage, cn.huidu.lcd.core.entity.model.MediaEffect):cn.huidu.lcd.render.model.PlayTaskNode");
    }

    public static void g(ImageNode imageNode, MediaEffect mediaEffect) {
        imageNode.setKeepAspectRatio(mediaEffect.getScaleType() == 1);
        if (!imageNode.isGif()) {
            imageNode.setDuration(mediaEffect.getDisplayTime());
        }
        EffectNode effectNode = new EffectNode();
        effectNode.setEffectType(mediaEffect.getEffectType());
        effectNode.setEnterTime(mediaEffect.getEffectTime());
        effectNode.setDisplayTime(mediaEffect.getDisplayTime());
        effectNode.setClearScreen(mediaEffect.isClearScreen());
        imageNode.setEffect(effectNode);
    }

    public static int h(String str) {
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static void i(File file) throws Throwable {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileInputStream.read();
                try {
                    fileInputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            } catch (Throwable th) {
                th = th;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }
}
