package org.eclipse.jetty.io;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class UncheckedPrintWriter extends PrintWriter {
    private static final Logger LOG = Log.getLogger((Class<?>) UncheckedPrintWriter.class);
    private boolean _autoFlush;
    private IOException _ioException;
    private boolean _isClosed;
    private String _lineSeparator;

    public UncheckedPrintWriter(Writer writer) {
        this(writer, false);
    }

    private void isOpen() throws IOException {
        if (this._ioException != null) {
            throw new RuntimeIOException(this._ioException);
        }
        if (this._isClosed) {
            throw new IOException("Stream closed");
        }
    }

    private void newLine() {
        try {
            synchronized (((PrintWriter) this).lock) {
                isOpen();
                ((PrintWriter) this).out.write(this._lineSeparator);
                if (this._autoFlush) {
                    ((PrintWriter) this).out.flush();
                }
            }
        } catch (InterruptedIOException unused) {
            Thread.currentThread().interrupt();
        } catch (IOException e4) {
            setError(e4);
        }
    }

    private void setError(Throwable th) {
        super.setError();
        if (th instanceof IOException) {
            this._ioException = (IOException) th;
        } else {
            IOException iOException = new IOException(String.valueOf(th));
            this._ioException = iOException;
            iOException.initCause(th);
        }
        LOG.debug(th);
    }

    @Override // java.io.PrintWriter
    public boolean checkError() {
        return this._ioException != null || super.checkError();
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            synchronized (((PrintWriter) this).lock) {
                ((PrintWriter) this).out.close();
                this._isClosed = true;
            }
        } catch (IOException e4) {
            setError(e4);
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.io.Flushable
    public void flush() {
        try {
            synchronized (((PrintWriter) this).lock) {
                isOpen();
                ((PrintWriter) this).out.flush();
            }
        } catch (IOException e4) {
            setError(e4);
        }
    }

    @Override // java.io.PrintWriter
    public void print(boolean z3) {
        write(z3 ? "true" : "false");
    }

    @Override // java.io.PrintWriter
    public void println() {
        newLine();
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(int i4) {
        try {
            synchronized (((PrintWriter) this).lock) {
                isOpen();
                ((PrintWriter) this).out.write(i4);
            }
        } catch (InterruptedIOException unused) {
            Thread.currentThread().interrupt();
        } catch (IOException e4) {
            setError(e4);
        }
    }

    public UncheckedPrintWriter(Writer writer, boolean z3) {
        super(writer, z3);
        this._autoFlush = false;
        this._isClosed = false;
        this._autoFlush = z3;
        this._lineSeparator = System.getProperty("line.separator");
    }

    @Override // java.io.PrintWriter
    public void print(char c4) {
        write(c4);
    }

    @Override // java.io.PrintWriter
    public void println(boolean z3) {
        synchronized (((PrintWriter) this).lock) {
            print(z3);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void print(int i4) {
        write(String.valueOf(i4));
    }

    @Override // java.io.PrintWriter
    public void print(long j4) {
        write(String.valueOf(j4));
    }

    @Override // java.io.PrintWriter
    public void print(float f4) {
        write(String.valueOf(f4));
    }

    @Override // java.io.PrintWriter
    public void print(double d4) {
        write(String.valueOf(d4));
    }

    @Override // java.io.PrintWriter
    public void println(char c4) {
        synchronized (((PrintWriter) this).lock) {
            print(c4);
            println();
        }
    }

    public UncheckedPrintWriter(OutputStream outputStream) {
        this(outputStream, false);
    }

    @Override // java.io.PrintWriter
    public void print(char[] cArr) {
        write(cArr);
    }

    @Override // java.io.PrintWriter
    public void setError() {
        setError(new IOException());
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(char[] cArr, int i4, int i5) {
        try {
            synchronized (((PrintWriter) this).lock) {
                isOpen();
                ((PrintWriter) this).out.write(cArr, i4, i5);
            }
        } catch (InterruptedIOException unused) {
            Thread.currentThread().interrupt();
        } catch (IOException e4) {
            setError(e4);
        }
    }

    public UncheckedPrintWriter(OutputStream outputStream, boolean z3) {
        this(new BufferedWriter(new OutputStreamWriter(outputStream)), z3);
    }

    @Override // java.io.PrintWriter
    public void print(String str) {
        if (str == null) {
            str = "null";
        }
        write(str);
    }

    @Override // java.io.PrintWriter
    public void print(Object obj) {
        write(String.valueOf(obj));
    }

    @Override // java.io.PrintWriter
    public void println(int i4) {
        synchronized (((PrintWriter) this).lock) {
            print(i4);
            println();
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(char[] cArr) {
        write(cArr, 0, cArr.length);
    }

    @Override // java.io.PrintWriter
    public void println(long j4) {
        synchronized (((PrintWriter) this).lock) {
            print(j4);
            println();
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(String str, int i4, int i5) {
        try {
            synchronized (((PrintWriter) this).lock) {
                isOpen();
                ((PrintWriter) this).out.write(str, i4, i5);
            }
        } catch (InterruptedIOException unused) {
            Thread.currentThread().interrupt();
        } catch (IOException e4) {
            setError(e4);
        }
    }

    @Override // java.io.PrintWriter
    public void println(float f4) {
        synchronized (((PrintWriter) this).lock) {
            print(f4);
            println();
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(String str) {
        write(str, 0, str.length());
    }

    @Override // java.io.PrintWriter
    public void println(double d4) {
        synchronized (((PrintWriter) this).lock) {
            print(d4);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void println(char[] cArr) {
        synchronized (((PrintWriter) this).lock) {
            print(cArr);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void println(String str) {
        synchronized (((PrintWriter) this).lock) {
            print(str);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void println(Object obj) {
        synchronized (((PrintWriter) this).lock) {
            print(obj);
            println();
        }
    }
}
