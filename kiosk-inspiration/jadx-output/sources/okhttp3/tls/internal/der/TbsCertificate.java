package okhttp3.tls.internal.der;

import java.math.BigInteger;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: certificates.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\t\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0012\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\t\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\t¢\u0006\u0002\u0010\u0015J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\u000f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00140\tHÆ\u0003J\t\u0010-\u001a\u00020\u0005HÆ\u0003J\t\u0010.\u001a\u00020\u0007HÆ\u0003J\u0015\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\tHÆ\u0003J\t\u00100\u001a\u00020\fHÆ\u0003J\u0015\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\tHÆ\u0003J\t\u00102\u001a\u00020\u000fHÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u008f\u0001\u00105\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0014\b\u0002\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\u0014\b\u0002\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\t2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\tHÆ\u0001J\u0013\u00106\u001a\u0002072\b\u00108\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\b\u00109\u001a\u00020:H\u0016J\t\u0010;\u001a\u00020 HÖ\u0001R\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001d\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020 8F¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u001d\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\t¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0017R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001aR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*¨\u0006<"}, d2 = {"Lokhttp3/tls/internal/der/TbsCertificate;", "", "version", "", "serialNumber", "Ljava/math/BigInteger;", "signature", "Lokhttp3/tls/internal/der/AlgorithmIdentifier;", "issuer", "", "Lokhttp3/tls/internal/der/AttributeTypeAndValue;", "validity", "Lokhttp3/tls/internal/der/Validity;", "subject", "subjectPublicKeyInfo", "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;", "issuerUniqueID", "Lokhttp3/tls/internal/der/BitString;", "subjectUniqueID", "extensions", "Lokhttp3/tls/internal/der/Extension;", "(JLjava/math/BigInteger;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Ljava/util/List;Lokhttp3/tls/internal/der/Validity;Ljava/util/List;Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;Lokhttp3/tls/internal/der/BitString;Lokhttp3/tls/internal/der/BitString;Ljava/util/List;)V", "getExtensions", "()Ljava/util/List;", "getIssuer", "getIssuerUniqueID", "()Lokhttp3/tls/internal/der/BitString;", "getSerialNumber", "()Ljava/math/BigInteger;", "getSignature", "()Lokhttp3/tls/internal/der/AlgorithmIdentifier;", "signatureAlgorithmName", "", "getSignatureAlgorithmName", "()Ljava/lang/String;", "getSubject", "getSubjectPublicKeyInfo", "()Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;", "getSubjectUniqueID", "getValidity", "()Lokhttp3/tls/internal/der/Validity;", "getVersion", "()J", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class TbsCertificate {
    private final List<Extension> extensions;
    private final List<List<AttributeTypeAndValue>> issuer;
    private final BitString issuerUniqueID;
    private final BigInteger serialNumber;
    private final AlgorithmIdentifier signature;
    private final List<List<AttributeTypeAndValue>> subject;
    private final SubjectPublicKeyInfo subjectPublicKeyInfo;
    private final BitString subjectUniqueID;
    private final Validity validity;
    private final long version;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TbsCertificate copy$default(TbsCertificate tbsCertificate, long j, BigInteger bigInteger, AlgorithmIdentifier algorithmIdentifier, List list, Validity validity, List list2, SubjectPublicKeyInfo subjectPublicKeyInfo, BitString bitString, BitString bitString2, List list3, int i, Object obj) {
        if ((i & 1) != 0) {
            j = tbsCertificate.version;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            bigInteger = tbsCertificate.serialNumber;
        }
        return tbsCertificate.copy(j2, bigInteger, (i & 4) != 0 ? tbsCertificate.signature : algorithmIdentifier, (i & 8) != 0 ? tbsCertificate.issuer : list, (i & 16) != 0 ? tbsCertificate.validity : validity, (i & 32) != 0 ? tbsCertificate.subject : list2, (i & 64) != 0 ? tbsCertificate.subjectPublicKeyInfo : subjectPublicKeyInfo, (i & 128) != 0 ? tbsCertificate.issuerUniqueID : bitString, (i & 256) != 0 ? tbsCertificate.subjectUniqueID : bitString2, (i & 512) != 0 ? tbsCertificate.extensions : list3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getVersion() {
        return this.version;
    }

    public final List<Extension> component10() {
        return this.extensions;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final BigInteger getSerialNumber() {
        return this.serialNumber;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final AlgorithmIdentifier getSignature() {
        return this.signature;
    }

    public final List<List<AttributeTypeAndValue>> component4() {
        return this.issuer;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Validity getValidity() {
        return this.validity;
    }

    public final List<List<AttributeTypeAndValue>> component6() {
        return this.subject;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final SubjectPublicKeyInfo getSubjectPublicKeyInfo() {
        return this.subjectPublicKeyInfo;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final BitString getIssuerUniqueID() {
        return this.issuerUniqueID;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final BitString getSubjectUniqueID() {
        return this.subjectUniqueID;
    }

    public final TbsCertificate copy(long version, BigInteger serialNumber, AlgorithmIdentifier signature, List<? extends List<AttributeTypeAndValue>> issuer, Validity validity, List<? extends List<AttributeTypeAndValue>> subject, SubjectPublicKeyInfo subjectPublicKeyInfo, BitString issuerUniqueID, BitString subjectUniqueID, List<Extension> extensions) {
        Intrinsics.checkNotNullParameter(serialNumber, "serialNumber");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(issuer, "issuer");
        Intrinsics.checkNotNullParameter(validity, "validity");
        Intrinsics.checkNotNullParameter(subject, "subject");
        Intrinsics.checkNotNullParameter(subjectPublicKeyInfo, "subjectPublicKeyInfo");
        Intrinsics.checkNotNullParameter(extensions, "extensions");
        return new TbsCertificate(version, serialNumber, signature, issuer, validity, subject, subjectPublicKeyInfo, issuerUniqueID, subjectUniqueID, extensions);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TbsCertificate)) {
            return false;
        }
        TbsCertificate tbsCertificate = (TbsCertificate) other;
        return this.version == tbsCertificate.version && Intrinsics.areEqual(this.serialNumber, tbsCertificate.serialNumber) && Intrinsics.areEqual(this.signature, tbsCertificate.signature) && Intrinsics.areEqual(this.issuer, tbsCertificate.issuer) && Intrinsics.areEqual(this.validity, tbsCertificate.validity) && Intrinsics.areEqual(this.subject, tbsCertificate.subject) && Intrinsics.areEqual(this.subjectPublicKeyInfo, tbsCertificate.subjectPublicKeyInfo) && Intrinsics.areEqual(this.issuerUniqueID, tbsCertificate.issuerUniqueID) && Intrinsics.areEqual(this.subjectUniqueID, tbsCertificate.subjectUniqueID) && Intrinsics.areEqual(this.extensions, tbsCertificate.extensions);
    }

    public String toString() {
        return "TbsCertificate(version=" + this.version + ", serialNumber=" + this.serialNumber + ", signature=" + this.signature + ", issuer=" + this.issuer + ", validity=" + this.validity + ", subject=" + this.subject + ", subjectPublicKeyInfo=" + this.subjectPublicKeyInfo + ", issuerUniqueID=" + this.issuerUniqueID + ", subjectUniqueID=" + this.subjectUniqueID + ", extensions=" + this.extensions + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TbsCertificate(long j, BigInteger serialNumber, AlgorithmIdentifier signature, List<? extends List<AttributeTypeAndValue>> issuer, Validity validity, List<? extends List<AttributeTypeAndValue>> subject, SubjectPublicKeyInfo subjectPublicKeyInfo, BitString bitString, BitString bitString2, List<Extension> extensions) {
        Intrinsics.checkNotNullParameter(serialNumber, "serialNumber");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(issuer, "issuer");
        Intrinsics.checkNotNullParameter(validity, "validity");
        Intrinsics.checkNotNullParameter(subject, "subject");
        Intrinsics.checkNotNullParameter(subjectPublicKeyInfo, "subjectPublicKeyInfo");
        Intrinsics.checkNotNullParameter(extensions, "extensions");
        this.version = j;
        this.serialNumber = serialNumber;
        this.signature = signature;
        this.issuer = issuer;
        this.validity = validity;
        this.subject = subject;
        this.subjectPublicKeyInfo = subjectPublicKeyInfo;
        this.issuerUniqueID = bitString;
        this.subjectUniqueID = bitString2;
        this.extensions = extensions;
    }

    public final long getVersion() {
        return this.version;
    }

    public final BigInteger getSerialNumber() {
        return this.serialNumber;
    }

    public final AlgorithmIdentifier getSignature() {
        return this.signature;
    }

    public final List<List<AttributeTypeAndValue>> getIssuer() {
        return this.issuer;
    }

    public final Validity getValidity() {
        return this.validity;
    }

    public final List<List<AttributeTypeAndValue>> getSubject() {
        return this.subject;
    }

    public final SubjectPublicKeyInfo getSubjectPublicKeyInfo() {
        return this.subjectPublicKeyInfo;
    }

    public final BitString getIssuerUniqueID() {
        return this.issuerUniqueID;
    }

    public final BitString getSubjectUniqueID() {
        return this.subjectUniqueID;
    }

    public final List<Extension> getExtensions() {
        return this.extensions;
    }

    public final String getSignatureAlgorithmName() {
        String algorithm = this.signature.getAlgorithm();
        if (Intrinsics.areEqual(algorithm, ObjectIdentifiers.sha256WithRSAEncryption)) {
            return "SHA256WithRSA";
        }
        if (Intrinsics.areEqual(algorithm, ObjectIdentifiers.sha256withEcdsa)) {
            return "SHA256withECDSA";
        }
        throw new IllegalStateException(("unexpected signature algorithm: " + this.signature.getAlgorithm()).toString());
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((int) this.version) * 31) + this.serialNumber.hashCode()) * 31) + this.signature.hashCode()) * 31) + this.issuer.hashCode()) * 31) + this.validity.hashCode()) * 31) + this.subject.hashCode()) * 31) + this.subjectPublicKeyInfo.hashCode()) * 31;
        BitString bitString = this.issuerUniqueID;
        int iHashCode2 = (iHashCode + (bitString != null ? bitString.hashCode() : 0)) * 31;
        BitString bitString2 = this.subjectUniqueID;
        return ((iHashCode2 + (bitString2 != null ? bitString2.hashCode() : 0)) * 31) + this.extensions.hashCode();
    }
}
