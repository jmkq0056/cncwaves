package org.eclipse.jetty.util;

import g2.k;
import j2.q;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class MultiPartInputStream {
    private static final Logger LOG = Log.getLogger((Class<?>) MultiPartInputStream.class);
    public static final k __DEFAULT_MULTIPART_CONFIG = new k(System.getProperty("java.io.tmpdir"));
    public k _config;
    public String _contentType;
    public File _contextTmpDir;
    public boolean _deleteOnExit;
    public InputStream _in;
    public MultiMap<String> _parts;
    public File _tmpDir;

    public static class Base64InputStream extends InputStream {
        public byte[] _buffer;
        public ReadLineInputStream _in;
        public String _line;
        public int _pos;

        public Base64InputStream(ReadLineInputStream readLineInputStream) {
            this._in = readLineInputStream;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            byte[] bArr = this._buffer;
            if (bArr == null || this._pos >= bArr.length) {
                String line = this._in.readLine();
                this._line = line;
                if (line == null) {
                    return -1;
                }
                if (line.startsWith("--")) {
                    this._buffer = (this._line + "\r\n").getBytes();
                } else if (this._line.length() == 0) {
                    this._buffer = "\r\n".getBytes();
                } else {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(((this._line.length() * 4) / 3) + 2);
                    B64Code.decode(this._line, byteArrayOutputStream);
                    byteArrayOutputStream.write(13);
                    byteArrayOutputStream.write(10);
                    this._buffer = byteArrayOutputStream.toByteArray();
                }
                this._pos = 0;
            }
            byte[] bArr2 = this._buffer;
            int i4 = this._pos;
            this._pos = i4 + 1;
            return bArr2[i4];
        }
    }

    public MultiPartInputStream(InputStream inputStream, String str, k kVar, File file) {
        this._in = new ReadLineInputStream(inputStream);
        this._contentType = str;
        this._config = kVar;
        this._contextTmpDir = file;
        if (file == null) {
            this._contextTmpDir = new File(System.getProperty("java.io.tmpdir"));
        }
        if (this._config == null) {
            this._config = new k(this._contextTmpDir.getAbsolutePath());
        }
    }

    private String filenameValue(String str) {
        String strTrim = str.substring(str.indexOf(61) + 1).trim();
        if (!strTrim.matches(".??[a-z,A-Z]\\:\\\\[^\\\\].*")) {
            return QuotedStringTokenizer.unquoteOnly(strTrim, true);
        }
        char cCharAt = strTrim.charAt(0);
        if (cCharAt == '\"' || cCharAt == '\'') {
            strTrim = strTrim.substring(1);
        }
        char cCharAt2 = strTrim.charAt(strTrim.length() - 1);
        return (cCharAt2 == '\"' || cCharAt2 == '\'') ? strTrim.substring(0, strTrim.length() - 1) : strTrim;
    }

    private String value(String str, boolean z3) {
        return QuotedStringTokenizer.unquoteOnly(str.substring(str.indexOf(61) + 1).trim());
    }

    public void deleteParts() {
        Collection<q> parsedParts = getParsedParts();
        MultiException multiException = new MultiException();
        Iterator<q> it = parsedParts.iterator();
        while (it.hasNext()) {
            try {
                ((MultiPart) it.next()).cleanUp();
            } catch (Exception e4) {
                multiException.add(e4);
            }
        }
        this._parts.clear();
        multiException.ifExceptionThrowMulti();
    }

    public Collection<q> getParsedParts() {
        MultiMap<String> multiMap = this._parts;
        if (multiMap == null) {
            return Collections.emptyList();
        }
        Collection<Object> collectionValues = multiMap.values();
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = collectionValues.iterator();
        while (it.hasNext()) {
            arrayList.addAll(LazyList.getList(it.next(), false));
        }
        return arrayList;
    }

    public q getPart(String str) throws IOException {
        parse();
        return (q) this._parts.getValue(str, 0);
    }

    public Collection<q> getParts() throws IOException {
        parse();
        Collection<Object> collectionValues = this._parts.values();
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = collectionValues.iterator();
        while (it.hasNext()) {
            arrayList.addAll(LazyList.getList(it.next(), false));
        }
        return arrayList;
    }

    public boolean isDeleteOnExit() {
        return this._deleteOnExit;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01bb, code lost:
    
        r6.write(r5, 0, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01bf, code lost:
    
        r6.write(r7);
        r7 = -2;
        r12 = -1;
        r8 = false;
        r10 = -2;
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01c8, code lost:
    
        if (r7 != 13) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01ca, code lost:
    
        r1.mark(1);
        r10 = r1.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01d1, code lost:
    
        if (r10 == 10) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01d3, code lost:
    
        r1.reset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01d6, code lost:
    
        r10 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01d7, code lost:
    
        if (r12 <= 0) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01dc, code lost:
    
        if (r12 < (r5.length - 2)) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01e0, code lost:
    
        if (r12 != (r5.length - 1)) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01e2, code lost:
    
        if (r8 == false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01e4, code lost:
    
        r6.write(13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01e7, code lost:
    
        if (r9 == false) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01e9, code lost:
    
        r6.write(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01ec, code lost:
    
        r6.write(r5, 0, r12);
        r12 = -1;
        r8 = false;
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01f3, code lost:
    
        if (r12 > 0) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01f6, code lost:
    
        if (r7 != (-1)) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01f9, code lost:
    
        if (r8 == false) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01fb, code lost:
    
        r6.write(13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01fe, code lost:
    
        if (r9 == false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0200, code lost:
    
        r6.write(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0203, code lost:
    
        if (r7 != 13) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0205, code lost:
    
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0207, code lost:
    
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0208, code lost:
    
        if (r7 == 10) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x020a, code lost:
    
        if (r10 != 10) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x020d, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0210, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0212, code lost:
    
        if (r10 != 10) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0214, code lost:
    
        r10 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0216, code lost:
    
        r7 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x021a, code lost:
    
        if (r12 != r5.length) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x021c, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0220, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0223, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0224, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0227, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x022f, code lost:
    
        throw new java.io.IOException("Missing content-disposition");
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0220, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0103, code lost:
    
        if (r8 == null) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0105, code lost:
    
        r11 = new org.eclipse.jetty.util.QuotedStringTokenizer(r8, ";", r6, true);
        r6 = false;
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0110, code lost:
    
        if (r11.hasMoreTokens() == false) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0112, code lost:
    
        r12 = r11.nextToken().trim();
        r13 = r12.toLowerCase(java.util.Locale.ENGLISH);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0126, code lost:
    
        if (r12.startsWith("form-data") == false) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0128, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0130, code lost:
    
        if (r13.startsWith("name=") == false) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0132, code lost:
    
        r7 = value(r12, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x013d, code lost:
    
        if (r13.startsWith("filename=") == false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x013f, code lost:
    
        r8 = filenameValue(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0144, code lost:
    
        if (r6 != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0148, code lost:
    
        if (r7 != null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x014c, code lost:
    
        r6 = new org.eclipse.jetty.util.MultiPartInputStream.MultiPart(r15, r7, r8);
        r6.setHeaders(r1);
        r6.setContentType(r9);
        r15._parts.add(r7, r6);
        r6.open();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0165, code lost:
    
        if ("base64".equalsIgnoreCase(r10) == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0167, code lost:
    
        r1 = new org.eclipse.jetty.util.MultiPartInputStream.Base64InputStream((org.eclipse.jetty.util.ReadLineInputStream) r15._in);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0177, code lost:
    
        if ("quoted-printable".equalsIgnoreCase(r10) == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0179, code lost:
    
        r1 = new org.eclipse.jetty.util.MultiPartInputStream.AnonymousClass1(r15, r15._in);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0181, code lost:
    
        r1 = r15._in;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0183, code lost:
    
        r7 = -2;
        r8 = false;
        r9 = false;
        r10 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0187, code lost:
    
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0189, code lost:
    
        if (r10 == r7) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x018b, code lost:
    
        r7 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x018d, code lost:
    
        r7 = r1.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0195, code lost:
    
        if (r7 == (-1)) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0197, code lost:
    
        java.util.Objects.requireNonNull(r15._config);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x019c, code lost:
    
        if (r7 == 13) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x019e, code lost:
    
        if (r7 != 10) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01a1, code lost:
    
        if (r12 < 0) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01a4, code lost:
    
        if (r12 >= r5.length) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01a8, code lost:
    
        if (r7 != r5[r12]) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01aa, code lost:
    
        r12 = r12 + 1;
        r7 = -2;
        r10 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01af, code lost:
    
        if (r8 == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01b1, code lost:
    
        r6.write(13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01b4, code lost:
    
        if (r9 == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01b6, code lost:
    
        r6.write(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01b9, code lost:
    
        if (r12 <= 0) goto L101;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void parse() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 673
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.MultiPartInputStream.parse():void");
    }

    public void setDeleteOnExit(boolean z3) {
        this._deleteOnExit = z3;
    }

    public class MultiPart implements q {
        public ByteArrayOutputStream2 _bout;
        public String _contentType;
        public File _file;
        public String _filename;
        public MultiMap<String> _headers;
        public String _name;
        public OutputStream _out;
        public long _size = 0;
        public boolean _temporary = true;

        public MultiPart(String str, String str2) {
            this._name = str;
            this._filename = str2;
        }

        public void cleanUp() {
            File file;
            if (this._temporary && (file = this._file) != null && file.exists()) {
                this._file.delete();
            }
        }

        public void close() throws IOException {
            this._out.close();
        }

        public void createFile() throws IOException {
            OutputStream outputStream;
            File fileCreateTempFile = File.createTempFile("MultiPart", "", MultiPartInputStream.this._tmpDir);
            this._file = fileCreateTempFile;
            fileCreateTempFile.setReadable(false, false);
            this._file.setReadable(true, true);
            if (MultiPartInputStream.this._deleteOnExit) {
                this._file.deleteOnExit();
            }
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(this._file));
            if (this._size > 0 && (outputStream = this._out) != null) {
                outputStream.flush();
                this._bout.writeTo(bufferedOutputStream);
                this._out.close();
                this._bout = null;
            }
            this._out = bufferedOutputStream;
        }

        public void delete() {
            File file = this._file;
            if (file == null || !file.exists()) {
                return;
            }
            this._file.delete();
        }

        public byte[] getBytes() {
            ByteArrayOutputStream2 byteArrayOutputStream2 = this._bout;
            if (byteArrayOutputStream2 != null) {
                return byteArrayOutputStream2.toByteArray();
            }
            return null;
        }

        public String getContentDispositionFilename() {
            return this._filename;
        }

        public String getContentType() {
            return this._contentType;
        }

        public File getFile() {
            return this._file;
        }

        public String getHeader(String str) {
            if (str == null) {
                return null;
            }
            return (String) this._headers.getValue(str.toLowerCase(Locale.ENGLISH), 0);
        }

        public Collection<String> getHeaderNames() {
            return this._headers.keySet();
        }

        public Collection<String> getHeaders(String str) {
            return this._headers.getValues(str);
        }

        public InputStream getInputStream() {
            return this._file != null ? new BufferedInputStream(new FileInputStream(this._file)) : new ByteArrayInputStream(this._bout.getBuf(), 0, this._bout.size());
        }

        public String getName() {
            return this._name;
        }

        public long getSize() {
            return this._size;
        }

        public void open() throws IOException {
            String str = this._filename;
            if (str != null && str.trim().length() > 0) {
                createFile();
                return;
            }
            ByteArrayOutputStream2 byteArrayOutputStream2 = new ByteArrayOutputStream2();
            this._bout = byteArrayOutputStream2;
            this._out = byteArrayOutputStream2;
        }

        public void setContentType(String str) {
            this._contentType = str;
        }

        public void setHeaders(MultiMap<String> multiMap) {
            this._headers = multiMap;
        }

        public void write(int i4) throws IOException {
            Objects.requireNonNull(MultiPartInputStream.this._config);
            Objects.requireNonNull(MultiPartInputStream.this._config);
            this._out.write(i4);
            this._size++;
        }

        public void write(byte[] bArr, int i4, int i5) throws IOException {
            Objects.requireNonNull(MultiPartInputStream.this._config);
            Objects.requireNonNull(MultiPartInputStream.this._config);
            this._out.write(bArr, i4, i5);
            this._size += (long) i5;
        }

        public void write(String str) throws Throwable {
            BufferedOutputStream bufferedOutputStream;
            if (this._file == null) {
                this._temporary = false;
                this._file = new File(MultiPartInputStream.this._tmpDir, str);
                try {
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(this._file));
                    try {
                        this._bout.writeTo(bufferedOutputStream);
                        bufferedOutputStream.flush();
                        bufferedOutputStream.close();
                        this._bout = null;
                    } catch (Throwable th) {
                        th = th;
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.close();
                        }
                        this._bout = null;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedOutputStream = null;
                }
            } else {
                this._temporary = false;
                File file = new File(MultiPartInputStream.this._tmpDir, str);
                if (this._file.renameTo(file)) {
                    this._file = file;
                }
            }
        }
    }
}
