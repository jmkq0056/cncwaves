package org.xbill.DNS;

import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.xbill.DNS.Tokenizer;
import v2.e;

/* JADX INFO: loaded from: classes2.dex */
public class Master {
    private int currentDClass;
    private long currentTTL;
    private int currentType;
    private long defaultTTL;
    private File file;
    private Generator generator;
    private List generators;
    private Master included;
    private Record last;
    private boolean needSOATTL;
    private boolean noExpandGenerate;
    private Name origin;
    private Tokenizer st;

    public Master(File file, Name name, long j4) {
        this.last = null;
        this.included = null;
        if (name != null && !name.isAbsolute()) {
            throw new RelativeNameException(name);
        }
        this.file = file;
        this.st = new Tokenizer(file);
        this.origin = name;
        this.defaultTTL = j4;
    }

    private void endGenerate() throws TextParseException {
        this.st.getEOL();
        this.generator = null;
    }

    private Record nextGenerated() throws TextParseException {
        try {
            return this.generator.nextRecord();
        } catch (Tokenizer.TokenizerException e4) {
            Tokenizer tokenizer = this.st;
            StringBuffer stringBufferA = e.a("Parsing $GENERATE: ");
            stringBufferA.append(e4.getBaseMessage());
            throw tokenizer.exception(stringBufferA.toString());
        } catch (TextParseException e5) {
            Tokenizer tokenizer2 = this.st;
            StringBuffer stringBufferA2 = e.a("Parsing $GENERATE: ");
            stringBufferA2.append(e5.getMessage());
            throw tokenizer2.exception(stringBufferA2.toString());
        }
    }

    private Name parseName(String str, Name name) throws TextParseException {
        try {
            return Name.fromString(str, name);
        } catch (TextParseException e4) {
            throw this.st.exception(e4.getMessage());
        }
    }

    private void parseTTLClassAndType() throws TextParseException {
        boolean z3;
        String string = this.st.getString();
        int iValue = DClass.value(string);
        this.currentDClass = iValue;
        if (iValue >= 0) {
            string = this.st.getString();
            z3 = true;
        } else {
            z3 = false;
        }
        this.currentTTL = -1L;
        try {
            this.currentTTL = TTL.parseTTL(string);
            string = this.st.getString();
        } catch (NumberFormatException unused) {
            long j4 = this.defaultTTL;
            if (j4 >= 0) {
                this.currentTTL = j4;
            } else {
                Record record = this.last;
                if (record != null) {
                    this.currentTTL = record.getTTL();
                }
            }
        }
        if (!z3) {
            int iValue2 = DClass.value(string);
            this.currentDClass = iValue2;
            if (iValue2 >= 0) {
                string = this.st.getString();
            } else {
                this.currentDClass = 1;
            }
        }
        int iValue3 = Type.value(string);
        this.currentType = iValue3;
        if (iValue3 < 0) {
            Tokenizer tokenizer = this.st;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Invalid type '");
            stringBuffer.append(string);
            stringBuffer.append("'");
            throw tokenizer.exception(stringBuffer.toString());
        }
        if (this.currentTTL < 0) {
            if (iValue3 != 6) {
                throw this.st.exception("missing TTL");
            }
            this.needSOATTL = true;
            this.currentTTL = 0L;
        }
    }

    private long parseUInt32(String str) {
        long j4;
        if (!Character.isDigit(str.charAt(0))) {
            return -1L;
        }
        try {
            j4 = Long.parseLong(str);
        } catch (NumberFormatException unused) {
        }
        if (j4 < 0 || j4 > 4294967295L) {
            return -1L;
        }
        return j4;
    }

    private void startGenerate() throws TextParseException {
        String identifier = this.st.getIdentifier();
        int iIndexOf = identifier.indexOf("-");
        if (iIndexOf < 0) {
            throw a.a("Invalid $GENERATE range specifier: ", identifier, this.st);
        }
        String strSubstring = identifier.substring(0, iIndexOf);
        String strSubstring2 = identifier.substring(iIndexOf + 1);
        String strSubstring3 = null;
        int iIndexOf2 = strSubstring2.indexOf("/");
        if (iIndexOf2 >= 0) {
            strSubstring3 = strSubstring2.substring(iIndexOf2 + 1);
            strSubstring2 = strSubstring2.substring(0, iIndexOf2);
        }
        long uInt32 = parseUInt32(strSubstring);
        long uInt322 = parseUInt32(strSubstring2);
        long uInt323 = strSubstring3 != null ? parseUInt32(strSubstring3) : 1L;
        if (uInt32 < 0 || uInt322 < 0 || uInt32 > uInt322 || uInt323 <= 0) {
            throw a.a("Invalid $GENERATE range specifier: ", identifier, this.st);
        }
        String identifier2 = this.st.getIdentifier();
        parseTTLClassAndType();
        if (!Generator.supportedType(this.currentType)) {
            Tokenizer tokenizer = this.st;
            StringBuffer stringBufferA = e.a("$GENERATE does not support ");
            stringBufferA.append(Type.string(this.currentType));
            stringBufferA.append(" records");
            throw tokenizer.exception(stringBufferA.toString());
        }
        String identifier3 = this.st.getIdentifier();
        this.st.getEOL();
        this.st.unget();
        this.generator = new Generator(uInt32, uInt322, uInt323, identifier2, this.currentType, this.currentDClass, this.currentTTL, identifier3, this.origin);
        if (this.generators == null) {
            this.generators = new ArrayList(1);
        }
        this.generators.add(this.generator);
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0123, code lost:
    
        parseTTLClassAndType();
        r0 = org.xbill.DNS.Record.fromString(r0, r11.currentType, r11.currentDClass, r11.currentTTL, r11.st, r11.origin);
        r11.last = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0139, code lost:
    
        if (r11.needSOATTL == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x013b, code lost:
    
        r0 = ((org.xbill.DNS.SOARecord) r0).getMinimum();
        r11.last.setTTL(r0);
        r11.defaultTTL = r0;
        r11.needSOATTL = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x014c, code lost:
    
        return r11.last;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.xbill.DNS.Record _nextRecord() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xbill.DNS.Master._nextRecord():org.xbill.DNS.Record");
    }

    public void expandGenerate(boolean z3) {
        this.noExpandGenerate = !z3;
    }

    public void finalize() {
        Tokenizer tokenizer = this.st;
        if (tokenizer != null) {
            tokenizer.close();
        }
    }

    public Iterator generators() {
        List list = this.generators;
        return list != null ? Collections.unmodifiableList(list).iterator() : Collections.EMPTY_LIST.iterator();
    }

    public Record nextRecord() {
        try {
            Record record_nextRecord = _nextRecord();
            if (record_nextRecord == null) {
            }
            return record_nextRecord;
        } finally {
            this.st.close();
        }
    }

    public Master(String str, Name name, long j4) {
        this(new File(str), name, j4);
    }

    public Master(String str, Name name) {
        this(new File(str), name, -1L);
    }

    public Master(String str) {
        this(new File(str), (Name) null, -1L);
    }

    public Master(InputStream inputStream, Name name, long j4) {
        this.last = null;
        this.included = null;
        if (name != null && !name.isAbsolute()) {
            throw new RelativeNameException(name);
        }
        this.st = new Tokenizer(inputStream);
        this.origin = name;
        this.defaultTTL = j4;
    }

    public Master(InputStream inputStream, Name name) {
        this(inputStream, name, -1L);
    }

    public Master(InputStream inputStream) {
        this(inputStream, (Name) null, -1L);
    }
}
