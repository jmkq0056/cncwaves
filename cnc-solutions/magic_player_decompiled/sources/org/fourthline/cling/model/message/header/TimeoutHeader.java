package org.fourthline.cling.model.message.header;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import androidx.appcompat.widget.ActivityChooserView;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class TimeoutHeader extends UpnpHeader<Integer> {
    public static final Integer INFINITE_VALUE = Integer.valueOf(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    public static final Pattern PATTERN = Pattern.compile("Second-(?:([0-9]+)|infinite)");

    public TimeoutHeader() {
        setValue(1800);
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        StringBuilder sbA = f.a("Second-");
        sbA.append(getValue().equals(INFINITE_VALUE) ? "infinite" : getValue());
        return sbA.toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        Matcher matcher = PATTERN.matcher(str);
        if (!matcher.matches()) {
            throw new InvalidHeaderException(a.a("Can't parse timeout seconds integer from: ", str));
        }
        if (matcher.group(1) != null) {
            setValue(Integer.valueOf(Integer.parseInt(matcher.group(1))));
        } else {
            setValue(INFINITE_VALUE);
        }
    }

    public TimeoutHeader(int i4) {
        setValue(Integer.valueOf(i4));
    }

    public TimeoutHeader(Integer num) {
        setValue(num);
    }
}
