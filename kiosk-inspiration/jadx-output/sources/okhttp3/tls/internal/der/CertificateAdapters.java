package okhttp3.tls.internal.der;

import java.io.IOException;
import java.math.BigInteger;
import java.net.ProtocolException;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okhttp3.tls.internal.der.DerAdapter;
import okio.ByteString;

/* JADX INFO: compiled from: CertificateAdapters.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0007R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0007R\u0016\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R,\u0010\u0015\u001a\u001a\u0012\u0016\u0012\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00160\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0007R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0007R,\u0010\u001f\u001a\u001a\u0012\u0016\u0012\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00160\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0018R\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0007R&\u0010$\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0%0%0\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0007R,\u0010'\u001a \u0012\u001c\u0012\u001a\u0012\u0016\u0012\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00160%0\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020)0\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0007R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020,0\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u0007R\u001a\u0010.\u001a\b\u0012\u0004\u0012\u00020/0\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u0018R\u0014\u00101\u001a\b\u0012\u0004\u0012\u0002020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Lokhttp3/tls/internal/der/CertificateAdapters;", "", "()V", "algorithmIdentifier", "Lokhttp3/tls/internal/der/BasicDerAdapter;", "Lokhttp3/tls/internal/der/AlgorithmIdentifier;", "getAlgorithmIdentifier$okhttp_tls", "()Lokhttp3/tls/internal/der/BasicDerAdapter;", "algorithmParameters", "Lokhttp3/tls/internal/der/DerAdapter;", "attributeTypeAndValue", "Lokhttp3/tls/internal/der/AttributeTypeAndValue;", "basicConstraints", "Lokhttp3/tls/internal/der/BasicConstraints;", "certificate", "Lokhttp3/tls/internal/der/Certificate;", "getCertificate$okhttp_tls", "extension", "Lokhttp3/tls/internal/der/Extension;", "getExtension$okhttp_tls", "extensionValue", "generalName", "Lkotlin/Pair;", "getGeneralName$okhttp_tls", "()Lokhttp3/tls/internal/der/DerAdapter;", "generalNameDnsName", "", "getGeneralNameDnsName$okhttp_tls", "generalNameIpAddress", "Lokio/ByteString;", "getGeneralNameIpAddress$okhttp_tls", "name", "getName$okhttp_tls", "privateKeyInfo", "Lokhttp3/tls/internal/der/PrivateKeyInfo;", "getPrivateKeyInfo$okhttp_tls", "rdnSequence", "", "getRdnSequence$okhttp_tls", "subjectAlternativeName", "subjectPublicKeyInfo", "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;", "getSubjectPublicKeyInfo$okhttp_tls", "tbsCertificate", "Lokhttp3/tls/internal/der/TbsCertificate;", "getTbsCertificate$okhttp_tls", "time", "", "getTime$okhttp_tls", "validity", "Lokhttp3/tls/internal/der/Validity;", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CertificateAdapters {
    public static final CertificateAdapters INSTANCE = new CertificateAdapters();
    private static final BasicDerAdapter<AlgorithmIdentifier> algorithmIdentifier;
    private static final DerAdapter<Object> algorithmParameters;
    private static final BasicDerAdapter<AttributeTypeAndValue> attributeTypeAndValue;
    private static final BasicDerAdapter<BasicConstraints> basicConstraints;
    private static final BasicDerAdapter<Certificate> certificate;
    private static final BasicDerAdapter<Extension> extension;
    private static final BasicDerAdapter<Object> extensionValue;
    private static final DerAdapter<Pair<DerAdapter<?>, Object>> generalName;
    private static final BasicDerAdapter<String> generalNameDnsName;
    private static final BasicDerAdapter<ByteString> generalNameIpAddress;
    private static final DerAdapter<Pair<DerAdapter<?>, Object>> name;
    private static final BasicDerAdapter<PrivateKeyInfo> privateKeyInfo;
    private static final BasicDerAdapter<List<List<AttributeTypeAndValue>>> rdnSequence;
    private static final BasicDerAdapter<List<Pair<DerAdapter<?>, Object>>> subjectAlternativeName;
    private static final BasicDerAdapter<SubjectPublicKeyInfo> subjectPublicKeyInfo;
    private static final BasicDerAdapter<TbsCertificate> tbsCertificate;
    private static final DerAdapter<Long> time;
    private static final BasicDerAdapter<Validity> validity;

    private CertificateAdapters() {
    }

    static {
        DerAdapter<Long> derAdapter = new DerAdapter<Long>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$time$1
            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<List<Long>> asSequenceOf(String str, int i, long j) {
                return DerAdapter.DefaultImpls.asSequenceOf(this, str, i, j);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<List<Long>> asSetOf() {
                return DerAdapter.DefaultImpls.asSetOf(this);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // okhttp3.tls.internal.der.DerAdapter
            public Long fromDer(ByteString byteString) {
                return (Long) DerAdapter.DefaultImpls.fromDer(this, byteString);
            }

            public ByteString toDer(long j) {
                return DerAdapter.DefaultImpls.toDer(this, Long.valueOf(j));
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public /* bridge */ /* synthetic */ ByteString toDer(Long l) {
                return toDer(l.longValue());
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public /* bridge */ /* synthetic */ void toDer(DerWriter derWriter, Long l) throws IOException {
                toDer(derWriter, l.longValue());
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<Long> withExplicitBox(int i, long j, Boolean bool) {
                return DerAdapter.DefaultImpls.withExplicitBox(this, i, j, bool);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public boolean matches(DerHeader header) {
                Intrinsics.checkNotNullParameter(header, "header");
                return Adapters.INSTANCE.getUTC_TIME().matches(header) || Adapters.INSTANCE.getGENERALIZED_TIME().matches(header);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // okhttp3.tls.internal.der.DerAdapter
            public Long fromDer(DerReader reader) throws IOException {
                long jLongValue;
                Intrinsics.checkNotNullParameter(reader, "reader");
                DerHeader derHeaderPeekHeader = reader.peekHeader();
                if (derHeaderPeekHeader == null) {
                    throw new ProtocolException("expected time but was exhausted at " + reader);
                }
                if (derHeaderPeekHeader.getTagClass() == Adapters.INSTANCE.getUTC_TIME().getTagClass() && derHeaderPeekHeader.getTag() == Adapters.INSTANCE.getUTC_TIME().getTag()) {
                    jLongValue = Adapters.INSTANCE.getUTC_TIME().fromDer(reader).longValue();
                } else {
                    if (derHeaderPeekHeader.getTagClass() != Adapters.INSTANCE.getGENERALIZED_TIME().getTagClass() || derHeaderPeekHeader.getTag() != Adapters.INSTANCE.getGENERALIZED_TIME().getTag()) {
                        throw new ProtocolException("expected time but was " + derHeaderPeekHeader + " at " + reader);
                    }
                    jLongValue = Adapters.INSTANCE.getGENERALIZED_TIME().fromDer(reader).longValue();
                }
                return Long.valueOf(jLongValue);
            }

            public void toDer(DerWriter writer, long value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                if (-631152000000L <= value && value < 2524608000000L) {
                    Adapters.INSTANCE.getUTC_TIME().toDer(writer, Long.valueOf(value));
                } else {
                    Adapters.INSTANCE.getGENERALIZED_TIME().toDer(writer, Long.valueOf(value));
                }
            }
        };
        time = derAdapter;
        BasicDerAdapter<Validity> basicDerAdapterSequence = Adapters.INSTANCE.sequence("Validity", new DerAdapter[]{derAdapter, derAdapter}, new Function1<Validity, List<?>>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$validity$1
            @Override // kotlin.jvm.functions.Function1
            public final List<?> invoke(Validity it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return CollectionsKt.listOf((Object[]) new Long[]{Long.valueOf(it.getNotBefore()), Long.valueOf(it.getNotAfter())});
            }
        }, new Function1<List<?>, Validity>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$validity$2
            @Override // kotlin.jvm.functions.Function1
            public final Validity invoke(List<?> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Object obj = it.get(0);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Long");
                long jLongValue = ((Long) obj).longValue();
                Object obj2 = it.get(1);
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Long");
                return new Validity(jLongValue, ((Long) obj2).longValue());
            }
        });
        validity = basicDerAdapterSequence;
        DerAdapter<?> derAdapterUsingTypeHint = Adapters.INSTANCE.usingTypeHint(new Function1<Object, DerAdapter<?>>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$algorithmParameters$1
            @Override // kotlin.jvm.functions.Function1
            public final DerAdapter<?> invoke(Object obj) {
                if (!Intrinsics.areEqual(obj, ObjectIdentifiers.sha256WithRSAEncryption) && !Intrinsics.areEqual(obj, ObjectIdentifiers.rsaEncryption)) {
                    if (Intrinsics.areEqual(obj, ObjectIdentifiers.ecPublicKey)) {
                        return Adapters.INSTANCE.getOBJECT_IDENTIFIER();
                    }
                    return null;
                }
                return Adapters.INSTANCE.getNULL();
            }
        });
        algorithmParameters = derAdapterUsingTypeHint;
        BasicDerAdapter<AlgorithmIdentifier> basicDerAdapterSequence2 = Adapters.INSTANCE.sequence("AlgorithmIdentifier", new DerAdapter[]{Adapters.INSTANCE.getOBJECT_IDENTIFIER().asTypeHint(), derAdapterUsingTypeHint}, new Function1<AlgorithmIdentifier, List<?>>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$algorithmIdentifier$1
            @Override // kotlin.jvm.functions.Function1
            public final List<?> invoke(AlgorithmIdentifier it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return CollectionsKt.listOf(it.getAlgorithm(), it.getParameters());
            }
        }, new Function1<List<?>, AlgorithmIdentifier>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$algorithmIdentifier$2
            @Override // kotlin.jvm.functions.Function1
            public final AlgorithmIdentifier invoke(List<?> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Object obj = it.get(0);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                return new AlgorithmIdentifier((String) obj, it.get(1));
            }
        });
        algorithmIdentifier = basicDerAdapterSequence2;
        basicConstraints = Adapters.INSTANCE.sequence("BasicConstraints", new DerAdapter[]{Adapters.INSTANCE.getBOOLEAN().optional(false), BasicDerAdapter.optional$default(Adapters.INSTANCE.getINTEGER_AS_LONG(), null, 1, null)}, new Function1<BasicConstraints, List<?>>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$basicConstraints$1
            @Override // kotlin.jvm.functions.Function1
            public final List<?> invoke(BasicConstraints it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return CollectionsKt.listOf(Boolean.valueOf(it.getCa()), it.getMaxIntermediateCas());
            }
        }, new Function1<List<?>, BasicConstraints>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$basicConstraints$2
            @Override // kotlin.jvm.functions.Function1
            public final BasicConstraints invoke(List<?> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Object obj = it.get(0);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
                return new BasicConstraints(((Boolean) obj).booleanValue(), (Long) it.get(1));
            }
        });
        BasicDerAdapter<String> basicDerAdapterWithTag$default = BasicDerAdapter.withTag$default(Adapters.INSTANCE.getIA5_STRING(), 0, 2L, 1, null);
        generalNameDnsName = basicDerAdapterWithTag$default;
        BasicDerAdapter<ByteString> basicDerAdapterWithTag$default2 = BasicDerAdapter.withTag$default(Adapters.INSTANCE.getOCTET_STRING(), 0, 7L, 1, null);
        generalNameIpAddress = basicDerAdapterWithTag$default2;
        DerAdapter<Pair<DerAdapter<?>, Object>> derAdapterChoice = Adapters.INSTANCE.choice(basicDerAdapterWithTag$default, basicDerAdapterWithTag$default2, Adapters.INSTANCE.getANY_VALUE());
        generalName = derAdapterChoice;
        subjectAlternativeName = DerAdapter.DefaultImpls.asSequenceOf$default(derAdapterChoice, null, 0, 0L, 7, null);
        BasicDerAdapter<Object> basicDerAdapterWithExplicitBox = Adapters.INSTANCE.usingTypeHint(new Function1<Object, DerAdapter<?>>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$extensionValue$1
            @Override // kotlin.jvm.functions.Function1
            public final DerAdapter<?> invoke(Object obj) {
                if (Intrinsics.areEqual(obj, ObjectIdentifiers.subjectAlternativeName)) {
                    return CertificateAdapters.subjectAlternativeName;
                }
                if (Intrinsics.areEqual(obj, ObjectIdentifiers.basicConstraints)) {
                    return CertificateAdapters.basicConstraints;
                }
                return null;
            }
        }).withExplicitBox(Adapters.INSTANCE.getOCTET_STRING().getTagClass(), Adapters.INSTANCE.getOCTET_STRING().getTag(), false);
        extensionValue = basicDerAdapterWithExplicitBox;
        BasicDerAdapter<Extension> basicDerAdapterSequence3 = Adapters.INSTANCE.sequence("Extension", new DerAdapter[]{Adapters.INSTANCE.getOBJECT_IDENTIFIER().asTypeHint(), Adapters.INSTANCE.getBOOLEAN().optional(false), basicDerAdapterWithExplicitBox}, new Function1<Extension, List<?>>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$extension$1
            @Override // kotlin.jvm.functions.Function1
            public final List<?> invoke(Extension it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return CollectionsKt.listOf(it.getId(), Boolean.valueOf(it.getCritical()), it.getValue());
            }
        }, new Function1<List<?>, Extension>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$extension$2
            @Override // kotlin.jvm.functions.Function1
            public final Extension invoke(List<?> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Object obj = it.get(0);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Object obj2 = it.get(1);
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
                return new Extension((String) obj, ((Boolean) obj2).booleanValue(), it.get(2));
            }
        });
        extension = basicDerAdapterSequence3;
        BasicDerAdapter<AttributeTypeAndValue> basicDerAdapterSequence4 = Adapters.INSTANCE.sequence("AttributeTypeAndValue", new DerAdapter[]{Adapters.INSTANCE.getOBJECT_IDENTIFIER(), Adapters.any$default(Adapters.INSTANCE, new Pair[]{TuplesKt.to(Reflection.getOrCreateKotlinClass(String.class), Adapters.INSTANCE.getUTF8_STRING()), TuplesKt.to(Reflection.getOrCreateKotlinClass(Void.class), Adapters.INSTANCE.getPRINTABLE_STRING()), TuplesKt.to(Reflection.getOrCreateKotlinClass(AnyValue.class), Adapters.INSTANCE.getANY_VALUE())}, false, null, 6, null)}, new Function1<AttributeTypeAndValue, List<?>>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$attributeTypeAndValue$1
            @Override // kotlin.jvm.functions.Function1
            public final List<?> invoke(AttributeTypeAndValue it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return CollectionsKt.listOf(it.getType(), it.getValue());
            }
        }, new Function1<List<?>, AttributeTypeAndValue>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$attributeTypeAndValue$2
            @Override // kotlin.jvm.functions.Function1
            public final AttributeTypeAndValue invoke(List<?> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Object obj = it.get(0);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                return new AttributeTypeAndValue((String) obj, it.get(1));
            }
        });
        attributeTypeAndValue = basicDerAdapterSequence4;
        BasicDerAdapter<List<List<AttributeTypeAndValue>>> basicDerAdapterAsSequenceOf$default = DerAdapter.DefaultImpls.asSequenceOf$default(basicDerAdapterSequence4.asSetOf(), null, 0, 0L, 7, null);
        rdnSequence = basicDerAdapterAsSequenceOf$default;
        DerAdapter<Pair<DerAdapter<?>, Object>> derAdapterChoice2 = Adapters.INSTANCE.choice(basicDerAdapterAsSequenceOf$default);
        name = derAdapterChoice2;
        BasicDerAdapter<SubjectPublicKeyInfo> basicDerAdapterSequence5 = Adapters.INSTANCE.sequence("SubjectPublicKeyInfo", new DerAdapter[]{basicDerAdapterSequence2, Adapters.INSTANCE.getBIT_STRING()}, new Function1<SubjectPublicKeyInfo, List<?>>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$subjectPublicKeyInfo$1
            @Override // kotlin.jvm.functions.Function1
            public final List<?> invoke(SubjectPublicKeyInfo it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return CollectionsKt.listOf(it.getAlgorithm(), it.getSubjectPublicKey());
            }
        }, new Function1<List<?>, SubjectPublicKeyInfo>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$subjectPublicKeyInfo$2
            @Override // kotlin.jvm.functions.Function1
            public final SubjectPublicKeyInfo invoke(List<?> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Object obj = it.get(0);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type okhttp3.tls.internal.der.AlgorithmIdentifier");
                Object obj2 = it.get(1);
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type okhttp3.tls.internal.der.BitString");
                return new SubjectPublicKeyInfo((AlgorithmIdentifier) obj, (BitString) obj2);
            }
        });
        subjectPublicKeyInfo = basicDerAdapterSequence5;
        BasicDerAdapter<TbsCertificate> basicDerAdapterSequence6 = Adapters.INSTANCE.sequence("TBSCertificate", new DerAdapter[]{DerAdapter.DefaultImpls.withExplicitBox$default(Adapters.INSTANCE.getINTEGER_AS_LONG(), 0, 0L, null, 5, null).optional(0L), Adapters.INSTANCE.getINTEGER_AS_BIG_INTEGER(), basicDerAdapterSequence2, derAdapterChoice2, basicDerAdapterSequence, derAdapterChoice2, basicDerAdapterSequence5, BasicDerAdapter.optional$default(BasicDerAdapter.withTag$default(Adapters.INSTANCE.getBIT_STRING(), 0, 1L, 1, null), null, 1, null), BasicDerAdapter.optional$default(BasicDerAdapter.withTag$default(Adapters.INSTANCE.getBIT_STRING(), 0, 2L, 1, null), null, 1, null), DerAdapter.DefaultImpls.withExplicitBox$default(DerAdapter.DefaultImpls.asSequenceOf$default(basicDerAdapterSequence3, null, 0, 0L, 7, null), 0, 3L, null, 5, null).optional(CollectionsKt.emptyList())}, new Function1<TbsCertificate, List<?>>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$tbsCertificate$1
            @Override // kotlin.jvm.functions.Function1
            public final List<?> invoke(TbsCertificate it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return CollectionsKt.listOf(Long.valueOf(it.getVersion()), it.getSerialNumber(), it.getSignature(), TuplesKt.to(CertificateAdapters.INSTANCE.getRdnSequence$okhttp_tls(), it.getIssuer()), it.getValidity(), TuplesKt.to(CertificateAdapters.INSTANCE.getRdnSequence$okhttp_tls(), it.getSubject()), it.getSubjectPublicKeyInfo(), it.getIssuerUniqueID(), it.getSubjectUniqueID(), it.getExtensions());
            }
        }, new Function1<List<?>, TbsCertificate>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$tbsCertificate$2
            @Override // kotlin.jvm.functions.Function1
            public final TbsCertificate invoke(List<?> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Object obj = it.get(0);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Long");
                long jLongValue = ((Long) obj).longValue();
                Object obj2 = it.get(1);
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type java.math.BigInteger");
                BigInteger bigInteger = (BigInteger) obj2;
                Object obj3 = it.get(2);
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type okhttp3.tls.internal.der.AlgorithmIdentifier");
                AlgorithmIdentifier algorithmIdentifier2 = (AlgorithmIdentifier) obj3;
                Object obj4 = it.get(3);
                Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.Pair<*, *>");
                Object second = ((Pair) obj4).getSecond();
                Intrinsics.checkNotNull(second, "null cannot be cast to non-null type kotlin.collections.List<kotlin.collections.List<okhttp3.tls.internal.der.AttributeTypeAndValue>>");
                Object obj5 = it.get(4);
                Intrinsics.checkNotNull(obj5, "null cannot be cast to non-null type okhttp3.tls.internal.der.Validity");
                Object obj6 = it.get(5);
                Intrinsics.checkNotNull(obj6, "null cannot be cast to non-null type kotlin.Pair<*, *>");
                Object second2 = ((Pair) obj6).getSecond();
                Intrinsics.checkNotNull(second2, "null cannot be cast to non-null type kotlin.collections.List<kotlin.collections.List<okhttp3.tls.internal.der.AttributeTypeAndValue>>");
                Object obj7 = it.get(6);
                Intrinsics.checkNotNull(obj7, "null cannot be cast to non-null type okhttp3.tls.internal.der.SubjectPublicKeyInfo");
                SubjectPublicKeyInfo subjectPublicKeyInfo2 = (SubjectPublicKeyInfo) obj7;
                BitString bitString = (BitString) it.get(7);
                BitString bitString2 = (BitString) it.get(8);
                Object obj8 = it.get(9);
                Intrinsics.checkNotNull(obj8, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.tls.internal.der.Extension>");
                return new TbsCertificate(jLongValue, bigInteger, algorithmIdentifier2, (List) second, (Validity) obj5, (List) second2, subjectPublicKeyInfo2, bitString, bitString2, (List) obj8);
            }
        });
        tbsCertificate = basicDerAdapterSequence6;
        certificate = Adapters.INSTANCE.sequence("Certificate", new DerAdapter[]{basicDerAdapterSequence6, basicDerAdapterSequence2, Adapters.INSTANCE.getBIT_STRING()}, new Function1<Certificate, List<?>>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$certificate$1
            @Override // kotlin.jvm.functions.Function1
            public final List<?> invoke(Certificate it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return CollectionsKt.listOf(it.getTbsCertificate(), it.getSignatureAlgorithm(), it.getSignatureValue());
            }
        }, new Function1<List<?>, Certificate>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$certificate$2
            @Override // kotlin.jvm.functions.Function1
            public final Certificate invoke(List<?> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Object obj = it.get(0);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type okhttp3.tls.internal.der.TbsCertificate");
                Object obj2 = it.get(1);
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type okhttp3.tls.internal.der.AlgorithmIdentifier");
                Object obj3 = it.get(2);
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type okhttp3.tls.internal.der.BitString");
                return new Certificate((TbsCertificate) obj, (AlgorithmIdentifier) obj2, (BitString) obj3);
            }
        });
        privateKeyInfo = Adapters.INSTANCE.sequence("PrivateKeyInfo", new DerAdapter[]{Adapters.INSTANCE.getINTEGER_AS_LONG(), basicDerAdapterSequence2, Adapters.INSTANCE.getOCTET_STRING()}, new Function1<PrivateKeyInfo, List<?>>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$privateKeyInfo$1
            @Override // kotlin.jvm.functions.Function1
            public final List<?> invoke(PrivateKeyInfo it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return CollectionsKt.listOf(Long.valueOf(it.getVersion()), it.getAlgorithmIdentifier(), it.getPrivateKey());
            }
        }, new Function1<List<?>, PrivateKeyInfo>() { // from class: okhttp3.tls.internal.der.CertificateAdapters$privateKeyInfo$2
            @Override // kotlin.jvm.functions.Function1
            public final PrivateKeyInfo invoke(List<?> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Object obj = it.get(0);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Long");
                long jLongValue = ((Long) obj).longValue();
                Object obj2 = it.get(1);
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type okhttp3.tls.internal.der.AlgorithmIdentifier");
                Object obj3 = it.get(2);
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type okio.ByteString");
                return new PrivateKeyInfo(jLongValue, (AlgorithmIdentifier) obj2, (ByteString) obj3);
            }
        });
    }

    public final DerAdapter<Long> getTime$okhttp_tls() {
        return time;
    }

    public final BasicDerAdapter<AlgorithmIdentifier> getAlgorithmIdentifier$okhttp_tls() {
        return algorithmIdentifier;
    }

    public final BasicDerAdapter<String> getGeneralNameDnsName$okhttp_tls() {
        return generalNameDnsName;
    }

    public final BasicDerAdapter<ByteString> getGeneralNameIpAddress$okhttp_tls() {
        return generalNameIpAddress;
    }

    public final DerAdapter<Pair<DerAdapter<?>, Object>> getGeneralName$okhttp_tls() {
        return generalName;
    }

    public final BasicDerAdapter<Extension> getExtension$okhttp_tls() {
        return extension;
    }

    public final BasicDerAdapter<List<List<AttributeTypeAndValue>>> getRdnSequence$okhttp_tls() {
        return rdnSequence;
    }

    public final DerAdapter<Pair<DerAdapter<?>, Object>> getName$okhttp_tls() {
        return name;
    }

    public final BasicDerAdapter<SubjectPublicKeyInfo> getSubjectPublicKeyInfo$okhttp_tls() {
        return subjectPublicKeyInfo;
    }

    public final BasicDerAdapter<TbsCertificate> getTbsCertificate$okhttp_tls() {
        return tbsCertificate;
    }

    public final BasicDerAdapter<Certificate> getCertificate$okhttp_tls() {
        return certificate;
    }

    public final BasicDerAdapter<PrivateKeyInfo> getPrivateKeyInfo$okhttp_tls() {
        return privateKeyInfo;
    }
}
