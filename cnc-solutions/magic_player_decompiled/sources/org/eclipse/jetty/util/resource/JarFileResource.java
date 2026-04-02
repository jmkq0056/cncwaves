package org.eclipse.jetty.util.resource;

import android.support.v4.media.b;
import java.io.File;
import java.io.IOException;
import java.net.JarURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
class JarFileResource extends JarResource {
    private static final Logger LOG = Log.getLogger((Class<?>) JarFileResource.class);
    private boolean _directory;
    private JarEntry _entry;
    private boolean _exists;
    private File _file;
    private JarFile _jarFile;
    private String _jarUrl;
    private String[] _list;
    private String _path;

    public JarFileResource(URL url) {
        super(url);
    }

    public static Resource getNonCachingResource(Resource resource) {
        return !(resource instanceof JarFileResource) ? resource : new JarFileResource(((JarFileResource) resource).getURL(), false);
    }

    private List<String> listEntries() {
        checkConnection();
        ArrayList arrayList = new ArrayList(32);
        JarFile jarFile = this._jarFile;
        if (jarFile == null) {
            try {
                JarURLConnection jarURLConnection = (JarURLConnection) new URL(this._jarUrl).openConnection();
                jarURLConnection.setUseCaches(getUseCaches());
                jarFile = jarURLConnection.getJarFile();
            } catch (Exception e4) {
                e4.printStackTrace();
                LOG.ignore(e4);
            }
        }
        Enumeration<JarEntry> enumerationEntries = jarFile.entries();
        String str = this._urlString;
        String strSubstring = str.substring(str.indexOf("!/") + 2);
        while (enumerationEntries.hasMoreElements()) {
            String strReplace = enumerationEntries.nextElement().getName().replace('\\', '/');
            if (strReplace.startsWith(strSubstring) && strReplace.length() != strSubstring.length()) {
                String strSubstring2 = strReplace.substring(strSubstring.length());
                int iIndexOf = strSubstring2.indexOf(47);
                if (iIndexOf >= 0) {
                    if (iIndexOf != 0 || strSubstring2.length() != 1) {
                        strSubstring2 = iIndexOf == 0 ? strSubstring2.substring(iIndexOf + 1, strSubstring2.length()) : strSubstring2.substring(0, iIndexOf + 1);
                        if (arrayList.contains(strSubstring2)) {
                        }
                    }
                }
                arrayList.add(strSubstring2);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.eclipse.jetty.util.resource.JarResource, org.eclipse.jetty.util.resource.URLResource
    public boolean checkConnection() {
        try {
            super.checkConnection();
            return this._jarFile != null;
        } finally {
            if (this._jarConnection == null) {
                this._entry = null;
                this._file = null;
                this._jarFile = null;
                this._list = null;
            }
        }
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public String encode(String str) {
        return str;
    }

    @Override // org.eclipse.jetty.util.resource.JarResource, org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public boolean exists() {
        boolean z3 = true;
        if (this._exists) {
            return true;
        }
        if (this._urlString.endsWith("!/")) {
            try {
                return Resource.newResource(this._urlString.substring(4, r0.length() - 2)).exists();
            } catch (Exception e4) {
                LOG.ignore(e4);
                return false;
            }
        }
        boolean zCheckConnection = checkConnection();
        if (this._jarUrl != null && this._path == null) {
            this._directory = zCheckConnection;
            return true;
        }
        JarFile jarFile = null;
        if (zCheckConnection) {
            jarFile = this._jarFile;
        } else {
            try {
                JarURLConnection jarURLConnection = (JarURLConnection) new URL(this._jarUrl).openConnection();
                jarURLConnection.setUseCaches(getUseCaches());
                jarFile = jarURLConnection.getJarFile();
            } catch (Exception e5) {
                LOG.ignore(e5);
            }
        }
        if (jarFile != null && this._entry == null && !this._directory) {
            Enumeration<JarEntry> enumerationEntries = jarFile.entries();
            while (true) {
                if (!enumerationEntries.hasMoreElements()) {
                    break;
                }
                JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                String strReplace = jarEntryNextElement.getName().replace('\\', '/');
                if (!strReplace.equals(this._path)) {
                    if (!this._path.endsWith("/")) {
                        if (strReplace.startsWith(this._path) && strReplace.length() > this._path.length() && strReplace.charAt(this._path.length()) == '/') {
                            this._directory = true;
                            break;
                        }
                    } else if (strReplace.startsWith(this._path)) {
                        this._directory = true;
                        break;
                    }
                } else {
                    this._entry = jarEntryNextElement;
                    this._directory = this._path.endsWith("/");
                    break;
                }
            }
            if (this._directory && !this._urlString.endsWith("/")) {
                this._urlString = b.a(new StringBuilder(), this._urlString, "/");
                try {
                    this._url = new URL(this._urlString);
                } catch (MalformedURLException e6) {
                    LOG.warn(e6);
                }
            }
        }
        if (!this._directory && this._entry == null) {
            z3 = false;
        }
        this._exists = z3;
        return z3;
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public boolean isContainedIn(Resource resource) {
        String strSubstring = this._urlString;
        int iIndexOf = strSubstring.indexOf("!/");
        if (iIndexOf > 0) {
            strSubstring = strSubstring.substring(0, iIndexOf);
        }
        if (strSubstring.startsWith("jar:")) {
            strSubstring = strSubstring.substring(4);
        }
        return new URL(strSubstring).sameFile(resource.getURL());
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public boolean isDirectory() {
        return this._urlString.endsWith("/") || (exists() && this._directory);
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public long lastModified() {
        JarEntry jarEntry;
        if (!checkConnection() || this._file == null) {
            return -1L;
        }
        return (!exists() || (jarEntry = this._entry) == null) ? this._file.lastModified() : jarEntry.getTime();
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public long length() {
        JarEntry jarEntry;
        if (isDirectory() || (jarEntry = this._entry) == null) {
            return -1L;
        }
        return jarEntry.getSize();
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public synchronized String[] list() {
        List<String> listListEntries;
        if (isDirectory() && this._list == null) {
            try {
                listListEntries = listEntries();
            } catch (Exception e4) {
                LOG.warn("Retrying list:" + e4, new Object[0]);
                LOG.debug(e4);
                release();
                listListEntries = listEntries();
            }
            if (listListEntries != null) {
                String[] strArr = new String[listListEntries.size()];
                this._list = strArr;
                listListEntries.toArray(strArr);
            }
        }
        return this._list;
    }

    @Override // org.eclipse.jetty.util.resource.JarResource
    public synchronized void newConnection() {
        super.newConnection();
        this._entry = null;
        this._file = null;
        this._jarFile = null;
        this._list = null;
        int iIndexOf = this._urlString.indexOf("!/") + 2;
        this._jarUrl = this._urlString.substring(0, iIndexOf);
        String strSubstring = this._urlString.substring(iIndexOf);
        this._path = strSubstring;
        if (strSubstring.length() == 0) {
            this._path = null;
        }
        this._jarFile = this._jarConnection.getJarFile();
        this._file = new File(this._jarFile.getName());
    }

    @Override // org.eclipse.jetty.util.resource.JarResource, org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public synchronized void release() {
        this._list = null;
        this._entry = null;
        this._file = null;
        if (getUseCaches() || this._jarFile == null) {
            this._jarFile = null;
            super.release();
        } else {
            try {
                LOG.debug("Closing JarFile " + this._jarFile.getName(), new Object[0]);
                this._jarFile.close();
            } catch (IOException e4) {
                LOG.ignore(e4);
            }
            this._jarFile = null;
            super.release();
        }
    }

    public JarFileResource(URL url, boolean z3) {
        super(url, z3);
    }
}
