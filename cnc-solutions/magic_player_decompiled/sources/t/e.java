package t;

import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.support.lastchange.LastChangeAwareServiceManager;
import org.fourthline.cling.support.lastchange.LastChangeParser;

/* JADX INFO: loaded from: classes.dex */
public class e extends LastChangeAwareServiceManager<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f3514a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(g gVar, LocalService localService, LastChangeParser lastChangeParser) {
        super(localService, lastChangeParser);
        this.f3514a = gVar;
    }

    @Override // org.fourthline.cling.model.DefaultServiceManager
    public Object createServiceInstance() {
        return new a(this.f3514a.f3516a);
    }
}
