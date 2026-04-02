package okhttp3.tls;

import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: compiled from: Certificates.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0002*\u00020\u0001\u001a\u0018\u0010\u0004\u001a\u00020\u0005*\u00060\u0006j\u0002`\u00072\u0006\u0010\b\u001a\u00020\tH\u0000¨\u0006\n"}, d2 = {"certificatePem", "", "Ljava/security/cert/X509Certificate;", "decodeCertificatePem", "encodeBase64Lines", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "data", "Lokio/ByteString;", "okhttp-tls"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class Certificates {
    public static final X509Certificate decodeCertificatePem(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            Collection<? extends Certificate> certificates = CertificateFactory.getInstance("X.509").generateCertificates(new Buffer().writeUtf8(str).inputStream());
            Intrinsics.checkNotNullExpressionValue(certificates, "certificates");
            Object objSingle = CollectionsKt.single(certificates);
            Intrinsics.checkNotNull(objSingle, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            return (X509Certificate) objSingle;
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("failed to decode certificate", e);
        } catch (GeneralSecurityException e2) {
            throw new IllegalArgumentException("failed to decode certificate", e2);
        } catch (NoSuchElementException e3) {
            throw new IllegalArgumentException("failed to decode certificate", e3);
        }
    }

    public static final String certificatePem(X509Certificate x509Certificate) {
        Intrinsics.checkNotNullParameter(x509Certificate, "<this>");
        StringBuilder sb = new StringBuilder();
        sb.append("-----BEGIN CERTIFICATE-----\n");
        ByteString.Companion companion = ByteString.INSTANCE;
        byte[] encoded = x509Certificate.getEncoded();
        Intrinsics.checkNotNullExpressionValue(encoded, "encoded");
        encodeBase64Lines(sb, ByteString.Companion.of$default(companion, encoded, 0, 0, 3, null));
        sb.append("-----END CERTIFICATE-----\n");
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static final void encodeBase64Lines(StringBuilder sb, ByteString data) {
        Intrinsics.checkNotNullParameter(sb, "<this>");
        Intrinsics.checkNotNullParameter(data, "data");
        String strBase64 = data.base64();
        IntProgression intProgressionStep = RangesKt.step(RangesKt.until(0, strBase64.length()), 64);
        int first = intProgressionStep.getFirst();
        int last = intProgressionStep.getLast();
        int step = intProgressionStep.getStep();
        if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
            return;
        }
        while (true) {
            sb.append((CharSequence) strBase64, first, Math.min(first + 64, strBase64.length())).append('\n');
            if (first == last) {
                return;
            } else {
                first += step;
            }
        }
    }
}
