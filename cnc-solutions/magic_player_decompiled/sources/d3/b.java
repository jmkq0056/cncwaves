package d3;

import b3.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;
import r2.e;
import x2.j;
import x2.o;
import x2.p;
import y2.i;

/* JADX INFO: loaded from: classes2.dex */
public class b implements j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static FilenameFilter f1521d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public File f1522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public File f1523b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public e f1524c = null;

    public b(String str) {
        this.f1522a = new File(str);
    }

    public final void B() throws p {
        if (this.f1523b == null) {
            throw new p();
        }
    }

    public final File[] C() throws p {
        B();
        File file = this.f1523b;
        if (f1521d == null) {
            f1521d = new d(".msg");
        }
        File[] fileArrListFiles = file.listFiles(f1521d);
        if (fileArrListFiles != null) {
            return fileArrListFiles;
        }
        throw new p();
    }

    public final void D(File file) throws p {
        File[] fileArrListFiles = file.listFiles(new c(".bup"));
        if (fileArrListFiles == null) {
            throw new p();
        }
        for (File file2 : fileArrListFiles) {
            File file3 = new File(file, file2.getName().substring(0, file2.getName().length() - 4));
            if (!file2.renameTo(file3)) {
                file3.delete();
                file2.renameTo(file3);
            }
        }
    }

    @Override // x2.j
    public void clear() throws p {
        B();
        for (File file : C()) {
            file.delete();
        }
        this.f1523b.delete();
    }

    @Override // x2.j, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            e eVar = this.f1524c;
            if (eVar != null) {
                eVar.e();
            }
            if (C().length == 0) {
                this.f1523b.delete();
            }
            this.f1523b = null;
        }
    }

    @Override // x2.j
    public void g(String str, o oVar) throws p {
        B();
        File file = new File(this.f1523b, String.valueOf(str) + ".msg");
        File file2 = new File(this.f1523b, android.support.v4.media.b.a(new StringBuilder(String.valueOf(str)), ".msg", ".bup"));
        if (file.exists() && !file.renameTo(file2)) {
            file2.delete();
            file.renameTo(file2);
        }
        try {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                h hVar = (h) oVar;
                fileOutputStream.write(hVar.e(), 0, hVar.f());
                if (hVar.c() != null) {
                    fileOutputStream.write(hVar.c(), 0, oVar.a());
                }
                fileOutputStream.getFD().sync();
                fileOutputStream.close();
                if (file2.exists()) {
                    file2.delete();
                }
            } catch (IOException e4) {
                throw new p(e4);
            }
        } finally {
            if (file2.exists() && !file2.renameTo(file)) {
                file.delete();
                file2.renameTo(file);
            }
        }
    }

    @Override // x2.j
    public o get(String str) throws p {
        B();
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(this.f1523b, String.valueOf(str) + ".msg"));
            int iAvailable = fileInputStream.available();
            byte[] bArr = new byte[iAvailable];
            for (int i4 = 0; i4 < iAvailable; i4 += fileInputStream.read(bArr, i4, iAvailable - i4)) {
            }
            fileInputStream.close();
            return new i(str, bArr, 0, iAvailable, null, 0, 0);
        } catch (IOException e4) {
            throw new p(e4);
        }
    }

    @Override // x2.j
    public void i(String str, String str2) throws p {
        if (this.f1522a.exists() && !this.f1522a.isDirectory()) {
            throw new p();
        }
        if (!this.f1522a.exists() && !this.f1522a.mkdirs()) {
            throw new p();
        }
        if (!this.f1522a.canWrite()) {
            throw new p();
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i4 = 0;
        while (true) {
            boolean z3 = true;
            if (i4 >= str.length()) {
                break;
            }
            char cCharAt = str.charAt(i4);
            if (!Character.isJavaIdentifierPart(cCharAt) && cCharAt != '-') {
                z3 = false;
            }
            if (z3) {
                stringBuffer.append(cCharAt);
            }
            i4++;
        }
        stringBuffer.append("-");
        for (int i5 = 0; i5 < str2.length(); i5++) {
            char cCharAt2 = str2.charAt(i5);
            if (Character.isJavaIdentifierPart(cCharAt2) || cCharAt2 == '-') {
                stringBuffer.append(cCharAt2);
            }
        }
        synchronized (this) {
            if (this.f1523b == null) {
                File file = new File(this.f1522a, stringBuffer.toString());
                this.f1523b = file;
                if (!file.exists()) {
                    this.f1523b.mkdir();
                }
            }
            try {
                e eVar = this.f1524c;
                if (eVar != null) {
                    eVar.e();
                }
                this.f1524c = new e(this.f1523b, ".lck");
            } catch (Exception unused) {
            }
            D(this.f1523b);
        }
    }

    @Override // x2.j
    public void remove(String str) throws p {
        B();
        File file = new File(this.f1523b, String.valueOf(str) + ".msg");
        if (file.exists()) {
            file.delete();
        }
    }

    @Override // x2.j
    public boolean v(String str) throws p {
        B();
        return new File(this.f1523b, String.valueOf(str) + ".msg").exists();
    }

    @Override // x2.j
    public Enumeration<String> x() throws p {
        B();
        File[] fileArrC = C();
        Vector vector = new Vector(fileArrC.length);
        for (File file : fileArrC) {
            vector.addElement(file.getName().substring(0, r5.length() - 4));
        }
        return vector.elements();
    }
}
