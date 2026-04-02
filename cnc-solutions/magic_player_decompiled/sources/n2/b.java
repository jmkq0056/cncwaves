package n2;

import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
import k2.g;
import k2.i;
import k2.u;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<i> f2733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2734b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2735c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2736d;

    public b(List<i> list) {
        this.f2733a = list;
    }

    public i a(SSLSocket sSLSocket) throws UnknownServiceException {
        i iVar;
        boolean z3;
        int i4 = this.f2734b;
        int size = this.f2733a.size();
        while (true) {
            if (i4 >= size) {
                iVar = null;
                break;
            }
            iVar = this.f2733a.get(i4);
            if (iVar.a(sSLSocket)) {
                this.f2734b = i4 + 1;
                break;
            }
            i4++;
        }
        if (iVar == null) {
            StringBuilder sbA = android.support.v4.media.f.a("Unable to find acceptable protocols. isFallback=");
            sbA.append(this.f2736d);
            sbA.append(", modes=");
            sbA.append(this.f2733a);
            sbA.append(", supported protocols=");
            sbA.append(Arrays.toString(sSLSocket.getEnabledProtocols()));
            throw new UnknownServiceException(sbA.toString());
        }
        int i5 = this.f2734b;
        while (true) {
            if (i5 >= this.f2733a.size()) {
                z3 = false;
                break;
            }
            if (this.f2733a.get(i5).a(sSLSocket)) {
                z3 = true;
                break;
            }
            i5++;
        }
        this.f2735c = z3;
        l2.a aVar = l2.a.f2435a;
        boolean z4 = this.f2736d;
        Objects.requireNonNull((u.a) aVar);
        String[] strArrS = iVar.f2148c != null ? l2.c.s(g.f2115b, sSLSocket.getEnabledCipherSuites(), iVar.f2148c) : sSLSocket.getEnabledCipherSuites();
        String[] strArrS2 = iVar.f2149d != null ? l2.c.s(l2.c.f2451o, sSLSocket.getEnabledProtocols(), iVar.f2149d) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        Comparator<String> comparator = g.f2115b;
        byte[] bArr = l2.c.f2437a;
        int length = supportedCipherSuites.length;
        int i6 = 0;
        while (true) {
            if (i6 >= length) {
                i6 = -1;
                break;
            }
            if (((g.a) comparator).compare(supportedCipherSuites[i6], "TLS_FALLBACK_SCSV") == 0) {
                break;
            }
            i6++;
        }
        if (z4 && i6 != -1) {
            String str = supportedCipherSuites[i6];
            int length2 = strArrS.length + 1;
            String[] strArr = new String[length2];
            System.arraycopy(strArrS, 0, strArr, 0, strArrS.length);
            strArr[length2 - 1] = str;
            strArrS = strArr;
        }
        i.a aVar2 = new i.a(iVar);
        aVar2.a(strArrS);
        aVar2.d(strArrS2);
        i iVar2 = new i(aVar2);
        String[] strArr2 = iVar2.f2149d;
        if (strArr2 != null) {
            sSLSocket.setEnabledProtocols(strArr2);
        }
        String[] strArr3 = iVar2.f2148c;
        if (strArr3 != null) {
            sSLSocket.setEnabledCipherSuites(strArr3);
        }
        return iVar;
    }
}
