package w1;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import t1.v;
import t1.x;
import t1.y;

/* JADX INFO: loaded from: classes2.dex */
public final class k extends x<Date> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final y f3863b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DateFormat f3864a = new SimpleDateFormat("MMM d, yyyy");

    public class a implements y {
        @Override // t1.y
        public <T> x<T> a(t1.i iVar, z1.a<T> aVar) {
            if (aVar.f4196a == Date.class) {
                return new k();
            }
            return null;
        }
    }

    @Override // t1.x
    public Date a(a2.a aVar) {
        Date date;
        synchronized (this) {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                date = null;
            } else {
                try {
                    date = new Date(this.f3864a.parse(aVar.U()).getTime());
                } catch (ParseException e4) {
                    throw new v(e4);
                }
            }
        }
        return date;
    }

    @Override // t1.x
    public void b(a2.c cVar, Date date) {
        Date date2 = date;
        synchronized (this) {
            cVar.R(date2 == null ? null : this.f3864a.format((java.util.Date) date2));
        }
    }
}
