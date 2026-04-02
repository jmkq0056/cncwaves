package g2;

import java.util.EventListener;

/* JADX INFO: loaded from: classes2.dex */
public interface c extends EventListener {
    void onComplete(b bVar);

    void onError(b bVar);

    void onStartAsync(b bVar);

    void onTimeout(b bVar);
}
