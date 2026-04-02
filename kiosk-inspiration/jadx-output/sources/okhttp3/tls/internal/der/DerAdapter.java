package okhttp3.tls.internal.der;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.tls.internal.der.BasicDerAdapter;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: compiled from: DerAdapter.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b`\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J2\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bH\u0016J\u0014\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00050\u0004H\u0016J\u0015\u0010\r\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00020\u000fH&¢\u0006\u0002\u0010\u0010J\u0015\u0010\r\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¢\u0006\u0002\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0015\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001aJ\u001d\u0010\u0018\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u001eJ1\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\b\b\u0002\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0002\u0010!¨\u0006\""}, d2 = {"Lokhttp3/tls/internal/der/DerAdapter;", "T", "", "asSequenceOf", "Lokhttp3/tls/internal/der/BasicDerAdapter;", "", "name", "", "tagClass", "", "tag", "", "asSetOf", "fromDer", OfflineStorageConstantsKt.READER, "Lokhttp3/tls/internal/der/DerReader;", "(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;", "byteString", "Lokio/ByteString;", "(Lokio/ByteString;)Ljava/lang/Object;", "matches", "", "header", "Lokhttp3/tls/internal/der/DerHeader;", "toDer", "value", "(Ljava/lang/Object;)Lokio/ByteString;", "", "writer", "Lokhttp3/tls/internal/der/DerWriter;", "(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V", "withExplicitBox", "forceConstructed", "(IJLjava/lang/Boolean;)Lokhttp3/tls/internal/der/BasicDerAdapter;", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface DerAdapter<T> {
    BasicDerAdapter<List<T>> asSequenceOf(String name, int tagClass, long tag);

    BasicDerAdapter<List<T>> asSetOf();

    T fromDer(DerReader reader);

    T fromDer(ByteString byteString);

    boolean matches(DerHeader header);

    ByteString toDer(T value);

    void toDer(DerWriter writer, T value);

    BasicDerAdapter<T> withExplicitBox(int tagClass, long tag, Boolean forceConstructed);

    /* JADX INFO: compiled from: DerAdapter.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class DefaultImpls {
        public static <T> T fromDer(DerAdapter<T> derAdapter, ByteString byteString) {
            Intrinsics.checkNotNullParameter(byteString, "byteString");
            return derAdapter.fromDer(new DerReader(new Buffer().write(byteString)));
        }

        public static <T> ByteString toDer(DerAdapter<T> derAdapter, T t) {
            Buffer buffer = new Buffer();
            derAdapter.toDer(new DerWriter(buffer), t);
            return buffer.readByteString();
        }

        public static /* synthetic */ BasicDerAdapter withExplicitBox$default(DerAdapter derAdapter, int i, long j, Boolean bool, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: withExplicitBox");
            }
            if ((i2 & 1) != 0) {
                i = 128;
            }
            if ((i2 & 4) != 0) {
                bool = null;
            }
            return derAdapter.withExplicitBox(i, j, bool);
        }

        public static <T> BasicDerAdapter<T> withExplicitBox(final DerAdapter<T> derAdapter, int i, long j, final Boolean bool) {
            return new BasicDerAdapter<>("EXPLICIT", i, j, new BasicDerAdapter.Codec<T>() { // from class: okhttp3.tls.internal.der.DerAdapter$withExplicitBox$codec$1
                @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
                public T decode(DerReader reader) {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    return derAdapter.fromDer(reader);
                }

                @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
                public void encode(DerWriter writer, T value) {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    derAdapter.toDer(writer, value);
                    Boolean bool2 = bool;
                    if (bool2 != null) {
                        writer.setConstructed(bool2.booleanValue());
                    }
                }
            }, false, null, false, 112, null);
        }

        public static /* synthetic */ BasicDerAdapter asSequenceOf$default(DerAdapter derAdapter, String str, int i, long j, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: asSequenceOf");
            }
            if ((i2 & 1) != 0) {
                str = "SEQUENCE OF";
            }
            if ((i2 & 2) != 0) {
                i = 0;
            }
            if ((i2 & 4) != 0) {
                j = 16;
            }
            return derAdapter.asSequenceOf(str, i, j);
        }

        public static <T> BasicDerAdapter<List<T>> asSequenceOf(final DerAdapter<T> derAdapter, String name, int i, long j) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new BasicDerAdapter<>(name, i, j, new BasicDerAdapter.Codec<List<? extends T>>() { // from class: okhttp3.tls.internal.der.DerAdapter$asSequenceOf$codec$1
                @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
                public void encode(DerWriter writer, List<? extends T> value) {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    Iterator<? extends T> it = value.iterator();
                    while (it.hasNext()) {
                        derAdapter.toDer(writer, it.next());
                    }
                }

                @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
                public List<T> decode(DerReader reader) {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    while (reader.hasNext()) {
                        arrayList.add(derAdapter.fromDer(reader));
                    }
                    return arrayList;
                }
            }, false, null, false, 112, null);
        }

        public static <T> BasicDerAdapter<List<T>> asSetOf(DerAdapter<T> derAdapter) {
            return derAdapter.asSequenceOf("SET OF", 0, 17L);
        }
    }
}
