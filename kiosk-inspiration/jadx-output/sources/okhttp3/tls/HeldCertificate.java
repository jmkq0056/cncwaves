package okhttp3.tls;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.math.BigInteger;
import java.net.InetAddress;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.X509Certificate;
import java.security.interfaces.ECPublicKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import okhttp3.internal.Util;
import okhttp3.tls.internal.der.AlgorithmIdentifier;
import okhttp3.tls.internal.der.AttributeTypeAndValue;
import okhttp3.tls.internal.der.BasicConstraints;
import okhttp3.tls.internal.der.BasicDerAdapter;
import okhttp3.tls.internal.der.BitString;
import okhttp3.tls.internal.der.Certificate;
import okhttp3.tls.internal.der.CertificateAdapters;
import okhttp3.tls.internal.der.Extension;
import okhttp3.tls.internal.der.ObjectIdentifiers;
import okhttp3.tls.internal.der.PrivateKeyInfo;
import okhttp3.tls.internal.der.SubjectPublicKeyInfo;
import okhttp3.tls.internal.der.TbsCertificate;
import okhttp3.tls.internal.der.Validity;
import okio.ByteString;

/* JADX INFO: compiled from: HeldCertificate.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00122\u00020\u0001:\u0002\u0011\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\r\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\b\tJ\u0006\u0010\n\u001a\u00020\u000bJ\r\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\fJ\b\u0010\r\u001a\u00020\u000eH\u0002J\u0006\u0010\u000f\u001a\u00020\u000bJ\u0006\u0010\u0010\u001a\u00020\u000bR\u0013\u0010\u0004\u001a\u00020\u00058\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0007R\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\b¨\u0006\u0013"}, d2 = {"Lokhttp3/tls/HeldCertificate;", "", "keyPair", "Ljava/security/KeyPair;", "certificate", "Ljava/security/cert/X509Certificate;", "(Ljava/security/KeyPair;Ljava/security/cert/X509Certificate;)V", "()Ljava/security/cert/X509Certificate;", "()Ljava/security/KeyPair;", "-deprecated_certificate", "certificatePem", "", "-deprecated_keyPair", "pkcs1Bytes", "Lokio/ByteString;", "privateKeyPkcs1Pem", "privateKeyPkcs8Pem", "Builder", "Companion", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class HeldCertificate {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Regex PEM_REGEX = new Regex("-----BEGIN ([!-,.-~ ]*)-----([^-]*)-----END \\1-----");
    private final X509Certificate certificate;
    private final KeyPair keyPair;

    @JvmStatic
    public static final HeldCertificate decode(String str) {
        return INSTANCE.decode(str);
    }

    public HeldCertificate(KeyPair keyPair, X509Certificate certificate) {
        Intrinsics.checkNotNullParameter(keyPair, "keyPair");
        Intrinsics.checkNotNullParameter(certificate, "certificate");
        this.keyPair = keyPair;
        this.certificate = certificate;
    }

    public final KeyPair keyPair() {
        return this.keyPair;
    }

    public final X509Certificate certificate() {
        return this.certificate;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "certificate", imports = {}))
    /* JADX INFO: renamed from: -deprecated_certificate, reason: not valid java name and from getter */
    public final X509Certificate getCertificate() {
        return this.certificate;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "keyPair", imports = {}))
    /* JADX INFO: renamed from: -deprecated_keyPair, reason: not valid java name and from getter */
    public final KeyPair getKeyPair() {
        return this.keyPair;
    }

    public final String certificatePem() {
        return Certificates.certificatePem(this.certificate);
    }

    public final String privateKeyPkcs8Pem() {
        StringBuilder sb = new StringBuilder();
        sb.append("-----BEGIN PRIVATE KEY-----\n");
        ByteString.Companion companion = ByteString.INSTANCE;
        byte[] encoded = this.keyPair.getPrivate().getEncoded();
        Intrinsics.checkNotNullExpressionValue(encoded, "keyPair.private.encoded");
        Certificates.encodeBase64Lines(sb, ByteString.Companion.of$default(companion, encoded, 0, 0, 3, null));
        sb.append("-----END PRIVATE KEY-----\n");
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String privateKeyPkcs1Pem() {
        if (!(this.keyPair.getPrivate() instanceof RSAPrivateKey)) {
            throw new IllegalStateException("PKCS1 only supports RSA keys".toString());
        }
        StringBuilder sb = new StringBuilder();
        sb.append("-----BEGIN RSA PRIVATE KEY-----\n");
        Certificates.encodeBase64Lines(sb, pkcs1Bytes());
        sb.append("-----END RSA PRIVATE KEY-----\n");
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    private final ByteString pkcs1Bytes() {
        BasicDerAdapter<PrivateKeyInfo> privateKeyInfo$okhttp_tls = CertificateAdapters.INSTANCE.getPrivateKeyInfo$okhttp_tls();
        ByteString.Companion companion = ByteString.INSTANCE;
        byte[] encoded = this.keyPair.getPrivate().getEncoded();
        Intrinsics.checkNotNullExpressionValue(encoded, "keyPair.private.encoded");
        return privateKeyInfo$okhttp_tls.fromDer(ByteString.Companion.of$default(companion, encoded, 0, 0, 3, null)).getPrivateKey();
    }

    /* JADX INFO: compiled from: HeldCertificate.kt */
    @Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 02\u00020\u0001:\u00010B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0005J\u0006\u0010\u0017\u001a\u00020\u0014J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0005J\u0016\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u0000J\u000e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u0004H\u0002J\b\u0010 \u001a\u00020\tH\u0002J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\b\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0005J\u0006\u0010&\u001a\u00020\u0000J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000eJ\u0010\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\tH\u0002J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0014\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020,0+0+H\u0002J\b\u0010-\u001a\u00020.H\u0002J\u0016\u0010/\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000eR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lokhttp3/tls/HeldCertificate$Builder;", "", "()V", "altNames", "", "", "commonName", "keyAlgorithm", "keyPair", "Ljava/security/KeyPair;", "keySize", "", "maxIntermediateCas", "notAfter", "", "notBefore", "organizationalUnit", "serialNumber", "Ljava/math/BigInteger;", "signedBy", "Lokhttp3/tls/HeldCertificate;", "addSubjectAlternativeName", "altName", "build", "certificateAuthority", "cn", TypedValues.TransitionType.S_DURATION, "unit", "Ljava/util/concurrent/TimeUnit;", "ecdsa256", "extensions", "Lokhttp3/tls/internal/der/Extension;", "generateKeyPair", "publicKey", "Ljava/security/PublicKey;", "privateKey", "Ljava/security/PrivateKey;", "ou", "rsa2048", "signatureAlgorithm", "Lokhttp3/tls/internal/der/AlgorithmIdentifier;", "signedByKeyPair", "subject", "", "Lokhttp3/tls/internal/der/AttributeTypeAndValue;", "validity", "Lokhttp3/tls/internal/der/Validity;", "validityInterval", "Companion", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Builder {
        private static final long DEFAULT_DURATION_MILLIS = 86400000;
        private String commonName;
        private String keyAlgorithm;
        private KeyPair keyPair;
        private int keySize;
        private String organizationalUnit;
        private BigInteger serialNumber;
        private HeldCertificate signedBy;
        private long notBefore = -1;
        private long notAfter = -1;
        private final List<String> altNames = new ArrayList();
        private int maxIntermediateCas = -1;

        public Builder() {
            ecdsa256();
        }

        public final Builder validityInterval(long notBefore, long notAfter) {
            if (notBefore <= notAfter) {
                if ((notBefore == -1) == (notAfter == -1)) {
                    this.notBefore = notBefore;
                    this.notAfter = notAfter;
                    return this;
                }
            }
            throw new IllegalArgumentException(("invalid interval: " + notBefore + ".." + notAfter).toString());
        }

        public final Builder duration(long duration, TimeUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            long jCurrentTimeMillis = System.currentTimeMillis();
            validityInterval(jCurrentTimeMillis, unit.toMillis(duration) + jCurrentTimeMillis);
            return this;
        }

        public final Builder addSubjectAlternativeName(String altName) {
            Intrinsics.checkNotNullParameter(altName, "altName");
            this.altNames.add(altName);
            return this;
        }

        public final Builder commonName(String cn) {
            Intrinsics.checkNotNullParameter(cn, "cn");
            this.commonName = cn;
            return this;
        }

        public final Builder organizationalUnit(String ou) {
            Intrinsics.checkNotNullParameter(ou, "ou");
            this.organizationalUnit = ou;
            return this;
        }

        public final Builder serialNumber(BigInteger serialNumber) {
            Intrinsics.checkNotNullParameter(serialNumber, "serialNumber");
            this.serialNumber = serialNumber;
            return this;
        }

        public final Builder serialNumber(long serialNumber) {
            BigInteger bigIntegerValueOf = BigInteger.valueOf(serialNumber);
            Intrinsics.checkNotNullExpressionValue(bigIntegerValueOf, "valueOf(serialNumber)");
            serialNumber(bigIntegerValueOf);
            return this;
        }

        public final Builder keyPair(KeyPair keyPair) {
            Intrinsics.checkNotNullParameter(keyPair, "keyPair");
            this.keyPair = keyPair;
            return this;
        }

        public final Builder keyPair(PublicKey publicKey, PrivateKey privateKey) {
            Intrinsics.checkNotNullParameter(publicKey, "publicKey");
            Intrinsics.checkNotNullParameter(privateKey, "privateKey");
            keyPair(new KeyPair(publicKey, privateKey));
            return this;
        }

        public final Builder signedBy(HeldCertificate signedBy) {
            this.signedBy = signedBy;
            return this;
        }

        public final Builder certificateAuthority(int maxIntermediateCas) {
            if (maxIntermediateCas < 0) {
                throw new IllegalArgumentException(("maxIntermediateCas < 0: " + maxIntermediateCas).toString());
            }
            this.maxIntermediateCas = maxIntermediateCas;
            return this;
        }

        public final Builder ecdsa256() {
            this.keyAlgorithm = "EC";
            this.keySize = 256;
            return this;
        }

        public final Builder rsa2048() {
            this.keyAlgorithm = "RSA";
            this.keySize = 2048;
            return this;
        }

        public final HeldCertificate build() throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {
            KeyPair keyPair;
            List<List<AttributeTypeAndValue>> listFromDer;
            KeyPair keyPairGenerateKeyPair = this.keyPair;
            if (keyPairGenerateKeyPair == null) {
                keyPairGenerateKeyPair = generateKeyPair();
            }
            BasicDerAdapter<SubjectPublicKeyInfo> subjectPublicKeyInfo$okhttp_tls = CertificateAdapters.INSTANCE.getSubjectPublicKeyInfo$okhttp_tls();
            ByteString.Companion companion = ByteString.INSTANCE;
            byte[] encoded = keyPairGenerateKeyPair.getPublic().getEncoded();
            Intrinsics.checkNotNullExpressionValue(encoded, "subjectKeyPair.public.encoded");
            SubjectPublicKeyInfo subjectPublicKeyInfoFromDer = subjectPublicKeyInfo$okhttp_tls.fromDer(ByteString.Companion.of$default(companion, encoded, 0, 0, 3, null));
            List<List<AttributeTypeAndValue>> listSubject = subject();
            HeldCertificate heldCertificate = this.signedBy;
            if (heldCertificate != null) {
                Intrinsics.checkNotNull(heldCertificate);
                keyPair = heldCertificate.keyPair();
                BasicDerAdapter<List<List<AttributeTypeAndValue>>> rdnSequence$okhttp_tls = CertificateAdapters.INSTANCE.getRdnSequence$okhttp_tls();
                ByteString.Companion companion2 = ByteString.INSTANCE;
                HeldCertificate heldCertificate2 = this.signedBy;
                Intrinsics.checkNotNull(heldCertificate2);
                byte[] encoded2 = heldCertificate2.certificate().getSubjectX500Principal().getEncoded();
                Intrinsics.checkNotNullExpressionValue(encoded2, "signedBy!!.certificate.s…jectX500Principal.encoded");
                listFromDer = rdnSequence$okhttp_tls.fromDer(ByteString.Companion.of$default(companion2, encoded2, 0, 0, 3, null));
            } else {
                keyPair = keyPairGenerateKeyPair;
                listFromDer = listSubject;
            }
            AlgorithmIdentifier algorithmIdentifierSignatureAlgorithm = signatureAlgorithm(keyPair);
            BigInteger bigInteger = this.serialNumber;
            if (bigInteger == null) {
                bigInteger = BigInteger.ONE;
            }
            BigInteger bigInteger2 = bigInteger;
            Intrinsics.checkNotNullExpressionValue(bigInteger2, "serialNumber ?: BigInteger.ONE");
            TbsCertificate tbsCertificate = new TbsCertificate(2L, bigInteger2, algorithmIdentifierSignatureAlgorithm, listFromDer, validity(), listSubject, subjectPublicKeyInfoFromDer, null, null, extensions());
            Signature signature = Signature.getInstance(tbsCertificate.getSignatureAlgorithmName());
            signature.initSign(keyPair.getPrivate());
            signature.update(CertificateAdapters.INSTANCE.getTbsCertificate$okhttp_tls().toDer(tbsCertificate).toByteArray());
            ByteString.Companion companion3 = ByteString.INSTANCE;
            byte[] bArrSign = signature.sign();
            Intrinsics.checkNotNullExpressionValue(bArrSign, "sign()");
            return new HeldCertificate(keyPairGenerateKeyPair, new Certificate(tbsCertificate, algorithmIdentifierSignatureAlgorithm, new BitString(ByteString.Companion.of$default(companion3, bArrSign, 0, 0, 3, null), 0)).toX509Certificate());
        }

        private final List<List<AttributeTypeAndValue>> subject() {
            ArrayList arrayList = new ArrayList();
            if (this.organizationalUnit != null) {
                arrayList.add(CollectionsKt.listOf(new AttributeTypeAndValue(ObjectIdentifiers.organizationalUnitName, this.organizationalUnit)));
            }
            ArrayList arrayList2 = arrayList;
            String string = this.commonName;
            if (string == null) {
                string = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
            }
            arrayList2.add(CollectionsKt.listOf(new AttributeTypeAndValue(ObjectIdentifiers.commonName, string)));
            return arrayList;
        }

        private final Validity validity() {
            long jCurrentTimeMillis = this.notBefore;
            if (jCurrentTimeMillis == -1) {
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            long j = this.notAfter;
            if (j == -1) {
                j = jCurrentTimeMillis + 86400000;
            }
            return new Validity(jCurrentTimeMillis, j);
        }

        private final List<Extension> extensions() {
            Pair pair;
            ArrayList arrayList = new ArrayList();
            if (this.maxIntermediateCas != -1) {
                arrayList.add(new Extension(ObjectIdentifiers.basicConstraints, true, new BasicConstraints(true, Long.valueOf(this.maxIntermediateCas))));
            }
            if (!this.altNames.isEmpty()) {
                List<String> list = this.altNames;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                for (String str : list) {
                    if (Util.canParseAsIpAddress(str)) {
                        BasicDerAdapter<ByteString> generalNameIpAddress$okhttp_tls = CertificateAdapters.INSTANCE.getGeneralNameIpAddress$okhttp_tls();
                        ByteString.Companion companion = ByteString.INSTANCE;
                        byte[] address = InetAddress.getByName(str).getAddress();
                        Intrinsics.checkNotNullExpressionValue(address, "getByName(it).address");
                        pair = TuplesKt.to(generalNameIpAddress$okhttp_tls, ByteString.Companion.of$default(companion, address, 0, 0, 3, null));
                    } else {
                        pair = TuplesKt.to(CertificateAdapters.INSTANCE.getGeneralNameDnsName$okhttp_tls(), str);
                    }
                    arrayList2.add(pair);
                }
                arrayList.add(new Extension(ObjectIdentifiers.subjectAlternativeName, true, arrayList2));
            }
            return arrayList;
        }

        private final AlgorithmIdentifier signatureAlgorithm(KeyPair signedByKeyPair) {
            if (signedByKeyPair.getPrivate() instanceof RSAPrivateKey) {
                return new AlgorithmIdentifier(ObjectIdentifiers.sha256WithRSAEncryption, null);
            }
            return new AlgorithmIdentifier(ObjectIdentifiers.sha256withEcdsa, ByteString.EMPTY);
        }

        private final KeyPair generateKeyPair() throws NoSuchAlgorithmException {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(this.keyAlgorithm);
            keyPairGenerator.initialize(this.keySize, new SecureRandom());
            KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
            Intrinsics.checkNotNullExpressionValue(keyPairGenerateKeyPair, "getInstance(keyAlgorithm…generateKeyPair()\n      }");
            return keyPairGenerateKeyPair;
        }
    }

    /* JADX INFO: compiled from: HeldCertificate.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0002J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lokhttp3/tls/HeldCertificate$Companion;", "", "()V", "PEM_REGEX", "Lkotlin/text/Regex;", "decode", "Lokhttp3/tls/HeldCertificate;", "certificateAndPrivateKeyPem", "", "certificatePem", "pkcs8Base64Text", "decodePkcs8", "Ljava/security/PrivateKey;", "data", "Lokio/ByteString;", "keyAlgorithm", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final HeldCertificate decode(String certificateAndPrivateKeyPem) {
            Intrinsics.checkNotNullParameter(certificateAndPrivateKeyPem, "certificateAndPrivateKeyPem");
            String value = null;
            String value2 = null;
            for (MatchResult matchResult : Regex.findAll$default(HeldCertificate.PEM_REGEX, certificateAndPrivateKeyPem, 0, 2, null)) {
                MatchGroup matchGroup = matchResult.getGroups().get(1);
                Intrinsics.checkNotNull(matchGroup);
                String value3 = matchGroup.getValue();
                if (Intrinsics.areEqual(value3, "CERTIFICATE")) {
                    if (value != null) {
                        throw new IllegalArgumentException("string includes multiple certificates".toString());
                    }
                    MatchGroup matchGroup2 = matchResult.getGroups().get(0);
                    Intrinsics.checkNotNull(matchGroup2);
                    value = matchGroup2.getValue();
                } else {
                    if (!Intrinsics.areEqual(value3, "PRIVATE KEY")) {
                        throw new IllegalArgumentException("unexpected type: " + value3);
                    }
                    if (value2 != null) {
                        throw new IllegalArgumentException("string includes multiple private keys".toString());
                    }
                    MatchGroup matchGroup3 = matchResult.getGroups().get(2);
                    Intrinsics.checkNotNull(matchGroup3);
                    value2 = matchGroup3.getValue();
                }
            }
            if (value == null) {
                throw new IllegalArgumentException("string does not include a certificate".toString());
            }
            if (value2 == null) {
                throw new IllegalArgumentException("string does not include a private key".toString());
            }
            return decode(value, value2);
        }

        private final HeldCertificate decode(String certificatePem, String pkcs8Base64Text) {
            String str;
            X509Certificate x509CertificateDecodeCertificatePem = Certificates.decodeCertificatePem(certificatePem);
            ByteString byteStringDecodeBase64 = ByteString.INSTANCE.decodeBase64(pkcs8Base64Text);
            if (byteStringDecodeBase64 == null) {
                throw new IllegalArgumentException("failed to decode private key");
            }
            PublicKey publicKey = x509CertificateDecodeCertificatePem.getPublicKey();
            if (publicKey instanceof ECPublicKey) {
                str = "EC";
            } else {
                if (!(publicKey instanceof RSAPublicKey)) {
                    throw new IllegalArgumentException("unexpected key type: " + x509CertificateDecodeCertificatePem.getPublicKey());
                }
                str = "RSA";
            }
            return new HeldCertificate(new KeyPair(x509CertificateDecodeCertificatePem.getPublicKey(), decodePkcs8(byteStringDecodeBase64, str)), x509CertificateDecodeCertificatePem);
        }

        private final PrivateKey decodePkcs8(ByteString data, String keyAlgorithm) {
            try {
                PrivateKey privateKeyGeneratePrivate = KeyFactory.getInstance(keyAlgorithm).generatePrivate(new PKCS8EncodedKeySpec(data.toByteArray()));
                Intrinsics.checkNotNullExpressionValue(privateKeyGeneratePrivate, "keyFactory.generatePriva…Spec(data.toByteArray()))");
                return privateKeyGeneratePrivate;
            } catch (GeneralSecurityException e) {
                throw new IllegalArgumentException("failed to decode private key", e);
            }
        }
    }
}
