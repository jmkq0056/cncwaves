package com.stripe.bbota01y;

import com.stripe.bbota01z.c;
import com.stripe.bbota01z.g;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public class a implements com.stripe.bbota01z.a {
    private final g a;
    private final OutputStream b;
    private final byte[] c;
    private final c d;
    private long e;
    private final boolean f;

    public a(g gVar, OutputStream outputStream, boolean z) {
        this.a = gVar;
        this.b = outputStream;
        this.f = z;
        byte[] bArr = new byte[(int) gVar.c()];
        this.c = bArr;
        Arrays.fill(bArr, (byte) -1);
        this.d = new c();
        this.e = gVar.b();
    }

    @Override // com.stripe.bbota01z.a
    public void a(long j, byte[] bArr) {
        this.d.a(j, bArr.length);
        if (j < this.a.b() || j > this.a.a()) {
            return;
        }
        int length = bArr.length;
        if (((long) length) + j > this.a.a()) {
            length = (int) ((this.a.a() - j) + 1);
        }
        System.arraycopy(bArr, 0, this.c, (int) (j - this.a.b()), length);
        if (this.e < (((long) bArr.length) + j) - 1) {
            this.e = (j + ((long) bArr.length)) - 1;
        }
    }

    @Override // com.stripe.bbota01z.a
    public void a() {
        try {
            if (!this.f) {
                this.e = this.a.a();
            }
            this.b.write(this.c, 0, (int) ((this.e - this.a.b()) + 1));
        } catch (IOException e) {
            Logger.getLogger(a.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        }
    }
}
