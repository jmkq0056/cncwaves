package w1;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import t1.v;
import t1.x;
import t1.y;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends x<Date> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final y f3825b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<DateFormat> f3826a;

    public class a implements y {
        @Override // t1.y
        public <T> x<T> a(t1.i iVar, z1.a<T> aVar) {
            if (aVar.f4196a == Date.class) {
                return new c();
            }
            return null;
        }
    }

    public c() {
        ArrayList arrayList = new ArrayList();
        this.f3826a = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (v1.p.f3684a >= 9) {
            arrayList.add(new SimpleDateFormat("MMM d, yyyy h:mm:ss a", locale));
        }
    }

    @Override // t1.x
    public Date a(a2.a aVar) throws IOException {
        if (aVar.W() == a2.b.NULL) {
            aVar.S();
            return null;
        }
        String strU = aVar.U();
        synchronized (this) {
            Iterator<DateFormat> it = this.f3826a.iterator();
            while (it.hasNext()) {
                try {
                    return it.next().parse(strU);
                } catch (ParseException unused) {
                }
            }
            try {
                return x1.a.b(strU, new ParsePosition(0));
            } catch (ParseException e4) {
                throw new v(strU, e4);
            }
        }
    }

    @Override // t1.x
    public void b(a2.c cVar, Date date) {
        Date date2 = date;
        synchronized (this) {
            if (date2 == null) {
                cVar.J();
            } else {
                cVar.R(this.f3826a.get(0).format(date2));
            }
        }
    }
}
