package org.fourthline.cling.model.types;

import androidx.appcompat.view.a;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class UDADeviceType extends DeviceType {
    public static final String DEFAULT_NAMESPACE = "schemas-upnp-org";
    public static final Pattern PATTERN = Pattern.compile("urn:schemas-upnp-org:device:([a-zA-Z_0-9\\-]{1,64}):([0-9]+).*");

    public UDADeviceType(String str) {
        super("schemas-upnp-org", str, 1);
    }

    public static UDADeviceType valueOf(String str) {
        Matcher matcher = PATTERN.matcher(str);
        try {
            if (matcher.matches()) {
                return new UDADeviceType(matcher.group(1), Integer.valueOf(matcher.group(2)).intValue());
            }
            throw new InvalidValueException(a.a("Can't parse UDA device type string (namespace/type/version): ", str));
        } catch (RuntimeException e4) {
            throw new InvalidValueException(String.format("Can't parse UDA device type string (namespace/type/version) '%s': %s", str, e4.toString()));
        }
    }

    public UDADeviceType(String str, int i4) {
        super("schemas-upnp-org", str, i4);
    }
}
