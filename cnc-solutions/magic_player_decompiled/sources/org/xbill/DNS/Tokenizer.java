package org.xbill.DNS;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.net.InetAddress;
import java.net.UnknownHostException;
import org.xbill.DNS.utils.base16;
import org.xbill.DNS.utils.base32;
import org.xbill.DNS.utils.base64;
import v2.e;

/* JADX INFO: loaded from: classes2.dex */
public class Tokenizer {
    public static final int COMMENT = 5;
    public static final int EOF = 0;
    public static final int EOL = 1;
    public static final int IDENTIFIER = 3;
    public static final int QUOTED_STRING = 4;
    public static final int WHITESPACE = 2;
    private static String delim = " \t\n;()\"";
    private static String quotes = "\"";
    private Token current;
    private String delimiters;
    private String filename;
    private PushbackInputStream is;
    private int line;
    private int multiline;
    private boolean quoting;
    private StringBuffer sb;
    private boolean ungottenToken;
    private boolean wantClose;

    public static class Token {
        public int type;
        public String value;

        /* JADX INFO: Access modifiers changed from: private */
        public Token set(int i4, StringBuffer stringBuffer) {
            if (i4 < 0) {
                throw new IllegalArgumentException();
            }
            this.type = i4;
            this.value = stringBuffer == null ? null : stringBuffer.toString();
            return this;
        }

        public boolean isEOL() {
            int i4 = this.type;
            return i4 == 1 || i4 == 0;
        }

        public boolean isString() {
            int i4 = this.type;
            return i4 == 3 || i4 == 4;
        }

        public String toString() {
            int i4 = this.type;
            if (i4 == 0) {
                return "<eof>";
            }
            if (i4 == 1) {
                return "<eol>";
            }
            if (i4 == 2) {
                return "<whitespace>";
            }
            if (i4 == 3) {
                StringBuffer stringBufferA = e.a("<identifier: ");
                stringBufferA.append(this.value);
                stringBufferA.append(">");
                return stringBufferA.toString();
            }
            if (i4 == 4) {
                StringBuffer stringBufferA2 = e.a("<quoted_string: ");
                stringBufferA2.append(this.value);
                stringBufferA2.append(">");
                return stringBufferA2.toString();
            }
            if (i4 != 5) {
                return "<unknown>";
            }
            StringBuffer stringBufferA3 = e.a("<comment: ");
            stringBufferA3.append(this.value);
            stringBufferA3.append(">");
            return stringBufferA3.toString();
        }

        private Token() {
            this.type = -1;
            this.value = null;
        }
    }

    public static class TokenizerException extends TextParseException {
        public String message;

        public TokenizerException(String str, int i4, String str2) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str);
            stringBuffer.append(":");
            stringBuffer.append(i4);
            stringBuffer.append(": ");
            stringBuffer.append(str2);
            super(stringBuffer.toString());
            this.message = str2;
        }

        public String getBaseMessage() {
            return this.message;
        }
    }

    public Tokenizer(InputStream inputStream) {
        this.is = new PushbackInputStream(inputStream instanceof BufferedInputStream ? inputStream : new BufferedInputStream(inputStream), 2);
        this.ungottenToken = false;
        this.multiline = 0;
        this.quoting = false;
        this.delimiters = delim;
        this.current = new Token();
        this.sb = new StringBuffer();
        this.filename = "<none>";
        this.line = 1;
    }

    private String _getIdentifier(String str) throws TextParseException {
        Token token = get();
        if (token.type == 3) {
            return token.value;
        }
        throw a.a("expected ", str, this);
    }

    private void checkUnbalancedParens() throws TextParseException {
        if (this.multiline > 0) {
            throw exception("unbalanced parentheses");
        }
    }

    private int getChar() throws IOException {
        int i4 = this.is.read();
        if (i4 == 13) {
            int i5 = this.is.read();
            if (i5 != 10) {
                this.is.unread(i5);
            }
            i4 = 10;
        }
        if (i4 == 10) {
            this.line++;
        }
        return i4;
    }

    private String remainingStrings() {
        StringBuffer stringBuffer = null;
        while (true) {
            Token token = get();
            if (!token.isString()) {
                break;
            }
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer();
            }
            stringBuffer.append(token.value);
        }
        unget();
        if (stringBuffer == null) {
            return null;
        }
        return stringBuffer.toString();
    }

    private int skipWhitespace() throws IOException {
        int i4;
        int i5 = 0;
        while (true) {
            i4 = getChar();
            if (i4 != 32 && i4 != 9 && (i4 != 10 || this.multiline <= 0)) {
                break;
            }
            i5++;
        }
        ungetChar(i4);
        return i5;
    }

    private void ungetChar(int i4) throws IOException {
        if (i4 == -1) {
            return;
        }
        this.is.unread(i4);
        if (i4 == 10) {
            this.line--;
        }
    }

    public void close() {
        if (this.wantClose) {
            try {
                this.is.close();
            } catch (IOException unused) {
            }
        }
    }

    public TextParseException exception(String str) {
        return new TokenizerException(this.filename, this.line, str);
    }

    public void finalize() {
        close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:93:0x0139, code lost:
    
        ungetChar(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0142, code lost:
    
        if (r9.sb.length() != 0) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0144, code lost:
    
        if (r10 == 4) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0146, code lost:
    
        checkUnbalancedParens();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x014f, code lost:
    
        return r9.current.set(0, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0158, code lost:
    
        return r9.current.set(r10, r9.sb);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.xbill.DNS.Tokenizer.Token get(boolean r10, boolean r11) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xbill.DNS.Tokenizer.get(boolean, boolean):org.xbill.DNS.Tokenizer$Token");
    }

    public InetAddress getAddress(int i4) throws TextParseException {
        try {
            return Address.getByAddress(_getIdentifier("an address"), i4);
        } catch (UnknownHostException e4) {
            throw exception(e4.getMessage());
        }
    }

    public byte[] getAddressBytes(int i4) throws TextParseException {
        String str_getIdentifier = _getIdentifier("an address");
        byte[] byteArray = Address.toByteArray(str_getIdentifier, i4);
        if (byteArray != null) {
            return byteArray;
        }
        throw a.a("Invalid address: ", str_getIdentifier, this);
    }

    public byte[] getBase32String(base32 base32Var) throws TextParseException {
        byte[] bArrFromString = base32Var.fromString(_getIdentifier("a base32 string"));
        if (bArrFromString != null) {
            return bArrFromString;
        }
        throw exception("invalid base32 encoding");
    }

    public byte[] getBase64(boolean z3) throws TextParseException {
        String strRemainingStrings = remainingStrings();
        if (strRemainingStrings == null) {
            if (z3) {
                throw exception("expected base64 encoded string");
            }
            return null;
        }
        byte[] bArrFromString = base64.fromString(strRemainingStrings);
        if (bArrFromString != null) {
            return bArrFromString;
        }
        throw exception("invalid base64 encoding");
    }

    public void getEOL() throws TextParseException {
        int i4 = get().type;
        if (i4 != 1 && i4 != 0) {
            throw exception("expected EOL or EOF");
        }
    }

    public byte[] getHex(boolean z3) throws TextParseException {
        String strRemainingStrings = remainingStrings();
        if (strRemainingStrings == null) {
            if (z3) {
                throw exception("expected hex encoded string");
            }
            return null;
        }
        byte[] bArrFromString = base16.fromString(strRemainingStrings);
        if (bArrFromString != null) {
            return bArrFromString;
        }
        throw exception("invalid hex encoding");
    }

    public byte[] getHexString() throws TextParseException {
        byte[] bArrFromString = base16.fromString(_getIdentifier("a hex string"));
        if (bArrFromString != null) {
            return bArrFromString;
        }
        throw exception("invalid hex encoding");
    }

    public String getIdentifier() {
        return _getIdentifier("an identifier");
    }

    public long getLong() throws TextParseException {
        String str_getIdentifier = _getIdentifier("an integer");
        if (!Character.isDigit(str_getIdentifier.charAt(0))) {
            throw exception("expected an integer");
        }
        try {
            return Long.parseLong(str_getIdentifier);
        } catch (NumberFormatException unused) {
            throw exception("expected an integer");
        }
    }

    public Name getName(Name name) throws TextParseException {
        try {
            Name nameFromString = Name.fromString(_getIdentifier("a name"), name);
            if (nameFromString.isAbsolute()) {
                return nameFromString;
            }
            throw new RelativeNameException(nameFromString);
        } catch (TextParseException e4) {
            throw exception(e4.getMessage());
        }
    }

    public String getString() throws TextParseException {
        Token token = get();
        if (token.isString()) {
            return token.value;
        }
        throw exception("expected a string");
    }

    public long getTTL() throws TextParseException {
        try {
            return TTL.parseTTL(_getIdentifier("a TTL value"));
        } catch (NumberFormatException unused) {
            throw exception("expected a TTL value");
        }
    }

    public long getTTLLike() throws TextParseException {
        try {
            return TTL.parse(_getIdentifier("a TTL-like value"), false);
        } catch (NumberFormatException unused) {
            throw exception("expected a TTL-like value");
        }
    }

    public int getUInt16() {
        long j4 = getLong();
        if (j4 < 0 || j4 > 65535) {
            throw exception("expected an 16 bit unsigned integer");
        }
        return (int) j4;
    }

    public long getUInt32() throws TextParseException {
        long j4 = getLong();
        if (j4 < 0 || j4 > 4294967295L) {
            throw exception("expected an 32 bit unsigned integer");
        }
        return j4;
    }

    public int getUInt8() throws TextParseException {
        long j4 = getLong();
        if (j4 < 0 || j4 > 255) {
            throw exception("expected an 8 bit unsigned integer");
        }
        return (int) j4;
    }

    public void unget() {
        if (this.ungottenToken) {
            throw new IllegalStateException("Cannot unget multiple tokens");
        }
        if (this.current.type == 1) {
            this.line--;
        }
        this.ungottenToken = true;
    }

    public byte[] getBase64() {
        return getBase64(false);
    }

    public byte[] getHex() {
        return getHex(false);
    }

    public Tokenizer(String str) {
        this(new ByteArrayInputStream(str.getBytes()));
    }

    public Tokenizer(File file) {
        this(new FileInputStream(file));
        this.wantClose = true;
        this.filename = file.getName();
    }

    public Token get() {
        return get(false, false);
    }
}
