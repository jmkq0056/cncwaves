package org.xbill.DNS;

import java.util.ArrayList;
import v2.e;

/* JADX INFO: loaded from: classes2.dex */
public class Generator {
    private long current;
    public final int dclass;
    public long end;
    public final String namePattern;
    public final Name origin;
    public final String rdataPattern;
    public long start;
    public long step;
    public final long ttl;
    public final int type;

    public Generator(long j4, long j5, long j6, String str, int i4, int i5, long j7, String str2, Name name) {
        if (j4 < 0 || j5 < 0 || j4 > j5 || j6 <= 0) {
            throw new IllegalArgumentException("invalid range specification");
        }
        if (!supportedType(i4)) {
            throw new IllegalArgumentException("unsupported type");
        }
        DClass.check(i5);
        this.start = j4;
        this.end = j5;
        this.step = j6;
        this.namePattern = str;
        this.type = i4;
        this.dclass = i5;
        this.ttl = j7;
        this.rdataPattern = str2;
        this.origin = name;
        this.current = j4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0091, code lost:
    
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0092, code lost:
    
        if (r3 == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0094, code lost:
    
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0095, code lost:
    
        r16 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0097, code lost:
    
        if (r5 != ',') goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0099, code lost:
    
        r3 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x009c, code lost:
    
        if (r3 >= r0.length) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009e, code lost:
    
        r5 = (char) (r0[r3] & 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a3, code lost:
    
        if (r5 == ',') goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a5, code lost:
    
        if (r5 != '}') goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a8, code lost:
    
        if (r5 < '0') goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00aa, code lost:
    
        if (r5 > '9') goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ac, code lost:
    
        r5 = (char) (r5 - '0');
        r16 = (r16 * 10) + ((long) r5);
        r8 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00bd, code lost:
    
        throw new org.xbill.DNS.TextParseException("invalid width");
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00be, code lost:
    
        r8 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00bf, code lost:
    
        if (r5 != ',') goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00c1, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c6, code lost:
    
        if (r8 == r0.length) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c8, code lost:
    
        r3 = (char) (r0[r8] & 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00cf, code lost:
    
        if (r3 != 'o') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00d1, code lost:
    
        r3 = false;
        r5 = 1;
        r13 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00d8, code lost:
    
        if (r3 != 'x') goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00da, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00db, code lost:
    
        r5 = 1;
        r13 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00e1, code lost:
    
        if (r3 != 'X') goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00e3, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00e7, code lost:
    
        if (r3 != 'd') goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00ef, code lost:
    
        throw new org.xbill.DNS.TextParseException("invalid base");
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00f5, code lost:
    
        throw new org.xbill.DNS.TextParseException("invalid base");
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00f6, code lost:
    
        r3 = false;
        r5 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00f8, code lost:
    
        r8 = r8 + r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00fa, code lost:
    
        if (r8 == r0.length) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00fe, code lost:
    
        if (r0[r8] != 125) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0100, code lost:
    
        r5 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x010a, code lost:
    
        throw new org.xbill.DNS.TextParseException("invalid modifiers");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String substitute(java.lang.String r19, long r20) throws org.xbill.DNS.TextParseException {
        /*
            Method dump skipped, instruction units count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xbill.DNS.Generator.substitute(java.lang.String, long):java.lang.String");
    }

    public static boolean supportedType(int i4) {
        Type.check(i4);
        return i4 == 12 || i4 == 5 || i4 == 39 || i4 == 1 || i4 == 28 || i4 == 2;
    }

    public Record[] expand() throws TextParseException {
        ArrayList arrayList = new ArrayList();
        long j4 = this.start;
        while (j4 < this.end) {
            arrayList.add(Record.fromString(Name.fromString(substitute(this.namePattern, this.current), this.origin), this.type, this.dclass, this.ttl, substitute(this.rdataPattern, this.current), this.origin));
            j4 += this.step;
        }
        return (Record[]) arrayList.toArray(new Record[arrayList.size()]);
    }

    public Record nextRecord() throws TextParseException {
        long j4 = this.current;
        if (j4 > this.end) {
            return null;
        }
        Name nameFromString = Name.fromString(substitute(this.namePattern, j4), this.origin);
        String strSubstitute = substitute(this.rdataPattern, this.current);
        this.current += this.step;
        return Record.fromString(nameFromString, this.type, this.dclass, this.ttl, strSubstitute, this.origin);
    }

    public String toString() {
        StringBuffer stringBufferA = e.a("$GENERATE ");
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.start);
        stringBuffer.append("-");
        stringBuffer.append(this.end);
        stringBufferA.append(stringBuffer.toString());
        if (this.step > 1) {
            StringBuffer stringBufferA2 = e.a("/");
            stringBufferA2.append(this.step);
            stringBufferA.append(stringBufferA2.toString());
        }
        stringBufferA.append(" ");
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(this.namePattern);
        stringBuffer2.append(" ");
        stringBufferA.append(stringBuffer2.toString());
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(this.ttl);
        stringBuffer3.append(" ");
        stringBufferA.append(stringBuffer3.toString());
        if (this.dclass != 1 || !Options.check("noPrintIN")) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append(DClass.string(this.dclass));
            stringBuffer4.append(" ");
            stringBufferA.append(stringBuffer4.toString());
        }
        StringBuffer stringBuffer5 = new StringBuffer();
        stringBuffer5.append(Type.string(this.type));
        stringBuffer5.append(" ");
        stringBufferA.append(stringBuffer5.toString());
        StringBuffer stringBuffer6 = new StringBuffer();
        stringBuffer6.append(this.rdataPattern);
        stringBuffer6.append(" ");
        stringBufferA.append(stringBuffer6.toString());
        return stringBufferA.toString();
    }
}
