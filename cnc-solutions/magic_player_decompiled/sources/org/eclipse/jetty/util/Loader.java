package org.eclipse.jetty.util;

import java.io.File;
import java.net.URL;
import java.net.URLClassLoader;
import org.eclipse.jetty.util.resource.Resource;

/* JADX INFO: loaded from: classes2.dex */
public class Loader {
    public static String getClassPath(ClassLoader classLoader) {
        StringBuilder sb = new StringBuilder();
        while (classLoader != null && (classLoader instanceof URLClassLoader)) {
            URL[] uRLs = ((URLClassLoader) classLoader).getURLs();
            if (uRLs != null) {
                for (URL url : uRLs) {
                    File file = Resource.newResource(url).getFile();
                    if (file != null && file.exists()) {
                        if (sb.length() > 0) {
                            sb.append(File.pathSeparatorChar);
                        }
                        sb.append(file.getAbsolutePath());
                    }
                }
            }
            classLoader = classLoader.getParent();
        }
        return sb.toString();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002d -> B:11:0x001f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x002f -> B:11:0x001f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:13:0x0025
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:226)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:196)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:63)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:125)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public static java.net.URL getResource(java.lang.Class<?> r3, java.lang.String r4, boolean r5) {
        /*
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.ClassLoader r0 = r0.getContextClassLoader()
            r1 = 0
            r2 = r1
        La:
            if (r2 != 0) goto L1d
            if (r0 == 0) goto L1d
            java.net.URL r2 = r0.getResource(r4)
            if (r2 != 0) goto L1b
            if (r5 == 0) goto L1b
            java.lang.ClassLoader r0 = r0.getParent()
            goto La
        L1b:
            r0 = r1
            goto La
        L1d:
            if (r3 != 0) goto L21
        L1f:
            r3 = r1
            goto L25
        L21:
            java.lang.ClassLoader r3 = r3.getClassLoader()
        L25:
            if (r2 != 0) goto L36
            if (r3 == 0) goto L36
            java.net.URL r2 = r3.getResource(r4)
            if (r2 != 0) goto L1f
            if (r5 == 0) goto L1f
            java.lang.ClassLoader r3 = r3.getParent()
            goto L25
        L36:
            if (r2 != 0) goto L3c
            java.net.URL r2 = java.lang.ClassLoader.getSystemResource(r4)
        L3c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.Loader.getResource(java.lang.Class, java.lang.String, boolean):java.net.URL");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x004a -> B:17:0x0030). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x004c -> B:17:0x0030). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:19:0x0036
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:226)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:196)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:63)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:125)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public static java.util.ResourceBundle getResourceBundle(java.lang.Class<?> r6, java.lang.String r7, boolean r8, java.util.Locale r9) {
        /*
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.ClassLoader r0 = r0.getContextClassLoader()
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            r2 = 0
            r3 = r2
            r4 = r3
        L10:
            if (r3 != 0) goto L2e
            if (r0 == 0) goto L2e
            boolean r5 = r1.add(r0)
            if (r5 == 0) goto L2e
            java.util.ResourceBundle r3 = java.util.ResourceBundle.getBundle(r7, r9, r0)     // Catch: java.util.MissingResourceException -> L1f
            goto L23
        L1f:
            r5 = move-exception
            if (r4 != 0) goto L23
            r4 = r5
        L23:
            if (r3 != 0) goto L2c
            if (r8 == 0) goto L2c
            java.lang.ClassLoader r0 = r0.getParent()
            goto L10
        L2c:
            r0 = r2
            goto L10
        L2e:
            if (r6 != 0) goto L32
        L30:
            r6 = r2
            goto L36
        L32:
            java.lang.ClassLoader r6 = r6.getClassLoader()
        L36:
            if (r3 != 0) goto L53
            if (r6 == 0) goto L53
            boolean r0 = r1.add(r6)
            if (r0 == 0) goto L53
            java.util.ResourceBundle r0 = java.util.ResourceBundle.getBundle(r7, r9, r6)     // Catch: java.util.MissingResourceException -> L46
            r3 = r0
            goto L4a
        L46:
            r0 = move-exception
            if (r4 != 0) goto L4a
            r4 = r0
        L4a:
            if (r3 != 0) goto L30
            if (r8 == 0) goto L30
            java.lang.ClassLoader r6 = r6.getParent()
            goto L36
        L53:
            java.lang.Class<org.eclipse.jetty.util.Loader> r6 = org.eclipse.jetty.util.Loader.class
            java.lang.ClassLoader r6 = r6.getClassLoader()
            if (r3 != 0) goto L6c
            if (r6 == 0) goto L6c
            boolean r6 = r1.add(r6)
            if (r6 == 0) goto L6c
            java.util.ResourceBundle r3 = java.util.ResourceBundle.getBundle(r7, r9)     // Catch: java.util.MissingResourceException -> L68
            goto L6c
        L68:
            r6 = move-exception
            if (r4 != 0) goto L6c
            r4 = r6
        L6c:
            if (r3 == 0) goto L6f
            return r3
        L6f:
            goto L71
        L70:
            throw r4
        L71:
            goto L70
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.Loader.getResourceBundle(java.lang.Class, java.lang.String, boolean, java.util.Locale):java.util.ResourceBundle");
    }

    public static Class loadClass(Class cls, String str) {
        return loadClass(cls, str, false);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x004a -> B:17:0x0030). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x004c -> B:17:0x0030). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:19:0x0036
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:226)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:196)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:63)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:125)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public static java.lang.Class loadClass(java.lang.Class r6, java.lang.String r7, boolean r8) {
        /*
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.ClassLoader r0 = r0.getContextClassLoader()
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            r2 = 0
            r3 = r2
            r4 = r3
        L10:
            if (r3 != 0) goto L2e
            if (r0 == 0) goto L2e
            boolean r5 = r1.add(r0)
            if (r5 == 0) goto L2e
            java.lang.Class r3 = r0.loadClass(r7)     // Catch: java.lang.ClassNotFoundException -> L1f
            goto L23
        L1f:
            r5 = move-exception
            if (r4 != 0) goto L23
            r4 = r5
        L23:
            if (r3 != 0) goto L2c
            if (r8 == 0) goto L2c
            java.lang.ClassLoader r0 = r0.getParent()
            goto L10
        L2c:
            r0 = r2
            goto L10
        L2e:
            if (r6 != 0) goto L32
        L30:
            r6 = r2
            goto L36
        L32:
            java.lang.ClassLoader r6 = r6.getClassLoader()
        L36:
            if (r3 != 0) goto L53
            if (r6 == 0) goto L53
            boolean r0 = r1.add(r6)
            if (r0 == 0) goto L53
            java.lang.Class r0 = r6.loadClass(r7)     // Catch: java.lang.ClassNotFoundException -> L46
            r3 = r0
            goto L4a
        L46:
            r0 = move-exception
            if (r4 != 0) goto L4a
            r4 = r0
        L4a:
            if (r3 != 0) goto L30
            if (r8 == 0) goto L30
            java.lang.ClassLoader r6 = r6.getParent()
            goto L36
        L53:
            java.lang.Class<org.eclipse.jetty.util.Loader> r6 = org.eclipse.jetty.util.Loader.class
            java.lang.ClassLoader r6 = r6.getClassLoader()
            if (r3 != 0) goto L6c
            if (r6 == 0) goto L6c
            boolean r6 = r1.add(r6)
            if (r6 == 0) goto L6c
            java.lang.Class r3 = java.lang.Class.forName(r7)     // Catch: java.lang.ClassNotFoundException -> L68
            goto L6c
        L68:
            r6 = move-exception
            if (r4 != 0) goto L6c
            r4 = r6
        L6c:
            if (r3 == 0) goto L6f
            return r3
        L6f:
            goto L71
        L70:
            throw r4
        L71:
            goto L70
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.Loader.loadClass(java.lang.Class, java.lang.String, boolean):java.lang.Class");
    }
}
