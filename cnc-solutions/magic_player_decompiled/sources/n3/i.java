package n3;

import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface i {
    void a(StringBuilder sb, String str);

    void b(List<Object> list);

    public static abstract class a implements i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f2799a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f2800b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object[] f2801c;

        public a(Object obj) {
            this.f2800b = obj;
            this.f2799a = true;
            this.f2801c = null;
        }

        @Override // n3.i
        public void b(List<Object> list) {
            if (this.f2799a) {
                list.add(this.f2800b);
                return;
            }
            Object[] objArr = this.f2801c;
            if (objArr != null) {
                for (Object obj : objArr) {
                    list.add(obj);
                }
            }
        }

        public a(Object[] objArr) {
            this.f2800b = null;
            this.f2799a = false;
            this.f2801c = objArr;
        }
    }

    public static class b extends a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final j3.e f2802d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f2803e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(j3.e eVar, String str, Object[] objArr) {
            super(objArr);
            for (int i4 = 0; i4 < objArr.length; i4++) {
                objArr[i4] = c(eVar, objArr[i4]);
            }
            this.f2802d = eVar;
            this.f2803e = str;
        }

        public static Object c(j3.e eVar, Object obj) {
            if (obj != null && obj.getClass().isArray()) {
                throw new j3.d("Illegal value: found array, but simple object required");
            }
            Class<?> cls = eVar.f2031b;
            if (cls == Date.class) {
                if (obj instanceof Date) {
                    return Long.valueOf(((Date) obj).getTime());
                }
                if (obj instanceof Long) {
                    return obj;
                }
                throw new j3.d("Illegal date value: expected java.util.Date or Long for value " + obj);
            }
            if (cls == Boolean.TYPE || cls == Boolean.class) {
                if (obj instanceof Boolean) {
                    return Integer.valueOf(((Boolean) obj).booleanValue() ? 1 : 0);
                }
                if (obj instanceof Number) {
                    int iIntValue = ((Number) obj).intValue();
                    if (iIntValue != 0 && iIntValue != 1) {
                        throw new j3.d("Illegal boolean value: numbers must be 0 or 1, but was " + obj);
                    }
                } else if (obj instanceof String) {
                    String str = (String) obj;
                    if ("TRUE".equalsIgnoreCase(str)) {
                        return 1;
                    }
                    if ("FALSE".equalsIgnoreCase(str)) {
                        return 0;
                    }
                    throw new j3.d("Illegal boolean value: Strings must be \"TRUE\" or \"FALSE\" (case insensitive), but was " + obj);
                }
            }
            return obj;
        }

        @Override // n3.i
        public void a(StringBuilder sb, String str) {
            m3.d.c(sb, str, this.f2802d);
            sb.append(this.f2803e);
        }

        public b(j3.e eVar, String str, Object obj) {
            super(c(eVar, obj));
            this.f2802d = eVar;
            this.f2803e = str;
        }
    }
}
