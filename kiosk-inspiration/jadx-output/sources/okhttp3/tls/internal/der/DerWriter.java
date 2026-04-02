package okhttp3.tls.internal.der;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;

/* JADX INFO: compiled from: DerWriter.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0002\u001a\u00020\u0003H\u0002J\b\u0010\u0016\u001a\u00020\rH\u0016J\u001f\u0010\u0017\u001a\u0002H\u0018\"\u0004\b\u0000\u0010\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00180\u001a¢\u0006\u0002\u0010\u001bJ2\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001d0#J\u000e\u0010$\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020%J\u000e\u0010&\u001a\u00020\u001d2\u0006\u0010'\u001a\u00020(J\u000e\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020\u0006J\u000e\u0010+\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\"J\u000e\u0010-\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020\rJ\u000e\u0010/\u001a\u00020\u001d2\u0006\u00100\u001a\u000201J\u000e\u00102\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020\rJ\u000e\u00103\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\rJ\u0010\u00104\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\"H\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\fX\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\u0010\u001a\u0004\u0018\u00010\u00012\b\u0010\u000f\u001a\u0004\u0018\u00010\u00018F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Lokhttp3/tls/internal/der/DerWriter;", "", "sink", "Lokio/BufferedSink;", "(Lokio/BufferedSink;)V", "constructed", "", "getConstructed", "()Z", "setConstructed", "(Z)V", "path", "", "", "stack", "value", "typeHint", "getTypeHint", "()Ljava/lang/Object;", "setTypeHint", "(Ljava/lang/Object;)V", "typeHintStack", "toString", "withTypeHint", "T", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "write", "", "name", "tagClass", "", "tag", "", "Lkotlin/Function1;", "writeBigInteger", "Ljava/math/BigInteger;", "writeBitString", "bitString", "Lokhttp3/tls/internal/der/BitString;", "writeBoolean", PrinterTextParser.TAGS_FORMAT_TEXT_BOLD, "writeLong", "v", "writeObjectIdentifier", "s", "writeOctetString", "byteString", "Lokio/ByteString;", "writeRelativeObjectIdentifier", "writeUtf8", "writeVariableLengthLong", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DerWriter {
    private boolean constructed;
    private final List<String> path;
    private final List<BufferedSink> stack;
    private final List<Object> typeHintStack;

    public DerWriter(BufferedSink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.stack = CollectionsKt.mutableListOf(sink);
        this.typeHintStack = new ArrayList();
        this.path = new ArrayList();
    }

    public final Object getTypeHint() {
        return CollectionsKt.lastOrNull((List) this.typeHintStack);
    }

    public final void setTypeHint(Object obj) {
        this.typeHintStack.set(r0.size() - 1, obj);
    }

    public final boolean getConstructed() {
        return this.constructed;
    }

    public final void setConstructed(boolean z) {
        this.constructed = z;
    }

    public final void write(String name, int tagClass, long tag, Function1<? super BufferedSink, Unit> block) throws IOException {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(block, "block");
        Buffer buffer = new Buffer();
        this.stack.add(buffer);
        this.constructed = false;
        this.path.add(name);
        try {
            block.invoke(buffer);
            int i = this.constructed ? 32 : 0;
            this.constructed = true;
            List<BufferedSink> list = this.stack;
            list.remove(list.size() - 1);
            List<String> list2 = this.path;
            list2.remove(list2.size() - 1);
            BufferedSink bufferedSinkSink = sink();
            if (tag < 31) {
                bufferedSinkSink.writeByte(tagClass | i | ((int) tag));
            } else {
                bufferedSinkSink.writeByte(tagClass | i | 31);
                writeVariableLengthLong(tag);
            }
            long size = buffer.size();
            if (size < 128) {
                bufferedSinkSink.writeByte((int) size);
            } else {
                int iNumberOfLeadingZeros = (71 - Long.numberOfLeadingZeros(size)) / 8;
                bufferedSinkSink.writeByte(iNumberOfLeadingZeros | 128);
                int i2 = (iNumberOfLeadingZeros - 1) * 8;
                int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(i2, 0, -8);
                if (progressionLastElement <= i2) {
                    while (true) {
                        bufferedSinkSink.writeByte((int) (size >> i2));
                        if (i2 == progressionLastElement) {
                            break;
                        } else {
                            i2 -= 8;
                        }
                    }
                }
            }
            bufferedSinkSink.writeAll(buffer);
        } catch (Throwable th) {
            List<BufferedSink> list3 = this.stack;
            list3.remove(list3.size() - 1);
            List<String> list4 = this.path;
            list4.remove(list4.size() - 1);
            throw th;
        }
    }

    public final <T> T withTypeHint(Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.typeHintStack.add(null);
        try {
            T tInvoke = block.invoke();
            this.typeHintStack.remove(r0.size() - 1);
            return tInvoke;
        } catch (Throwable th) {
            this.typeHintStack.remove(this.typeHintStack.size() - 1);
            throw th;
        }
    }

    private final BufferedSink sink() {
        return this.stack.get(r0.size() - 1);
    }

    public final void writeBoolean(boolean b) throws IOException {
        sink().writeByte(b ? -1 : 0);
    }

    public final void writeBigInteger(BigInteger value) throws IOException {
        Intrinsics.checkNotNullParameter(value, "value");
        BufferedSink bufferedSinkSink = sink();
        byte[] byteArray = value.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "value.toByteArray()");
        bufferedSinkSink.write(byteArray);
    }

    public final void writeLong(long v) throws IOException {
        int iNumberOfLeadingZeros;
        BufferedSink bufferedSinkSink = sink();
        if (v < 0) {
            iNumberOfLeadingZeros = Long.numberOfLeadingZeros(~v);
        } else {
            iNumberOfLeadingZeros = Long.numberOfLeadingZeros(v);
        }
        int i = ((((65 - iNumberOfLeadingZeros) + 7) / 8) - 1) * 8;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(i, 0, -8);
        if (progressionLastElement > i) {
            return;
        }
        while (true) {
            bufferedSinkSink.writeByte((int) (v >> i));
            if (i == progressionLastElement) {
                return;
            } else {
                i -= 8;
            }
        }
    }

    public final void writeBitString(BitString bitString) throws IOException {
        Intrinsics.checkNotNullParameter(bitString, "bitString");
        BufferedSink bufferedSinkSink = sink();
        bufferedSinkSink.writeByte(bitString.getUnusedBitsCount());
        bufferedSinkSink.write(bitString.getByteString());
    }

    public final void writeOctetString(ByteString byteString) throws IOException {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        sink().write(byteString);
    }

    public final void writeUtf8(String value) throws IOException {
        Intrinsics.checkNotNullParameter(value, "value");
        sink().writeUtf8(value);
    }

    public final void writeObjectIdentifier(String s) throws IOException {
        Intrinsics.checkNotNullParameter(s, "s");
        Buffer bufferWriteUtf8 = new Buffer().writeUtf8(s);
        long decimalLong = bufferWriteUtf8.readDecimalLong();
        if (bufferWriteUtf8.readByte() != 46) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        writeVariableLengthLong((decimalLong * ((long) 40)) + bufferWriteUtf8.readDecimalLong());
        while (!bufferWriteUtf8.exhausted()) {
            if (bufferWriteUtf8.readByte() != 46) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            writeVariableLengthLong(bufferWriteUtf8.readDecimalLong());
        }
    }

    public final void writeRelativeObjectIdentifier(String s) throws IOException {
        Intrinsics.checkNotNullParameter(s, "s");
        Buffer bufferWriteUtf8 = new Buffer().writeByte(46).writeUtf8(s);
        while (!bufferWriteUtf8.exhausted()) {
            if (bufferWriteUtf8.readByte() != 46) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            writeVariableLengthLong(bufferWriteUtf8.readDecimalLong());
        }
    }

    private final void writeVariableLengthLong(long v) throws IOException {
        BufferedSink bufferedSinkSink = sink();
        int iNumberOfLeadingZeros = (((70 - Long.numberOfLeadingZeros(v)) / 7) - 1) * 7;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(iNumberOfLeadingZeros, 0, -7);
        if (progressionLastElement > iNumberOfLeadingZeros) {
            return;
        }
        while (true) {
            bufferedSinkSink.writeByte((iNumberOfLeadingZeros == 0 ? 0 : 128) | ((int) ((v >> iNumberOfLeadingZeros) & 127)));
            if (iNumberOfLeadingZeros == progressionLastElement) {
                return;
            } else {
                iNumberOfLeadingZeros -= 7;
            }
        }
    }

    public String toString() {
        return CollectionsKt.joinToString$default(this.path, " / ", null, null, 0, null, null, 62, null);
    }
}
