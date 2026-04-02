package okhttp3.tls.internal.der;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import java.math.BigInteger;
import java.net.ProtocolException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okhttp3.tls.internal.der.BasicDerAdapter;
import okhttp3.tls.internal.der.DerAdapter;
import okio.BufferedSink;
import okio.ByteString;

/* JADX INFO: compiled from: Adapters.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002Jg\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00042<\b\u0002\u0010.\u001a\u001e\u0012\u001a\b\u0001\u0012\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030,\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040+0/\"\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030,\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040+2\b\b\u0002\u00100\u001a\u00020\u000e2\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u00102J?\u00103\u001a\u001a\u0012\u0016\u0012\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010+0\u00042\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00040/\"\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u00104J\u0015\u00105\u001a\u00020\u00142\u0006\u00106\u001a\u00020\u0011H\u0000¢\u0006\u0002\b7J\u0015\u00108\u001a\u00020\u00142\u0006\u00106\u001a\u00020\u0011H\u0000¢\u0006\u0002\b9J\u0015\u0010:\u001a\u00020\u00112\u0006\u0010;\u001a\u00020\u0014H\u0000¢\u0006\u0002\b<J\u0015\u0010=\u001a\u00020\u00112\u0006\u0010;\u001a\u00020\u0014H\u0000¢\u0006\u0002\b>Jk\u0010?\u001a\b\u0012\u0004\u0012\u0002H@0\t\"\u0004\b\u0000\u0010@2\u0006\u0010A\u001a\u00020\u00142\u001a\u0010B\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00040/\"\u0006\u0012\u0002\b\u00030\u00042\u0016\u0010C\u001a\u0012\u0012\u0004\u0012\u0002H@\u0012\b\u0012\u0006\u0012\u0002\b\u00030*0D2\u0016\u0010E\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030*\u0012\u0004\u0012\u0002H@0D¢\u0006\u0002\u0010FJ*\u0010G\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00042\u001a\u0010H\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00040DR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\t¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\fR\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\fR\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\t¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\fR\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00110\t¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\fR\u0019\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\t¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\fR\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00140\t¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\fR\u0017\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\t¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\fR\u0017\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00140\t¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\fR\u0017\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00110\t¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\fR\u0017\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00140\t¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\fR2\u0010)\u001a&\u0012\"\u0012 \u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010,\u0012\u000e\u0012\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u00040+0*X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006I"}, d2 = {"Lokhttp3/tls/internal/der/Adapters;", "", "()V", "ANY_VALUE", "Lokhttp3/tls/internal/der/DerAdapter;", "Lokhttp3/tls/internal/der/AnyValue;", "getANY_VALUE", "()Lokhttp3/tls/internal/der/DerAdapter;", "BIT_STRING", "Lokhttp3/tls/internal/der/BasicDerAdapter;", "Lokhttp3/tls/internal/der/BitString;", "getBIT_STRING", "()Lokhttp3/tls/internal/der/BasicDerAdapter;", "BOOLEAN", "", "getBOOLEAN", "GENERALIZED_TIME", "", "getGENERALIZED_TIME", "IA5_STRING", "", "getIA5_STRING", "INTEGER_AS_BIG_INTEGER", "Ljava/math/BigInteger;", "getINTEGER_AS_BIG_INTEGER", "INTEGER_AS_LONG", "getINTEGER_AS_LONG", "NULL", "", "getNULL", "OBJECT_IDENTIFIER", "getOBJECT_IDENTIFIER", "OCTET_STRING", "Lokio/ByteString;", "getOCTET_STRING", "PRINTABLE_STRING", "getPRINTABLE_STRING", "UTC_TIME", "getUTC_TIME", "UTF8_STRING", "getUTF8_STRING", "defaultAnyChoices", "", "Lkotlin/Pair;", "Lkotlin/reflect/KClass;", "any", "choices", "", "isOptional", "optionalValue", "([Lkotlin/Pair;ZLjava/lang/Object;)Lokhttp3/tls/internal/der/DerAdapter;", "choice", "([Lokhttp3/tls/internal/der/DerAdapter;)Lokhttp3/tls/internal/der/DerAdapter;", "formatGeneralizedTime", "date", "formatGeneralizedTime$okhttp_tls", "formatUtcTime", "formatUtcTime$okhttp_tls", "parseGeneralizedTime", TypedValues.Custom.S_STRING, "parseGeneralizedTime$okhttp_tls", "parseUtcTime", "parseUtcTime$okhttp_tls", "sequence", "T", "name", "members", "decompose", "Lkotlin/Function1;", "construct", "(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;", "usingTypeHint", "chooser", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Adapters {
    private static final DerAdapter<AnyValue> ANY_VALUE;
    private static final BasicDerAdapter<BitString> BIT_STRING;
    private static final BasicDerAdapter<Boolean> BOOLEAN;
    private static final BasicDerAdapter<Long> GENERALIZED_TIME;
    private static final BasicDerAdapter<String> IA5_STRING;
    public static final Adapters INSTANCE = new Adapters();
    private static final BasicDerAdapter<BigInteger> INTEGER_AS_BIG_INTEGER;
    private static final BasicDerAdapter<Long> INTEGER_AS_LONG;
    private static final BasicDerAdapter<Unit> NULL;
    private static final BasicDerAdapter<String> OBJECT_IDENTIFIER;
    private static final BasicDerAdapter<ByteString> OCTET_STRING;
    private static final BasicDerAdapter<String> PRINTABLE_STRING;
    private static final BasicDerAdapter<Long> UTC_TIME;
    private static final BasicDerAdapter<String> UTF8_STRING;
    private static final List<Pair<KClass<? extends Object>, DerAdapter<? extends Object>>> defaultAnyChoices;

    private Adapters() {
    }

    static {
        BasicDerAdapter<Boolean> basicDerAdapter = new BasicDerAdapter<>("BOOLEAN", 0, 1L, new BasicDerAdapter.Codec<Boolean>() { // from class: okhttp3.tls.internal.der.Adapters$BOOLEAN$1
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public /* bridge */ /* synthetic */ void encode(DerWriter derWriter, Boolean bool) throws IOException {
                encode(derWriter, bool.booleanValue());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public Boolean decode(DerReader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                return Boolean.valueOf(reader.readBoolean());
            }

            public void encode(DerWriter writer, boolean value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                writer.writeBoolean(value);
            }
        }, false, null, false, 112, null);
        BOOLEAN = basicDerAdapter;
        INTEGER_AS_LONG = new BasicDerAdapter<>("INTEGER", 0, 2L, new BasicDerAdapter.Codec<Long>() { // from class: okhttp3.tls.internal.der.Adapters$INTEGER_AS_LONG$1
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public /* bridge */ /* synthetic */ void encode(DerWriter derWriter, Long l) throws IOException {
                encode(derWriter, l.longValue());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public Long decode(DerReader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                return Long.valueOf(reader.readLong());
            }

            public void encode(DerWriter writer, long value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                writer.writeLong(value);
            }
        }, false, null, false, 112, null);
        BasicDerAdapter<BigInteger> basicDerAdapter2 = new BasicDerAdapter<>("INTEGER", 0, 2L, new BasicDerAdapter.Codec<BigInteger>() { // from class: okhttp3.tls.internal.der.Adapters$INTEGER_AS_BIG_INTEGER$1
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public BigInteger decode(DerReader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                return reader.readBigInteger();
            }

            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public void encode(DerWriter writer, BigInteger value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBigInteger(value);
            }
        }, false, null, false, 112, null);
        INTEGER_AS_BIG_INTEGER = basicDerAdapter2;
        BasicDerAdapter<BitString> basicDerAdapter3 = new BasicDerAdapter<>("BIT STRING", 0, 3L, new BasicDerAdapter.Codec<BitString>() { // from class: okhttp3.tls.internal.der.Adapters$BIT_STRING$1
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public BitString decode(DerReader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                return reader.readBitString();
            }

            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public void encode(DerWriter writer, BitString value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBitString(value);
            }
        }, false, null, false, 112, null);
        BIT_STRING = basicDerAdapter3;
        BasicDerAdapter<ByteString> basicDerAdapter4 = new BasicDerAdapter<>("OCTET STRING", 0, 4L, new BasicDerAdapter.Codec<ByteString>() { // from class: okhttp3.tls.internal.der.Adapters$OCTET_STRING$1
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public ByteString decode(DerReader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                return reader.readOctetString();
            }

            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public void encode(DerWriter writer, ByteString value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeOctetString(value);
            }
        }, false, null, false, 112, null);
        OCTET_STRING = basicDerAdapter4;
        BasicDerAdapter<Unit> basicDerAdapter5 = new BasicDerAdapter<>("NULL", 0, 5L, new BasicDerAdapter.Codec<Unit>() { // from class: okhttp3.tls.internal.der.Adapters$NULL$1
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public Unit decode(DerReader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                return null;
            }

            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public void encode(DerWriter writer, Unit value) {
                Intrinsics.checkNotNullParameter(writer, "writer");
            }
        }, false, null, false, 112, null);
        NULL = basicDerAdapter5;
        BasicDerAdapter<String> basicDerAdapter6 = new BasicDerAdapter<>("OBJECT IDENTIFIER", 0, 6L, new BasicDerAdapter.Codec<String>() { // from class: okhttp3.tls.internal.der.Adapters$OBJECT_IDENTIFIER$1
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public String decode(DerReader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                return reader.readObjectIdentifier();
            }

            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public void encode(DerWriter writer, String value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeObjectIdentifier(value);
            }
        }, false, null, false, 112, null);
        OBJECT_IDENTIFIER = basicDerAdapter6;
        BasicDerAdapter<String> basicDerAdapter7 = new BasicDerAdapter<>("UTF8", 0, 12L, new BasicDerAdapter.Codec<String>() { // from class: okhttp3.tls.internal.der.Adapters$UTF8_STRING$1
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public String decode(DerReader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                return reader.readUtf8String();
            }

            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public void encode(DerWriter writer, String value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeUtf8(value);
            }
        }, false, null, false, 112, null);
        UTF8_STRING = basicDerAdapter7;
        BasicDerAdapter<String> basicDerAdapter8 = new BasicDerAdapter<>("PRINTABLE STRING", 0, 19L, new BasicDerAdapter.Codec<String>() { // from class: okhttp3.tls.internal.der.Adapters$PRINTABLE_STRING$1
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public String decode(DerReader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                return reader.readUtf8String();
            }

            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public void encode(DerWriter writer, String value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeUtf8(value);
            }
        }, false, null, false, 112, null);
        PRINTABLE_STRING = basicDerAdapter8;
        BasicDerAdapter<String> basicDerAdapter9 = new BasicDerAdapter<>("IA5 STRING", 0, 22L, new BasicDerAdapter.Codec<String>() { // from class: okhttp3.tls.internal.der.Adapters$IA5_STRING$1
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public String decode(DerReader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                return reader.readUtf8String();
            }

            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public void encode(DerWriter writer, String value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeUtf8(value);
            }
        }, false, null, false, 112, null);
        IA5_STRING = basicDerAdapter9;
        BasicDerAdapter<Long> basicDerAdapter10 = new BasicDerAdapter<>("UTC TIME", 0, 23L, new BasicDerAdapter.Codec<Long>() { // from class: okhttp3.tls.internal.der.Adapters$UTC_TIME$1
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public /* bridge */ /* synthetic */ void encode(DerWriter derWriter, Long l) throws IOException {
                encode(derWriter, l.longValue());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public Long decode(DerReader reader) throws ProtocolException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                return Long.valueOf(Adapters.INSTANCE.parseUtcTime$okhttp_tls(reader.readUtf8String()));
            }

            public void encode(DerWriter writer, long value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                writer.writeUtf8(Adapters.INSTANCE.formatUtcTime$okhttp_tls(value));
            }
        }, false, null, false, 112, null);
        UTC_TIME = basicDerAdapter10;
        BasicDerAdapter<Long> basicDerAdapter11 = new BasicDerAdapter<>("GENERALIZED TIME", 0, 24L, new BasicDerAdapter.Codec<Long>() { // from class: okhttp3.tls.internal.der.Adapters$GENERALIZED_TIME$1
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public /* bridge */ /* synthetic */ void encode(DerWriter derWriter, Long l) throws IOException {
                encode(derWriter, l.longValue());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public Long decode(DerReader reader) throws ProtocolException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                return Long.valueOf(Adapters.INSTANCE.parseGeneralizedTime$okhttp_tls(reader.readUtf8String()));
            }

            public void encode(DerWriter writer, long value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                writer.writeUtf8(Adapters.INSTANCE.formatGeneralizedTime$okhttp_tls(value));
            }
        }, false, null, false, 112, null);
        GENERALIZED_TIME = basicDerAdapter11;
        DerAdapter<AnyValue> derAdapter = new DerAdapter<AnyValue>() { // from class: okhttp3.tls.internal.der.Adapters$ANY_VALUE$1
            @Override // okhttp3.tls.internal.der.DerAdapter
            public boolean matches(DerHeader header) {
                Intrinsics.checkNotNullParameter(header, "header");
                return true;
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<List<AnyValue>> asSequenceOf(String str, int i, long j) {
                return DerAdapter.DefaultImpls.asSequenceOf(this, str, i, j);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<List<AnyValue>> asSetOf() {
                return DerAdapter.DefaultImpls.asSetOf(this);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public AnyValue fromDer(ByteString byteString) {
                return (AnyValue) DerAdapter.DefaultImpls.fromDer(this, byteString);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public ByteString toDer(AnyValue anyValue) {
                return DerAdapter.DefaultImpls.toDer(this, anyValue);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<AnyValue> withExplicitBox(int i, long j, Boolean bool) {
                return DerAdapter.DefaultImpls.withExplicitBox(this, i, j, bool);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public void toDer(final DerWriter writer, final AnyValue value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.write("ANY", value.getTagClass(), value.getTag(), new Function1<BufferedSink, Unit>() { // from class: okhttp3.tls.internal.der.Adapters$ANY_VALUE$1$toDer$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(BufferedSink bufferedSink) throws IOException {
                        invoke2(bufferedSink);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(BufferedSink it) throws IOException {
                        Intrinsics.checkNotNullParameter(it, "it");
                        writer.writeOctetString(value.getBytes());
                        writer.setConstructed(value.getConstructed());
                    }
                });
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public AnyValue fromDer(DerReader reader) throws ProtocolException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                if (reader.hasNext()) {
                    DerHeader derHeader = reader.peekedHeader;
                    Intrinsics.checkNotNull(derHeader);
                    reader.peekedHeader = null;
                    long j = reader.limit;
                    boolean z = reader.constructed;
                    long byteCount = derHeader.getLength() != -1 ? reader.getByteCount() + derHeader.getLength() : -1L;
                    if (j == -1 || byteCount <= j) {
                        reader.limit = byteCount;
                        reader.constructed = derHeader.getConstructed();
                        reader.path.add("ANY");
                        try {
                            return new AnyValue(derHeader.getTagClass(), derHeader.getTag(), derHeader.getConstructed(), derHeader.getLength(), reader.readUnknown());
                        } finally {
                            reader.peekedHeader = null;
                            reader.limit = j;
                            reader.constructed = z;
                            reader.path.remove(reader.path.size() - 1);
                        }
                    }
                    throw new ProtocolException("enclosed object too large");
                }
                throw new ProtocolException("expected a value");
            }
        };
        ANY_VALUE = derAdapter;
        defaultAnyChoices = CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to(Reflection.getOrCreateKotlinClass(Boolean.TYPE), basicDerAdapter), TuplesKt.to(Reflection.getOrCreateKotlinClass(BigInteger.class), basicDerAdapter2), TuplesKt.to(Reflection.getOrCreateKotlinClass(BitString.class), basicDerAdapter3), TuplesKt.to(Reflection.getOrCreateKotlinClass(ByteString.class), basicDerAdapter4), TuplesKt.to(Reflection.getOrCreateKotlinClass(Unit.class), basicDerAdapter5), TuplesKt.to(Reflection.getOrCreateKotlinClass(Void.class), basicDerAdapter6), TuplesKt.to(Reflection.getOrCreateKotlinClass(Void.class), basicDerAdapter7), TuplesKt.to(Reflection.getOrCreateKotlinClass(String.class), basicDerAdapter8), TuplesKt.to(Reflection.getOrCreateKotlinClass(Void.class), basicDerAdapter9), TuplesKt.to(Reflection.getOrCreateKotlinClass(Void.class), basicDerAdapter10), TuplesKt.to(Reflection.getOrCreateKotlinClass(Long.TYPE), basicDerAdapter11), TuplesKt.to(Reflection.getOrCreateKotlinClass(AnyValue.class), derAdapter)});
    }

    public final BasicDerAdapter<Boolean> getBOOLEAN() {
        return BOOLEAN;
    }

    public final BasicDerAdapter<Long> getINTEGER_AS_LONG() {
        return INTEGER_AS_LONG;
    }

    public final BasicDerAdapter<BigInteger> getINTEGER_AS_BIG_INTEGER() {
        return INTEGER_AS_BIG_INTEGER;
    }

    public final BasicDerAdapter<BitString> getBIT_STRING() {
        return BIT_STRING;
    }

    public final BasicDerAdapter<ByteString> getOCTET_STRING() {
        return OCTET_STRING;
    }

    public final BasicDerAdapter<Unit> getNULL() {
        return NULL;
    }

    public final BasicDerAdapter<String> getOBJECT_IDENTIFIER() {
        return OBJECT_IDENTIFIER;
    }

    public final BasicDerAdapter<String> getUTF8_STRING() {
        return UTF8_STRING;
    }

    public final BasicDerAdapter<String> getPRINTABLE_STRING() {
        return PRINTABLE_STRING;
    }

    public final BasicDerAdapter<String> getIA5_STRING() {
        return IA5_STRING;
    }

    public final BasicDerAdapter<Long> getUTC_TIME() {
        return UTC_TIME;
    }

    public final long parseUtcTime$okhttp_tls(String string) throws ProtocolException {
        Intrinsics.checkNotNullParameter(string, "string");
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMddHHmmss'Z'");
        simpleDateFormat.setTimeZone(timeZone);
        simpleDateFormat.set2DigitYearStart(new Date(-631152000000L));
        try {
            return simpleDateFormat.parse(string).getTime();
        } catch (ParseException unused) {
            throw new ProtocolException("Failed to parse UTCTime " + string);
        }
    }

    public final String formatUtcTime$okhttp_tls(long date) {
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMddHHmmss'Z'");
        simpleDateFormat.setTimeZone(timeZone);
        simpleDateFormat.set2DigitYearStart(new Date(-631152000000L));
        String str = simpleDateFormat.format(Long.valueOf(date));
        Intrinsics.checkNotNullExpressionValue(str, "dateFormat.format(date)");
        return str;
    }

    public final BasicDerAdapter<Long> getGENERALIZED_TIME() {
        return GENERALIZED_TIME;
    }

    public final DerAdapter<AnyValue> getANY_VALUE() {
        return ANY_VALUE;
    }

    public final long parseGeneralizedTime$okhttp_tls(String string) throws ProtocolException {
        Intrinsics.checkNotNullParameter(string, "string");
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'");
        simpleDateFormat.setTimeZone(timeZone);
        try {
            return simpleDateFormat.parse(string).getTime();
        } catch (ParseException unused) {
            throw new ProtocolException("Failed to parse GeneralizedTime " + string);
        }
    }

    public final String formatGeneralizedTime$okhttp_tls(long date) {
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'");
        simpleDateFormat.setTimeZone(timeZone);
        String str = simpleDateFormat.format(Long.valueOf(date));
        Intrinsics.checkNotNullExpressionValue(str, "dateFormat.format(date)");
        return str;
    }

    public final <T> BasicDerAdapter<T> sequence(String name, final DerAdapter<?>[] members, final Function1<? super T, ? extends List<?>> decompose, final Function1<? super List<?>, ? extends T> construct) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(members, "members");
        Intrinsics.checkNotNullParameter(decompose, "decompose");
        Intrinsics.checkNotNullParameter(construct, "construct");
        return new BasicDerAdapter<>(name, 0, 16L, new BasicDerAdapter.Codec<T>() { // from class: okhttp3.tls.internal.der.Adapters$sequence$codec$1
            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public T decode(final DerReader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                final DerAdapter<?>[] derAdapterArr = members;
                final Function1<List<?>, T> function1 = construct;
                return (T) reader.withTypeHint(new Function0<T>() { // from class: okhttp3.tls.internal.der.Adapters$sequence$codec$1$decode$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final T invoke() throws ProtocolException {
                        ArrayList arrayList = new ArrayList();
                        while (true) {
                            int size = arrayList.size();
                            DerAdapter<?>[] derAdapterArr2 = derAdapterArr;
                            if (size >= derAdapterArr2.length) {
                                break;
                            }
                            arrayList.add(derAdapterArr2[arrayList.size()].fromDer(reader));
                        }
                        if (reader.hasNext()) {
                            throw new ProtocolException("unexpected " + reader.peekHeader() + " at " + reader);
                        }
                        return function1.invoke(arrayList);
                    }
                });
            }

            @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
            public void encode(final DerWriter writer, T value) {
                Intrinsics.checkNotNullParameter(writer, "writer");
                final List<?> listInvoke = decompose.invoke(value);
                final DerAdapter<?>[] derAdapterArr = members;
                writer.withTypeHint(new Function0<Unit>() { // from class: okhttp3.tls.internal.der.Adapters$sequence$codec$1$encode$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        int size = listInvoke.size();
                        for (int i = 0; i < size; i++) {
                            DerAdapter<?> derAdapter = derAdapterArr[i];
                            Intrinsics.checkNotNull(derAdapter, "null cannot be cast to non-null type okhttp3.tls.internal.der.DerAdapter<kotlin.Any?>");
                            derAdapter.toDer(writer, listInvoke.get(i));
                        }
                    }
                });
            }
        }, false, null, false, 112, null);
    }

    public final DerAdapter<Pair<DerAdapter<?>, Object>> choice(final DerAdapter<?>... choices) {
        Intrinsics.checkNotNullParameter(choices, "choices");
        return (DerAdapter) new DerAdapter<Pair<? extends DerAdapter<?>, ? extends Object>>() { // from class: okhttp3.tls.internal.der.Adapters.choice.1
            @Override // okhttp3.tls.internal.der.DerAdapter
            public boolean matches(DerHeader header) {
                Intrinsics.checkNotNullParameter(header, "header");
                return true;
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<List<Pair<? extends DerAdapter<?>, ? extends Object>>> asSequenceOf(String str, int i, long j) {
                return DerAdapter.DefaultImpls.asSequenceOf(this, str, i, j);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<List<Pair<? extends DerAdapter<?>, ? extends Object>>> asSetOf() {
                return DerAdapter.DefaultImpls.asSetOf(this);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public Pair<? extends DerAdapter<?>, ? extends Object> fromDer(ByteString byteString) {
                return (Pair) DerAdapter.DefaultImpls.fromDer(this, byteString);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public ByteString toDer(Pair<? extends DerAdapter<?>, ? extends Object> pair) {
                return DerAdapter.DefaultImpls.toDer(this, pair);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<Pair<? extends DerAdapter<?>, ? extends Object>> withExplicitBox(int i, long j, Boolean bool) {
                return DerAdapter.DefaultImpls.withExplicitBox(this, i, j, bool);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public Pair<? extends DerAdapter<?>, ? extends Object> fromDer(DerReader reader) throws IOException {
                DerAdapter<?> derAdapter;
                Intrinsics.checkNotNullParameter(reader, "reader");
                DerHeader derHeaderPeekHeader = reader.peekHeader();
                if (derHeaderPeekHeader == null) {
                    throw new ProtocolException("expected a value at " + reader);
                }
                DerAdapter<?>[] derAdapterArr = choices;
                int length = derAdapterArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        derAdapter = null;
                        break;
                    }
                    derAdapter = derAdapterArr[i];
                    if (derAdapter.matches(derHeaderPeekHeader)) {
                        break;
                    }
                    i++;
                }
                if (derAdapter == null) {
                    throw new ProtocolException("expected a matching choice but was " + derHeaderPeekHeader + " at " + reader);
                }
                return TuplesKt.to(derAdapter, derAdapter.fromDer(reader));
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public void toDer(DerWriter writer, Pair<? extends DerAdapter<?>, ? extends Object> value) {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                DerAdapter<?> derAdapterComponent1 = value.component1();
                Object objComponent2 = value.component2();
                Intrinsics.checkNotNull(derAdapterComponent1, "null cannot be cast to non-null type okhttp3.tls.internal.der.DerAdapter<kotlin.Any?>");
                derAdapterComponent1.toDer(writer, objComponent2);
            }

            public String toString() {
                return ArraysKt.joinToString$default(choices, " OR ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null);
            }
        };
    }

    public final DerAdapter<Object> usingTypeHint(final Function1<Object, ? extends DerAdapter<?>> chooser) {
        Intrinsics.checkNotNullParameter(chooser, "chooser");
        return new DerAdapter<Object>() { // from class: okhttp3.tls.internal.der.Adapters.usingTypeHint.1
            @Override // okhttp3.tls.internal.der.DerAdapter
            public boolean matches(DerHeader header) {
                Intrinsics.checkNotNullParameter(header, "header");
                return true;
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<List<Object>> asSequenceOf(String str, int i, long j) {
                return DerAdapter.DefaultImpls.asSequenceOf(this, str, i, j);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<List<Object>> asSetOf() {
                return DerAdapter.DefaultImpls.asSetOf(this);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public Object fromDer(ByteString byteString) {
                return DerAdapter.DefaultImpls.fromDer(this, byteString);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public ByteString toDer(Object obj) {
                return DerAdapter.DefaultImpls.toDer(this, obj);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<Object> withExplicitBox(int i, long j, Boolean bool) {
                return DerAdapter.DefaultImpls.withExplicitBox(this, i, j, bool);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public void toDer(DerWriter writer, Object value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                DerAdapter<?> derAdapterInvoke = chooser.invoke(writer.getTypeHint());
                if (derAdapterInvoke != null) {
                    derAdapterInvoke.toDer(writer, value);
                } else {
                    Intrinsics.checkNotNull(value, "null cannot be cast to non-null type okio.ByteString");
                    writer.writeOctetString((ByteString) value);
                }
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public Object fromDer(DerReader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                DerAdapter<?> derAdapterInvoke = chooser.invoke(reader.getTypeHint());
                if (derAdapterInvoke != null) {
                    return derAdapterInvoke.fromDer(reader);
                }
                return reader.readUnknown();
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DerAdapter any$default(Adapters adapters, Pair[] pairArr, boolean z, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            pairArr = (Pair[]) defaultAnyChoices.toArray(new Pair[0]);
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            obj = null;
        }
        return adapters.any(pairArr, z, obj);
    }

    public final DerAdapter<Object> any(final Pair<? extends KClass<?>, ? extends DerAdapter<?>>[] choices, final boolean isOptional, final Object optionalValue) {
        Intrinsics.checkNotNullParameter(choices, "choices");
        return new DerAdapter<Object>() { // from class: okhttp3.tls.internal.der.Adapters.any.1
            @Override // okhttp3.tls.internal.der.DerAdapter
            public boolean matches(DerHeader header) {
                Intrinsics.checkNotNullParameter(header, "header");
                return true;
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<List<Object>> asSequenceOf(String str, int i, long j) {
                return DerAdapter.DefaultImpls.asSequenceOf(this, str, i, j);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<List<Object>> asSetOf() {
                return DerAdapter.DefaultImpls.asSetOf(this);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public Object fromDer(ByteString byteString) {
                return DerAdapter.DefaultImpls.fromDer(this, byteString);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public ByteString toDer(Object obj) {
                return DerAdapter.DefaultImpls.toDer(this, obj);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public BasicDerAdapter<Object> withExplicitBox(int i, long j, Boolean bool) {
                return DerAdapter.DefaultImpls.withExplicitBox(this, i, j, bool);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public void toDer(DerWriter writer, Object value) {
                Intrinsics.checkNotNullParameter(writer, "writer");
                if (isOptional && Intrinsics.areEqual(value, optionalValue)) {
                    return;
                }
                for (Pair<KClass<?>, DerAdapter<?>> pair : choices) {
                    KClass<?> kClassComponent1 = pair.component1();
                    DerAdapter<?> derAdapterComponent2 = pair.component2();
                    if (kClassComponent1.isInstance(value) || (value == null && Intrinsics.areEqual(kClassComponent1, Reflection.getOrCreateKotlinClass(Unit.class)))) {
                        Intrinsics.checkNotNull(derAdapterComponent2, "null cannot be cast to non-null type okhttp3.tls.internal.der.DerAdapter<kotlin.Any?>");
                        derAdapterComponent2.toDer(writer, value);
                        return;
                    }
                }
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public Object fromDer(DerReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                if (isOptional && !reader.hasNext()) {
                    return optionalValue;
                }
                DerHeader derHeaderPeekHeader = reader.peekHeader();
                if (derHeaderPeekHeader == null) {
                    throw new ProtocolException("expected a value at " + reader);
                }
                for (Pair<KClass<?>, DerAdapter<?>> pair : choices) {
                    DerAdapter<?> derAdapterComponent2 = pair.component2();
                    if (derAdapterComponent2.matches(derHeaderPeekHeader)) {
                        return derAdapterComponent2.fromDer(reader);
                    }
                }
                throw new ProtocolException("expected any but was " + derHeaderPeekHeader + " at " + reader);
            }
        };
    }
}
