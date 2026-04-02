package b3;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h extends u implements x2.o {
    public h(byte b4) {
        super(b4);
    }

    @Override // x2.o
    public int a() {
        return 0;
    }

    @Override // x2.o
    public int b() {
        return 0;
    }

    @Override // x2.o
    public byte[] c() throws x2.p {
        try {
            return o();
        } catch (x2.m e4) {
            throw new x2.p(e4.f3981b);
        }
    }

    @Override // x2.o
    public int d() {
        return 0;
    }

    @Override // x2.o
    public byte[] e() throws x2.p {
        try {
            return l();
        } catch (x2.m e4) {
            throw new x2.p(e4.f3981b);
        }
    }

    @Override // x2.o
    public int f() {
        return e().length;
    }
}
