package org.eclipse.jetty.servlet;

import android.support.v4.media.f;
import g2.p;
import g2.u;
import j2.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.server.handler.ErrorHandler;

/* JADX INFO: loaded from: classes2.dex */
public class ErrorPageErrorHandler extends ErrorHandler implements ErrorHandler.ErrorPageMapper {
    public static final String GLOBAL_ERROR_PAGE = "org.eclipse.jetty.server.error_page.global";
    public p _servletContext;
    private final Map<String, String> _errorPages = new HashMap();
    private final List<ErrorCodeRange> _errorPageList = new ArrayList();

    public class ErrorCodeRange {
        private int _from;
        private int _to;
        private String _uri;

        public ErrorCodeRange(int i4, int i5, String str) {
            if (i4 > i5) {
                throw new IllegalArgumentException("from>to");
            }
            this._from = i4;
            this._to = i5;
            this._uri = str;
        }

        public String getUri() {
            return this._uri;
        }

        public boolean isInRange(int i4) {
            return i4 >= this._from && i4 <= this._to;
        }

        public String toString() {
            StringBuilder sbA = f.a("from: ");
            sbA.append(this._from);
            sbA.append(",to: ");
            sbA.append(this._to);
            sbA.append(",uri: ");
            sbA.append(this._uri);
            return sbA.toString();
        }
    }

    public void addErrorPage(Class<? extends Throwable> cls, String str) {
        this._errorPages.put(cls.getName(), str);
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        super.doStart();
        this._servletContext = ContextHandler.getCurrentContext();
    }

    @Override // org.eclipse.jetty.server.handler.ErrorHandler.ErrorPageMapper
    public String getErrorPage(c cVar) {
        String uri;
        Integer num;
        Class<?> superclass = (Class) cVar.getAttribute("javax.servlet.error.exception_type");
        if (u.class.equals(superclass)) {
            uri = this._errorPages.get(superclass.getName());
            if (uri == null) {
                Throwable rootCause = (Throwable) cVar.getAttribute("javax.servlet.error.exception");
                while (rootCause instanceof u) {
                    rootCause = ((u) rootCause).getRootCause();
                }
                if (rootCause != null) {
                    superclass = rootCause.getClass();
                }
            }
        } else {
            uri = null;
        }
        while (uri == null && superclass != null) {
            uri = this._errorPages.get(superclass.getName());
            superclass = superclass.getSuperclass();
        }
        if (uri == null && (num = (Integer) cVar.getAttribute("javax.servlet.error.status_code")) != null && (uri = this._errorPages.get(Integer.toString(num.intValue()))) == null && this._errorPageList != null) {
            int i4 = 0;
            while (true) {
                if (i4 >= this._errorPageList.size()) {
                    break;
                }
                ErrorCodeRange errorCodeRange = this._errorPageList.get(i4);
                if (errorCodeRange.isInRange(num.intValue())) {
                    uri = errorCodeRange.getUri();
                    break;
                }
                i4++;
            }
        }
        return uri == null ? this._errorPages.get(GLOBAL_ERROR_PAGE) : uri;
    }

    public Map<String, String> getErrorPages() {
        return this._errorPages;
    }

    public void setErrorPages(Map<String, String> map) {
        this._errorPages.clear();
        if (map != null) {
            this._errorPages.putAll(map);
        }
    }

    public void addErrorPage(String str, String str2) {
        this._errorPages.put(str, str2);
    }

    public void addErrorPage(int i4, String str) {
        this._errorPages.put(Integer.toString(i4), str);
    }

    public void addErrorPage(int i4, int i5, String str) {
        this._errorPageList.add(new ErrorCodeRange(i4, i5, str));
    }
}
