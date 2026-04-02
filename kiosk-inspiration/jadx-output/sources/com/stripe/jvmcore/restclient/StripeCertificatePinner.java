package com.stripe.jvmcore.restclient;

import kotlin.Metadata;
import okhttp3.CertificatePinner;

/* JADX INFO: compiled from: StripeCertificatePinner.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/jvmcore/restclient/StripeCertificatePinner;", "", "()V", "certificatePinner", "Lokhttp3/CertificatePinner;", "getCertificatePinner", "()Lokhttp3/CertificatePinner;", "pinDigiCertGlobalRootCA", "", "pinDigiCertGlobalRootG2", "pinDigiCertGlobalRootG3", "pinDigiCertHighAssuranceEvRootCA", "pinEntrustRootCA", "pinEntrustRootCA2048", "pinEntrustRootCAEC1", "pinEntrustRootCAG2", "pinGlobalSignRootCAECCR5", "pinGlobalSignRootCAR3", "pinGlobalSignRootCAR6", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StripeCertificatePinner {
    public static final StripeCertificatePinner INSTANCE = new StripeCertificatePinner();
    public static final String pinDigiCertGlobalRootCA = "sha256/r/mIkG3eEpVdm+u/ko/cwxzOMo1bk4TyHIlByibiA5E=";
    public static final String pinDigiCertGlobalRootG2 = "sha256/8ca6Zwz8iOTfUpc8rkIPCgid1HQUT+WAbEIAZOFZEik=";
    public static final String pinDigiCertGlobalRootG3 = "sha256/Fe7TOVlLME+M+Ee0dzcdjW/sYfTbKwGvWJ58U7Ncrkw=";
    public static final String pinDigiCertHighAssuranceEvRootCA = "sha256/WoiWRyIOVNa9ihaBciRSC7XHjliYS9VwUGOIud4PB18=";
    public static final String pinGlobalSignRootCAR3 = "sha256/cGuxAXyFXFkWm61cF4HPWX8S0srS9j0aSqN0k4AP+4A=";
    public static final String pinGlobalSignRootCAR6 = "sha256/aCdH+LpiG4fN07wpXtXKvOciocDANj0daLOJKNJ4fx4=";
    public static final String pinGlobalSignRootCAECCR5 = "sha256/fg6tdrtoGdwvVFEahDVPboswe53YIFjqbABPAdndpd8=";
    public static final String pinEntrustRootCA2048 = "sha256/HqPF5D7WbC2imDpCpKebHpBnhs6fG1hiFBmgBGOofTg=";
    public static final String pinEntrustRootCA = "sha256/bb+uANN7nNc/j7R95lkXrwDg3d9C286sIMF8AnXuIJU=";
    public static final String pinEntrustRootCAG2 = "sha256/du6FkDdMcVQ3u8prumAo6t3i3G27uMP2EOhR8R0at/U=";
    public static final String pinEntrustRootCAEC1 = "sha256//qK31kX7pz11PB7Jp4cMQOH3sMVh6Se5hb9xGGbjbyI=";
    private static final CertificatePinner certificatePinner = new CertificatePinner.Builder().add("api.stripe.com", pinDigiCertGlobalRootCA, pinDigiCertGlobalRootG2, pinDigiCertGlobalRootG3, pinDigiCertHighAssuranceEvRootCA, pinGlobalSignRootCAR3, pinGlobalSignRootCAR6, pinGlobalSignRootCAECCR5, pinEntrustRootCA2048, pinEntrustRootCA, pinEntrustRootCAG2, pinEntrustRootCAEC1).build();

    private StripeCertificatePinner() {
    }

    public final CertificatePinner getCertificatePinner() {
        return certificatePinner;
    }
}
