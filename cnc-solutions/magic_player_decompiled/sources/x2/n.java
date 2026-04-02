package x2;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f3982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3984c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3985d;

    public n() {
        this.f3983b = 1;
        this.f3984c = false;
        this.f3985d = false;
        this.f3982a = (byte[]) new byte[0].clone();
    }

    public void a() {
    }

    public void b(int i4) {
        if (i4 < 0 || i4 > 2) {
            throw new IllegalArgumentException();
        }
        this.f3983b = i4;
    }

    public String toString() {
        return new String(this.f3982a);
    }

    public n(byte[] bArr) {
        this.f3983b = 1;
        this.f3984c = false;
        this.f3985d = false;
        Objects.requireNonNull(bArr);
        this.f3982a = (byte[]) bArr.clone();
    }
}
