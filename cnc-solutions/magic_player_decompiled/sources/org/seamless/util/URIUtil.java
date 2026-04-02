package org.seamless.util;

import androidx.appcompat.view.a;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.BitSet;
import org.eclipse.jetty.util.StringUtil;

/* JADX INFO: loaded from: classes2.dex */
public class URIUtil {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final BitSet ALLOWED = new BitSet() { // from class: org.seamless.util.URIUtil.1
        {
            for (int i4 = 97; i4 <= 122; i4++) {
                set(i4);
            }
            for (int i5 = 65; i5 <= 90; i5++) {
                set(i5);
            }
            for (int i6 = 48; i6 <= 57; i6++) {
                set(i6);
            }
            set(33);
            set(36);
            set(38);
            set(39);
            set(40);
            set(41);
            set(42);
            set(43);
            set(44);
            set(59);
            set(61);
            set(45);
            set(46);
            set(95);
            set(126);
            set(58);
            set(64);
        }
    };
    public static final BitSet PATH_SEGMENT = new BitSet() { // from class: org.seamless.util.URIUtil.2
        {
            or(URIUtil.ALLOWED);
            clear(59);
        }
    };
    public static final BitSet PATH_PARAM_NAME = new BitSet() { // from class: org.seamless.util.URIUtil.3
        {
            or(URIUtil.ALLOWED);
            clear(59);
            clear(61);
        }
    };
    public static final BitSet PATH_PARAM_VALUE = new BitSet() { // from class: org.seamless.util.URIUtil.4
        {
            or(URIUtil.ALLOWED);
            clear(59);
        }
    };
    public static final BitSet QUERY = new BitSet() { // from class: org.seamless.util.URIUtil.5
        {
            or(URIUtil.ALLOWED);
            set(47);
            set(63);
            clear(61);
            clear(38);
            clear(43);
        }
    };
    public static final BitSet FRAGMENT = new BitSet() { // from class: org.seamless.util.URIUtil.6
        {
            or(URIUtil.ALLOWED);
            set(47);
            set(63);
        }
    };

    public static void assertRelativeURI(String str, URI uri) {
        if (uri.isAbsolute()) {
            throw new IllegalArgumentException(a.a(str, " URI must be relative, without scheme and authority"));
        }
    }

    public static URI createAbsoluteURI(URI uri, String str) {
        return createAbsoluteURI(uri, URI.create(str));
    }

    public static URL createAbsoluteURL(URL url, String str) {
        return createAbsoluteURL(url, URI.create(str));
    }

    public static URI createRelativePathURI(URI uri) {
        assertRelativeURI("Given", uri);
        String string = uri.normalize().toString();
        while (true) {
            int iIndexOf = string.indexOf("../");
            if (iIndexOf == -1) {
                break;
            }
            string = string.substring(0, iIndexOf) + string.substring(iIndexOf + 3);
        }
        while (string.startsWith("/")) {
            string = string.substring(1);
        }
        return URI.create(string);
    }

    public static URI createRelativeURI(URI uri, URI uri2) {
        return uri.relativize(uri2);
    }

    public static String encode(BitSet bitSet, String str, String str2) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str.length() * 3);
        try {
            for (char c4 : str.toCharArray()) {
                if (bitSet.get(c4)) {
                    sb.append(c4);
                } else {
                    for (byte b4 : String.valueOf(c4).getBytes(str2)) {
                        sb.append(String.format("%%%1$02X", Integer.valueOf(b4 & 255)));
                    }
                }
            }
            return sb.toString();
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public static String encodeFragment(String str) {
        return encode(FRAGMENT, str, StringUtil.__UTF8);
    }

    public static String encodePathParamName(String str) {
        return encode(PATH_PARAM_NAME, str, StringUtil.__UTF8);
    }

    public static String encodePathParamValue(String str) {
        return encode(PATH_PARAM_VALUE, str, StringUtil.__UTF8);
    }

    public static String encodePathSegment(String str) {
        return encode(PATH_SEGMENT, str, StringUtil.__UTF8);
    }

    public static String encodeQueryNameOrValue(String str) {
        return encode(QUERY, str, StringUtil.__UTF8);
    }

    public static boolean isAbsoluteURI(String str) {
        return URI.create(str).isAbsolute();
    }

    public static String percentDecode(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLDecoder.decode(str, StringUtil.__UTF8);
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public static String percentEncode(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, StringUtil.__UTF8);
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public static URI toURI(URL url) {
        if (url == null) {
            return null;
        }
        try {
            return url.toURI();
        } catch (URISyntaxException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static URL toURL(URI uri) {
        if (uri == null) {
            return null;
        }
        try {
            return uri.toURL();
        } catch (MalformedURLException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static URI createAbsoluteURI(URI uri, URI uri2) {
        if (uri == null && !uri2.isAbsolute()) {
            throw new IllegalArgumentException("Base URI is null and given URI is not absolute");
        }
        if (uri == null && uri2.isAbsolute()) {
            return uri2;
        }
        if (uri.getPath().length() == 0) {
            try {
                uri = new URI(uri.getScheme(), uri.getAuthority(), "/", uri.getQuery(), uri.getFragment());
            } catch (Exception e4) {
                throw new IllegalArgumentException(e4);
            }
        }
        return uri.resolve(uri2);
    }

    public static URL createAbsoluteURL(URL url, URI uri) {
        if (url == null && !uri.isAbsolute()) {
            throw new IllegalArgumentException("Base URL is null and given URI is not absolute");
        }
        if (url == null && uri.isAbsolute()) {
            try {
                return uri.toURL();
            } catch (Exception unused) {
                throw new IllegalArgumentException("Base URL was null and given URI can't be converted to URL");
            }
        }
        try {
            return createAbsoluteURI(url.toURI(), uri).toURL();
        } catch (Exception e4) {
            throw new IllegalArgumentException("Base URL is not an URI, or can't create absolute URI (null?), or absolute URI can not be converted to URL", e4);
        }
    }

    public static URI createRelativeURI(URL url, URL url2) {
        try {
            return createRelativeURI(url.toURI(), url2.toURI());
        } catch (Exception e4) {
            throw new IllegalArgumentException("Can't convert base or full URL to URI", e4);
        }
    }

    public static URI createRelativeURI(URI uri, URL url) {
        try {
            return createRelativeURI(uri, url.toURI());
        } catch (Exception e4) {
            throw new IllegalArgumentException("Can't convert full URL to URI", e4);
        }
    }

    public static URI createRelativeURI(URL url, URI uri) {
        try {
            return createRelativeURI(url.toURI(), uri);
        } catch (Exception e4) {
            throw new IllegalArgumentException("Can't convert base URL to URI", e4);
        }
    }

    public static URL createAbsoluteURL(URI uri, URI uri2) {
        try {
            return createAbsoluteURI(uri, uri2).toURL();
        } catch (Exception e4) {
            throw new IllegalArgumentException("Absolute URI can not be converted to URL", e4);
        }
    }

    public static URL createAbsoluteURL(InetAddress inetAddress, int i4, URI uri) {
        try {
            if (inetAddress instanceof Inet6Address) {
                return createAbsoluteURL(new URL("http://[" + inetAddress.getHostAddress() + "]:" + i4), uri);
            }
            if (inetAddress instanceof Inet4Address) {
                return createAbsoluteURL(new URL("http://" + inetAddress.getHostAddress() + ":" + i4), uri);
            }
            throw new IllegalArgumentException("InetAddress is neither IPv4 nor IPv6: " + inetAddress);
        } catch (Exception e4) {
            throw new IllegalArgumentException("Address, port, and URI can not be converted to URL", e4);
        }
    }
}
