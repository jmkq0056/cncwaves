package d3;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: loaded from: classes2.dex */
public class c implements FileFilter {
    public c(String str) {
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return file.getName().endsWith(".bup");
    }
}
