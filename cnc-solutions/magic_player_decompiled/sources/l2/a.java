package l2;

import java.io.IOException;
import java.net.Socket;
import javax.annotation.Nullable;
import k2.d0;
import k2.h;
import k2.q;
import n2.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static a f2435a;

    public abstract void a(q.a aVar, String str, String str2);

    public abstract Socket b(h hVar, k2.a aVar, f fVar);

    public abstract n2.c c(h hVar, k2.a aVar, f fVar, d0 d0Var);

    @Nullable
    public abstract IOException d(k2.d dVar, @Nullable IOException iOException);
}
