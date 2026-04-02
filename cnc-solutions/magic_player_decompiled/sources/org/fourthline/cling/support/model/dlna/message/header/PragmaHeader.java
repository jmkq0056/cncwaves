package org.fourthline.cling.support.model.dlna.message.header;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import java.util.ArrayList;
import java.util.List;
import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.model.types.PragmaType;

/* JADX INFO: loaded from: classes2.dex */
public class PragmaHeader extends DLNAHeader<List<PragmaType>> {
    public PragmaHeader() {
        setValue(new ArrayList());
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        String string = "";
        for (PragmaType pragmaType : getValue()) {
            StringBuilder sbA = f.a(string);
            sbA.append(string.length() == 0 ? "" : ",");
            sbA.append(pragmaType.getString());
            string = sbA.toString();
        }
        return string;
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        if (str.length() == 0) {
            throw new InvalidHeaderException(a.a("Invalid Pragma header value: ", str));
        }
        if (str.endsWith(";")) {
            str = str.substring(0, str.length() - 1);
        }
        String[] strArrSplit = str.split("\\s*;\\s*");
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArrSplit) {
            arrayList.add(PragmaType.valueOf(str2));
        }
    }
}
