package w0;

import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.eclipse.jetty.util.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Closeable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Pattern f3781o = Pattern.compile("[a-z0-9_-]{1,120}");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Charset f3782p = Charset.forName("US-ASCII");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final OutputStream f3783q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f3784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f3785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f3786c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final File f3787d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f3789f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f3790g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Writer f3792i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3794k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f3791h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinkedHashMap<String, d> f3793j = new LinkedHashMap<>(0, 0.75f, true);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f3795l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ThreadPoolExecutor f3796m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Callable<Void> f3797n = new a();

    public class a implements Callable<Void> {
        public a() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            synchronized (e.this) {
                e eVar = e.this;
                if (eVar.f3792i == null) {
                    return null;
                }
                eVar.Q();
                if (e.this.I()) {
                    e.this.N();
                    e.this.f3794k = 0;
                }
                return null;
            }
        }
    }

    public class b extends OutputStream {
        @Override // java.io.OutputStream
        public void write(int i4) {
        }
    }

    public final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f3804a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long[] f3805b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f3806c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public c f3807d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f3808e;

        public d(String str, a aVar) {
            this.f3804a = str;
            this.f3805b = new long[e.this.f3790g];
        }

        public File a(int i4) {
            return new File(e.this.f3784a, this.f3804a + "." + i4);
        }

        public File b(int i4) {
            return new File(e.this.f3784a, this.f3804a + "." + i4 + ".tmp");
        }

        public String c() {
            StringBuilder sb = new StringBuilder();
            for (long j4 : this.f3805b) {
                sb.append(' ');
                sb.append(j4);
            }
            return sb.toString();
        }

        public final IOException d(String[] strArr) throws IOException {
            StringBuilder sbA = android.support.v4.media.f.a("unexpected journal line: ");
            sbA.append(Arrays.toString(strArr));
            throw new IOException(sbA.toString());
        }
    }

    /* JADX INFO: renamed from: w0.e$e, reason: collision with other inner class name */
    public final class C0050e implements Closeable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final InputStream[] f3810a;

        public C0050e(e eVar, String str, long j4, InputStream[] inputStreamArr, long[] jArr, a aVar) {
            this.f3810a = inputStreamArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f3810a) {
                e.D(inputStream);
            }
        }
    }

    public static class f implements Closeable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final InputStream f3811a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Charset f3812b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public byte[] f3813c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3814d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3815e;

        public class a extends ByteArrayOutputStream {
            public a(int i4) {
                super(i4);
            }

            @Override // java.io.ByteArrayOutputStream
            public String toString() {
                int i4 = ((ByteArrayOutputStream) this).count;
                if (i4 > 0 && ((ByteArrayOutputStream) this).buf[i4 - 1] == 13) {
                    i4--;
                }
                try {
                    return new String(((ByteArrayOutputStream) this).buf, 0, i4, f.this.f3812b.name());
                } catch (UnsupportedEncodingException e4) {
                    throw new AssertionError(e4);
                }
            }
        }

        public f(InputStream inputStream, Charset charset) {
            if (charset == null) {
                throw null;
            }
            if (!charset.equals(e.f3782p)) {
                throw new IllegalArgumentException("Unsupported encoding");
            }
            this.f3811a = inputStream;
            this.f3812b = charset;
            this.f3813c = new byte[8192];
        }

        public final void B() throws IOException {
            InputStream inputStream = this.f3811a;
            byte[] bArr = this.f3813c;
            int i4 = inputStream.read(bArr, 0, bArr.length);
            if (i4 == -1) {
                throw new EOFException();
            }
            this.f3814d = 0;
            this.f3815e = i4;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x002b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String C() {
            /*
                r7 = this;
                java.io.InputStream r0 = r7.f3811a
                monitor-enter(r0)
                byte[] r1 = r7.f3813c     // Catch: java.lang.Throwable -> L87
                if (r1 == 0) goto L7f
                int r1 = r7.f3814d     // Catch: java.lang.Throwable -> L87
                int r2 = r7.f3815e     // Catch: java.lang.Throwable -> L87
                if (r1 < r2) goto L10
                r7.B()     // Catch: java.lang.Throwable -> L87
            L10:
                int r1 = r7.f3814d     // Catch: java.lang.Throwable -> L87
            L12:
                int r2 = r7.f3815e     // Catch: java.lang.Throwable -> L87
                r3 = 10
                if (r1 == r2) goto L41
                byte[] r2 = r7.f3813c     // Catch: java.lang.Throwable -> L87
                r4 = r2[r1]     // Catch: java.lang.Throwable -> L87
                if (r4 != r3) goto L3e
                int r3 = r7.f3814d     // Catch: java.lang.Throwable -> L87
                if (r1 == r3) goto L2b
                int r4 = r1 + (-1)
                r5 = r2[r4]     // Catch: java.lang.Throwable -> L87
                r6 = 13
                if (r5 != r6) goto L2b
                goto L2c
            L2b:
                r4 = r1
            L2c:
                java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> L87
                int r4 = r4 - r3
                java.nio.charset.Charset r6 = r7.f3812b     // Catch: java.lang.Throwable -> L87
                java.lang.String r6 = r6.name()     // Catch: java.lang.Throwable -> L87
                r5.<init>(r2, r3, r4, r6)     // Catch: java.lang.Throwable -> L87
                int r1 = r1 + 1
                r7.f3814d = r1     // Catch: java.lang.Throwable -> L87
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L87
                return r5
            L3e:
                int r1 = r1 + 1
                goto L12
            L41:
                w0.e$f$a r1 = new w0.e$f$a     // Catch: java.lang.Throwable -> L87
                int r2 = r7.f3815e     // Catch: java.lang.Throwable -> L87
                int r4 = r7.f3814d     // Catch: java.lang.Throwable -> L87
                int r2 = r2 - r4
                int r2 = r2 + 80
                r1.<init>(r2)     // Catch: java.lang.Throwable -> L87
            L4d:
                byte[] r2 = r7.f3813c     // Catch: java.lang.Throwable -> L87
                int r4 = r7.f3814d     // Catch: java.lang.Throwable -> L87
                int r5 = r7.f3815e     // Catch: java.lang.Throwable -> L87
                int r5 = r5 - r4
                r1.write(r2, r4, r5)     // Catch: java.lang.Throwable -> L87
                r2 = -1
                r7.f3815e = r2     // Catch: java.lang.Throwable -> L87
                r7.B()     // Catch: java.lang.Throwable -> L87
                int r2 = r7.f3814d     // Catch: java.lang.Throwable -> L87
            L5f:
                int r4 = r7.f3815e     // Catch: java.lang.Throwable -> L87
                if (r2 == r4) goto L4d
                byte[] r4 = r7.f3813c     // Catch: java.lang.Throwable -> L87
                r5 = r4[r2]     // Catch: java.lang.Throwable -> L87
                if (r5 != r3) goto L7c
                int r3 = r7.f3814d     // Catch: java.lang.Throwable -> L87
                if (r2 == r3) goto L72
                int r5 = r2 - r3
                r1.write(r4, r3, r5)     // Catch: java.lang.Throwable -> L87
            L72:
                int r2 = r2 + 1
                r7.f3814d = r2     // Catch: java.lang.Throwable -> L87
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L87
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L87
                return r1
            L7c:
                int r2 = r2 + 1
                goto L5f
            L7f:
                java.io.IOException r1 = new java.io.IOException     // Catch: java.lang.Throwable -> L87
                java.lang.String r2 = "LineReader is closed"
                r1.<init>(r2)     // Catch: java.lang.Throwable -> L87
                throw r1     // Catch: java.lang.Throwable -> L87
            L87:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L87
                goto L8b
            L8a:
                throw r1
            L8b:
                goto L8a
            */
            throw new UnsupportedOperationException("Method not decompiled: w0.e.f.C():java.lang.String");
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (this.f3811a) {
                if (this.f3813c != null) {
                    this.f3813c = null;
                    this.f3811a.close();
                }
            }
        }
    }

    static {
        Charset.forName(StringUtil.__UTF8);
        f3783q = new b();
    }

    public e(File file, int i4, int i5, long j4) {
        this.f3784a = file;
        this.f3788e = i4;
        this.f3785b = new File(file, "journal");
        this.f3786c = new File(file, "journal.tmp");
        this.f3787d = new File(file, "journal.bkp");
        this.f3790g = i5;
        this.f3789f = j4;
    }

    public static void B(e eVar, c cVar, boolean z3) {
        synchronized (eVar) {
            d dVar = cVar.f3799a;
            if (dVar.f3807d != cVar) {
                throw new IllegalStateException();
            }
            if (z3 && !dVar.f3806c) {
                for (int i4 = 0; i4 < eVar.f3790g; i4++) {
                    if (!cVar.f3800b[i4]) {
                        cVar.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i4);
                    }
                    if (!dVar.b(i4).exists()) {
                        cVar.a();
                        return;
                    }
                }
            }
            for (int i5 = 0; i5 < eVar.f3790g; i5++) {
                File fileB = dVar.b(i5);
                if (!z3) {
                    F(fileB);
                } else if (fileB.exists()) {
                    File fileA = dVar.a(i5);
                    fileB.renameTo(fileA);
                    long j4 = dVar.f3805b[i5];
                    long length = fileA.length();
                    dVar.f3805b[i5] = length;
                    eVar.f3791h = (eVar.f3791h - j4) + length;
                }
            }
            eVar.f3794k++;
            dVar.f3807d = null;
            if (dVar.f3806c || z3) {
                dVar.f3806c = true;
                eVar.f3792i.write("CLEAN " + dVar.f3804a + dVar.c() + '\n');
                if (z3) {
                    long j5 = eVar.f3795l;
                    eVar.f3795l = 1 + j5;
                    dVar.f3808e = j5;
                }
            } else {
                eVar.f3793j.remove(dVar.f3804a);
                eVar.f3792i.write("REMOVE " + dVar.f3804a + '\n');
            }
            eVar.f3792i.flush();
            if (eVar.f3791h > eVar.f3789f || eVar.I()) {
                eVar.f3796m.submit(eVar.f3797n);
            }
        }
    }

    public static void D(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e4) {
                throw e4;
            } catch (Exception unused) {
            }
        }
    }

    public static void E(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                E(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }

    public static void F(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static e J(File file, int i4, int i5, long j4) throws IOException {
        if (j4 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i5 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                P(file2, file3, false);
            }
        }
        e eVar = new e(file, i4, i5, j4);
        if (eVar.f3785b.exists()) {
            try {
                eVar.L();
                eVar.K();
                return eVar;
            } catch (IOException e4) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e4.getMessage() + ", removing");
                eVar.close();
                E(eVar.f3784a);
            }
        }
        file.mkdirs();
        e eVar2 = new e(file, i4, i5, j4);
        eVar2.N();
        return eVar2;
    }

    public static void P(File file, File file2, boolean z3) throws IOException {
        if (z3) {
            F(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public final void C() {
        if (this.f3792i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public c G(String str) {
        synchronized (this) {
            C();
            R(str);
            d dVar = this.f3793j.get(str);
            if (dVar == null) {
                dVar = new d(str, null);
                this.f3793j.put(str, dVar);
            } else if (dVar.f3807d != null) {
                return null;
            }
            c cVar = new c(dVar, null);
            dVar.f3807d = cVar;
            this.f3792i.write("DIRTY " + str + '\n');
            this.f3792i.flush();
            return cVar;
        }
    }

    public synchronized C0050e H(String str) {
        C();
        R(str);
        d dVar = this.f3793j.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.f3806c) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.f3790g];
        for (int i4 = 0; i4 < this.f3790g; i4++) {
            try {
                inputStreamArr[i4] = new FileInputStream(dVar.a(i4));
            } catch (FileNotFoundException unused) {
                for (int i5 = 0; i5 < this.f3790g && inputStreamArr[i5] != null; i5++) {
                    D(inputStreamArr[i5]);
                }
                return null;
            }
        }
        this.f3794k++;
        this.f3792i.append((CharSequence) ("READ " + str + '\n'));
        if (I()) {
            this.f3796m.submit(this.f3797n);
        }
        return new C0050e(this, str, dVar.f3808e, inputStreamArr, dVar.f3805b, null);
    }

    public final boolean I() {
        int i4 = this.f3794k;
        return i4 >= 2000 && i4 >= this.f3793j.size();
    }

    public final void K() throws IOException {
        F(this.f3786c);
        Iterator<d> it = this.f3793j.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i4 = 0;
            if (next.f3807d == null) {
                while (i4 < this.f3790g) {
                    this.f3791h += next.f3805b[i4];
                    i4++;
                }
            } else {
                next.f3807d = null;
                while (i4 < this.f3790g) {
                    F(next.a(i4));
                    F(next.b(i4));
                    i4++;
                }
                it.remove();
            }
        }
    }

    public final void L() {
        f fVar = new f(new FileInputStream(this.f3785b), f3782p);
        try {
            String strC = fVar.C();
            String strC2 = fVar.C();
            String strC3 = fVar.C();
            String strC4 = fVar.C();
            String strC5 = fVar.C();
            if (!"libcore.io.DiskLruCache".equals(strC) || !"1".equals(strC2) || !Integer.toString(this.f3788e).equals(strC3) || !Integer.toString(this.f3790g).equals(strC4) || !"".equals(strC5)) {
                throw new IOException("unexpected journal header: [" + strC + ", " + strC2 + ", " + strC4 + ", " + strC5 + "]");
            }
            int i4 = 0;
            while (true) {
                try {
                    M(fVar.C());
                    i4++;
                } catch (EOFException unused) {
                    this.f3794k = i4 - this.f3793j.size();
                    if (fVar.f3815e == -1) {
                        N();
                    } else {
                        this.f3792i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3785b, true), f3782p));
                    }
                    D(fVar);
                    return;
                }
            }
        } catch (Throwable th) {
            D(fVar);
            throw th;
        }
    }

    public final void M(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException(androidx.appcompat.view.a.a("unexpected journal line: ", str));
        }
        int i4 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i4);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i4);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.f3793j.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i4, iIndexOf2);
        }
        d dVar = this.f3793j.get(strSubstring);
        if (dVar == null) {
            dVar = new d(strSubstring, null);
            this.f3793j.put(strSubstring, dVar);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                dVar.f3807d = new c(dVar, null);
                return;
            } else {
                if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException(androidx.appcompat.view.a.a("unexpected journal line: ", str));
                }
                return;
            }
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        dVar.f3806c = true;
        dVar.f3807d = null;
        if (strArrSplit.length != e.this.f3790g) {
            dVar.d(strArrSplit);
            throw null;
        }
        for (int i5 = 0; i5 < strArrSplit.length; i5++) {
            try {
                dVar.f3805b[i5] = Long.parseLong(strArrSplit[i5]);
            } catch (NumberFormatException unused) {
                dVar.d(strArrSplit);
                throw null;
            }
        }
    }

    public final synchronized void N() {
        Writer writer = this.f3792i;
        if (writer != null) {
            writer.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3786c), f3782p));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f3788e));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f3790g));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (d dVar : this.f3793j.values()) {
                if (dVar.f3807d != null) {
                    bufferedWriter.write("DIRTY " + dVar.f3804a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + dVar.f3804a + dVar.c() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f3785b.exists()) {
                P(this.f3785b, this.f3787d, true);
            }
            P(this.f3786c, this.f3785b, false);
            this.f3787d.delete();
            this.f3792i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3785b, true), f3782p));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    public synchronized boolean O(String str) {
        C();
        R(str);
        d dVar = this.f3793j.get(str);
        if (dVar != null && dVar.f3807d == null) {
            for (int i4 = 0; i4 < this.f3790g; i4++) {
                File fileA = dVar.a(i4);
                if (fileA.exists() && !fileA.delete()) {
                    throw new IOException("failed to delete " + fileA);
                }
                long j4 = this.f3791h;
                long[] jArr = dVar.f3805b;
                this.f3791h = j4 - jArr[i4];
                jArr[i4] = 0;
            }
            this.f3794k++;
            this.f3792i.append((CharSequence) ("REMOVE " + str + '\n'));
            this.f3793j.remove(str);
            if (I()) {
                this.f3796m.submit(this.f3797n);
            }
            return true;
        }
        return false;
    }

    public final void Q() {
        while (this.f3791h > this.f3789f) {
            O(this.f3793j.entrySet().iterator().next().getKey());
        }
    }

    public final void R(String str) {
        if (!f3781o.matcher(str).matches()) {
            throw new IllegalArgumentException(android.support.v4.media.h.a("keys must match regex [a-z0-9_-]{1,120}: \"", str, "\""));
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (this.f3792i == null) {
            return;
        }
        Iterator it = new ArrayList(this.f3793j.values()).iterator();
        while (it.hasNext()) {
            c cVar = ((d) it.next()).f3807d;
            if (cVar != null) {
                cVar.a();
            }
        }
        Q();
        this.f3792i.close();
        this.f3792i = null;
    }

    public final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final d f3799a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean[] f3800b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f3801c;

        public c(d dVar, a aVar) {
            this.f3799a = dVar;
            this.f3800b = dVar.f3806c ? null : new boolean[e.this.f3790g];
        }

        public void a() {
            e.B(e.this, this, false);
        }

        public OutputStream b(int i4) {
            FileOutputStream fileOutputStream;
            a aVar;
            if (i4 >= 0) {
                e eVar = e.this;
                if (i4 < eVar.f3790g) {
                    synchronized (eVar) {
                        d dVar = this.f3799a;
                        if (dVar.f3807d != this) {
                            throw new IllegalStateException();
                        }
                        if (!dVar.f3806c) {
                            this.f3800b[i4] = true;
                        }
                        File fileB = dVar.b(i4);
                        try {
                            fileOutputStream = new FileOutputStream(fileB);
                        } catch (FileNotFoundException unused) {
                            e.this.f3784a.mkdirs();
                            try {
                                fileOutputStream = new FileOutputStream(fileB);
                            } catch (FileNotFoundException unused2) {
                                return e.f3783q;
                            }
                        }
                        aVar = new a(fileOutputStream, null);
                    }
                    return aVar;
                }
            }
            StringBuilder sbA = android.support.v4.media.a.a("Expected index ", i4, " to be greater than 0 and less than the maximum value count of ");
            sbA.append(e.this.f3790g);
            throw new IllegalArgumentException(sbA.toString());
        }

        public class a extends FilterOutputStream {
            public a(OutputStream outputStream, a aVar) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    c.this.f3801c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    c.this.f3801c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i4) {
                try {
                    ((FilterOutputStream) this).out.write(i4);
                } catch (IOException unused) {
                    c.this.f3801c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i4, int i5) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i4, i5);
                } catch (IOException unused) {
                    c.this.f3801c = true;
                }
            }
        }
    }
}
