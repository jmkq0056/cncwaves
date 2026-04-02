package androidx.core.net;

import android.net.Uri;
import android.support.v4.media.b;
import android.support.v4.media.f;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public final class UriCompat {
    private UriCompat() {
    }

    @NonNull
    public static String toSafeString(@NonNull Uri uri) {
        String scheme = uri.getScheme();
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        if (scheme != null) {
            if (scheme.equalsIgnoreCase("tel") || scheme.equalsIgnoreCase("sip") || scheme.equalsIgnoreCase("sms") || scheme.equalsIgnoreCase("smsto") || scheme.equalsIgnoreCase("mailto") || scheme.equalsIgnoreCase("nfc")) {
                StringBuilder sb = new StringBuilder(64);
                sb.append(scheme);
                sb.append(':');
                if (schemeSpecificPart != null) {
                    for (int i4 = 0; i4 < schemeSpecificPart.length(); i4++) {
                        char cCharAt = schemeSpecificPart.charAt(i4);
                        if (cCharAt == '-' || cCharAt == '@' || cCharAt == '.') {
                            sb.append(cCharAt);
                        } else {
                            sb.append('x');
                        }
                    }
                }
                return sb.toString();
            }
            if (scheme.equalsIgnoreCase("http") || scheme.equalsIgnoreCase("https") || scheme.equalsIgnoreCase("ftp") || scheme.equalsIgnoreCase("rtsp")) {
                StringBuilder sbA = f.a("//");
                String string = "";
                sbA.append(uri.getHost() != null ? uri.getHost() : "");
                if (uri.getPort() != -1) {
                    StringBuilder sbA2 = f.a(":");
                    sbA2.append(uri.getPort());
                    string = sbA2.toString();
                }
                schemeSpecificPart = b.a(sbA, string, "/...");
            }
        }
        StringBuilder sb2 = new StringBuilder(64);
        if (scheme != null) {
            sb2.append(scheme);
            sb2.append(':');
        }
        if (schemeSpecificPart != null) {
            sb2.append(schemeSpecificPart);
        }
        return sb2.toString();
    }
}
