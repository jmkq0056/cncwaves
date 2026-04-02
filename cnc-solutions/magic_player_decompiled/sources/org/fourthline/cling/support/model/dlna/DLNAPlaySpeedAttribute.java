package org.fourthline.cling.support.model.dlna;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable;

/* JADX INFO: loaded from: classes2.dex */
public class DLNAPlaySpeedAttribute extends DLNAAttribute<AVTransportVariable.TransportPlaySpeed[]> {
    public DLNAPlaySpeedAttribute() {
        setValue(new AVTransportVariable.TransportPlaySpeed[0]);
    }

    @Override // org.fourthline.cling.support.model.dlna.DLNAAttribute
    public String getString() {
        String string = "";
        for (AVTransportVariable.TransportPlaySpeed transportPlaySpeed : getValue()) {
            if (!transportPlaySpeed.getValue().equals("1")) {
                StringBuilder sbA = f.a(string);
                sbA.append(string.length() == 0 ? "" : ",");
                sbA.append(transportPlaySpeed);
                string = sbA.toString();
            }
        }
        return string;
    }

    @Override // org.fourthline.cling.support.model.dlna.DLNAAttribute
    public void setString(String str, String str2) {
        AVTransportVariable.TransportPlaySpeed[] transportPlaySpeedArr = null;
        if (str != null && str.length() != 0) {
            String[] strArrSplit = str.split(",");
            try {
                AVTransportVariable.TransportPlaySpeed[] transportPlaySpeedArr2 = new AVTransportVariable.TransportPlaySpeed[strArrSplit.length];
                for (int i4 = 0; i4 < strArrSplit.length; i4++) {
                    transportPlaySpeedArr2[i4] = new AVTransportVariable.TransportPlaySpeed(strArrSplit[i4]);
                }
                transportPlaySpeedArr = transportPlaySpeedArr2;
            } catch (InvalidValueException unused) {
            }
        }
        if (transportPlaySpeedArr == null) {
            throw new InvalidDLNAProtocolAttributeException(a.a("Can't parse DLNA play speeds from: ", str));
        }
        setValue(transportPlaySpeedArr);
    }

    public DLNAPlaySpeedAttribute(AVTransportVariable.TransportPlaySpeed[] transportPlaySpeedArr) {
        setValue(transportPlaySpeedArr);
    }

    public DLNAPlaySpeedAttribute(String[] strArr) {
        AVTransportVariable.TransportPlaySpeed[] transportPlaySpeedArr = new AVTransportVariable.TransportPlaySpeed[strArr.length];
        for (int i4 = 0; i4 < strArr.length; i4++) {
            try {
                transportPlaySpeedArr[i4] = new AVTransportVariable.TransportPlaySpeed(strArr[i4]);
            } catch (InvalidValueException unused) {
                throw new InvalidDLNAProtocolAttributeException("Can't parse DLNA play speeds.");
            }
        }
        setValue(transportPlaySpeedArr);
    }
}
