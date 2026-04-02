package org.fourthline.cling.model.message.header;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class MaxAgeHeader extends UpnpHeader<Integer> {
    public static final Pattern MAX_AGE_REGEX = Pattern.compile(".*max-age\\s*=\\s*([0-9]+).*");

    public MaxAgeHeader(Integer num) {
        setValue(num);
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        StringBuilder sbA = f.a("max-age=");
        sbA.append(getValue().toString());
        return sbA.toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        Matcher matcher = MAX_AGE_REGEX.matcher(str.toLowerCase(Locale.ROOT));
        if (!matcher.matches()) {
            throw new InvalidHeaderException(a.a("Invalid cache-control value, can't parse max-age seconds: ", str));
        }
        setValue(Integer.valueOf(Integer.parseInt(matcher.group(1))));
    }

    public MaxAgeHeader() {
        setValue(1800);
    }
}
