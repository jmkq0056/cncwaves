package v0;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: loaded from: classes.dex */
public class e implements FileFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f3647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f3648b;

    public e(long j4, long j5) {
        this.f3647a = j4;
        this.f3648b = j5;
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        long jLastModified = file.lastModified();
        long j4 = this.f3647a;
        if (j4 > 0 && jLastModified < j4) {
            return false;
        }
        long j5 = this.f3648b;
        return j5 <= 0 || jLastModified <= j5;
    }
}
