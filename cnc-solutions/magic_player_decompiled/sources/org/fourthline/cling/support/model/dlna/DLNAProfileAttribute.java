package org.fourthline.cling.support.model.dlna;

import androidx.appcompat.view.a;

/* JADX INFO: loaded from: classes2.dex */
public class DLNAProfileAttribute extends DLNAAttribute<DLNAProfiles> {
    public DLNAProfileAttribute() {
        setValue(DLNAProfiles.NONE);
    }

    @Override // org.fourthline.cling.support.model.dlna.DLNAAttribute
    public String getString() {
        return getValue().getCode();
    }

    @Override // org.fourthline.cling.support.model.dlna.DLNAAttribute
    public void setString(String str, String str2) {
        DLNAProfiles dLNAProfilesValueOf = DLNAProfiles.valueOf(str, str2);
        if (dLNAProfilesValueOf == null) {
            throw new InvalidDLNAProtocolAttributeException(a.a("Can't parse DLNA profile from: ", str));
        }
        setValue(dLNAProfilesValueOf);
    }

    public DLNAProfileAttribute(DLNAProfiles dLNAProfiles) {
        setValue(dLNAProfiles);
    }
}
