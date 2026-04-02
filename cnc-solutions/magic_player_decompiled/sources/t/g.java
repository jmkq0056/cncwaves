package t;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import java.util.Objects;
import java.util.UUID;
import org.fourthline.cling.android.AndroidUpnpService;
import org.fourthline.cling.binding.annotations.AnnotationLocalServiceBinder;
import org.fourthline.cling.model.DefaultServiceManager;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.meta.DeviceDetails;
import org.fourthline.cling.model.meta.DeviceIdentity;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.ManufacturerDetails;
import org.fourthline.cling.model.meta.ModelDetails;
import org.fourthline.cling.model.types.UDADeviceType;
import org.fourthline.cling.model.types.UDN;
import org.fourthline.cling.support.lastchange.LastChange;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AndroidUpnpService f3518c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3519d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f3520e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f3521f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LastChange f3516a = new LastChange(new u.a());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LastChange f3517b = new LastChange(new u.b());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ServiceConnection f3522g = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d("UpnpServiceConnector", "onServiceConnected: ");
            g gVar = g.this;
            gVar.f3518c = (AndroidUpnpService) iBinder;
            try {
                g.this.f3518c.getRegistry().addDevice(g.a(gVar));
                g.this.f3518c.getControlPoint().search();
            } catch (ValidationException e4) {
                e4.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d("UpnpServiceConnector", "onServiceDisconnected: ");
            g.this.f3518c = null;
        }
    }

    public g() {
        l.b bVarC = l.b.c();
        n.d dVar = (n.d) bVarC.a(n.d.class);
        if (TextUtils.isEmpty(dVar.f2633e)) {
            dVar.f2633e = UUID.randomUUID().toString();
            bVarC.d(dVar);
        }
        this.f3520e = cn.huidu.lcd.core.a.f336b;
        this.f3521f = dVar.f2632d;
        this.f3519d = dVar.f2633e;
    }

    public static LocalDevice a(g gVar) {
        Objects.requireNonNull(gVar);
        Log.d("UpnpServiceConnector", "createDevice: " + gVar.f3520e + ", " + gVar.f3521f + ", " + gVar.f3519d);
        DeviceIdentity deviceIdentity = new DeviceIdentity(new UDN(gVar.f3519d));
        UDADeviceType uDADeviceType = new UDADeviceType("MediaRenderer", 1);
        DeviceDetails deviceDetails = new DeviceDetails(gVar.f3521f, new ManufacturerDetails("Huidu", "https://www.huidu.cn/"), new ModelDetails(gVar.f3520e));
        AnnotationLocalServiceBinder annotationLocalServiceBinder = new AnnotationLocalServiceBinder();
        LocalService localService = annotationLocalServiceBinder.read(t.a.class);
        localService.setManager(new e(gVar, localService, new u.a()));
        LocalService localService2 = annotationLocalServiceBinder.read(b.class);
        localService2.setManager(new f(gVar, localService2, new u.b()));
        LocalService localService3 = annotationLocalServiceBinder.read(c.class);
        localService3.setManager(new DefaultServiceManager(localService3, c.class));
        return new LocalDevice(deviceIdentity, uDADeviceType, deviceDetails, new LocalService[]{localService, localService2, localService3});
    }

    public void b(Context context) {
        try {
            context.unbindService(this.f3522g);
        } catch (Exception e4) {
            StringBuilder sbA = android.support.v4.media.f.a("unbind: ");
            sbA.append(e4.getMessage());
            Log.w("UpnpServiceConnector", sbA.toString());
        }
    }
}
