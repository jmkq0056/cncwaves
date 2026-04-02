package org.kamranzafar.jtar;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes5.dex */
public class TarOutputStream extends OutputStream {
    private long bytesWritten;
    private TarEntry currentEntry;
    private long currentFileSize;
    private final OutputStream out;

    public TarOutputStream(OutputStream outputStream) {
        this.out = outputStream;
        this.bytesWritten = 0L;
        this.currentFileSize = 0L;
    }

    public TarOutputStream(File file) throws FileNotFoundException {
        this.out = new BufferedOutputStream(new FileOutputStream(file));
        this.bytesWritten = 0L;
        this.currentFileSize = 0L;
    }

    public TarOutputStream(File file, boolean z) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        long length = file.length();
        if (z && length > RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            randomAccessFile.seek(length - RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE);
        }
        this.out = new BufferedOutputStream(new FileOutputStream(randomAccessFile.getFD()));
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        closeCurrentEntry();
        write(new byte[1024]);
        this.out.close();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.out.write(i);
        this.bytesWritten++;
        if (this.currentEntry != null) {
            this.currentFileSize++;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        TarEntry tarEntry = this.currentEntry;
        if (tarEntry != null && !tarEntry.isDirectory()) {
            long j = i2;
            if (this.currentEntry.getSize() < this.currentFileSize + j) {
                throw new IOException("The current entry[" + this.currentEntry.getName() + "] size[" + this.currentEntry.getSize() + "] is smaller than the bytes[" + (this.currentFileSize + j) + "] being written.");
            }
        }
        this.out.write(bArr, i, i2);
        long j2 = i2;
        this.bytesWritten += j2;
        if (this.currentEntry != null) {
            this.currentFileSize += j2;
        }
    }

    public void putNextEntry(TarEntry tarEntry) throws IOException {
        closeCurrentEntry();
        byte[] bArr = new byte[512];
        tarEntry.writeEntryHeader(bArr);
        write(bArr);
        this.currentEntry = tarEntry;
    }

    protected void closeCurrentEntry() throws IOException {
        TarEntry tarEntry = this.currentEntry;
        if (tarEntry != null) {
            if (tarEntry.getSize() > this.currentFileSize) {
                throw new IOException("The current entry[" + this.currentEntry.getName() + "] of size[" + this.currentEntry.getSize() + "] has not been fully written.");
            }
            this.currentEntry = null;
            this.currentFileSize = 0L;
            pad();
        }
    }

    protected void pad() throws IOException {
        int i;
        long j = this.bytesWritten;
        if (j <= 0 || (i = (int) (j % 512)) <= 0) {
            return;
        }
        write(new byte[512 - i]);
    }
}
