package org.fourthline.cling.support.model.dlna.message.header;

import androidx.appcompat.view.a;
import java.util.regex.Pattern;
import org.fourthline.cling.model.message.header.InvalidHeaderException;

/* JADX INFO: loaded from: classes2.dex */
public class EventTypeHeader extends DLNAHeader<String> {
    public static final Pattern pattern = Pattern.compile("^[0-9]{4}$", 2);

    public EventTypeHeader() {
        setValue("0000");
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue().toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        if (!pattern.matcher(str).matches()) {
            throw new InvalidHeaderException(a.a("Invalid EventType header value: ", str));
        }
        setValue(str);
    }
}
