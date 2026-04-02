package org.eclipse.jetty.servlet;

import g2.d;
import java.io.IOException;
import java.util.EnumSet;
import org.eclipse.jetty.http.PathMap;
import org.eclipse.jetty.util.TypeUtil;
import org.eclipse.jetty.util.component.AggregateLifeCycle;
import org.eclipse.jetty.util.component.Dumpable;

/* JADX INFO: loaded from: classes2.dex */
public class FilterMapping implements Dumpable {
    public static final int ALL = 31;
    public static final int ASYNC = 16;
    public static final int DEFAULT = 0;
    public static final int ERROR = 8;
    public static final int FORWARD = 2;
    public static final int INCLUDE = 4;
    public static final int REQUEST = 1;
    private int _dispatches = 0;
    private String _filterName;
    private transient FilterHolder _holder;
    private String[] _pathSpecs;
    private String[] _servletNames;

    /* JADX INFO: renamed from: org.eclipse.jetty.servlet.FilterMapping$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$javax$servlet$DispatcherType;

        static {
            int[] iArr = new int[d.values().length];
            $SwitchMap$javax$servlet$DispatcherType = iArr;
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$servlet$DispatcherType[3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$javax$servlet$DispatcherType[0] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$javax$servlet$DispatcherType[1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$javax$servlet$DispatcherType[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static d dispatch(String str) {
        if ("request".equalsIgnoreCase(str)) {
            return d.REQUEST;
        }
        if ("forward".equalsIgnoreCase(str)) {
            return d.FORWARD;
        }
        if ("include".equalsIgnoreCase(str)) {
            return d.INCLUDE;
        }
        if ("error".equalsIgnoreCase(str)) {
            return d.ERROR;
        }
        if ("async".equalsIgnoreCase(str)) {
            return d.ASYNC;
        }
        throw new IllegalArgumentException(str);
    }

    public boolean appliesTo(String str, int i4) {
        if (appliesTo(i4)) {
            int i5 = 0;
            while (true) {
                String[] strArr = this._pathSpecs;
                if (i5 >= strArr.length) {
                    break;
                }
                if (strArr[i5] != null && PathMap.match(strArr[i5], str, true)) {
                    return true;
                }
                i5++;
            }
        }
        return false;
    }

    @Override // org.eclipse.jetty.util.component.Dumpable
    public void dump(Appendable appendable, String str) throws IOException {
        appendable.append(String.valueOf(this)).append("\n");
    }

    public EnumSet<d> getDispatcherTypes() {
        EnumSet<d> enumSetNoneOf = EnumSet.noneOf(d.class);
        if ((this._dispatches & 8) == 8) {
            enumSetNoneOf.add(d.ERROR);
        }
        if ((this._dispatches & 2) == 2) {
            enumSetNoneOf.add(d.FORWARD);
        }
        if ((this._dispatches & 4) == 4) {
            enumSetNoneOf.add(d.INCLUDE);
        }
        if ((this._dispatches & 1) == 1) {
            enumSetNoneOf.add(d.REQUEST);
        }
        if ((this._dispatches & 16) == 16) {
            enumSetNoneOf.add(d.ASYNC);
        }
        return enumSetNoneOf;
    }

    public FilterHolder getFilterHolder() {
        return this._holder;
    }

    public String getFilterName() {
        return this._filterName;
    }

    public String[] getPathSpecs() {
        return this._pathSpecs;
    }

    public String[] getServletNames() {
        return this._servletNames;
    }

    public void setDispatcherTypes(EnumSet<d> enumSet) {
        this._dispatches = 0;
        if (enumSet != null) {
            if (enumSet.contains(d.ERROR)) {
                this._dispatches |= 8;
            }
            if (enumSet.contains(d.FORWARD)) {
                this._dispatches |= 2;
            }
            if (enumSet.contains(d.INCLUDE)) {
                this._dispatches |= 4;
            }
            if (enumSet.contains(d.REQUEST)) {
                this._dispatches |= 1;
            }
            if (enumSet.contains(d.ASYNC)) {
                this._dispatches |= 16;
            }
        }
    }

    public void setDispatches(int i4) {
        this._dispatches = i4;
    }

    public void setFilterHolder(FilterHolder filterHolder) {
        this._holder = filterHolder;
        setFilterName(filterHolder.getName());
    }

    public void setFilterName(String str) {
        this._filterName = str;
    }

    public void setPathSpec(String str) {
        this._pathSpecs = new String[]{str};
    }

    public void setPathSpecs(String[] strArr) {
        this._pathSpecs = strArr;
    }

    public void setServletName(String str) {
        this._servletNames = new String[]{str};
    }

    public void setServletNames(String[] strArr) {
        this._servletNames = strArr;
    }

    public String toString() {
        return TypeUtil.asList(this._pathSpecs) + "/" + TypeUtil.asList(this._servletNames) + "==" + this._dispatches + "=>" + this._filterName;
    }

    @Override // org.eclipse.jetty.util.component.Dumpable
    public String dump() {
        return AggregateLifeCycle.dump(this);
    }

    public boolean appliesTo(int i4) {
        int i5 = this._dispatches;
        return i5 == 0 ? i4 == 1 || (i4 == 16 && this._holder.isAsyncSupported()) : (i4 & i5) != 0;
    }

    public static int dispatch(d dVar) {
        int i4 = AnonymousClass1.$SwitchMap$javax$servlet$DispatcherType[dVar.ordinal()];
        if (i4 == 1) {
            return 1;
        }
        int i5 = 2;
        if (i4 == 2) {
            return 16;
        }
        if (i4 != 3) {
            i5 = 4;
            if (i4 != 4) {
                if (i4 == 5) {
                    return 8;
                }
                throw new IllegalArgumentException(dVar.toString());
            }
        }
        return i5;
    }
}
