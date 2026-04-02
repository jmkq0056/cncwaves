package j;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f1971b;

    public v(int i4) {
        this.f1970a = i4;
    }

    @NonNull
    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("Command: ");
        int i4 = this.f1970a;
        sbA.append(i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? String.valueOf(i4) : "UpdatePlayTaskFailed" : "UpdatePlayTaskSuccess" : "UpdatingPlayTask" : "ClearPlayTask");
        return sbA.toString();
    }

    public v(Object obj) {
        this.f1970a = 2;
        this.f1971b = obj;
    }
}
