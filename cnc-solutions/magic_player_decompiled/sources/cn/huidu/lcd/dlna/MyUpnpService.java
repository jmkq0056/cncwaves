package cn.huidu.lcd.dlna;

import org.fourthline.cling.UpnpServiceConfiguration;
import org.fourthline.cling.android.AndroidUpnpServiceConfiguration;
import org.fourthline.cling.android.AndroidUpnpServiceImpl;
import org.fourthline.cling.binding.xml.ServiceDescriptorBinder;
import u.d;

/* JADX INFO: loaded from: classes.dex */
public class MyUpnpService extends AndroidUpnpServiceImpl {

    public class a extends AndroidUpnpServiceConfiguration {
        public a(MyUpnpService myUpnpService) {
        }

        @Override // org.fourthline.cling.android.AndroidUpnpServiceConfiguration, org.fourthline.cling.DefaultUpnpServiceConfiguration
        public ServiceDescriptorBinder createServiceDescriptorBinderUDA10() {
            return new d();
        }
    }

    @Override // org.fourthline.cling.android.AndroidUpnpServiceImpl
    public UpnpServiceConfiguration createConfiguration() {
        return new a(this);
    }
}
