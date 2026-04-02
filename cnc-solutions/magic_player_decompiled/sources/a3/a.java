package a3;

import java.util.prefs.AbstractPreferences;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0003a f94a = new C0003a(new a());

    /* JADX INFO: renamed from: a3.a$a, reason: collision with other inner class name */
    public class C0003a extends AbstractPreferences {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f95a;

        public C0003a(a aVar) {
            super(null, "");
            this.f95a = null;
        }

        @Override // java.util.prefs.AbstractPreferences
        public AbstractPreferences childSpi(String str) {
            return null;
        }

        @Override // java.util.prefs.AbstractPreferences
        public String[] childrenNamesSpi() {
            return null;
        }

        @Override // java.util.prefs.AbstractPreferences
        public void flushSpi() {
        }

        @Override // java.util.prefs.AbstractPreferences
        public String getSpi(String str) {
            return null;
        }

        @Override // java.util.prefs.AbstractPreferences
        public String[] keysSpi() {
            return null;
        }

        @Override // java.util.prefs.AbstractPreferences
        public void putSpi(String str, String str2) {
            this.f95a = str2;
        }

        @Override // java.util.prefs.AbstractPreferences
        public void removeNodeSpi() {
        }

        @Override // java.util.prefs.AbstractPreferences
        public void removeSpi(String str) {
        }

        @Override // java.util.prefs.AbstractPreferences
        public void syncSpi() {
        }
    }
}
