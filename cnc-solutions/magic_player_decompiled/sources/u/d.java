package u;

import android.support.v4.media.f;
import java.io.StringReader;
import org.fourthline.cling.binding.staging.MutableService;
import org.fourthline.cling.binding.xml.DescriptorBindingException;
import org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.meta.Service;
import org.xml.sax.InputSource;

/* JADX INFO: loaded from: classes.dex */
public class d extends UDA10ServiceDescriptorBinderSAXImpl {
    @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl, org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderImpl, org.fourthline.cling.binding.xml.ServiceDescriptorBinder
    public <S extends Service> S describe(S s3, String str) throws ValidationException, DescriptorBindingException {
        if (str == null || str.length() == 0) {
            throw new DescriptorBindingException("Null or empty descriptor");
        }
        try {
            c cVar = new c();
            MutableService mutableService = new MutableService();
            hydrateBasic(mutableService, s3);
            new UDA10ServiceDescriptorBinderSAXImpl.RootHandler(mutableService, cVar);
            cVar.parse(new InputSource(new StringReader(str.trim())));
            return (S) mutableService.build(s3.getDevice());
        } catch (ValidationException e4) {
            throw e4;
        } catch (Exception e5) {
            StringBuilder sbA = f.a("Could not parse service descriptor: ");
            sbA.append(e5.toString());
            throw new DescriptorBindingException(sbA.toString(), e5);
        }
    }
}
