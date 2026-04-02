package b1;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f227b;

    static {
        new i(1.0f);
    }

    public i(float f4) {
        o1.a.a(f4 > 0.0f);
        o1.a.a(true);
        this.f226a = f4;
        this.f227b = 1.0f;
        Math.round(f4 * 1000.0f);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f226a == iVar.f226a && this.f227b == iVar.f227b;
    }

    public int hashCode() {
        return Float.floatToRawIntBits(this.f227b) + ((Float.floatToRawIntBits(this.f226a) + 527) * 31);
    }

    public String toString() {
        return o1.e.d("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f226a), Float.valueOf(this.f227b));
    }
}
