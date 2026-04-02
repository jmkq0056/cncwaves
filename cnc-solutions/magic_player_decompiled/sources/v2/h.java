package v2;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

/* JADX INFO: loaded from: classes2.dex */
public class h implements c {
    public h(i iVar) {
    }

    @Override // v2.c
    public Reader a(InputStream inputStream) {
        return new InputStreamReader(inputStream);
    }
}
