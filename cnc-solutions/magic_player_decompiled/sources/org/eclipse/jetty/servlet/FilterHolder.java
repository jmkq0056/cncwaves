package org.eclipse.jetty.servlet;

import g2.d;
import g2.e;
import g2.g;
import g2.h;
import g2.u;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import org.eclipse.jetty.servlet.Holder;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.util.TypeUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class FilterHolder extends Holder<e> {
    private static final Logger LOG = Log.getLogger((Class<?>) FilterHolder.class);
    private transient Config _config;
    private transient e _filter;
    private transient h.a _registration;

    public class Config extends Holder<e>.HolderConfig implements g {
        public Config() {
            super();
        }

        public String getFilterName() {
            return FilterHolder.this._name;
        }
    }

    public class Registration extends Holder<e>.HolderRegistration implements h.a {
        public Registration() {
            super();
        }

        public void addMappingForServletNames(EnumSet<d> enumSet, boolean z3, String... strArr) {
            FilterHolder.this.illegalStateIfContextStarted();
            FilterMapping filterMapping = new FilterMapping();
            filterMapping.setFilterHolder(FilterHolder.this);
            filterMapping.setServletNames(strArr);
            filterMapping.setDispatcherTypes(enumSet);
            if (z3) {
                FilterHolder.this._servletHandler.addFilterMapping(filterMapping);
            } else {
                FilterHolder.this._servletHandler.prependFilterMapping(filterMapping);
            }
        }

        public void addMappingForUrlPatterns(EnumSet<d> enumSet, boolean z3, String... strArr) {
            FilterHolder.this.illegalStateIfContextStarted();
            FilterMapping filterMapping = new FilterMapping();
            filterMapping.setFilterHolder(FilterHolder.this);
            filterMapping.setPathSpecs(strArr);
            filterMapping.setDispatcherTypes(enumSet);
            if (z3) {
                FilterHolder.this._servletHandler.addFilterMapping(filterMapping);
            } else {
                FilterHolder.this._servletHandler.prependFilterMapping(filterMapping);
            }
        }

        public Collection<String> getServletNameMappings() {
            String[] servletNames;
            FilterMapping[] filterMappings = FilterHolder.this._servletHandler.getFilterMappings();
            ArrayList arrayList = new ArrayList();
            for (FilterMapping filterMapping : filterMappings) {
                if (filterMapping.getFilterHolder() == FilterHolder.this && (servletNames = filterMapping.getServletNames()) != null && servletNames.length > 0) {
                    arrayList.addAll(Arrays.asList(servletNames));
                }
            }
            return arrayList;
        }

        public Collection<String> getUrlPatternMappings() {
            FilterMapping[] filterMappings = FilterHolder.this._servletHandler.getFilterMappings();
            ArrayList arrayList = new ArrayList();
            for (FilterMapping filterMapping : filterMappings) {
                if (filterMapping.getFilterHolder() == FilterHolder.this) {
                    arrayList.addAll(TypeUtil.asList(filterMapping.getPathSpecs()));
                }
            }
            return arrayList;
        }
    }

    public FilterHolder() {
        this(Holder.Source.EMBEDDED);
    }

    @Override // org.eclipse.jetty.servlet.Holder
    public void destroyInstance(Object obj) {
        if (obj == null) {
            return;
        }
        e eVar = (e) obj;
        eVar.destroy();
        getServletHandler().destroyFilter(eVar);
    }

    @Override // org.eclipse.jetty.servlet.Holder, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() throws IllegalAccessException, InstantiationException, u {
        super.doStart();
        if (!e.class.isAssignableFrom(this._class)) {
            String str = this._class + " is not a javax.servlet.Filter";
            super.stop();
            throw new IllegalStateException(str);
        }
        if (this._filter == null) {
            try {
                this._filter = ((ServletContextHandler.Context) this._servletHandler.getServletContext()).createFilter(getHeldClass());
            } catch (u e4) {
                Throwable rootCause = e4.getRootCause();
                if (rootCause instanceof InstantiationException) {
                    throw ((InstantiationException) rootCause);
                }
                if (!(rootCause instanceof IllegalAccessException)) {
                    throw e4;
                }
                throw ((IllegalAccessException) rootCause);
            }
        }
        Config config = new Config();
        this._config = config;
        this._filter.init(config);
    }

    @Override // org.eclipse.jetty.servlet.Holder, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        e eVar = this._filter;
        if (eVar != null) {
            try {
                destroyInstance(eVar);
            } catch (Exception e4) {
                LOG.warn(e4);
            }
        }
        if (!this._extInstance) {
            this._filter = null;
        }
        this._config = null;
        super.doStop();
    }

    public e getFilter() {
        return this._filter;
    }

    public h.a getRegistration() {
        if (this._registration == null) {
            this._registration = new Registration();
        }
        return this._registration;
    }

    public synchronized void setFilter(e eVar) {
        this._filter = eVar;
        this._extInstance = true;
        setHeldClass(eVar.getClass());
        if (getName() == null) {
            setName(eVar.getClass().getName());
        }
    }

    @Override // org.eclipse.jetty.servlet.Holder
    public String toString() {
        return getName();
    }

    public FilterHolder(Holder.Source source) {
        super(source);
    }

    public FilterHolder(Class<? extends e> cls) {
        this(Holder.Source.EMBEDDED);
        setHeldClass(cls);
    }

    public FilterHolder(e eVar) {
        this(Holder.Source.EMBEDDED);
        setFilter(eVar);
    }
}
