package org.eclipse.jetty.util;

import android.support.v4.media.f;
import java.io.IOException;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes2.dex */
public class QuotedStringTokenizer extends StringTokenizer {
    private static final String __delim = "\t\n\r";
    private static final char[] escapes;
    private String _delim;
    private boolean _double;
    private boolean _hasToken;
    private int _i;
    private int _lastStart;
    private boolean _returnDelimiters;
    private boolean _returnQuotes;
    private boolean _single;
    private String _string;
    private StringBuffer _token;

    static {
        char[] cArr = new char[32];
        escapes = cArr;
        Arrays.fill(cArr, (char) 65535);
        cArr[8] = 'b';
        cArr[9] = 't';
        cArr[10] = 'n';
        cArr[12] = 'f';
        cArr[13] = 'r';
    }

    public QuotedStringTokenizer(String str, String str2, boolean z3, boolean z4) {
        super("");
        this._delim = __delim;
        this._returnQuotes = false;
        this._returnDelimiters = false;
        this._hasToken = false;
        this._i = 0;
        this._lastStart = 0;
        this._double = true;
        this._single = true;
        this._string = str;
        if (str2 != null) {
            this._delim = str2;
        }
        this._returnDelimiters = z3;
        this._returnQuotes = z4;
        if (this._delim.indexOf(39) < 0 && this._delim.indexOf(34) < 0) {
            this._token = new StringBuffer(this._string.length() > 1024 ? 512 : this._string.length() / 2);
        } else {
            StringBuilder sbA = f.a("Can't use quotes as delimiters: ");
            sbA.append(this._delim);
            throw new Error(sbA.toString());
        }
    }

    private static boolean isValidEscaping(char c4) {
        return c4 == 'n' || c4 == 'r' || c4 == 't' || c4 == 'f' || c4 == 'b' || c4 == '\\' || c4 == '/' || c4 == '\"' || c4 == 'u';
    }

    public static String quote(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "\"\"";
        }
        StringBuffer stringBuffer = new StringBuffer(str.length() + 8);
        quote(stringBuffer, str);
        return stringBuffer.toString();
    }

    public static String quoteIfNeeded(String str, String str2) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "\"\"";
        }
        for (int i4 = 0; i4 < str.length(); i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt == '\\' || cCharAt == '\"' || cCharAt == '\'' || Character.isWhitespace(cCharAt) || str2.indexOf(cCharAt) >= 0) {
                StringBuffer stringBuffer = new StringBuffer(str.length() + 8);
                quote(stringBuffer, str);
                return stringBuffer.toString();
            }
        }
        return str;
    }

    public static String unquote(String str) {
        return unquote(str, false);
    }

    public static String unquoteOnly(String str) {
        return unquoteOnly(str, false);
    }

    @Override // java.util.StringTokenizer
    public int countTokens() {
        return -1;
    }

    public boolean getDouble() {
        return this._double;
    }

    public boolean getSingle() {
        return this._single;
    }

    @Override // java.util.StringTokenizer, java.util.Enumeration
    public boolean hasMoreElements() {
        return hasMoreTokens();
    }

    @Override // java.util.StringTokenizer
    public boolean hasMoreTokens() {
        if (this._hasToken) {
            return true;
        }
        this._lastStart = this._i;
        char c4 = 0;
        while (true) {
            boolean z3 = false;
            while (this._i < this._string.length()) {
                String str = this._string;
                int i4 = this._i;
                this._i = i4 + 1;
                char cCharAt = str.charAt(i4);
                if (c4 != 0) {
                    if (c4 == 1) {
                        this._hasToken = true;
                        if (this._delim.indexOf(cCharAt) >= 0) {
                            if (this._returnDelimiters) {
                                this._i--;
                            }
                            return this._hasToken;
                        }
                        if (cCharAt == '\'' && this._single) {
                            if (this._returnQuotes) {
                                this._token.append(cCharAt);
                            }
                            c4 = 2;
                        } else if (cCharAt == '\"' && this._double) {
                            if (this._returnQuotes) {
                                this._token.append(cCharAt);
                            }
                            c4 = 3;
                        } else {
                            this._token.append(cCharAt);
                        }
                    } else if (c4 == 2) {
                        this._hasToken = true;
                        if (z3) {
                            this._token.append(cCharAt);
                        } else if (cCharAt == '\'') {
                            if (this._returnQuotes) {
                                this._token.append(cCharAt);
                            }
                            c4 = 1;
                        } else if (cCharAt == '\\') {
                            if (this._returnQuotes) {
                                this._token.append(cCharAt);
                            }
                            z3 = true;
                        } else {
                            this._token.append(cCharAt);
                        }
                    } else if (c4 != 3) {
                        continue;
                    } else {
                        this._hasToken = true;
                        if (z3) {
                            this._token.append(cCharAt);
                        } else if (cCharAt == '\"') {
                            if (this._returnQuotes) {
                                this._token.append(cCharAt);
                            }
                            c4 = 1;
                        } else if (cCharAt == '\\') {
                            if (this._returnQuotes) {
                                this._token.append(cCharAt);
                            }
                            z3 = true;
                        } else {
                            this._token.append(cCharAt);
                        }
                    }
                } else if (this._delim.indexOf(cCharAt) >= 0) {
                    if (this._returnDelimiters) {
                        this._token.append(cCharAt);
                        this._hasToken = true;
                        return true;
                    }
                } else if (cCharAt == '\'' && this._single) {
                    if (this._returnQuotes) {
                        this._token.append(cCharAt);
                    }
                    c4 = 2;
                } else if (cCharAt == '\"' && this._double) {
                    if (this._returnQuotes) {
                        this._token.append(cCharAt);
                    }
                    c4 = 3;
                } else {
                    this._token.append(cCharAt);
                    this._hasToken = true;
                    c4 = 1;
                }
            }
            return this._hasToken;
        }
    }

    @Override // java.util.StringTokenizer, java.util.Enumeration
    public Object nextElement() {
        return nextToken();
    }

    @Override // java.util.StringTokenizer
    public String nextToken() {
        StringBuffer stringBuffer;
        if (!hasMoreTokens() || (stringBuffer = this._token) == null) {
            throw new NoSuchElementException();
        }
        String string = stringBuffer.toString();
        this._token.setLength(0);
        this._hasToken = false;
        return string;
    }

    public void setDouble(boolean z3) {
        this._double = z3;
    }

    public void setSingle(boolean z3) {
        this._single = z3;
    }

    public static String unquote(String str, boolean z3) {
        char cCharAt;
        if (str == null) {
            return null;
        }
        if (str.length() < 2 || (cCharAt = str.charAt(0)) != str.charAt(str.length() - 1)) {
            return str;
        }
        if (cCharAt != '\"' && cCharAt != '\'') {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length() - 2);
        int i4 = 1;
        boolean z4 = false;
        while (i4 < str.length() - 1) {
            char cCharAt2 = str.charAt(i4);
            if (z4) {
                if (cCharAt2 == '\"') {
                    sb.append('\"');
                } else if (cCharAt2 == '/') {
                    sb.append('/');
                } else if (cCharAt2 == '\\') {
                    sb.append('\\');
                } else if (cCharAt2 == 'b') {
                    sb.append('\b');
                } else if (cCharAt2 == 'f') {
                    sb.append('\f');
                } else if (cCharAt2 == 'n') {
                    sb.append('\n');
                } else if (cCharAt2 == 'r') {
                    sb.append('\r');
                } else if (cCharAt2 == 't') {
                    sb.append('\t');
                } else if (cCharAt2 != 'u') {
                    if (z3 && !isValidEscaping(cCharAt2)) {
                        sb.append('\\');
                    }
                    sb.append(cCharAt2);
                } else {
                    int i5 = i4 + 1;
                    int i6 = i5 + 1;
                    int iConvertHexDigit = (TypeUtil.convertHexDigit((byte) str.charAt(i4)) << 24) + (TypeUtil.convertHexDigit((byte) str.charAt(i5)) << 16);
                    int i7 = i6 + 1;
                    sb.append((char) (TypeUtil.convertHexDigit((byte) str.charAt(i7)) + iConvertHexDigit + (TypeUtil.convertHexDigit((byte) str.charAt(i6)) << 8)));
                    i4 = i7 + 1;
                }
                z4 = false;
            } else if (cCharAt2 == '\\') {
                z4 = true;
            } else {
                sb.append(cCharAt2);
            }
            i4++;
        }
        return sb.toString();
    }

    public static String unquoteOnly(String str, boolean z3) {
        char cCharAt;
        if (str == null) {
            return null;
        }
        if (str.length() < 2 || (cCharAt = str.charAt(0)) != str.charAt(str.length() - 1)) {
            return str;
        }
        if (cCharAt != '\"' && cCharAt != '\'') {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length() - 2);
        boolean z4 = false;
        for (int i4 = 1; i4 < str.length() - 1; i4++) {
            char cCharAt2 = str.charAt(i4);
            if (z4) {
                if (z3 && !isValidEscaping(cCharAt2)) {
                    sb.append('\\');
                }
                sb.append(cCharAt2);
                z4 = false;
            } else if (cCharAt2 == '\\') {
                z4 = true;
            } else {
                sb.append(cCharAt2);
            }
        }
        return sb.toString();
    }

    public static void quote(Appendable appendable, String str) {
        try {
            appendable.append('\"');
            for (int i4 = 0; i4 < str.length(); i4++) {
                char cCharAt = str.charAt(i4);
                if (cCharAt >= ' ') {
                    if (cCharAt == '\"' || cCharAt == '\\') {
                        appendable.append('\\');
                    }
                    appendable.append(cCharAt);
                } else {
                    char c4 = escapes[cCharAt];
                    if (c4 == 65535) {
                        appendable.append('\\').append('u').append('0').append('0');
                        if (cCharAt < 16) {
                            appendable.append('0');
                        }
                        appendable.append(Integer.toString(cCharAt, 16));
                    } else {
                        appendable.append('\\').append(c4);
                    }
                }
            }
            appendable.append('\"');
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // java.util.StringTokenizer
    public String nextToken(String str) {
        this._delim = str;
        this._i = this._lastStart;
        this._token.setLength(0);
        this._hasToken = false;
        return nextToken();
    }

    public static boolean quoteIfNeeded(Appendable appendable, String str, String str2) {
        for (int i4 = 0; i4 < str.length(); i4++) {
            if (str2.indexOf(str.charAt(i4)) >= 0) {
                quote(appendable, str);
                return true;
            }
        }
        try {
            appendable.append(str);
            return false;
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public QuotedStringTokenizer(String str, String str2, boolean z3) {
        this(str, str2, z3, false);
    }

    public QuotedStringTokenizer(String str, String str2) {
        this(str, str2, false, false);
    }

    public QuotedStringTokenizer(String str) {
        this(str, null, false, false);
    }
}
