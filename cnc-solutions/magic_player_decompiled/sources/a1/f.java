package a1;

import a1.c;

/* JADX INFO: loaded from: classes.dex */
public final class f implements c.b {
    public String a(String str) {
        return (str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str);
    }
}
