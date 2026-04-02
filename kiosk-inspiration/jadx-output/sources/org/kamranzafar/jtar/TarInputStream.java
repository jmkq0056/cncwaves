package org.kamranzafar.jtar;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class TarInputStream extends FilterInputStream {
    private static final int SKIP_BUFFER_SIZE = 2048;
    private long bytesRead;
    private TarEntry currentEntry;
    private long currentFileSize;
    private boolean defaultSkip;

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    public TarInputStream(InputStream inputStream) {
        super(inputStream);
        this.defaultSkip = false;
        this.currentFileSize = 0L;
        this.bytesRead = 0L;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        throw new IOException("mark/reset not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = new byte[1];
        int i = read(bArr, 0, 1);
        return i != -1 ? bArr[0] & 255 : i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        TarEntry tarEntry = this.currentEntry;
        if (tarEntry != null) {
            if (this.currentFileSize == tarEntry.getSize()) {
                return -1;
            }
            if (this.currentEntry.getSize() - this.currentFileSize < i2) {
                i2 = (int) (this.currentEntry.getSize() - this.currentFileSize);
            }
        }
        int i3 = super.read(bArr, i, i2);
        if (i3 != -1) {
            if (this.currentEntry != null) {
                this.currentFileSize += (long) i3;
            }
            this.bytesRead += (long) i3;
        }
        return i3;
    }

    public TarEntry getNextEntry() throws IOException {
        closeCurrentEntry();
        byte[] bArr = new byte[512];
        byte[] bArr2 = new byte[512];
        int i = 0;
        int i2 = 0;
        while (i2 < 512) {
            int i3 = read(bArr2, 0, 512 - i2);
            if (i3 < 0) {
                break;
            }
            System.arraycopy(bArr2, 0, bArr, i2, i3);
            i2 += i3;
        }
        while (true) {
            if (i >= 512) {
                break;
            }
            if (bArr[i] != 0) {
                this.currentEntry = new TarEntry(bArr);
                break;
            }
            i++;
        }
        return this.currentEntry;
    }

    public long getCurrentOffset() {
        return this.bytesRead;
    }

    protected void closeCurrentEntry() throws IOException {
        TarEntry tarEntry = this.currentEntry;
        if (tarEntry != null) {
            if (tarEntry.getSize() > this.currentFileSize) {
                long j = 0;
                while (j < this.currentEntry.getSize() - this.currentFileSize) {
                    long jSkip = skip((this.currentEntry.getSize() - this.currentFileSize) - j);
                    if (jSkip == 0 && this.currentEntry.getSize() - this.currentFileSize > 0) {
                        throw new IOException("Possible tar file corruption");
                    }
                    j += jSkip;
                }
            }
            this.currentEntry = null;
            this.currentFileSize = 0L;
            skipPad();
        }
    }

    protected void skipPad() throws IOException {
        int i;
        long j = this.bytesRead;
        long jSkip = 0;
        if (j <= 0 || (i = (int) (j % 512)) <= 0) {
            return;
        }
        while (true) {
            long j2 = 512 - i;
            if (jSkip >= j2) {
                return;
            } else {
                jSkip += skip(j2 - jSkip);
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        if (this.defaultSkip) {
            long jSkip = super.skip(j);
            this.bytesRead += jSkip;
            return jSkip;
        }
        if (j <= 0) {
            return 0L;
        }
        byte[] bArr = new byte[2048];
        long j2 = j;
        while (j2 > 0) {
            int i = read(bArr, 0, (int) (j2 < 2048 ? j2 : 2048L));
            if (i < 0) {
                break;
            }
            j2 -= (long) i;
        }
        return j - j2;
    }

    public boolean isDefaultSkip() {
        return this.defaultSkip;
    }

    public void setDefaultSkip(boolean z) {
        this.defaultSkip = z;
    }
}
