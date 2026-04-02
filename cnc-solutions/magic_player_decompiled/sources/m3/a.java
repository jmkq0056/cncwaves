package m3;

import g3.i;
import java.lang.reflect.Field;
import java.util.ArrayList;
import org.greenrobot.greendao.Property;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final org.greenrobot.greendao.database.a f2573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final j3.e[] f2575c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String[] f2576d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f2577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String[] f2578f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final j3.e f2579g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f2580h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e f2581i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public l3.a<?, ?> f2582j;

    public a(org.greenrobot.greendao.database.a aVar, Class<? extends j3.a<?, ?>> cls) {
        this.f2573a = aVar;
        try {
            this.f2574b = (String) cls.getField("TABLENAME").get(null);
            j3.e[] eVarArrC = c(cls);
            this.f2575c = eVarArrC;
            this.f2576d = new String[eVarArrC.length];
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            j3.e eVar = null;
            for (int i4 = 0; i4 < eVarArrC.length; i4++) {
                j3.e eVar2 = eVarArrC[i4];
                String str = eVar2.f2034e;
                this.f2576d[i4] = str;
                if (eVar2.f2033d) {
                    arrayList.add(str);
                    eVar = eVar2;
                } else {
                    arrayList2.add(str);
                }
            }
            this.f2578f = (String[]) arrayList2.toArray(new String[arrayList2.size()]);
            String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
            this.f2577e = strArr;
            j3.e eVar3 = strArr.length == 1 ? eVar : null;
            this.f2579g = eVar3;
            this.f2581i = new e(aVar, this.f2574b, this.f2576d, strArr);
            if (eVar3 == null) {
                this.f2580h = false;
            } else {
                Class<?> cls2 = eVar3.f2031b;
                this.f2580h = cls2.equals(Long.TYPE) || cls2.equals(Long.class) || cls2.equals(Integer.TYPE) || cls2.equals(Integer.class) || cls2.equals(Short.TYPE) || cls2.equals(Short.class) || cls2.equals(Byte.TYPE) || cls2.equals(Byte.class);
            }
        } catch (Exception e4) {
            throw new j3.d("Could not init DAOConfig", e4);
        }
    }

    public static Property[] c(Class<? extends j3.a<?, ?>> cls) throws IllegalAccessException {
        Field[] declaredFields = Class.forName(cls.getName() + "$Properties").getDeclaredFields();
        ArrayList<j3.e> arrayList = new ArrayList();
        for (Field field : declaredFields) {
            if ((field.getModifiers() & 9) == 9) {
                Object obj = field.get(null);
                if (obj instanceof j3.e) {
                    arrayList.add((j3.e) obj);
                }
            }
        }
        j3.e[] eVarArr = new j3.e[arrayList.size()];
        for (j3.e eVar : arrayList) {
            int i4 = eVar.f2030a;
            if (eVarArr[i4] != null) {
                throw new j3.d("Duplicate property ordinals");
            }
            eVarArr[i4] = eVar;
        }
        return eVarArr;
    }

    public void a() {
        l3.a<?, ?> aVar = this.f2582j;
        if (aVar != null) {
            aVar.clear();
        }
    }

    public void b(l3.c cVar) {
        if (cVar == l3.c.None) {
            this.f2582j = null;
            return;
        }
        if (cVar != l3.c.Session) {
            throw new IllegalArgumentException("Unsupported type: " + cVar);
        }
        if (this.f2580h) {
            this.f2582j = new l3.b();
        } else {
            this.f2582j = new i();
        }
    }

    public Object clone() {
        return new a(this);
    }

    public a(a aVar) {
        this.f2573a = aVar.f2573a;
        this.f2574b = aVar.f2574b;
        this.f2575c = aVar.f2575c;
        this.f2576d = aVar.f2576d;
        this.f2577e = aVar.f2577e;
        this.f2578f = aVar.f2578f;
        this.f2579g = aVar.f2579g;
        this.f2581i = aVar.f2581i;
        this.f2580h = aVar.f2580h;
    }
}
