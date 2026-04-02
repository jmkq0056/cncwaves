package org.eclipse.jetty.io.nio;

import androidx.appcompat.widget.ActivityChooserView;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import org.eclipse.jetty.io.AbstractBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class RandomAccessFileBuffer extends AbstractBuffer {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public final int _capacity;
    public final FileChannel _channel;
    public final RandomAccessFile _file;

    public RandomAccessFileBuffer(File file) {
        super(2, true);
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        this._file = randomAccessFile;
        this._channel = randomAccessFile.getChannel();
        this._capacity = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        setGetIndex(0);
        setPutIndex((int) file.length());
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte[] array() {
        return null;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int capacity() {
        return this._capacity;
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public void clear() {
        try {
            synchronized (this._file) {
                super.clear();
                this._file.setLength(0L);
            }
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public byte peek() {
        byte b4;
        synchronized (this._file) {
            try {
                try {
                    if (this._get != this._file.getFilePointer()) {
                        this._file.seek(this._get);
                    }
                    b4 = this._file.readByte();
                } catch (Exception e4) {
                    throw new RuntimeException(e4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b4;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void poke(int i4, byte b4) {
        synchronized (this._file) {
            try {
                try {
                    this._file.seek(i4);
                    this._file.writeByte(b4);
                } catch (Exception e4) {
                    throw new RuntimeException(e4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int writeTo(WritableByteChannel writableByteChannel, int i4, int i5) {
        int iTransferTo;
        synchronized (this._file) {
            iTransferTo = (int) this._channel.transferTo(i4, i5, writableByteChannel);
        }
        return iTransferTo;
    }

    public RandomAccessFileBuffer(File file, int i4) {
        super(2, true);
        this._capacity = i4;
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        this._file = randomAccessFile;
        this._channel = randomAccessFile.getChannel();
        setGetIndex(0);
        setPutIndex((int) file.length());
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte peek(int i4) {
        byte b4;
        synchronized (this._file) {
            try {
                try {
                    this._file.seek(i4);
                    b4 = this._file.readByte();
                } catch (Exception e4) {
                    throw new RuntimeException(e4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b4;
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public int poke(int i4, byte[] bArr, int i5, int i6) {
        synchronized (this._file) {
            try {
                try {
                    this._file.seek(i4);
                    this._file.write(bArr, i5, i6);
                } catch (Exception e4) {
                    throw new RuntimeException(e4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i6;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int peek(int i4, byte[] bArr, int i5, int i6) {
        int i7;
        synchronized (this._file) {
            try {
                try {
                    this._file.seek(i4);
                    i7 = this._file.read(bArr, i5, i6);
                } catch (Exception e4) {
                    throw new RuntimeException(e4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i7;
    }

    public RandomAccessFileBuffer(File file, int i4, int i5) {
        super(i5, true);
        this._capacity = i4;
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, i5 == 2 ? "rw" : "r");
        this._file = randomAccessFile;
        this._channel = randomAccessFile.getChannel();
        setGetIndex(0);
        setPutIndex((int) file.length());
    }
}
