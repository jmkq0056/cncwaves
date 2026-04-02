package org.fourthline.cling.model.message.header;

import androidx.appcompat.view.a;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class CallbackHeader extends UpnpHeader<List<URL>> {
    private static final Logger log = Logger.getLogger(CallbackHeader.class.getName());

    public CallbackHeader() {
        setValue(new ArrayList());
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        StringBuilder sb = new StringBuilder();
        for (URL url : getValue()) {
            sb.append("<");
            sb.append(url.toString());
            sb.append(">");
        }
        return sb.toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        if (str.length() == 0) {
            return;
        }
        if (!str.contains("<") || !str.contains(">")) {
            throw new InvalidHeaderException(a.a("URLs not in brackets: ", str));
        }
        String strReplaceAll = str.replaceAll("<", "");
        String[] strArrSplit = strReplaceAll.split(">");
        try {
            ArrayList arrayList = new ArrayList();
            for (String str2 : strArrSplit) {
                String strTrim = str2.trim();
                if (strTrim.startsWith("http://")) {
                    URL url = new URL(strTrim);
                    try {
                        url.toURI();
                        arrayList.add(url);
                    } catch (URISyntaxException e4) {
                        log.log(Level.WARNING, "Discarding callback URL, not a valid URI on this platform: " + url, (Throwable) e4);
                    }
                } else {
                    log.warning("Discarding non-http callback URL: " + strTrim);
                }
            }
            setValue(arrayList);
        } catch (MalformedURLException e5) {
            throw new InvalidHeaderException("Can't parse callback URLs from '" + strReplaceAll + "': " + e5);
        }
    }

    public CallbackHeader(List<URL> list) {
        this();
        getValue().addAll(list);
    }

    public CallbackHeader(URL url) {
        this();
        getValue().add(url);
    }
}
