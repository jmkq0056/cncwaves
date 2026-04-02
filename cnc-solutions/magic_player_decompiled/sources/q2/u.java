package q2;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class u extends IOException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f3315a;

    public u(b bVar) {
        super("stream was reset: " + bVar);
        this.f3315a = bVar;
    }
}
