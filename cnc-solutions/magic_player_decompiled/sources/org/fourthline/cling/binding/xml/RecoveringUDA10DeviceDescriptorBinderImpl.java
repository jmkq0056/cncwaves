package org.fourthline.cling.binding.xml;

import java.util.logging.Logger;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.meta.Device;

/* JADX INFO: loaded from: classes2.dex */
public class RecoveringUDA10DeviceDescriptorBinderImpl extends UDA10DeviceDescriptorBinderImpl {
    private static Logger log = Logger.getLogger(RecoveringUDA10DeviceDescriptorBinderImpl.class.getName());

    private String fixGarbageLeadingChars(String str) {
        int iIndexOf = str.indexOf("<?xml");
        return iIndexOf == -1 ? str : str.substring(iIndexOf);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x005d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:23:0x0085
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:226)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:196)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:63)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.processExcHandler(ExcHandlersRegionMaker.java:154)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:77)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @Override // org.fourthline.cling.binding.xml.UDA10DeviceDescriptorBinderImpl, org.fourthline.cling.binding.xml.DeviceDescriptorBinder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <D extends org.fourthline.cling.model.meta.Device> D describe(D r8, java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.describe(org.fourthline.cling.model.meta.Device, java.lang.String):org.fourthline.cling.model.meta.Device");
    }

    public String fixGarbageTrailingChars(String str, DescriptorBindingException descriptorBindingException) {
        int iIndexOf = str.indexOf("</root>");
        if (iIndexOf == -1) {
            log.warning("No closing </root> element in descriptor");
            return null;
        }
        if (str.length() == iIndexOf + 7) {
            return null;
        }
        log.warning("Detected garbage characters after <root> node, removing");
        return str.substring(0, iIndexOf) + "</root>";
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0044 A[PHI: r0
      0x0044: PHI (r0v7 java.util.regex.Matcher) = (r0v6 java.util.regex.Matcher), (r0v3 java.util.regex.Matcher) binds: [B:17:0x0040, B:13:0x002a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String fixMissingNamespaces(java.lang.String r8, org.fourthline.cling.binding.xml.DescriptorBindingException r9) {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.fixMissingNamespaces(java.lang.String, org.fourthline.cling.binding.xml.DescriptorBindingException):java.lang.String");
    }

    public void handleInvalidDescriptor(String str, DescriptorBindingException descriptorBindingException) throws DescriptorBindingException {
        throw descriptorBindingException;
    }

    public <D extends Device> D handleInvalidDevice(String str, D d4, ValidationException validationException) throws ValidationException {
        throw validationException;
    }
}
