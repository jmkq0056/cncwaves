package g3;

import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public interface g {

    public static class a implements g {
        @Override // g3.g
        public void a(Level level, String str) {
            System.out.println("[" + level + "] " + str);
        }

        @Override // g3.g
        public void b(Level level, String str, Throwable th) {
            System.out.println("[" + level + "] " + str);
            th.printStackTrace(System.out);
        }
    }

    void a(Level level, String str);

    void b(Level level, String str, Throwable th);
}
