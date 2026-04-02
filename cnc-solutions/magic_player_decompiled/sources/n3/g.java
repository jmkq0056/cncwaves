package n3;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import n3.d;
import n3.i;
import org.greenrobot.greendao.query.WhereCondition;

/* JADX INFO: loaded from: classes2.dex */
public class g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h<T> f2789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public StringBuilder f2790b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final j3.a<T, ?> f2793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Integer f2794f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Integer f2795g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<Object> f2791c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<e<T, ?>> f2792d = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f2796h = " COLLATE NOCASE";

    public g(j3.a<T, ?> aVar) {
        this.f2793e = aVar;
        this.f2789a = new h<>(aVar, "T");
    }

    public final void a(StringBuilder sb, String str) {
        this.f2791c.clear();
        Iterator<e<T, ?>> it = this.f2792d.iterator();
        if (it.hasNext()) {
            e<T, ?> next = it.next();
            sb.append(" JOIN ");
            sb.append('\"');
            Objects.requireNonNull(next);
            throw null;
        }
        if (!this.f2789a.f2798b.isEmpty()) {
            sb.append(" WHERE ");
            this.f2789a.a(sb, str, this.f2791c);
        }
        Iterator<e<T, ?>> it2 = this.f2792d.iterator();
        if (it2.hasNext()) {
            Objects.requireNonNull(it2.next());
            throw null;
        }
    }

    public long b() {
        String tablename = this.f2793e.getTablename();
        int i4 = m3.d.f2593a;
        StringBuilder sb = new StringBuilder("SELECT COUNT(*) FROM \"" + tablename + "\" T ");
        a(sb, "T");
        d dVarB = new d.b(this.f2793e, sb.toString(), a.b(this.f2791c.toArray()), null).b();
        dVarB.a();
        Cursor cursorD = ((t1.b) dVarB.f2777a.getDatabase()).D(dVarB.f2779c, dVarB.f2780d);
        try {
            if (!cursorD.moveToNext()) {
                throw new j3.d("No result for count");
            }
            if (!cursorD.isLast()) {
                throw new j3.d("Unexpected row count: " + cursorD.getCount());
            }
            if (cursorD.getColumnCount() == 1) {
                return cursorD.getLong(0);
            }
            throw new j3.d("Unexpected column count: " + cursorD.getColumnCount());
        } finally {
            cursorD.close();
        }
    }

    public g<T> c(int i4) {
        this.f2794f = Integer.valueOf(i4);
        return this;
    }

    public List<T> d() {
        int size;
        StringBuilder sb = new StringBuilder(m3.d.e(this.f2793e.getTablename(), "T", this.f2793e.getAllColumns(), false));
        a(sb, "T");
        StringBuilder sb2 = this.f2790b;
        if (sb2 != null && sb2.length() > 0) {
            sb.append(" ORDER BY ");
            sb.append((CharSequence) this.f2790b);
        }
        int size2 = -1;
        if (this.f2794f != null) {
            sb.append(" LIMIT ?");
            this.f2791c.add(this.f2794f);
            size = this.f2791c.size() - 1;
        } else {
            size = -1;
        }
        if (this.f2795g != null) {
            if (this.f2794f == null) {
                throw new IllegalStateException("Offset cannot be set without limit");
            }
            sb.append(" OFFSET ?");
            this.f2791c.add(this.f2795g);
            size2 = (-1) + this.f2791c.size();
        }
        return f.c(this.f2793e, sb.toString(), this.f2791c.toArray(), size, size2).d();
    }

    public final void e(String str, j3.e... eVarArr) {
        String str2;
        for (j3.e eVar : eVarArr) {
            StringBuilder sb = this.f2790b;
            if (sb == null) {
                this.f2790b = new StringBuilder();
            } else if (sb.length() > 0) {
                this.f2790b.append(",");
            }
            StringBuilder sb2 = this.f2790b;
            this.f2789a.b(eVar);
            sb2.append("T");
            sb2.append('.');
            sb2.append('\'');
            sb2.append(eVar.f2034e);
            sb2.append('\'');
            if (String.class.equals(eVar.f2031b) && (str2 = this.f2796h) != null) {
                this.f2790b.append(str2);
            }
            this.f2790b.append(str);
        }
    }

    public g<T> f(i iVar, WhereCondition... whereConditionArr) {
        h<T> hVar = this.f2789a;
        Objects.requireNonNull(hVar);
        hVar.b(((i.b) iVar).f2802d);
        hVar.f2798b.add(iVar);
        for (WhereCondition whereCondition : whereConditionArr) {
            if (whereCondition instanceof i.b) {
                hVar.b(((i.b) whereCondition).f2802d);
            }
            hVar.f2798b.add(whereCondition);
        }
        return this;
    }
}
