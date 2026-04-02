package org.fourthline.cling.support.model.dlna.message.header;

import android.support.v4.media.f;
import java.util.EnumMap;
import org.fourthline.cling.support.model.dlna.DLNAAttribute;

/* JADX INFO: loaded from: classes2.dex */
public class ContentFeaturesHeader extends DLNAHeader<EnumMap<DLNAAttribute.Type, DLNAAttribute>> {
    public ContentFeaturesHeader() {
        setValue(new EnumMap(DLNAAttribute.Type.class));
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        String string = "";
        for (DLNAAttribute.Type type : DLNAAttribute.Type.values()) {
            String string2 = getValue().containsKey(type) ? getValue().get(type).getString() : null;
            if (string2 != null && string2.length() != 0) {
                StringBuilder sbA = f.a(string);
                sbA.append(string.length() == 0 ? "" : ";");
                sbA.append(type.getAttributeName());
                sbA.append("=");
                sbA.append(string2);
                string = sbA.toString();
            }
        }
        return string;
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        DLNAAttribute.Type typeValueOfAttributeName;
        if (str.length() != 0) {
            for (String str2 : str.split(";")) {
                String[] strArrSplit = str2.split("=");
                if (strArrSplit.length == 2 && (typeValueOfAttributeName = DLNAAttribute.Type.valueOfAttributeName(strArrSplit[0])) != null) {
                    getValue().put(typeValueOfAttributeName, DLNAAttribute.newInstance(typeValueOfAttributeName, strArrSplit[1], ""));
                }
            }
        }
    }
}
