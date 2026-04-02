package pl.droidsonroids.gif;

import androidx.annotation.NonNull;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class GifIOException extends IOException {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f3054c = 0;
    private static final long serialVersionUID = 13038402904505L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    public final a f3055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3056b;

    public GifIOException(int i4, String str) {
        a aVar;
        a[] aVarArrValues = a.values();
        int length = aVarArrValues.length;
        int i5 = 0;
        while (true) {
            if (i5 >= length) {
                aVar = a.UNKNOWN;
                aVar.f3082b = i4;
                break;
            } else {
                aVar = aVarArrValues[i5];
                if (aVar.f3082b == i4) {
                    break;
                } else {
                    i5++;
                }
            }
        }
        this.f3055a = aVar;
        this.f3056b = str;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (this.f3056b == null) {
            return this.f3055a.a();
        }
        return this.f3055a.a() + ": " + this.f3056b;
    }
}
