package w1;

import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import t1.v;
import t1.x;
import t1.y;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends x<Time> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final y f3865b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DateFormat f3866a = new SimpleDateFormat("hh:mm:ss a");

    public class a implements y {
        @Override // t1.y
        public <T> x<T> a(t1.i iVar, z1.a<T> aVar) {
            if (aVar.f4196a == Time.class) {
                return new l();
            }
            return null;
        }
    }

    @Override // t1.x
    public Time a(a2.a aVar) {
        synchronized (this) {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                return null;
            }
            try {
                return new Time(this.f3866a.parse(aVar.U()).getTime());
            } catch (ParseException e4) {
                throw new v(e4);
            }
        }
    }

    @Override // t1.x
    public void b(a2.c cVar, Time time) {
        Time time2 = time;
        synchronized (this) {
            cVar.R(time2 == null ? null : this.f3866a.format((Date) time2));
        }
    }
}
