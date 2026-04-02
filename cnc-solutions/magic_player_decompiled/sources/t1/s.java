package t1;

import java.math.BigInteger;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class s extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f3547a;

    public s(Boolean bool) {
        Objects.requireNonNull(bool);
        this.f3547a = bool;
    }

    public static boolean e(s sVar) {
        Object obj = sVar.f3547a;
        if (obj instanceof Number) {
            Number number = (Number) obj;
            if ((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                return true;
            }
        }
        return false;
    }

    public boolean b() {
        Object obj = this.f3547a;
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : Boolean.parseBoolean(d());
    }

    public Number c() {
        Object obj = this.f3547a;
        return obj instanceof String ? new v1.r((String) obj) : (Number) obj;
    }

    public String d() {
        Object obj = this.f3547a;
        return obj instanceof Number ? c().toString() : obj instanceof Boolean ? ((Boolean) obj).toString() : (String) obj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s.class != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        if (this.f3547a == null) {
            return sVar.f3547a == null;
        }
        if (e(this) && e(sVar)) {
            return c().longValue() == sVar.c().longValue();
        }
        Object obj2 = this.f3547a;
        if (!(obj2 instanceof Number) || !(sVar.f3547a instanceof Number)) {
            return obj2.equals(sVar.f3547a);
        }
        double dDoubleValue = c().doubleValue();
        double dDoubleValue2 = sVar.c().doubleValue();
        if (dDoubleValue != dDoubleValue2) {
            return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    public int hashCode() {
        long jDoubleToLongBits;
        if (this.f3547a == null) {
            return 31;
        }
        if (e(this)) {
            jDoubleToLongBits = c().longValue();
        } else {
            Object obj = this.f3547a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(c().doubleValue());
        }
        return (int) ((jDoubleToLongBits >>> 32) ^ jDoubleToLongBits);
    }

    public s(Number number) {
        Objects.requireNonNull(number);
        this.f3547a = number;
    }

    public s(String str) {
        Objects.requireNonNull(str);
        this.f3547a = str;
    }
}
