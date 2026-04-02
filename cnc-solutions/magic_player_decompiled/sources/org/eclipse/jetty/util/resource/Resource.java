package org.eclipse.jetty.util.resource;

import android.support.v4.media.b;
import android.support.v4.media.f;
import androidx.appcompat.view.a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.text.DateFormat;
import java.util.Arrays;
import java.util.Date;
import org.eclipse.jetty.util.B64Code;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.Loader;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Resource implements ResourceFactory {
    private static final Logger LOG = Log.getLogger((Class<?>) Resource.class);
    public static boolean __defaultUseCaches = true;
    public volatile Object _associate;

    private static String deTag(String str) {
        return StringUtil.replace(StringUtil.replace(str, "<", "&lt;"), ">", "&gt;");
    }

    public static boolean getDefaultUseCaches() {
        return __defaultUseCaches;
    }

    private static String hrefEncodeURI(String str) {
        StringBuffer stringBuffer;
        for (int i4 = 0; i4 < str.length(); i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt == '\"' || cCharAt == '\'' || cCharAt == '<' || cCharAt == '>') {
                stringBuffer = new StringBuffer(str.length() << 1);
                break;
            }
        }
        stringBuffer = null;
        if (stringBuffer == null) {
            return str;
        }
        for (int i5 = 0; i5 < str.length(); i5++) {
            char cCharAt2 = str.charAt(i5);
            if (cCharAt2 == '\"') {
                stringBuffer.append("%22");
            } else if (cCharAt2 == '\'') {
                stringBuffer.append("%27");
            } else if (cCharAt2 == '<') {
                stringBuffer.append("%3C");
            } else if (cCharAt2 != '>') {
                stringBuffer.append(cCharAt2);
            } else {
                stringBuffer.append("%3E");
            }
        }
        return stringBuffer.toString();
    }

    public static boolean isContainedIn(Resource resource, Resource resource2) {
        return resource.isContainedIn(resource2);
    }

    public static Resource newClassPathResource(String str) {
        return newClassPathResource(str, true, false);
    }

    public static Resource newResource(URI uri) {
        return newResource(uri.toURL());
    }

    public static Resource newSystemResource(String str) {
        URL resource;
        ClassLoader classLoader;
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader != null) {
            try {
                resource = contextClassLoader.getResource(str);
                if (resource == null && str.startsWith("/")) {
                    resource = contextClassLoader.getResource(str.substring(1));
                }
            } catch (IllegalArgumentException unused) {
                resource = null;
            }
        } else {
            resource = null;
        }
        if (resource == null && (classLoader = Resource.class.getClassLoader()) != null && (resource = classLoader.getResource(str)) == null && str.startsWith("/")) {
            resource = classLoader.getResource(str.substring(1));
        }
        if (resource == null && (resource = ClassLoader.getSystemResource(str)) == null && str.startsWith("/")) {
            resource = ClassLoader.getSystemResource(str.substring(1));
        }
        if (resource == null) {
            return null;
        }
        return newResource(resource);
    }

    public static void setDefaultUseCaches(boolean z3) {
        __defaultUseCaches = z3;
    }

    public static URL toURL(File file) {
        return file.toURI().toURL();
    }

    public abstract Resource addPath(String str);

    public void copyTo(File file) throws IOException {
        if (!file.exists()) {
            writeTo(new FileOutputStream(file), 0L, -1L);
            return;
        }
        throw new IllegalArgumentException(file + " exists");
    }

    public abstract boolean delete();

    public String encode(String str) {
        return URIUtil.encodePath(str);
    }

    public abstract boolean exists();

    public void finalize() {
        release();
    }

    public URL getAlias() {
        return null;
    }

    public Object getAssociate() {
        return this._associate;
    }

    public abstract File getFile();

    public abstract InputStream getInputStream();

    public String getListHTML(String str, boolean z3) {
        String[] list;
        String strCanonicalPath = URIUtil.canonicalPath(str);
        if (strCanonicalPath == null || !isDirectory() || (list = list()) == null) {
            return null;
        }
        Arrays.sort(list);
        String strDecodePath = URIUtil.decodePath(strCanonicalPath);
        StringBuilder sbA = f.a("Directory: ");
        sbA.append(deTag(strDecodePath));
        String string = sbA.toString();
        StringBuilder sb = new StringBuilder(4096);
        sb.append("<HTML><HEAD>");
        sb.append("<LINK HREF=\"");
        sb.append("jetty-dir.css");
        sb.append("\" REL=\"stylesheet\" TYPE=\"text/css\"/><TITLE>");
        d.f.a(sb, string, "</TITLE></HEAD><BODY>\n<H1>", string, "</H1>\n<TABLE BORDER=0>\n");
        if (z3) {
            sb.append("<TR><TD><A HREF=\"");
            sb.append(URIUtil.addPaths(strCanonicalPath, "../"));
            sb.append("\">Parent Directory</A></TD><TD></TD><TD></TD></TR>\n");
        }
        String strHrefEncodeURI = hrefEncodeURI(strCanonicalPath);
        DateFormat dateTimeInstance = DateFormat.getDateTimeInstance(2, 2);
        for (int i4 = 0; i4 < list.length; i4++) {
            Resource resourceAddPath = addPath(list[i4]);
            sb.append("\n<TR><TD><A HREF=\"");
            String strAddPaths = URIUtil.addPaths(strHrefEncodeURI, URIUtil.encodePath(list[i4]));
            sb.append(strAddPaths);
            if (resourceAddPath.isDirectory() && !strAddPaths.endsWith("/")) {
                sb.append("/");
            }
            sb.append("\">");
            sb.append(deTag(list[i4]));
            sb.append("&nbsp;");
            sb.append("</A></TD><TD ALIGN=right>");
            sb.append(resourceAddPath.length());
            sb.append(" bytes&nbsp;</TD><TD>");
            sb.append(dateTimeInstance.format(new Date(resourceAddPath.lastModified())));
            sb.append("</TD></TR>");
        }
        return b.a(sb, "</TABLE>\n", "</BODY></HTML>\n");
    }

    public abstract String getName();

    public abstract OutputStream getOutputStream();

    @Override // org.eclipse.jetty.util.resource.ResourceFactory
    public Resource getResource(String str) {
        try {
            return addPath(str);
        } catch (Exception e4) {
            LOG.debug(e4);
            return null;
        }
    }

    public URI getURI() {
        try {
            return getURL().toURI();
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public abstract URL getURL();

    public String getWeakETag() {
        try {
            StringBuilder sb = new StringBuilder(32);
            sb.append("W/\"");
            String name = getName();
            int length = name.length();
            long jCharAt = 0;
            for (int i4 = 0; i4 < length; i4++) {
                jCharAt = (jCharAt * 31) + ((long) name.charAt(i4));
            }
            B64Code.encode(lastModified() ^ jCharAt, sb);
            B64Code.encode(length() ^ jCharAt, sb);
            sb.append('\"');
            return sb.toString();
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public abstract boolean isContainedIn(Resource resource);

    public abstract boolean isDirectory();

    public abstract long lastModified();

    public abstract long length();

    public abstract String[] list();

    public abstract void release();

    public abstract boolean renameTo(Resource resource);

    public void setAssociate(Object obj) {
        this._associate = obj;
    }

    public void writeTo(OutputStream outputStream, long j4, long j5) throws IOException {
        InputStream inputStream = getInputStream();
        try {
            inputStream.skip(j4);
            if (j5 < 0) {
                IO.copy(inputStream, outputStream);
            } else {
                IO.copy(inputStream, outputStream, j5);
            }
        } finally {
            inputStream.close();
        }
    }

    public static Resource newClassPathResource(String str, boolean z3, boolean z4) {
        URL resource = Resource.class.getResource(str);
        if (resource == null) {
            resource = Loader.getResource(Resource.class, str, z4);
        }
        if (resource == null) {
            return null;
        }
        return newResource(resource, z3);
    }

    public static Resource newResource(URL url) {
        return newResource(url, __defaultUseCaches);
    }

    public static Resource newResource(URL url, boolean z3) {
        if (url == null) {
            return null;
        }
        String externalForm = url.toExternalForm();
        if (externalForm.startsWith("file:")) {
            try {
                return new FileResource(url);
            } catch (Exception e4) {
                LOG.debug(Log.EXCEPTION, e4);
                return new BadResource(url, e4.toString());
            }
        }
        if (externalForm.startsWith("jar:file:")) {
            return new JarFileResource(url, z3);
        }
        if (externalForm.startsWith("jar:")) {
            return new JarResource(url, z3);
        }
        return new URLResource(url, null, z3);
    }

    public static Resource newResource(String str) {
        return newResource(str, __defaultUseCaches);
    }

    public static Resource newResource(String str, boolean z3) throws MalformedURLException {
        try {
            return newResource(new URL(str));
        } catch (MalformedURLException e4) {
            if (!str.startsWith("ftp:") && !str.startsWith("file:") && !str.startsWith("jar:")) {
                try {
                    if (str.startsWith("./")) {
                        str = str.substring(2);
                    }
                    File canonicalFile = new File(str).getCanonicalFile();
                    URL url = toURL(canonicalFile);
                    URLConnection uRLConnectionOpenConnection = url.openConnection();
                    uRLConnectionOpenConnection.setUseCaches(z3);
                    return new FileResource(url, uRLConnectionOpenConnection, canonicalFile);
                } catch (Exception e5) {
                    LOG.debug(Log.EXCEPTION, e5);
                    throw e4;
                }
            }
            LOG.warn(a.a("Bad Resource: ", str), new Object[0]);
            throw e4;
        }
    }

    public static Resource newResource(File file) throws IOException {
        File canonicalFile = file.getCanonicalFile();
        URL url = toURL(canonicalFile);
        return new FileResource(url, url.openConnection(), canonicalFile);
    }
}
