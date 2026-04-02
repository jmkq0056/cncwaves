package okhttp3.tls.internal.der;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.sun.jna.platform.win32.WinError;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.tls.internal.der.DerAdapter;
import okio.BufferedSink;
import okio.ByteString;

/* JADX INFO: compiled from: BasicDerAdapter.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0080\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u00017BK\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00018\u0000\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f¢\u0006\u0002\u0010\u000fJ\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\t\u0010\u0019\u001a\u00020\u0004HÂ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001b\u001a\u00020\bHÆ\u0003J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\nHÂ\u0003J\t\u0010\u001d\u001a\u00020\fHÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00018\u0000HÆ\u0003¢\u0006\u0002\u0010\u0011J\t\u0010\u001f\u001a\u00020\fHÂ\u0003Jb\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00018\u00002\b\b\u0002\u0010\u000e\u001a\u00020\fHÆ\u0001¢\u0006\u0002\u0010!J\u0013\u0010\"\u001a\u00020\f2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\u0015\u0010%\u001a\u00028\u00002\u0006\u0010&\u001a\u00020'H\u0016¢\u0006\u0002\u0010(J\b\u0010)\u001a\u00020\u0006H\u0016J\u0010\u0010*\u001a\u00020\f2\u0006\u0010+\u001a\u00020,H\u0016J\u001d\u0010-\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\n\b\u0002\u0010\r\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010.J\u001d\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00104J\b\u00105\u001a\u00020\u0004H\u0016J\u001e\u00106\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0015\u0010\r\u001a\u0004\u0018\u00018\u0000¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u000e\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Lokhttp3/tls/internal/der/BasicDerAdapter;", "T", "Lokhttp3/tls/internal/der/DerAdapter;", "name", "", "tagClass", "", "tag", "", "codec", "Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;", "isOptional", "", "defaultValue", "typeHint", "(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V", "getDefaultValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "()Z", "getTag", "()J", "getTagClass", "()I", "asTypeHint", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)Lokhttp3/tls/internal/der/BasicDerAdapter;", "equals", "other", "", "fromDer", OfflineStorageConstantsKt.READER, "Lokhttp3/tls/internal/der/DerReader;", "(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;", "hashCode", "matches", "header", "Lokhttp3/tls/internal/der/DerHeader;", "optional", "(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;", "toDer", "", "writer", "Lokhttp3/tls/internal/der/DerWriter;", "value", "(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V", "toString", "withTag", "Codec", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class BasicDerAdapter<T> implements DerAdapter<T> {
    private final Codec<T> codec;
    private final T defaultValue;
    private final boolean isOptional;
    private final String name;
    private final long tag;
    private final int tagClass;
    private final boolean typeHint;

    /* JADX INFO: compiled from: BasicDerAdapter.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002J\u0015\u0010\u0003\u001a\u00028\u00012\u0006\u0010\u0004\u001a\u00020\u0005H&¢\u0006\u0002\u0010\u0006J\u001d\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H&¢\u0006\u0002\u0010\f¨\u0006\r"}, d2 = {"Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;", "T", "", "decode", OfflineStorageConstantsKt.READER, "Lokhttp3/tls/internal/der/DerReader;", "(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;", "encode", "", "writer", "Lokhttp3/tls/internal/der/DerWriter;", "value", "(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface Codec<T> {
        T decode(DerReader reader);

        void encode(DerWriter writer, T value);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    private final String getName() {
        return this.name;
    }

    private final Codec<T> component4() {
        return this.codec;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    private final boolean getTypeHint() {
        return this.typeHint;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BasicDerAdapter copy$default(BasicDerAdapter basicDerAdapter, String str, int i, long j, Codec codec, boolean z, Object obj, boolean z2, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            str = basicDerAdapter.name;
        }
        if ((i2 & 2) != 0) {
            i = basicDerAdapter.tagClass;
        }
        if ((i2 & 4) != 0) {
            j = basicDerAdapter.tag;
        }
        if ((i2 & 8) != 0) {
            codec = basicDerAdapter.codec;
        }
        if ((i2 & 16) != 0) {
            z = basicDerAdapter.isOptional;
        }
        if ((i2 & 32) != 0) {
            obj = basicDerAdapter.defaultValue;
        }
        if ((i2 & 64) != 0) {
            z2 = basicDerAdapter.typeHint;
        }
        long j2 = j;
        return basicDerAdapter.copy(str, i, j2, codec, z, obj, z2);
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getTagClass() {
        return this.tagClass;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getTag() {
        return this.tag;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getIsOptional() {
        return this.isOptional;
    }

    public final T component6() {
        return this.defaultValue;
    }

    public final BasicDerAdapter<T> copy(String name, int tagClass, long tag, Codec<T> codec, boolean isOptional, T defaultValue, boolean typeHint) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(codec, "codec");
        return new BasicDerAdapter<>(name, tagClass, tag, codec, isOptional, defaultValue, typeHint);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BasicDerAdapter)) {
            return false;
        }
        BasicDerAdapter basicDerAdapter = (BasicDerAdapter) other;
        return Intrinsics.areEqual(this.name, basicDerAdapter.name) && this.tagClass == basicDerAdapter.tagClass && this.tag == basicDerAdapter.tag && Intrinsics.areEqual(this.codec, basicDerAdapter.codec) && this.isOptional == basicDerAdapter.isOptional && Intrinsics.areEqual(this.defaultValue, basicDerAdapter.defaultValue) && this.typeHint == basicDerAdapter.typeHint;
    }

    public BasicDerAdapter(String name, int i, long j, Codec<T> codec, boolean z, T t, boolean z2) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(codec, "codec");
        this.name = name;
        this.tagClass = i;
        this.tag = j;
        this.codec = codec;
        this.isOptional = z;
        this.defaultValue = t;
        this.typeHint = z2;
        if (i < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (j < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public /* synthetic */ BasicDerAdapter(String str, int i, long j, Codec codec, boolean z, Object obj, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, j, codec, (i2 & 16) != 0 ? false : z, (i2 & 32) != 0 ? null : obj, (i2 & 64) != 0 ? false : z2);
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public BasicDerAdapter<List<T>> asSequenceOf(String str, int i, long j) {
        return DerAdapter.DefaultImpls.asSequenceOf(this, str, i, j);
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public BasicDerAdapter<List<T>> asSetOf() {
        return DerAdapter.DefaultImpls.asSetOf(this);
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public T fromDer(ByteString byteString) {
        return (T) DerAdapter.DefaultImpls.fromDer(this, byteString);
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public ByteString toDer(T t) {
        return DerAdapter.DefaultImpls.toDer(this, t);
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public BasicDerAdapter<T> withExplicitBox(int i, long j, Boolean bool) {
        return DerAdapter.DefaultImpls.withExplicitBox(this, i, j, bool);
    }

    public final int getTagClass() {
        return this.tagClass;
    }

    public final long getTag() {
        return this.tag;
    }

    public final boolean isOptional() {
        return this.isOptional;
    }

    public final T getDefaultValue() {
        return this.defaultValue;
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public boolean matches(DerHeader header) {
        Intrinsics.checkNotNullParameter(header, "header");
        return header.getTagClass() == this.tagClass && header.getTag() == this.tag;
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public T fromDer(DerReader reader) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        DerHeader derHeaderPeekHeader = reader.peekHeader();
        if (derHeaderPeekHeader == null || derHeaderPeekHeader.getTagClass() != this.tagClass || derHeaderPeekHeader.getTag() != this.tag) {
            if (this.isOptional) {
                return this.defaultValue;
            }
            throw new ProtocolException("expected " + this + " but was " + derHeaderPeekHeader + " at " + reader);
        }
        String str = this.name;
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
                if (str != null) {
                    reader.path.add(str);
                }
                try {
                    T tDecode = this.codec.decode(reader);
                    if (byteCount != -1 && reader.getByteCount() > byteCount) {
                        throw new ProtocolException("unexpected byte count at " + reader);
                    }
                    if (this.typeHint) {
                        reader.setTypeHint(tDecode);
                    }
                    return tDecode;
                } finally {
                    reader.peekedHeader = null;
                    reader.limit = j;
                    reader.constructed = z;
                    if (str != null) {
                        reader.path.remove(reader.path.size() - 1);
                    }
                }
            }
            throw new ProtocolException("enclosed object too large");
        }
        throw new ProtocolException("expected a value");
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public void toDer(final DerWriter writer, final T value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (this.typeHint) {
            writer.setTypeHint(value);
        }
        if (this.isOptional && Intrinsics.areEqual(value, this.defaultValue)) {
            return;
        }
        writer.write(this.name, this.tagClass, this.tag, new Function1<BufferedSink, Unit>(this) { // from class: okhttp3.tls.internal.der.BasicDerAdapter.toDer.1
            final /* synthetic */ BasicDerAdapter<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(BufferedSink bufferedSink) {
                invoke2(bufferedSink);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(BufferedSink it) {
                Intrinsics.checkNotNullParameter(it, "it");
                ((BasicDerAdapter) this.this$0).codec.encode(writer, value);
            }
        });
    }

    public static /* synthetic */ BasicDerAdapter withTag$default(BasicDerAdapter basicDerAdapter, int i, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 128;
        }
        return basicDerAdapter.withTag(i, j);
    }

    public final BasicDerAdapter<T> withTag(int tagClass, long tag) {
        return copy$default(this, null, tagClass, tag, null, false, null, false, WinError.ERROR_SEM_TIMEOUT, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BasicDerAdapter optional$default(BasicDerAdapter basicDerAdapter, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return basicDerAdapter.optional(obj);
    }

    public final BasicDerAdapter<T> optional(T defaultValue) {
        return copy$default(this, null, 0, 0L, null, true, defaultValue, false, 79, null);
    }

    public final BasicDerAdapter<T> asTypeHint() {
        return copy$default(this, null, 0, 0L, null, false, null, true, 63, null);
    }

    public int hashCode() {
        int iHashCode = ((((((((this.name.hashCode() * 31) + this.tagClass) * 31) + ((int) this.tag)) * 31) + this.codec.hashCode()) * 31) + (this.isOptional ? 1 : 0)) * 31;
        T t = this.defaultValue;
        return ((iHashCode + (t != null ? t.hashCode() : 0)) * 31) + (this.typeHint ? 1 : 0);
    }

    public String toString() {
        return this.name + " [" + this.tagClass + '/' + this.tag + AbstractJsonLexerKt.END_LIST;
    }
}
