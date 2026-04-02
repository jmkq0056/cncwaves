package okhttp3.tls.internal.der;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: compiled from: certificates.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0007HÆ\u0003J'\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\"\u001a\u00020\u001b2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020'HÖ\u0001J\u0006\u0010(\u001a\u00020)R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\r\u001a\u0004\u0018\u00010\u00018F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u00018F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006*"}, d2 = {"Lokhttp3/tls/internal/der/Certificate;", "", "tbsCertificate", "Lokhttp3/tls/internal/der/TbsCertificate;", "signatureAlgorithm", "Lokhttp3/tls/internal/der/AlgorithmIdentifier;", "signatureValue", "Lokhttp3/tls/internal/der/BitString;", "(Lokhttp3/tls/internal/der/TbsCertificate;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Lokhttp3/tls/internal/der/BitString;)V", "basicConstraints", "Lokhttp3/tls/internal/der/Extension;", "getBasicConstraints", "()Lokhttp3/tls/internal/der/Extension;", "commonName", "getCommonName", "()Ljava/lang/Object;", "organizationalUnitName", "getOrganizationalUnitName", "getSignatureAlgorithm", "()Lokhttp3/tls/internal/der/AlgorithmIdentifier;", "getSignatureValue", "()Lokhttp3/tls/internal/der/BitString;", "subjectAlternativeNames", "getSubjectAlternativeNames", "getTbsCertificate", "()Lokhttp3/tls/internal/der/TbsCertificate;", "checkSignature", "", "issuer", "Ljava/security/PublicKey;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "toX509Certificate", "Ljava/security/cert/X509Certificate;", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class Certificate {
    private final AlgorithmIdentifier signatureAlgorithm;
    private final BitString signatureValue;
    private final TbsCertificate tbsCertificate;

    public static /* synthetic */ Certificate copy$default(Certificate certificate, TbsCertificate tbsCertificate, AlgorithmIdentifier algorithmIdentifier, BitString bitString, int i, Object obj) {
        if ((i & 1) != 0) {
            tbsCertificate = certificate.tbsCertificate;
        }
        if ((i & 2) != 0) {
            algorithmIdentifier = certificate.signatureAlgorithm;
        }
        if ((i & 4) != 0) {
            bitString = certificate.signatureValue;
        }
        return certificate.copy(tbsCertificate, algorithmIdentifier, bitString);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final TbsCertificate getTbsCertificate() {
        return this.tbsCertificate;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final AlgorithmIdentifier getSignatureAlgorithm() {
        return this.signatureAlgorithm;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final BitString getSignatureValue() {
        return this.signatureValue;
    }

    public final Certificate copy(TbsCertificate tbsCertificate, AlgorithmIdentifier signatureAlgorithm, BitString signatureValue) {
        Intrinsics.checkNotNullParameter(tbsCertificate, "tbsCertificate");
        Intrinsics.checkNotNullParameter(signatureAlgorithm, "signatureAlgorithm");
        Intrinsics.checkNotNullParameter(signatureValue, "signatureValue");
        return new Certificate(tbsCertificate, signatureAlgorithm, signatureValue);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Certificate)) {
            return false;
        }
        Certificate certificate = (Certificate) other;
        return Intrinsics.areEqual(this.tbsCertificate, certificate.tbsCertificate) && Intrinsics.areEqual(this.signatureAlgorithm, certificate.signatureAlgorithm) && Intrinsics.areEqual(this.signatureValue, certificate.signatureValue);
    }

    public int hashCode() {
        return (((this.tbsCertificate.hashCode() * 31) + this.signatureAlgorithm.hashCode()) * 31) + this.signatureValue.hashCode();
    }

    public String toString() {
        return "Certificate(tbsCertificate=" + this.tbsCertificate + ", signatureAlgorithm=" + this.signatureAlgorithm + ", signatureValue=" + this.signatureValue + ')';
    }

    public Certificate(TbsCertificate tbsCertificate, AlgorithmIdentifier signatureAlgorithm, BitString signatureValue) {
        Intrinsics.checkNotNullParameter(tbsCertificate, "tbsCertificate");
        Intrinsics.checkNotNullParameter(signatureAlgorithm, "signatureAlgorithm");
        Intrinsics.checkNotNullParameter(signatureValue, "signatureValue");
        this.tbsCertificate = tbsCertificate;
        this.signatureAlgorithm = signatureAlgorithm;
        this.signatureValue = signatureValue;
    }

    public final TbsCertificate getTbsCertificate() {
        return this.tbsCertificate;
    }

    public final AlgorithmIdentifier getSignatureAlgorithm() {
        return this.signatureAlgorithm;
    }

    public final BitString getSignatureValue() {
        return this.signatureValue;
    }

    public final Object getCommonName() {
        Object next;
        Iterator it = CollectionsKt.flatten(this.tbsCertificate.getSubject()).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((AttributeTypeAndValue) next).getType(), ObjectIdentifiers.commonName)) {
                break;
            }
        }
        AttributeTypeAndValue attributeTypeAndValue = (AttributeTypeAndValue) next;
        if (attributeTypeAndValue != null) {
            return attributeTypeAndValue.getValue();
        }
        return null;
    }

    public final Object getOrganizationalUnitName() {
        Object next;
        Iterator it = CollectionsKt.flatten(this.tbsCertificate.getSubject()).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((AttributeTypeAndValue) next).getType(), ObjectIdentifiers.organizationalUnitName)) {
                break;
            }
        }
        AttributeTypeAndValue attributeTypeAndValue = (AttributeTypeAndValue) next;
        if (attributeTypeAndValue != null) {
            return attributeTypeAndValue.getValue();
        }
        return null;
    }

    public final Extension getSubjectAlternativeNames() {
        Object next;
        Iterator<T> it = this.tbsCertificate.getExtensions().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((Extension) next).getId(), ObjectIdentifiers.subjectAlternativeName)) {
                break;
            }
        }
        return (Extension) next;
    }

    public final Extension getBasicConstraints() {
        for (Extension extension : this.tbsCertificate.getExtensions()) {
            if (Intrinsics.areEqual(extension.getId(), ObjectIdentifiers.basicConstraints)) {
                return extension;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    public final boolean checkSignature(PublicKey issuer) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        Intrinsics.checkNotNullParameter(issuer, "issuer");
        ByteString der = CertificateAdapters.INSTANCE.getTbsCertificate$okhttp_tls().toDer(this.tbsCertificate);
        Signature signature = Signature.getInstance(this.tbsCertificate.getSignatureAlgorithmName());
        signature.initVerify(issuer);
        signature.update(der.toByteArray());
        return signature.verify(this.signatureValue.getByteString().toByteArray());
    }

    public final X509Certificate toX509Certificate() {
        try {
            Collection<? extends java.security.cert.Certificate> certificates = CertificateFactory.getInstance("X.509").generateCertificates(new Buffer().write(CertificateAdapters.INSTANCE.getCertificate$okhttp_tls().toDer(this)).inputStream());
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
}
