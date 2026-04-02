package org.eclipse.jetty.servlet;

import android.support.v4.media.f;
import android.support.v4.media.g;
import androidx.appcompat.view.a;
import g2.k0;
import g2.l;
import g2.p;
import java.io.IOException;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.util.Loader;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.eclipse.jetty.util.component.AggregateLifeCycle;
import org.eclipse.jetty.util.component.Dumpable;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class Holder<T> extends AbstractLifeCycle implements Dumpable {
    private static final Logger LOG = Log.getLogger((Class<?>) Holder.class);
    public boolean _asyncSupported;
    public transient Class<? extends T> _class;
    public String _className;
    public String _displayName;
    public boolean _extInstance;
    public final Map<String, String> _initParams = new HashMap(3);
    public String _name;
    public ServletHandler _servletHandler;
    private final Source _source;

    /* JADX INFO: renamed from: org.eclipse.jetty.servlet.Holder$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$org$eclipse$jetty$servlet$Holder$Source;

        static {
            int[] iArr = new int[Source.values().length];
            $SwitchMap$org$eclipse$jetty$servlet$Holder$Source = iArr;
            try {
                iArr[Source.JAVAX_API.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$eclipse$jetty$servlet$Holder$Source[Source.DESCRIPTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$eclipse$jetty$servlet$Holder$Source[Source.ANNOTATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class HolderConfig {
        public HolderConfig() {
        }

        public String getInitParameter(String str) {
            return Holder.this.getInitParameter(str);
        }

        public Enumeration getInitParameterNames() {
            return Holder.this.getInitParameterNames();
        }

        public p getServletContext() {
            return Holder.this._servletHandler.getServletContext();
        }
    }

    public class HolderRegistration implements l {
        public HolderRegistration() {
        }

        public String getClassName() {
            return Holder.this.getClassName();
        }

        public String getInitParameter(String str) {
            return Holder.this.getInitParameter(str);
        }

        public Map<String, String> getInitParameters() {
            return Holder.this.getInitParameters();
        }

        @Override // g2.l
        public String getName() {
            return Holder.this.getName();
        }

        public void setAsyncSupported(boolean z3) {
            Holder.this.illegalStateIfContextStarted();
            Holder.this.setAsyncSupported(z3);
        }

        public void setDescription(String str) {
            if (Holder.LOG.isDebugEnabled()) {
                Holder.LOG.debug(this + " is " + str, new Object[0]);
            }
        }

        public boolean setInitParameter(String str, String str2) {
            Holder.this.illegalStateIfContextStarted();
            if (str == null) {
                throw new IllegalArgumentException("init parameter name required");
            }
            if (str2 == null) {
                throw new IllegalArgumentException(a.a("non-null value required for init parameter ", str));
            }
            if (Holder.this.getInitParameter(str) != null) {
                return false;
            }
            Holder.this.setInitParameter(str, str2);
            return true;
        }

        public Set<String> setInitParameters(Map<String, String> map) {
            Holder.this.illegalStateIfContextStarted();
            HashSet hashSet = null;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey() == null) {
                    throw new IllegalArgumentException("init parameter name required");
                }
                if (entry.getValue() == null) {
                    StringBuilder sbA = f.a("non-null value required for init parameter ");
                    sbA.append(entry.getKey());
                    throw new IllegalArgumentException(sbA.toString());
                }
                if (Holder.this.getInitParameter(entry.getKey()) != null) {
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(entry.getKey());
                }
            }
            if (hashSet != null) {
                return hashSet;
            }
            Holder.this.getInitParameters().putAll(map);
            return Collections.emptySet();
        }
    }

    public enum Source {
        EMBEDDED,
        JAVAX_API,
        DESCRIPTOR,
        ANNOTATION
    }

    public Holder(Source source) {
        this._source = source;
        int i4 = AnonymousClass1.$SwitchMap$org$eclipse$jetty$servlet$Holder$Source[source.ordinal()];
        if (i4 == 1 || i4 == 2 || i4 == 3) {
            this._asyncSupported = false;
        } else {
            this._asyncSupported = true;
        }
    }

    public void destroyInstance(Object obj) {
    }

    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        String str;
        if (this._class == null && ((str = this._className) == null || str.equals(""))) {
            StringBuilder sbA = f.a("No class for Servlet or Filter for ");
            sbA.append(this._name);
            throw new k0(sbA.toString());
        }
        if (this._class == null) {
            try {
                this._class = Loader.loadClass(Holder.class, this._className);
                Logger logger = LOG;
                if (logger.isDebugEnabled()) {
                    logger.debug("Holding {}", this._class);
                }
            } catch (Exception e4) {
                LOG.warn(e4);
                throw new k0(e4.getMessage());
            }
        }
    }

    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        if (this._extInstance) {
            return;
        }
        this._class = null;
    }

    @Override // org.eclipse.jetty.util.component.Dumpable
    public void dump(Appendable appendable, String str) throws IOException {
        appendable.append(this._name).append("==").append(this._className).append(" - ").append(AbstractLifeCycle.getState(this)).append("\n");
        AggregateLifeCycle.dump(appendable, str, this._initParams.entrySet());
    }

    public String getClassName() {
        return this._className;
    }

    public String getDisplayName() {
        return this._displayName;
    }

    public Class<? extends T> getHeldClass() {
        return this._class;
    }

    public String getInitParameter(String str) {
        Map<String, String> map = this._initParams;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public Enumeration getInitParameterNames() {
        Map<String, String> map = this._initParams;
        return map == null ? Collections.enumeration(Collections.EMPTY_LIST) : Collections.enumeration(map.keySet());
    }

    public Map<String, String> getInitParameters() {
        return this._initParams;
    }

    public String getName() {
        return this._name;
    }

    public ServletHandler getServletHandler() {
        return this._servletHandler;
    }

    public Source getSource() {
        return this._source;
    }

    public void illegalStateIfContextStarted() {
        ContextHandler.Context context;
        ServletHandler servletHandler = this._servletHandler;
        if (servletHandler != null && (context = (ContextHandler.Context) servletHandler.getServletContext()) != null && context.getContextHandler().isStarted()) {
            throw new IllegalStateException("Started");
        }
    }

    public boolean isAsyncSupported() {
        return this._asyncSupported;
    }

    public boolean isInstance() {
        return this._extInstance;
    }

    public void setAsyncSupported(boolean z3) {
        this._asyncSupported = z3;
    }

    public void setClassName(String str) {
        this._className = str;
        this._class = null;
        if (this._name == null) {
            StringBuilder sbA = g.a(str, "-");
            sbA.append(Integer.toHexString(hashCode()));
            this._name = sbA.toString();
        }
    }

    public void setDisplayName(String str) {
        this._displayName = str;
    }

    public void setHeldClass(Class<? extends T> cls) {
        this._class = cls;
        if (cls != null) {
            this._className = cls.getName();
            if (this._name == null) {
                this._name = cls.getName() + "-" + Integer.toHexString(hashCode());
            }
        }
    }

    public void setInitParameter(String str, String str2) {
        this._initParams.put(str, str2);
    }

    public void setInitParameters(Map<String, String> map) {
        this._initParams.clear();
        this._initParams.putAll(map);
    }

    public void setName(String str) {
        this._name = str;
    }

    public void setServletHandler(ServletHandler servletHandler) {
        this._servletHandler = servletHandler;
    }

    public String toString() {
        return this._name;
    }

    @Override // org.eclipse.jetty.util.component.Dumpable
    public String dump() {
        return AggregateLifeCycle.dump(this);
    }
}
