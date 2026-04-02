package t;

import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.support.lastchange.LastChangeAwareServiceManager;
import org.fourthline.cling.support.lastchange.LastChangeParser;

/* JADX INFO: loaded from: classes.dex */
public class f extends LastChangeAwareServiceManager<b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f3515a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(g gVar, LocalService localService, LastChangeParser lastChangeParser) {
        super(localService, lastChangeParser);
        this.f3515a = gVar;
    }

    @Override // org.fourthline.cling.model.DefaultServiceManager
    public Object createServiceInstance() {
        return new b(this.f3515a.f3517b);
    }
}
