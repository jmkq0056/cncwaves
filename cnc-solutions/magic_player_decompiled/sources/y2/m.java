package y2;

import java.io.IOException;
import java.util.ArrayList;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SNIHostName;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes2.dex */
public class m extends o {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c3.b f4142g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String[] f4143h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4144i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public HostnameVerifier f4145j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4146k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f4147l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4148m;

    public m(SSLSocketFactory sSLSocketFactory, String str, int i4, String str2) {
        super(sSLSocketFactory, str, i4, str2);
        c3.b bVarA = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "y2.m");
        this.f4142g = bVarA;
        this.f4146k = false;
        this.f4147l = str;
        this.f4148m = i4;
        bVarA.i(str2);
    }

    @Override // y2.o, y2.j
    public String a() {
        return "ssl://" + this.f4147l + ":" + this.f4148m;
    }

    public void b(String[] strArr) {
        if (strArr != null) {
            this.f4143h = (String[]) strArr.clone();
        }
        if (this.f4150b == null || this.f4143h == null) {
            return;
        }
        if (this.f4142g.e(5)) {
            String str = "";
            for (int i4 = 0; i4 < this.f4143h.length; i4++) {
                if (i4 > 0) {
                    str = String.valueOf(str) + ",";
                }
                str = String.valueOf(str) + this.f4143h[i4];
            }
            this.f4142g.d("y2.m", "setEnabledCiphers", "260", new Object[]{str});
        }
        ((SSLSocket) this.f4150b).setEnabledCipherSuites(this.f4143h);
    }

    @Override // y2.o, y2.j
    public void start() throws IOException, x2.m {
        super.start();
        b(this.f4143h);
        int soTimeout = this.f4150b.getSoTimeout();
        this.f4150b.setSoTimeout(this.f4144i * 1000);
        try {
            SSLParameters sSLParameters = new SSLParameters();
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(new SNIHostName(this.f4147l));
            sSLParameters.setServerNames(arrayList);
            ((SSLSocket) this.f4150b).setSSLParameters(sSLParameters);
        } catch (NoClassDefFoundError unused) {
        }
        if (this.f4146k) {
            try {
                SSLParameters sSLParameters2 = new SSLParameters();
                sSLParameters2.setEndpointIdentificationAlgorithm("HTTPS");
                ((SSLSocket) this.f4150b).setSSLParameters(sSLParameters2);
            } catch (NoSuchMethodError unused2) {
            }
        }
        ((SSLSocket) this.f4150b).startHandshake();
        if (this.f4145j != null && !this.f4146k) {
            SSLSession session = ((SSLSocket) this.f4150b).getSession();
            if (!this.f4145j.verify(this.f4147l, session)) {
                session.invalidate();
                this.f4150b.close();
                throw new SSLPeerUnverifiedException("Host: " + this.f4147l + ", Peer Host: " + session.getPeerHost());
            }
        }
        this.f4150b.setSoTimeout(soTimeout);
    }
}
