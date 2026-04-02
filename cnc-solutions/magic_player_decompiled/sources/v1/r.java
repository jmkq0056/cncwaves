package v1;

import java.math.BigDecimal;

/* JADX INFO: loaded from: classes2.dex */
public final class r extends Number {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3686a;

    public r(String str) {
        this.f3686a = str;
    }

    private Object writeReplace() {
        return new BigDecimal(this.f3686a);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.f3686a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        String str = this.f3686a;
        String str2 = ((r) obj).f3686a;
        return str == str2 || str.equals(str2);
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.f3686a);
    }

    public int hashCode() {
        return this.f3686a.hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            try {
                return Integer.parseInt(this.f3686a);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.f3686a);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(this.f3686a).intValue();
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.f3686a);
        } catch (NumberFormatException unused) {
            return new BigDecimal(this.f3686a).longValue();
        }
    }

    public String toString() {
        return this.f3686a;
    }
}
