package org.eclipse.jetty.util;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.thread.QueuedThreadPool;

/* JADX INFO: loaded from: classes2.dex */
public class IO {
    public static final String CRLF = "\r\n";
    private static ClosedIS __closedStream;
    private static PrintWriter __nullPrintWriter;
    private static NullOS __nullStream;
    private static NullWrite __nullWriter;
    private static final Logger LOG = Log.getLogger((Class<?>) IO.class);
    public static final byte[] CRLF_BYTES = {13, 10};
    public static int bufferSize = 65536;

    public static class ClosedIS extends InputStream {
        private ClosedIS() {
        }

        @Override // java.io.InputStream
        public int read() {
            return -1;
        }
    }

    public static class NullOS extends OutputStream {
        private NullOS() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.OutputStream
        public void write(int i4) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i4, int i5) {
        }
    }

    public static class NullWrite extends Writer {
        private NullWrite() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(int i4) {
        }

        @Override // java.io.Writer
        public void write(String str) {
        }

        @Override // java.io.Writer
        public void write(String str, int i4, int i5) {
        }

        @Override // java.io.Writer
        public void write(char[] cArr) {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i4, int i5) {
        }
    }

    public static class Singleton {
        public static final QueuedThreadPool __pool;

        static {
            QueuedThreadPool queuedThreadPool = new QueuedThreadPool();
            __pool = queuedThreadPool;
            try {
                queuedThreadPool.start();
            } catch (Exception e4) {
                IO.LOG.warn(e4);
                System.exit(1);
            }
        }

        private Singleton() {
        }
    }

    static {
        __nullStream = new NullOS();
        __closedStream = new ClosedIS();
        __nullWriter = new NullWrite();
        __nullPrintWriter = new PrintWriter(__nullWriter);
    }

    public static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e4) {
                LOG.ignore(e4);
            }
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        copy(inputStream, outputStream, -1L);
    }

    public static void copyDir(File file, File file2) {
        if (!file2.exists()) {
            file2.mkdirs();
        } else if (!file2.isDirectory()) {
            throw new IllegalArgumentException(file2.toString());
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (int i4 = 0; i4 < fileArrListFiles.length; i4++) {
                String name = fileArrListFiles[i4].getName();
                if (!".".equals(name) && !"..".equals(name)) {
                    copy(fileArrListFiles[i4], new File(file2, name));
                }
            }
        }
    }

    public static void copyFile(File file, File file2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        copy(fileInputStream, fileOutputStream);
        fileInputStream.close();
        fileOutputStream.close();
    }

    public static void copyThread(InputStream inputStream, OutputStream outputStream) {
        try {
            Job job = new Job(inputStream, outputStream);
            if (Singleton.__pool.dispatch(job)) {
                return;
            }
            job.run();
        } catch (Exception e4) {
            LOG.warn(e4);
        }
    }

    public static boolean delete(File file) {
        if (!file.exists()) {
            return false;
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            for (int i4 = 0; fileArrListFiles != null && i4 < fileArrListFiles.length; i4++) {
                delete(fileArrListFiles[i4]);
            }
        }
        return file.delete();
    }

    public static InputStream getClosedStream() {
        return __closedStream;
    }

    public static PrintWriter getNullPrintWriter() {
        return __nullPrintWriter;
    }

    public static OutputStream getNullStream() {
        return __nullStream;
    }

    public static Writer getNullWriter() {
        return __nullWriter;
    }

    public static byte[] readBytes(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static String toString(InputStream inputStream) {
        return toString(inputStream, null);
    }

    public static void copy(Reader reader, Writer writer) throws IOException {
        copy(reader, writer, -1L);
    }

    public static String toString(InputStream inputStream, String str) throws IOException {
        StringWriter stringWriter = new StringWriter();
        copy(str == null ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str), stringWriter);
        return stringWriter.toString();
    }

    public static void close(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e4) {
                LOG.ignore(e4);
            }
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream, long j4) throws IOException {
        byte[] bArr = new byte[bufferSize];
        if (j4 >= 0) {
            while (j4 > 0) {
                int i4 = bufferSize;
                if (j4 < i4) {
                    i4 = (int) j4;
                }
                int i5 = inputStream.read(bArr, 0, i4);
                if (i5 == -1) {
                    return;
                }
                j4 -= (long) i5;
                outputStream.write(bArr, 0, i5);
            }
            return;
        }
        while (true) {
            int i6 = inputStream.read(bArr, 0, bufferSize);
            if (i6 < 0) {
                return;
            } else {
                outputStream.write(bArr, 0, i6);
            }
        }
    }

    public static class Job implements Runnable {
        public InputStream in;
        public OutputStream out;
        public Reader read;
        public Writer write;

        public Job(InputStream inputStream, OutputStream outputStream) {
            this.in = inputStream;
            this.out = outputStream;
            this.read = null;
            this.write = null;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                InputStream inputStream = this.in;
                if (inputStream != null) {
                    IO.copy(inputStream, this.out, -1L);
                } else {
                    IO.copy(this.read, this.write, -1L);
                }
            } catch (IOException e4) {
                IO.LOG.ignore(e4);
                try {
                    OutputStream outputStream = this.out;
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    Writer writer = this.write;
                    if (writer != null) {
                        writer.close();
                    }
                } catch (IOException e5) {
                    IO.LOG.ignore(e5);
                }
            }
        }

        public Job(Reader reader, Writer writer) {
            this.in = null;
            this.out = null;
            this.read = reader;
            this.write = writer;
        }
    }

    public static void close(Reader reader) {
        if (reader != null) {
            try {
                reader.close();
            } catch (IOException e4) {
                LOG.ignore(e4);
            }
        }
    }

    public static void copyThread(Reader reader, Writer writer) {
        try {
            Job job = new Job(reader, writer);
            if (Singleton.__pool.dispatch(job)) {
                return;
            }
            job.run();
        } catch (Exception e4) {
            LOG.warn(e4);
        }
    }

    public static String toString(Reader reader) throws IOException {
        StringWriter stringWriter = new StringWriter();
        copy(reader, stringWriter);
        return stringWriter.toString();
    }

    public static void close(Writer writer) {
        if (writer != null) {
            try {
                writer.close();
            } catch (IOException e4) {
                LOG.ignore(e4);
            }
        }
    }

    public static void close(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e4) {
                LOG.ignore(e4);
            }
        }
    }

    public static void copy(Reader reader, Writer writer, long j4) throws IOException {
        int i4;
        int i5;
        char[] cArr = new char[bufferSize];
        if (j4 >= 0) {
            while (j4 > 0) {
                int i6 = bufferSize;
                if (j4 < i6) {
                    i5 = reader.read(cArr, 0, (int) j4);
                } else {
                    i5 = reader.read(cArr, 0, i6);
                }
                if (i5 == -1) {
                    return;
                }
                j4 -= (long) i5;
                writer.write(cArr, 0, i5);
            }
            return;
        }
        if (writer instanceof PrintWriter) {
            PrintWriter printWriter = (PrintWriter) writer;
            while (!printWriter.checkError() && (i4 = reader.read(cArr, 0, bufferSize)) != -1) {
                writer.write(cArr, 0, i4);
            }
            return;
        }
        while (true) {
            int i7 = reader.read(cArr, 0, bufferSize);
            if (i7 == -1) {
                return;
            } else {
                writer.write(cArr, 0, i7);
            }
        }
    }

    public static void copy(File file, File file2) throws IOException {
        if (file.isDirectory()) {
            copyDir(file, file2);
        } else {
            copyFile(file, file2);
        }
    }
}
