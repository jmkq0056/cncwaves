package org.fourthline.cling.support.model.dlna;

import androidx.appcompat.view.a;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class DLNAFlagsAttribute extends DLNAAttribute<EnumSet<DLNAFlags>> {
    public DLNAFlagsAttribute() {
        setValue(EnumSet.noneOf(DLNAFlags.class));
    }

    @Override // org.fourthline.cling.support.model.dlna.DLNAAttribute
    public String getString() {
        Iterator it = getValue().iterator();
        int code = 0;
        while (it.hasNext()) {
            code |= ((DLNAFlags) it.next()).getCode();
        }
        return String.format(Locale.ROOT, "%08x%024x", Integer.valueOf(code), 0);
    }

    @Override // org.fourthline.cling.support.model.dlna.DLNAAttribute
    public void setString(String str, String str2) {
        EnumSet enumSetNoneOf = EnumSet.noneOf(DLNAFlags.class);
        try {
            int i4 = Integer.parseInt(str.substring(0, str.length() - 24), 16);
            for (DLNAFlags dLNAFlags : DLNAFlags.values()) {
                if (dLNAFlags.getCode() == (dLNAFlags.getCode() & i4)) {
                    enumSetNoneOf.add(dLNAFlags);
                }
            }
        } catch (Exception unused) {
        }
        if (enumSetNoneOf.isEmpty()) {
            throw new InvalidDLNAProtocolAttributeException(a.a("Can't parse DLNA flags integer from: ", str));
        }
        setValue(enumSetNoneOf);
    }

    public DLNAFlagsAttribute(DLNAFlags... dLNAFlagsArr) {
        if (dLNAFlagsArr == null || dLNAFlagsArr.length <= 0) {
            return;
        }
        DLNAFlags dLNAFlags = dLNAFlagsArr[0];
        if (dLNAFlagsArr.length > 1) {
            System.arraycopy(dLNAFlagsArr, 1, dLNAFlagsArr, 0, dLNAFlagsArr.length - 1);
            setValue(EnumSet.of(dLNAFlags, dLNAFlagsArr));
        } else {
            setValue(EnumSet.of(dLNAFlags));
        }
    }
}
