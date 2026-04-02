package q;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class j {
    public j(Context context) {
    }

    public final void a(XmlSerializer xmlSerializer, o.f fVar) throws IOException {
        if (fVar.f2839c.size() > 0) {
            for (o.a aVar : fVar.f2839c) {
                xmlSerializer.startTag(null, "item");
                xmlSerializer.attribute(null, "time", aVar.f2804a);
                xmlSerializer.attribute(null, "percent", aVar.f2806c);
                xmlSerializer.endTag(null, "item");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0091 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.File b(o.f r6, java.io.File r7, java.lang.String r8) throws java.lang.Throwable {
        /*
            r5 = this;
            java.lang.String r0 = "config"
            java.lang.String r1 = "utf-8"
            java.lang.String r2 = "generateXML: +++"
            java.lang.StringBuilder r2 = android.support.v4.media.f.a(r2)
            java.lang.String r3 = r7.getPath()
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "SystemControlSaveXml"
            android.util.Log.d(r3, r2)
            java.io.File r2 = new java.io.File
            r2.<init>(r7, r8)
            boolean r7 = r2.exists()
            if (r7 == 0) goto L28
            r2.delete()
        L28:
            r7 = 0
            boolean r8 = r2.createNewFile()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            if (r8 != 0) goto L30
            return r7
        L30:
            java.io.FileOutputStream r8 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            r8.<init>(r2)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            org.xmlpull.v1.XmlSerializer r3 = android.util.Xml.newSerializer()     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            r3.setOutput(r8, r1)     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            java.lang.Boolean r4 = java.lang.Boolean.TRUE     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            r3.startDocument(r1, r4)     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            r3.startTag(r7, r0)     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            java.lang.String r1 = "mode"
            boolean r4 = r6.f2837a     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            if (r4 == 0) goto L4d
            java.lang.String r4 = "1"
            goto L4f
        L4d:
            java.lang.String r4 = "0"
        L4f:
            r3.attribute(r7, r1, r4)     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            java.lang.String r1 = "default_value"
            int r4 = r6.f2838b     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            r3.attribute(r7, r1, r4)     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            r5.a(r3, r6)     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            r3.endTag(r7, r0)     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            r3.endDocument()     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            java.io.FileDescriptor r6 = r8.getFD()     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            r6.sync()     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            h.a.C0()     // Catch: java.lang.Exception -> L79 java.lang.Throwable -> L8d
            r8.close()     // Catch: java.io.IOException -> L74
            goto L78
        L74:
            r6 = move-exception
            r6.printStackTrace()
        L78:
            return r2
        L79:
            r6 = move-exception
            goto L7f
        L7b:
            r6 = move-exception
            goto L8f
        L7d:
            r6 = move-exception
            r8 = r7
        L7f:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L8d
            if (r8 == 0) goto L8c
            r8.close()     // Catch: java.io.IOException -> L88
            goto L8c
        L88:
            r6 = move-exception
            r6.printStackTrace()
        L8c:
            return r7
        L8d:
            r6 = move-exception
            r7 = r8
        L8f:
            if (r7 == 0) goto L99
            r7.close()     // Catch: java.io.IOException -> L95
            goto L99
        L95:
            r7 = move-exception
            r7.printStackTrace()
        L99:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: q.j.b(o.f, java.io.File, java.lang.String):java.io.File");
    }

    public o.f c() {
        return g(l.e.t() + "/brightness_config.xml");
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x0153 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<o.d> d() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q.j.d():java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0093 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<o.e> e() throws java.lang.Throwable {
        /*
            r9 = this;
            java.io.File r0 = new java.io.File
            java.io.File r1 = l.e.t()
            java.lang.String r2 = "screen_switch_config.xml"
            r0.<init>(r1, r2)
            r1 = 0
            boolean r2 = r0.exists()     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8c
            if (r2 != 0) goto L13
            return r1
        L13:
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8c
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8c
            org.xmlpull.v1.XmlPullParser r0 = android.util.Xml.newPullParser()     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            java.lang.String r3 = "utf-8"
            r0.setInput(r2, r3)     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            int r3 = r0.getEventType()     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            r4 = r1
            r5 = r4
        L27:
            r6 = 1
            if (r3 == r6) goto L7f
            r6 = 2
            java.lang.String r7 = "item"
            java.lang.String r8 = "config"
            if (r3 == r6) goto L4b
            r6 = 3
            if (r3 == r6) goto L35
            goto L7a
        L35:
            java.lang.String r3 = r0.getName()     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            boolean r3 = r3.equals(r7)     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            if (r3 == 0) goto L43
            r4.add(r5)     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            goto L7a
        L43:
            java.lang.String r3 = r0.getName()     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            r3.equals(r8)     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            goto L7a
        L4b:
            java.lang.String r3 = r0.getName()     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            boolean r3 = r3.equals(r8)     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            if (r3 == 0) goto L5b
            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            r4.<init>()     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            goto L7a
        L5b:
            java.lang.String r3 = r0.getName()     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            boolean r3 = r3.equals(r7)     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            if (r3 == 0) goto L7a
            o.e r5 = new o.e     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            r5.<init>()     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            java.lang.String r3 = "start_time"
            java.lang.String r3 = r0.getAttributeValue(r1, r3)     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            java.lang.String r6 = "end_time"
            java.lang.String r6 = r0.getAttributeValue(r1, r6)     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            r5.f2834a = r3     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            r5.f2835b = r6     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
        L7a:
            int r3 = r0.next()     // Catch: java.lang.Exception -> L88 java.lang.Throwable -> L9c
            goto L27
        L7f:
            r2.close()     // Catch: java.io.IOException -> L83
            goto L87
        L83:
            r0 = move-exception
            r0.printStackTrace()
        L87:
            return r4
        L88:
            r0 = move-exception
            goto L8e
        L8a:
            r0 = move-exception
            goto L9e
        L8c:
            r0 = move-exception
            r2 = r1
        L8e:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L9c
            if (r2 == 0) goto L9b
            r2.close()     // Catch: java.io.IOException -> L97
            goto L9b
        L97:
            r0 = move-exception
            r0.printStackTrace()
        L9b:
            return r1
        L9c:
            r0 = move-exception
            r1 = r2
        L9e:
            if (r1 == 0) goto La8
            r1.close()     // Catch: java.io.IOException -> La4
            goto La8
        La4:
            r1 = move-exception
            r1.printStackTrace()
        La8:
            goto Laa
        La9:
            throw r0
        Laa:
            goto La9
        */
        throw new UnsupportedOperationException("Method not decompiled: q.j.e():java.util.List");
    }

    public o.f f() {
        return g(l.e.t() + "/audio_volume_config.xml");
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x00bb: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:49:0x00bb */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final o.f g(java.lang.String r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q.j.g(java.lang.String):o.f");
    }

    public File h(o.f fVar) {
        return b(fVar, l.e.t(), "brightness_config.xml");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.File i(java.util.List<o.d> r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q.j.i(java.util.List):java.io.File");
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x009b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.File j(java.util.List<o.e> r10) throws java.lang.Throwable {
        /*
            r9 = this;
            java.lang.String r0 = "item"
            java.lang.String r1 = "config"
            java.lang.String r2 = "utf-8"
            java.io.File r3 = l.e.t()
            java.lang.String r4 = "generateScreenSwitchXML: +++"
            java.lang.StringBuilder r4 = android.support.v4.media.f.a(r4)
            java.lang.String r5 = r3.getPath()
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            java.lang.String r5 = "SystemControlSaveXml"
            android.util.Log.d(r5, r4)
            java.io.File r4 = new java.io.File
            java.lang.String r5 = "screen_switch_config.xml"
            r4.<init>(r3, r5)
            boolean r3 = r4.exists()
            if (r3 == 0) goto L30
            r4.delete()
        L30:
            r3 = 0
            boolean r5 = r4.createNewFile()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            if (r5 != 0) goto L38
            return r3
        L38:
            java.io.FileOutputStream r5 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            org.xmlpull.v1.XmlSerializer r6 = android.util.Xml.newSerializer()     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            r6.setOutput(r5, r2)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            java.lang.Boolean r7 = java.lang.Boolean.TRUE     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            r6.startDocument(r2, r7)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            r6.startTag(r3, r1)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            int r2 = r10.size()     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            if (r2 <= 0) goto L77
            java.util.Iterator r10 = r10.iterator()     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
        L56:
            boolean r2 = r10.hasNext()     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            if (r2 == 0) goto L77
            java.lang.Object r2 = r10.next()     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            o.e r2 = (o.e) r2     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            r6.startTag(r3, r0)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            java.lang.String r7 = "start_time"
            java.lang.String r8 = r2.f2834a     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            r6.attribute(r3, r7, r8)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            java.lang.String r7 = "end_time"
            java.lang.String r2 = r2.f2835b     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            r6.attribute(r3, r7, r2)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            r6.endTag(r3, r0)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            goto L56
        L77:
            r6.endTag(r3, r1)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            r6.endDocument()     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            java.io.FileDescriptor r10 = r5.getFD()     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            r10.sync()     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            h.a.C0()     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La4
            r5.close()     // Catch: java.io.IOException -> L8b
            goto L8f
        L8b:
            r10 = move-exception
            r10.printStackTrace()
        L8f:
            return r4
        L90:
            r10 = move-exception
            goto L96
        L92:
            r10 = move-exception
            goto La6
        L94:
            r10 = move-exception
            r5 = r3
        L96:
            r10.printStackTrace()     // Catch: java.lang.Throwable -> La4
            if (r5 == 0) goto La3
            r5.close()     // Catch: java.io.IOException -> L9f
            goto La3
        L9f:
            r10 = move-exception
            r10.printStackTrace()
        La3:
            return r3
        La4:
            r10 = move-exception
            r3 = r5
        La6:
            if (r3 == 0) goto Lb0
            r3.close()     // Catch: java.io.IOException -> Lac
            goto Lb0
        Lac:
            r0 = move-exception
            r0.printStackTrace()
        Lb0:
            goto Lb2
        Lb1:
            throw r10
        Lb2:
            goto Lb1
        */
        throw new UnsupportedOperationException("Method not decompiled: q.j.j(java.util.List):java.io.File");
    }

    public File k(o.f fVar) {
        return b(fVar, l.e.t(), "audio_volume_config.xml");
    }
}
