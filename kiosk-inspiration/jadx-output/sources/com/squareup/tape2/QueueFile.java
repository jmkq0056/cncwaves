package com.squareup.tape2;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes3.dex */
public final class QueueFile implements Closeable, Iterable<byte[]> {
    static final int INITIAL_LENGTH = 4096;
    private static final int VERSIONED_HEADER = -2147483647;
    private static final byte[] ZEROES = new byte[4096];
    private final byte[] buffer;
    boolean closed;
    int elementCount;
    final File file;
    long fileLength;
    Element first;
    final int headerLength;
    private Element last;
    int modCount = 0;
    final RandomAccessFile raf;
    final boolean versioned;
    private final boolean zero;

    static RandomAccessFile initializeFromFile(File file, boolean z) throws IOException {
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile randomAccessFileOpen = open(file2);
            try {
                randomAccessFileOpen.setLength(4096L);
                randomAccessFileOpen.seek(0L);
                if (z) {
                    randomAccessFileOpen.writeInt(4096);
                } else {
                    randomAccessFileOpen.writeInt(-2147483647);
                    randomAccessFileOpen.writeLong(4096L);
                }
                randomAccessFileOpen.close();
                if (!file2.renameTo(file)) {
                    throw new IOException("Rename failed!");
                }
            } catch (Throwable th) {
                randomAccessFileOpen.close();
                throw th;
            }
        }
        return open(file);
    }

    private static RandomAccessFile open(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    QueueFile(File file, RandomAccessFile randomAccessFile, boolean z, boolean z2) throws IOException {
        long j;
        long j2;
        byte[] bArr = new byte[32];
        this.buffer = bArr;
        this.file = file;
        this.raf = randomAccessFile;
        this.zero = z;
        randomAccessFile.seek(0L);
        randomAccessFile.readFully(bArr);
        boolean z3 = (z2 || (bArr[0] & 128) == 0) ? false : true;
        this.versioned = z3;
        if (z3) {
            this.headerLength = 32;
            int i = readInt(bArr, 0) & Integer.MAX_VALUE;
            if (i != 1) {
                throw new IOException("Unable to read version " + i + " format. Supported versions are 1 and legacy.");
            }
            this.fileLength = readLong(bArr, 4);
            this.elementCount = readInt(bArr, 12);
            j2 = readLong(bArr, 16);
            j = readLong(bArr, 24);
        } else {
            this.headerLength = 16;
            this.fileLength = readInt(bArr, 0);
            this.elementCount = readInt(bArr, 4);
            long j3 = readInt(bArr, 8);
            j = readInt(bArr, 12);
            j2 = j3;
        }
        if (this.fileLength > randomAccessFile.length()) {
            throw new IOException("File is truncated. Expected length: " + this.fileLength + ", Actual length: " + randomAccessFile.length());
        }
        if (this.fileLength <= this.headerLength) {
            throw new IOException("File is corrupt; length stored in header (" + this.fileLength + ") is invalid.");
        }
        this.first = readElement(j2);
        this.last = readElement(j);
    }

    private static void writeInt(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    private static int readInt(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    private static void writeLong(byte[] bArr, int i, long j) {
        bArr[i] = (byte) (j >> 56);
        bArr[i + 1] = (byte) (j >> 48);
        bArr[i + 2] = (byte) (j >> 40);
        bArr[i + 3] = (byte) (j >> 32);
        bArr[i + 4] = (byte) (j >> 24);
        bArr[i + 5] = (byte) (j >> 16);
        bArr[i + 6] = (byte) (j >> 8);
        bArr[i + 7] = (byte) j;
    }

    private static long readLong(byte[] bArr, int i) {
        return ((((long) bArr[i]) & 255) << 56) + ((((long) bArr[i + 1]) & 255) << 48) + ((((long) bArr[i + 2]) & 255) << 40) + ((((long) bArr[i + 3]) & 255) << 32) + ((((long) bArr[i + 4]) & 255) << 24) + ((((long) bArr[i + 5]) & 255) << 16) + ((((long) bArr[i + 6]) & 255) << 8) + (((long) bArr[i + 7]) & 255);
    }

    private void writeHeader(long j, int i, long j2, long j3) throws IOException {
        this.raf.seek(0L);
        if (this.versioned) {
            writeInt(this.buffer, 0, -2147483647);
            writeLong(this.buffer, 4, j);
            writeInt(this.buffer, 12, i);
            writeLong(this.buffer, 16, j2);
            writeLong(this.buffer, 24, j3);
            this.raf.write(this.buffer, 0, 32);
            return;
        }
        writeInt(this.buffer, 0, (int) j);
        writeInt(this.buffer, 4, i);
        writeInt(this.buffer, 8, (int) j2);
        writeInt(this.buffer, 12, (int) j3);
        this.raf.write(this.buffer, 0, 16);
    }

    Element readElement(long j) throws IOException {
        if (j == 0) {
            return Element.NULL;
        }
        ringRead(j, this.buffer, 0, 4);
        return new Element(j, readInt(this.buffer, 0));
    }

    long wrapPosition(long j) {
        long j2 = this.fileLength;
        return j < j2 ? j : (((long) this.headerLength) + j) - j2;
    }

    private void ringWrite(long j, byte[] bArr, int i, int i2) throws IOException {
        long jWrapPosition = wrapPosition(j);
        long j2 = ((long) i2) + jWrapPosition;
        long j3 = this.fileLength;
        if (j2 <= j3) {
            this.raf.seek(jWrapPosition);
            this.raf.write(bArr, i, i2);
            return;
        }
        int i3 = (int) (j3 - jWrapPosition);
        this.raf.seek(jWrapPosition);
        this.raf.write(bArr, i, i3);
        this.raf.seek(this.headerLength);
        this.raf.write(bArr, i + i3, i2 - i3);
    }

    private void ringErase(long j, long j2) throws IOException {
        long j3 = j;
        while (j2 > 0) {
            byte[] bArr = ZEROES;
            int iMin = (int) Math.min(j2, bArr.length);
            ringWrite(j3, bArr, 0, iMin);
            long j4 = iMin;
            j2 -= j4;
            j3 += j4;
        }
    }

    void ringRead(long j, byte[] bArr, int i, int i2) throws IOException {
        long jWrapPosition = wrapPosition(j);
        long j2 = ((long) i2) + jWrapPosition;
        long j3 = this.fileLength;
        if (j2 <= j3) {
            this.raf.seek(jWrapPosition);
            this.raf.readFully(bArr, i, i2);
            return;
        }
        int i3 = (int) (j3 - jWrapPosition);
        this.raf.seek(jWrapPosition);
        this.raf.readFully(bArr, i, i3);
        this.raf.seek(this.headerLength);
        this.raf.readFully(bArr, i + i3, i2 - i3);
    }

    public void add(byte[] bArr) throws IOException {
        add(bArr, 0, bArr.length);
    }

    public void add(byte[] bArr, int i, int i2) throws IOException {
        long jWrapPosition;
        if (bArr == null) {
            throw new NullPointerException("data == null");
        }
        if ((i | i2) < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        expandIfNecessary(i2);
        boolean zIsEmpty = isEmpty();
        if (zIsEmpty) {
            jWrapPosition = this.headerLength;
        } else {
            jWrapPosition = wrapPosition(this.last.position + 4 + ((long) this.last.length));
        }
        Element element = new Element(jWrapPosition, i2);
        writeInt(this.buffer, 0, i2);
        ringWrite(element.position, this.buffer, 0, 4);
        ringWrite(element.position + 4, bArr, i, i2);
        writeHeader(this.fileLength, this.elementCount + 1, zIsEmpty ? element.position : this.first.position, element.position);
        this.last = element;
        this.elementCount++;
        this.modCount++;
        if (zIsEmpty) {
            this.first = element;
        }
    }

    private long usedBytes() {
        if (this.elementCount == 0) {
            return this.headerLength;
        }
        if (this.last.position >= this.first.position) {
            return (this.last.position - this.first.position) + 4 + ((long) this.last.length) + ((long) this.headerLength);
        }
        return (((this.last.position + 4) + ((long) this.last.length)) + this.fileLength) - this.first.position;
    }

    private long remainingBytes() {
        return this.fileLength - usedBytes();
    }

    public boolean isEmpty() {
        return this.elementCount == 0;
    }

    private void expandIfNecessary(long j) throws IOException {
        long j2;
        long j3;
        long j4 = j + 4;
        long jRemainingBytes = remainingBytes();
        if (jRemainingBytes >= j4) {
            return;
        }
        long j5 = this.fileLength;
        do {
            jRemainingBytes += j5;
            j5 <<= 1;
        } while (jRemainingBytes < j4);
        setLength(j5);
        long jWrapPosition = wrapPosition(this.last.position + 4 + ((long) this.last.length));
        if (jWrapPosition <= this.first.position) {
            FileChannel channel = this.raf.getChannel();
            channel.position(this.fileLength);
            int i = this.headerLength;
            j2 = jWrapPosition - ((long) i);
            if (channel.transferTo(i, j2, channel) != j2) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        } else {
            j2 = 0;
        }
        if (this.last.position < this.first.position) {
            long j6 = (this.fileLength + this.last.position) - ((long) this.headerLength);
            j3 = j5;
            writeHeader(j3, this.elementCount, this.first.position, j6);
            this.last = new Element(j6, this.last.length);
        } else {
            j3 = j5;
            writeHeader(j3, this.elementCount, this.first.position, this.last.position);
        }
        this.fileLength = j3;
        if (this.zero) {
            ringErase(this.headerLength, j2);
        }
    }

    private void setLength(long j) throws IOException {
        this.raf.setLength(j);
        this.raf.getChannel().force(true);
    }

    @Nullable
    public byte[] peek() throws IOException {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        if (isEmpty()) {
            return null;
        }
        int i = this.first.length;
        byte[] bArr = new byte[i];
        ringRead(4 + this.first.position, bArr, 0, i);
        return bArr;
    }

    @Override // java.lang.Iterable
    public Iterator<byte[]> iterator() {
        return new ElementIterator();
    }

    private final class ElementIterator implements Iterator<byte[]> {
        int expectedModCount;
        int nextElementIndex = 0;
        private long nextElementPosition;

        ElementIterator() {
            this.nextElementPosition = QueueFile.this.first.position;
            this.expectedModCount = QueueFile.this.modCount;
        }

        private void checkForComodification() {
            if (QueueFile.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (QueueFile.this.closed) {
                throw new IllegalStateException("closed");
            }
            checkForComodification();
            return this.nextElementIndex != QueueFile.this.elementCount;
        }

        @Override // java.util.Iterator
        public byte[] next() {
            if (QueueFile.this.closed) {
                throw new IllegalStateException("closed");
            }
            checkForComodification();
            if (QueueFile.this.isEmpty()) {
                throw new NoSuchElementException();
            }
            if (this.nextElementIndex >= QueueFile.this.elementCount) {
                throw new NoSuchElementException();
            }
            try {
                Element element = QueueFile.this.readElement(this.nextElementPosition);
                byte[] bArr = new byte[element.length];
                long jWrapPosition = QueueFile.this.wrapPosition(element.position + 4);
                this.nextElementPosition = jWrapPosition;
                QueueFile.this.ringRead(jWrapPosition, bArr, 0, element.length);
                this.nextElementPosition = QueueFile.this.wrapPosition(element.position + 4 + ((long) element.length));
                this.nextElementIndex++;
                return bArr;
            } catch (IOException e) {
                throw ((Error) QueueFile.getSneakyThrowable(e));
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            checkForComodification();
            if (QueueFile.this.isEmpty()) {
                throw new NoSuchElementException();
            }
            if (this.nextElementIndex != 1) {
                throw new UnsupportedOperationException("Removal is only permitted from the head.");
            }
            try {
                QueueFile.this.remove();
                this.expectedModCount = QueueFile.this.modCount;
                this.nextElementIndex--;
            } catch (IOException e) {
                throw ((Error) QueueFile.getSneakyThrowable(e));
            }
        }
    }

    public int size() {
        return this.elementCount;
    }

    public void remove() throws IOException {
        remove(1);
    }

    public void remove(int i) throws IOException {
        long j;
        if (i < 0) {
            throw new IllegalArgumentException("Cannot remove negative (" + i + ") number of elements.");
        }
        if (i == 0) {
            return;
        }
        if (i == this.elementCount) {
            clear();
            return;
        }
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        if (i > this.elementCount) {
            throw new IllegalArgumentException("Cannot remove more elements (" + i + ") than present in queue (" + this.elementCount + ").");
        }
        long j2 = this.first.position;
        long jWrapPosition = this.first.position;
        int i2 = this.first.length;
        long j3 = 0;
        int i3 = 0;
        while (true) {
            j = jWrapPosition;
            if (i3 >= i) {
                break;
            }
            j3 += (long) (i2 + 4);
            jWrapPosition = wrapPosition(j + 4 + ((long) i2));
            ringRead(jWrapPosition, this.buffer, 0, 4);
            i2 = readInt(this.buffer, 0);
            i3++;
        }
        writeHeader(this.fileLength, this.elementCount - i, j, this.last.position);
        this.elementCount -= i;
        this.modCount++;
        this.first = new Element(j, i2);
        if (this.zero) {
            ringErase(j2, j3);
        }
    }

    public void clear() throws IOException {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        writeHeader(4096L, 0, 0L, 0L);
        if (this.zero) {
            this.raf.seek(this.headerLength);
            this.raf.write(ZEROES, 0, 4096 - this.headerLength);
        }
        this.elementCount = 0;
        this.first = Element.NULL;
        this.last = Element.NULL;
        if (this.fileLength > 4096) {
            setLength(4096L);
        }
        this.fileLength = 4096L;
        this.modCount++;
    }

    public File file() {
        return this.file;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.closed = true;
        this.raf.close();
    }

    public String toString() {
        return "QueueFile{file=" + this.file + ", zero=" + this.zero + ", versioned=" + this.versioned + ", length=" + this.fileLength + ", size=" + this.elementCount + ", first=" + this.first + ", last=" + this.last + AbstractJsonLexerKt.END_OBJ;
    }

    static class Element {
        static final int HEADER_LENGTH = 4;
        static final Element NULL = new Element(0, 0);
        final int length;
        final long position;

        Element(long j, int i) {
            this.position = j;
            this.length = i;
        }

        public String toString() {
            return getClass().getSimpleName() + "[position=" + this.position + ", length=" + this.length + "]";
        }
    }

    public static final class Builder {
        final File file;
        boolean zero = true;
        boolean forceLegacy = false;

        public Builder(File file) {
            if (file == null) {
                throw new NullPointerException("file == null");
            }
            this.file = file;
        }

        public Builder zero(boolean z) {
            this.zero = z;
            return this;
        }

        public Builder forceLegacy(boolean z) {
            this.forceLegacy = z;
            return this;
        }

        public QueueFile build() throws IOException {
            RandomAccessFile randomAccessFileInitializeFromFile = QueueFile.initializeFromFile(this.file, this.forceLegacy);
            try {
                return new QueueFile(this.file, randomAccessFileInitializeFromFile, this.zero, this.forceLegacy);
            } catch (Throwable th) {
                randomAccessFileInitializeFromFile.close();
                throw th;
            }
        }
    }

    static <T extends Throwable> T getSneakyThrowable(Throwable th) throws Throwable {
        throw th;
    }
}
