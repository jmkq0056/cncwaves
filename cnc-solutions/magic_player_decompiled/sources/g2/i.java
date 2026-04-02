package g2;

import java.io.Serializable;
import java.util.Enumeration;
import java.util.ResourceBundle;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i implements n, o, Serializable {
    private static final String LSTRING_FILE = "javax.servlet.LocalStrings";
    private static ResourceBundle lStrings = ResourceBundle.getBundle(LSTRING_FILE);
    private transient o config;

    @Override // g2.n
    public void destroy() {
    }

    @Override // g2.o
    public String getInitParameter(String str) {
        o servletConfig = getServletConfig();
        if (servletConfig != null) {
            return servletConfig.getInitParameter(str);
        }
        throw new IllegalStateException(lStrings.getString("err.servlet_config_not_initialized"));
    }

    @Override // g2.o
    public Enumeration<String> getInitParameterNames() {
        o servletConfig = getServletConfig();
        if (servletConfig != null) {
            return servletConfig.getInitParameterNames();
        }
        throw new IllegalStateException(lStrings.getString("err.servlet_config_not_initialized"));
    }

    public o getServletConfig() {
        return this.config;
    }

    @Override // g2.o
    public p getServletContext() {
        o servletConfig = getServletConfig();
        if (servletConfig != null) {
            return servletConfig.getServletContext();
        }
        throw new IllegalStateException(lStrings.getString("err.servlet_config_not_initialized"));
    }

    public String getServletInfo() {
        return "";
    }

    @Override // g2.o
    public String getServletName() {
        o servletConfig = getServletConfig();
        if (servletConfig != null) {
            return servletConfig.getServletName();
        }
        throw new IllegalStateException(lStrings.getString("err.servlet_config_not_initialized"));
    }

    public void init() {
    }

    @Override // g2.n
    public void init(o oVar) {
        this.config = oVar;
        init();
    }

    public void log(String str) {
        getServletContext().log(getServletName() + ": " + str);
    }

    @Override // g2.n
    public abstract void service(y yVar, e0 e0Var);

    public void log(String str, Throwable th) {
        getServletContext().log(getServletName() + ": " + str, th);
    }
}
