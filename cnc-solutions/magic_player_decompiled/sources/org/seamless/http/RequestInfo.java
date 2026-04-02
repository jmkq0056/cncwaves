package org.seamless.http;

import d.f;
import j2.a;
import j2.c;
import java.util.Enumeration;
import java.util.logging.Logger;
import org.eclipse.jetty.http.HttpHeaders;

/* JADX INFO: loaded from: classes2.dex */
public class RequestInfo {
    private static final Logger log = Logger.getLogger(RequestInfo.class.getName());

    public static void dumpRequestHeaders(long j4, c cVar) {
        dumpRequestHeaders(j4, "REQUEST HEADERS", cVar);
    }

    public static void dumpRequestString(long j4, c cVar) {
        log.info(getRequestInfoString(j4, cVar));
    }

    public static String getRequestFullURL(c cVar) {
        String scheme = cVar.getScheme();
        String serverName = cVar.getServerName();
        int serverPort = cVar.getServerPort();
        String contextPath = cVar.getContextPath();
        String servletPath = cVar.getServletPath();
        String pathInfo = cVar.getPathInfo();
        String queryString = cVar.getQueryString();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(scheme);
        stringBuffer.append("://");
        stringBuffer.append(serverName);
        if (serverPort != 80 && serverPort != 443) {
            stringBuffer.append(":");
            stringBuffer.append(serverPort);
        }
        stringBuffer.append(contextPath);
        stringBuffer.append(servletPath);
        if (pathInfo != null) {
            stringBuffer.append(pathInfo);
        }
        if (queryString != null) {
            stringBuffer.append("?");
            stringBuffer.append(queryString);
        }
        return stringBuffer.toString();
    }

    public static String getRequestInfoString(long j4, c cVar) {
        return String.format("%s %s %s %s %s %d", cVar.getMethod(), cVar.getRequestURI(), cVar.getProtocol(), cVar.getParameterMap(), cVar.getRemoteAddr(), Long.valueOf(j4));
    }

    public static boolean isAndroidBubbleUPnPRequest(String str) {
        return str != null && str.contains("BubbleUPnP");
    }

    public static boolean isJRiverRequest(c cVar) {
        return isJRiverRequest(cVar.getHeader(HttpHeaders.USER_AGENT));
    }

    public static boolean isPS3Request(String str, String str2) {
        return (str != null && str.contains("PLAYSTATION 3")) || (str2 != null && str2.contains("PLAYSTATION 3"));
    }

    public static boolean isWMPRequest(String str) {
        return (str == null || !str.contains("Windows-Media-Player") || isJRiverRequest(str)) ? false : true;
    }

    public static boolean isXbox360AlbumArtRequest(c cVar) {
        return "true".equals(cVar.getParameter("albumArt")) && isXbox360Request(cVar);
    }

    public static boolean isXbox360Request(c cVar) {
        return isXbox360Request(cVar.getHeader(HttpHeaders.USER_AGENT), cVar.getHeader(HttpHeaders.SERVER));
    }

    public static void reportClient(StringBuilder sb, c cVar) {
        sb.append("Remote Address: ");
        sb.append(cVar.getRemoteAddr());
        sb.append("\n");
        if (!cVar.getRemoteAddr().equals(cVar.getRemoteHost())) {
            sb.append("Remote Host: ");
            sb.append(cVar.getRemoteHost());
            sb.append("\n");
        }
        sb.append("Remote Port: ");
        sb.append(cVar.getRemotePort());
        sb.append("\n");
        if (cVar.getRemoteUser() != null) {
            sb.append("Remote User: ");
            sb.append(cVar.getRemoteUser());
            sb.append("\n");
        }
    }

    public static void reportCookies(StringBuilder sb, c cVar) {
        a[] cookies = cVar.getCookies();
        if (cookies != null && (cookies.length) > 0) {
            sb.append("Cookies:\n");
            for (a aVar : cookies) {
                sb.append("    ");
                sb.append(aVar.f2016a);
                sb.append(" = ");
                sb.append(aVar.f2017b);
                sb.append('\n');
            }
        }
    }

    public static void reportHeaders(StringBuilder sb, c cVar) {
        Enumeration<String> headerNames = cVar.getHeaderNames();
        if (headerNames != null && headerNames.hasMoreElements()) {
            sb.append("Headers:\n");
            while (headerNames.hasMoreElements()) {
                String strNextElement = headerNames.nextElement();
                String header = cVar.getHeader(strNextElement);
                sb.append("    ");
                sb.append(strNextElement);
                sb.append(": ");
                sb.append(header);
                sb.append('\n');
            }
        }
    }

    public static void reportParameters(StringBuilder sb, c cVar) {
        Enumeration<String> parameterNames = cVar.getParameterNames();
        if (parameterNames != null && parameterNames.hasMoreElements()) {
            sb.append("Parameters:\n");
            while (parameterNames.hasMoreElements()) {
                String strNextElement = parameterNames.nextElement();
                String[] parameterValues = cVar.getParameterValues(strNextElement);
                if (parameterValues != null) {
                    for (String str : parameterValues) {
                        f.a(sb, "    ", strNextElement, " = ", str);
                        sb.append('\n');
                    }
                }
            }
        }
    }

    public static void reportRequest(StringBuilder sb, c cVar) {
        sb.append("Request: ");
        sb.append(cVar.getMethod());
        sb.append(' ');
        sb.append(cVar.getRequestURL());
        String queryString = cVar.getQueryString();
        if (queryString != null) {
            sb.append('?');
            sb.append(queryString);
        }
        sb.append(" - ");
        String requestedSessionId = cVar.getRequestedSessionId();
        if (requestedSessionId != null) {
            sb.append("\nSession ID: ");
        }
        if (requestedSessionId == null) {
            sb.append("No Session");
            return;
        }
        if (!cVar.isRequestedSessionIdValid()) {
            sb.append("Invalid Session ID\n");
            return;
        }
        sb.append(requestedSessionId);
        sb.append(" (from ");
        if (cVar.isRequestedSessionIdFromCookie()) {
            sb.append("cookie)\n");
        } else if (cVar.isRequestedSessionIdFromURL()) {
            sb.append("url)\n");
        } else {
            sb.append("unknown)\n");
        }
    }

    public static void dumpRequestHeaders(long j4, String str, c cVar) {
        log.info(str);
        dumpRequestString(j4, cVar);
        Enumeration<String> headerNames = cVar.getHeaderNames();
        if (headerNames != null) {
            while (headerNames.hasMoreElements()) {
                String strNextElement = headerNames.nextElement();
                log.info(String.format("%s: %s", strNextElement, cVar.getHeader(strNextElement)));
            }
        }
        log.info("----------------------------------------");
    }

    public static boolean isJRiverRequest(String str) {
        return str != null && (str.contains("J-River") || str.contains("J. River"));
    }

    public static boolean isXbox360Request(String str, String str2) {
        return (str != null && (str.contains("Xbox") || str.contains("Xenon"))) || (str2 != null && str2.contains("Xbox"));
    }

    public static boolean isPS3Request(c cVar) {
        return isPS3Request(cVar.getHeader(HttpHeaders.USER_AGENT), cVar.getHeader("X-AV-Client-Info"));
    }
}
