package org.eclipse.jetty.util.ajax;

import android.support.v4.media.h;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.Loader;
import org.eclipse.jetty.util.QuotedStringTokenizer;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.seamless.xhtml.XHTML;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
public class JSON {
    private Map<String, Convertor> _convertors = new ConcurrentHashMap();
    private int _stringBufferSize = 1024;
    public static final Logger LOG = Log.getLogger((Class<?>) JSON.class);
    public static final JSON DEFAULT = new JSON();

    public final class ConvertableOutput implements Output {
        private final Appendable _buffer;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public char f2889c;

        @Override // org.eclipse.jetty.util.ajax.JSON.Output
        public void add(Object obj) {
            if (this.f2889c == 0) {
                throw new IllegalStateException();
            }
            JSON.this.append(this._buffer, obj);
            this.f2889c = (char) 0;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Output
        public void addClass(Class cls) {
            try {
                char c4 = this.f2889c;
                if (c4 == 0) {
                    throw new IllegalStateException();
                }
                this._buffer.append(c4);
                this._buffer.append("\"class\":");
                JSON.this.append(this._buffer, cls.getName());
                this.f2889c = ',';
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }

        public void complete() {
            try {
                char c4 = this.f2889c;
                if (c4 == '{') {
                    this._buffer.append(MessageFormatter.DELIM_STR);
                } else if (c4 != 0) {
                    this._buffer.append("}");
                }
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }

        private ConvertableOutput(Appendable appendable) {
            this.f2889c = MessageFormatter.DELIM_START;
            this._buffer = appendable;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Output
        public void add(String str, Object obj) {
            try {
                char c4 = this.f2889c;
                if (c4 != 0) {
                    this._buffer.append(c4);
                    QuotedStringTokenizer.quote(this._buffer, str);
                    this._buffer.append(':');
                    JSON.this.append(this._buffer, obj);
                    this.f2889c = ',';
                    return;
                }
                throw new IllegalStateException();
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Output
        public void add(String str, double d4) {
            try {
                char c4 = this.f2889c;
                if (c4 != 0) {
                    this._buffer.append(c4);
                    QuotedStringTokenizer.quote(this._buffer, str);
                    this._buffer.append(':');
                    JSON.this.appendNumber(this._buffer, Double.valueOf(d4));
                    this.f2889c = ',';
                    return;
                }
                throw new IllegalStateException();
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Output
        public void add(String str, long j4) {
            try {
                char c4 = this.f2889c;
                if (c4 != 0) {
                    this._buffer.append(c4);
                    QuotedStringTokenizer.quote(this._buffer, str);
                    this._buffer.append(':');
                    JSON.this.appendNumber(this._buffer, Long.valueOf(j4));
                    this.f2889c = ',';
                    return;
                }
                throw new IllegalStateException();
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Output
        public void add(String str, boolean z3) {
            try {
                char c4 = this.f2889c;
                if (c4 != 0) {
                    this._buffer.append(c4);
                    QuotedStringTokenizer.quote(this._buffer, str);
                    this._buffer.append(':');
                    JSON.this.appendBoolean(this._buffer, z3 ? Boolean.TRUE : Boolean.FALSE);
                    this.f2889c = ',';
                    return;
                }
                throw new IllegalStateException();
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }
    }

    public interface Convertible {
        void fromJSON(Map map);

        void toJSON(Output output);
    }

    public interface Convertor {
        Object fromJSON(Map map);

        void toJSON(Object obj, Output output);
    }

    public interface Generator {
        void addJSON(Appendable appendable);
    }

    public static class Literal implements Generator {
        private String _json;

        public Literal(String str) {
            if (JSON.LOG.isDebugEnabled()) {
                JSON.parse(str);
            }
            this._json = str;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Generator
        public void addJSON(Appendable appendable) {
            try {
                appendable.append(this._json);
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }

        public String toString() {
            return this._json;
        }
    }

    public interface Output {
        void add(Object obj);

        void add(String str, double d4);

        void add(String str, long j4);

        void add(String str, Object obj);

        void add(String str, boolean z3);

        void addClass(Class cls);
    }

    public static class ReaderSource implements Source {
        private int _next = -1;
        private Reader _reader;
        private char[] scratch;

        public ReaderSource(Reader reader) {
            this._reader = reader;
        }

        private void getNext() {
            if (this._next < 0) {
                try {
                    this._next = this._reader.read();
                } catch (IOException e4) {
                    throw new RuntimeException(e4);
                }
            }
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public boolean hasNext() {
            getNext();
            if (this._next >= 0) {
                return true;
            }
            this.scratch = null;
            return false;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public char next() {
            getNext();
            char c4 = (char) this._next;
            this._next = -1;
            return c4;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public char peek() {
            getNext();
            return (char) this._next;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public char[] scratchBuffer() {
            if (this.scratch == null) {
                this.scratch = new char[1024];
            }
            return this.scratch;
        }

        public void setReader(Reader reader) {
            this._reader = reader;
            this._next = -1;
        }
    }

    public interface Source {
        boolean hasNext();

        char next();

        char peek();

        char[] scratchBuffer();
    }

    public static class StringSource implements Source {
        private int index;
        private char[] scratch;
        private final String string;

        public StringSource(String str) {
            this.string = str;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public boolean hasNext() {
            if (this.index < this.string.length()) {
                return true;
            }
            this.scratch = null;
            return false;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public char next() {
            String str = this.string;
            int i4 = this.index;
            this.index = i4 + 1;
            return str.charAt(i4);
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public char peek() {
            return this.string.charAt(this.index);
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public char[] scratchBuffer() {
            if (this.scratch == null) {
                this.scratch = new char[this.string.length()];
            }
            return this.scratch;
        }

        public String toString() {
            return this.string.substring(0, this.index) + "|||" + this.string.substring(this.index);
        }
    }

    public static void complete(String str, Source source) {
        int i4 = 0;
        while (source.hasNext() && i4 < str.length()) {
            char next = source.next();
            int i5 = i4 + 1;
            if (next != str.charAt(i4)) {
                throw new IllegalStateException("Unexpected '" + next + " while seeking  \"" + str + "\"");
            }
            i4 = i5;
        }
        if (i4 < str.length()) {
            throw new IllegalStateException(h.a("Expected \"", str, "\""));
        }
    }

    public static JSON getDefault() {
        return DEFAULT;
    }

    public static Object parse(String str) {
        return DEFAULT.parse((Source) new StringSource(str), false);
    }

    public static void registerConvertor(Class cls, Convertor convertor) {
        DEFAULT.addConvertor(cls, convertor);
    }

    @Deprecated
    public static void setDefault(JSON json) {
    }

    public static String toString(Object obj) {
        JSON json = DEFAULT;
        StringBuilder sb = new StringBuilder(json.getStringBufferSize());
        json.append(sb, obj);
        return sb.toString();
    }

    public void addConvertor(Class cls, Convertor convertor) {
        this._convertors.put(cls.getName(), convertor);
    }

    public void addConvertorFor(String str, Convertor convertor) {
        this._convertors.put(str, convertor);
    }

    @Deprecated
    public void append(StringBuffer stringBuffer, Object obj) {
        append((Appendable) stringBuffer, obj);
    }

    @Deprecated
    public void appendArray(StringBuffer stringBuffer, Collection collection) {
        appendArray((Appendable) stringBuffer, collection);
    }

    @Deprecated
    public void appendBoolean(StringBuffer stringBuffer, Boolean bool) {
        appendBoolean((Appendable) stringBuffer, bool);
    }

    @Deprecated
    public void appendJSON(StringBuffer stringBuffer, Convertor convertor, Object obj) {
        appendJSON((Appendable) stringBuffer, convertor, obj);
    }

    @Deprecated
    public void appendMap(StringBuffer stringBuffer, Map<?, ?> map) {
        appendMap((Appendable) stringBuffer, map);
    }

    @Deprecated
    public void appendNull(StringBuffer stringBuffer) {
        appendNull((Appendable) stringBuffer);
    }

    @Deprecated
    public void appendNumber(StringBuffer stringBuffer, Number number) {
        appendNumber((Appendable) stringBuffer, number);
    }

    @Deprecated
    public void appendString(StringBuffer stringBuffer, String str) {
        appendString((Appendable) stringBuffer, str);
    }

    public JSON contextFor(String str) {
        return this;
    }

    public JSON contextForArray() {
        return this;
    }

    public Object convertTo(Class cls, Map map) {
        if (cls == null || !Convertible.class.isAssignableFrom(cls)) {
            Convertor convertor = getConvertor(cls);
            return convertor != null ? convertor.fromJSON(map) : map;
        }
        try {
            Convertible convertible = (Convertible) cls.newInstance();
            convertible.fromJSON(map);
            return convertible;
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public Object fromJSON(String str) {
        return parse(new StringSource(str));
    }

    public Convertor getConvertor(Class cls) {
        JSON json;
        Convertor convertor = this._convertors.get(cls.getName());
        if (convertor == null && this != (json = DEFAULT)) {
            convertor = json.getConvertor(cls);
        }
        while (convertor == null && cls != Object.class) {
            Class<?>[] interfaces = cls.getInterfaces();
            for (int i4 = 0; convertor == null && interfaces != null && i4 < interfaces.length; i4++) {
                convertor = this._convertors.get(interfaces[i4].getName());
            }
            if (convertor == null) {
                cls = cls.getSuperclass();
                convertor = this._convertors.get(cls.getName());
            }
        }
        return convertor;
    }

    public Convertor getConvertorFor(String str) {
        JSON json;
        Convertor convertor = this._convertors.get(str);
        return (convertor != null || this == (json = DEFAULT)) ? convertor : json.getConvertorFor(str);
    }

    public int getStringBufferSize() {
        return this._stringBufferSize;
    }

    public Object handleUnknown(Source source, char c4) {
        throw new IllegalStateException("unknown char '" + c4 + "'(" + ((int) c4) + ") in " + source);
    }

    public Object[] newArray(int i4) {
        return new Object[i4];
    }

    public Map<String, Object> newMap() {
        return new HashMap();
    }

    public Object parseArray(Source source) {
        if (source.next() != '[') {
            throw new IllegalStateException();
        }
        Object obj = null;
        ArrayList arrayList = null;
        boolean z3 = true;
        int i4 = 0;
        while (source.hasNext()) {
            char cPeek = source.peek();
            if (cPeek != ',') {
                if (cPeek == ']') {
                    source.next();
                    if (i4 == 0) {
                        return newArray(0);
                    }
                    if (i4 != 1) {
                        return arrayList.toArray(newArray(arrayList.size()));
                    }
                    Object[] objArrNewArray = newArray(1);
                    Array.set(objArrNewArray, 0, obj);
                    return objArrNewArray;
                }
                if (Character.isWhitespace(cPeek)) {
                    source.next();
                } else {
                    int i5 = i4 + 1;
                    if (i4 == 0) {
                        obj = contextForArray().parse(source);
                    } else {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            arrayList.add(obj);
                            arrayList.add(contextForArray().parse(source));
                        } else {
                            arrayList.add(contextForArray().parse(source));
                        }
                        obj = null;
                    }
                    i4 = i5;
                    z3 = false;
                }
            } else {
                if (z3) {
                    throw new IllegalStateException();
                }
                source.next();
                z3 = true;
            }
        }
        throw new IllegalStateException("unexpected end of array");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067 A[LOOP:1: B:29:0x0067->B:39:0x007f, LOOP_START] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Number parseNumber(org.eclipse.jetty.util.ajax.JSON.Source r12) {
        /*
            r11 = this;
            r0 = 0
            r2 = 0
            r3 = r0
        L4:
            boolean r5 = r12.hasNext()
            r6 = 46
            r7 = 101(0x65, float:1.42E-43)
            r8 = 69
            r9 = 43
            r10 = 45
            if (r5 == 0) goto L59
            char r5 = r12.peek()
            if (r5 == r9) goto L48
            if (r5 == r8) goto L32
            if (r5 == r7) goto L32
            if (r5 == r10) goto L48
            if (r5 == r6) goto L32
            switch(r5) {
                case 48: goto L26;
                case 49: goto L26;
                case 50: goto L26;
                case 51: goto L26;
                case 52: goto L26;
                case 53: goto L26;
                case 54: goto L26;
                case 55: goto L26;
                case 56: goto L26;
                case 57: goto L26;
                default: goto L25;
            }
        L25:
            goto L59
        L26:
            r6 = 10
            long r3 = r3 * r6
            int r5 = r5 + (-48)
            long r5 = (long) r5
            long r3 = r3 + r5
            r12.next()
            goto L4
        L32:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = 16
            r0.<init>(r1)
            if (r2 == 0) goto L3e
            r0.append(r10)
        L3e:
            r0.append(r3)
            r0.append(r5)
            r12.next()
            goto L5a
        L48:
            int r2 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r2 != 0) goto L51
            r2 = 1
            r12.next()
            goto L4
        L51:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "bad number"
            r12.<init>(r0)
            throw r12
        L59:
            r0 = 0
        L5a:
            if (r0 != 0) goto L67
            if (r2 == 0) goto L62
            r0 = -1
            long r3 = r3 * r0
        L62:
            java.lang.Long r12 = java.lang.Long.valueOf(r3)
            return r12
        L67:
            boolean r1 = r12.hasNext()
            if (r1 == 0) goto L86
            char r1 = r12.peek()
            if (r1 == r9) goto L7f
            if (r1 == r8) goto L7f
            if (r1 == r7) goto L7f
            if (r1 == r10) goto L7f
            if (r1 == r6) goto L7f
            switch(r1) {
                case 48: goto L7f;
                case 49: goto L7f;
                case 50: goto L7f;
                case 51: goto L7f;
                case 52: goto L7f;
                case 53: goto L7f;
                case 54: goto L7f;
                case 55: goto L7f;
                case 56: goto L7f;
                case 57: goto L7f;
                default: goto L7e;
            }
        L7e:
            goto L86
        L7f:
            r0.append(r1)
            r12.next()
            goto L67
        L86:
            java.lang.Double r12 = new java.lang.Double
            java.lang.String r0 = r0.toString()
            r12.<init>(r0)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.ajax.JSON.parseNumber(org.eclipse.jetty.util.ajax.JSON$Source):java.lang.Number");
    }

    public Object parseObject(Source source) {
        if (source.next() != '{') {
            throw new IllegalStateException();
        }
        Map<String, Object> mapNewMap = newMap();
        char cSeekTo = seekTo("\"}", source);
        while (true) {
            if (!source.hasNext()) {
                break;
            }
            if (cSeekTo == '}') {
                source.next();
                break;
            }
            String string = parseString(source);
            seekTo(':', source);
            source.next();
            mapNewMap.put(string, contextFor(string).parse(source));
            seekTo(",}", source);
            if (source.next() == '}') {
                break;
            }
            cSeekTo = seekTo("\"}", source);
        }
        String str = (String) mapNewMap.get("x-class");
        if (str != null) {
            Convertor convertorFor = getConvertorFor(str);
            if (convertorFor != null) {
                return convertorFor.fromJSON(mapNewMap);
            }
            LOG.warn("No Convertor for x-class '{}'", str);
        }
        String str2 = (String) mapNewMap.get(XHTML.ATTR.CLASS);
        if (str2 != null) {
            try {
                return convertTo(Loader.loadClass(JSON.class, str2), mapNewMap);
            } catch (ClassNotFoundException unused) {
                LOG.warn("No Class for '{}'", str2);
            }
        }
        return mapNewMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0046, code lost:
    
        if (r4 == '\"') goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0048, code lost:
    
        if (r4 == '/') goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004a, code lost:
    
        if (r4 == '\\') goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004c, code lost:
    
        if (r4 == 'b') goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
    
        if (r4 == 'f') goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0050, code lost:
    
        if (r4 == 'n') goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0052, code lost:
    
        if (r4 == 'r') goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0054, code lost:
    
        if (r4 == 't') goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0056, code lost:
    
        if (r4 == 'u') goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        r14 = r5 + 1;
        r3[r5] = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005d, code lost:
    
        r14 = r5 + 1;
        r3[r5] = (char) (org.eclipse.jetty.util.TypeUtil.convertHexDigit((byte) r21.next()) + (((org.eclipse.jetty.util.TypeUtil.convertHexDigit((byte) r21.next()) << 12) + (org.eclipse.jetty.util.TypeUtil.convertHexDigit((byte) r21.next()) << 8)) + (org.eclipse.jetty.util.TypeUtil.convertHexDigit((byte) r21.next()) << 4)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0090, code lost:
    
        r5 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0092, code lost:
    
        r4 = r5 + 1;
        r3[r5] = '\t';
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0099, code lost:
    
        r4 = r5 + 1;
        r3[r5] = '\r';
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a0, code lost:
    
        r4 = r5 + 1;
        r3[r5] = '\n';
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a7, code lost:
    
        r4 = r5 + 1;
        r3[r5] = '\f';
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ac, code lost:
    
        r4 = r5 + 1;
        r3[r5] = '\b';
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b3, code lost:
    
        r4 = r5 + 1;
        r3[r5] = '\\';
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b8, code lost:
    
        r4 = r5 + 1;
        r3[r5] = '/';
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00bd, code lost:
    
        r4 = r5 + 1;
        r3[r5] = '\"';
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c1, code lost:
    
        r5 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00da, code lost:
    
        if (r16 != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e0, code lost:
    
        return toString(r3, 0, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e1, code lost:
    
        r3 = r16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String parseString(org.eclipse.jetty.util.ajax.JSON.Source r21) {
        /*
            Method dump skipped, instruction units count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.ajax.JSON.parseString(org.eclipse.jetty.util.ajax.JSON$Source):java.lang.String");
    }

    public void seekTo(char c4, Source source) {
        while (source.hasNext()) {
            char cPeek = source.peek();
            if (cPeek == c4) {
                return;
            }
            if (!Character.isWhitespace(cPeek)) {
                throw new IllegalStateException("Unexpected '" + cPeek + " while seeking '" + c4 + "'");
            }
            source.next();
        }
        throw new IllegalStateException("Expected '" + c4 + "'");
    }

    public void setStringBufferSize(int i4) {
        this._stringBufferSize = i4;
    }

    public String toJSON(Object obj) {
        StringBuilder sb = new StringBuilder(getStringBufferSize());
        append(sb, obj);
        return sb.toString();
    }

    public static Object parse(String str, boolean z3) {
        return DEFAULT.parse(new StringSource(str), z3);
    }

    public void append(Appendable appendable, Object obj) {
        try {
            if (obj == null) {
                appendable.append("null");
            } else if (obj instanceof Map) {
                appendMap(appendable, (Map<?, ?>) obj);
            } else if (obj instanceof String) {
                appendString(appendable, (String) obj);
            } else if (obj instanceof Number) {
                appendNumber(appendable, (Number) obj);
            } else if (obj instanceof Boolean) {
                appendBoolean(appendable, (Boolean) obj);
            } else if (obj.getClass().isArray()) {
                appendArray(appendable, obj);
            } else if (obj instanceof Character) {
                appendString(appendable, obj.toString());
            } else if (obj instanceof Convertible) {
                appendJSON(appendable, (Convertible) obj);
            } else if (obj instanceof Generator) {
                appendJSON(appendable, (Generator) obj);
            } else {
                Convertor convertor = getConvertor(obj.getClass());
                if (convertor != null) {
                    appendJSON(appendable, convertor, obj);
                } else if (obj instanceof Collection) {
                    appendArray(appendable, (Collection) obj);
                } else {
                    appendString(appendable, obj.toString());
                }
            }
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public void appendArray(Appendable appendable, Collection collection) {
        try {
            if (collection == null) {
                appendNull(appendable);
                return;
            }
            appendable.append('[');
            Iterator it = collection.iterator();
            boolean z3 = true;
            while (it.hasNext()) {
                if (!z3) {
                    appendable.append(',');
                }
                z3 = false;
                append(appendable, it.next());
            }
            appendable.append(']');
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public void appendBoolean(Appendable appendable, Boolean bool) {
        try {
            if (bool == null) {
                appendNull(appendable);
            } else {
                appendable.append(bool.booleanValue() ? "true" : "false");
            }
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public void appendJSON(Appendable appendable, final Convertor convertor, final Object obj) {
        appendJSON(appendable, new Convertible() { // from class: org.eclipse.jetty.util.ajax.JSON.1
            @Override // org.eclipse.jetty.util.ajax.JSON.Convertible
            public void fromJSON(Map map) {
            }

            @Override // org.eclipse.jetty.util.ajax.JSON.Convertible
            public void toJSON(Output output) {
                convertor.toJSON(obj, output);
            }
        });
    }

    public void appendMap(Appendable appendable, Map<?, ?> map) {
        try {
            if (map == null) {
                appendNull(appendable);
                return;
            }
            appendable.append(MessageFormatter.DELIM_START);
            Iterator<Map.Entry<?, ?>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                QuotedStringTokenizer.quote(appendable, next.getKey().toString());
                appendable.append(':');
                append(appendable, next.getValue());
                if (it.hasNext()) {
                    appendable.append(',');
                }
            }
            appendable.append(MessageFormatter.DELIM_STOP);
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public void appendNull(Appendable appendable) {
        try {
            appendable.append("null");
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public void appendNumber(Appendable appendable, Number number) {
        try {
            if (number == null) {
                appendNull(appendable);
            } else {
                appendable.append(String.valueOf(number));
            }
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public void appendString(Appendable appendable, String str) {
        if (str == null) {
            appendNull(appendable);
        } else {
            QuotedStringTokenizer.quote(appendable, str);
        }
    }

    public static Object parse(Reader reader) {
        return DEFAULT.parse((Source) new ReaderSource(reader), false);
    }

    @Deprecated
    public void appendJSON(StringBuffer stringBuffer, Convertible convertible) {
        appendJSON((Appendable) stringBuffer, convertible);
    }

    public static Object parse(Reader reader, boolean z3) {
        return DEFAULT.parse(new ReaderSource(reader), z3);
    }

    public static String toString(Map map) {
        JSON json = DEFAULT;
        StringBuilder sb = new StringBuilder(json.getStringBufferSize());
        json.appendMap(sb, (Map<?, ?>) map);
        return sb.toString();
    }

    public void appendJSON(Appendable appendable, Convertible convertible) {
        ConvertableOutput convertableOutput = new ConvertableOutput(appendable);
        convertible.toJSON(convertableOutput);
        convertableOutput.complete();
    }

    @Deprecated
    public static Object parse(InputStream inputStream) {
        return DEFAULT.parse((Source) new StringSource(IO.toString(inputStream)), false);
    }

    @Deprecated
    public static Object parse(InputStream inputStream, boolean z3) {
        return DEFAULT.parse(new StringSource(IO.toString(inputStream)), z3);
    }

    public static String toString(Object[] objArr) {
        JSON json = DEFAULT;
        StringBuilder sb = new StringBuilder(json.getStringBufferSize());
        json.appendArray(sb, objArr);
        return sb.toString();
    }

    @Deprecated
    public void appendJSON(StringBuffer stringBuffer, Generator generator) {
        generator.addJSON(stringBuffer);
    }

    public Object parse(Source source, boolean z3) {
        if (!z3) {
            return parse(source);
        }
        Object obj = null;
        byte b4 = 0;
        char c4 = 1;
        while (source.hasNext()) {
            char cPeek = source.peek();
            if (b4 == 1) {
                if (cPeek != '*') {
                    if (cPeek == '/') {
                        b4 = -1;
                    }
                } else if (c4 == 1) {
                    b4 = 0;
                    c4 = 2;
                } else {
                    b4 = 2;
                }
                source.next();
            } else {
                if (b4 > 1) {
                    if (cPeek != '*') {
                        if (cPeek == '/' && b4 == 3) {
                            if (c4 == 2) {
                                return obj;
                            }
                            b4 = 0;
                        }
                        b4 = 2;
                    }
                    b4 = 3;
                } else if (b4 < 0) {
                    if (cPeek == '\n' || cPeek == '\r') {
                        b4 = 0;
                    }
                } else if (!Character.isWhitespace(cPeek)) {
                    if (cPeek == '/') {
                        b4 = 1;
                    } else if (cPeek == '*') {
                        b4 = 3;
                    } else if (obj == null) {
                        obj = parse(source);
                    }
                }
                source.next();
            }
        }
        return obj;
    }

    public char seekTo(String str, Source source) {
        while (source.hasNext()) {
            char cPeek = source.peek();
            if (str.indexOf(cPeek) >= 0) {
                return cPeek;
            }
            if (Character.isWhitespace(cPeek)) {
                source.next();
            } else {
                throw new IllegalStateException("Unexpected '" + cPeek + "' while seeking one of '" + str + "'");
            }
        }
        throw new IllegalStateException(h.a("Expected one of '", str, "'"));
    }

    public void appendJSON(Appendable appendable, Generator generator) {
        generator.addJSON(appendable);
    }

    @Deprecated
    public void appendArray(StringBuffer stringBuffer, Object obj) {
        appendArray((Appendable) stringBuffer, obj);
    }

    public String toString(char[] cArr, int i4, int i5) {
        return new String(cArr, i4, i5);
    }

    public void appendArray(Appendable appendable, Object obj) {
        try {
            if (obj == null) {
                appendNull(appendable);
                return;
            }
            appendable.append('[');
            int length = Array.getLength(obj);
            for (int i4 = 0; i4 < length; i4++) {
                if (i4 != 0) {
                    appendable.append(',');
                }
                append(appendable, Array.get(obj, i4));
            }
            appendable.append(']');
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object parse(org.eclipse.jetty.util.ajax.JSON.Source r10) {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
        L2:
            boolean r2 = r10.hasNext()
            r3 = 0
            if (r2 == 0) goto Lb4
            char r2 = r10.peek()
            r4 = 3
            r5 = 42
            r6 = 2
            r7 = 47
            r8 = 1
            if (r1 != r8) goto L1f
            if (r2 == r5) goto L25
            if (r2 == r7) goto L1c
            goto La5
        L1c:
            r1 = -1
            goto La5
        L1f:
            if (r1 <= r8) goto L2e
            if (r2 == r5) goto L2b
            if (r2 == r7) goto L28
        L25:
            r1 = 2
            goto La5
        L28:
            if (r1 != r4) goto L25
            goto L39
        L2b:
            r1 = 3
            goto La5
        L2e:
            if (r1 >= 0) goto L3b
            r3 = 10
            if (r2 == r3) goto L39
            r3 = 13
            if (r2 == r3) goto L39
            goto La5
        L39:
            r1 = 0
            goto La5
        L3b:
            r4 = 34
            if (r2 == r4) goto Laf
            r4 = 45
            if (r2 == r4) goto Laa
            if (r2 == r7) goto La4
            r4 = 78
            if (r2 == r4) goto L9e
            r4 = 91
            if (r2 == r4) goto L99
            r4 = 102(0x66, float:1.43E-43)
            if (r2 == r4) goto L91
            r4 = 110(0x6e, float:1.54E-43)
            if (r2 == r4) goto L8b
            r4 = 123(0x7b, float:1.72E-43)
            if (r2 == r4) goto L86
            r4 = 116(0x74, float:1.63E-43)
            if (r2 == r4) goto L7e
            r4 = 117(0x75, float:1.64E-43)
            if (r2 == r4) goto L78
            boolean r3 = java.lang.Character.isDigit(r2)
            if (r3 == 0) goto L6c
            java.lang.Number r10 = r9.parseNumber(r10)
            return r10
        L6c:
            boolean r3 = java.lang.Character.isWhitespace(r2)
            if (r3 == 0) goto L73
            goto La5
        L73:
            java.lang.Object r10 = r9.handleUnknown(r10, r2)
            return r10
        L78:
            java.lang.String r0 = "undefined"
            complete(r0, r10)
            return r3
        L7e:
            java.lang.String r0 = "true"
            complete(r0, r10)
            java.lang.Boolean r10 = java.lang.Boolean.TRUE
            return r10
        L86:
            java.lang.Object r10 = r9.parseObject(r10)
            return r10
        L8b:
            java.lang.String r0 = "null"
            complete(r0, r10)
            return r3
        L91:
            java.lang.String r0 = "false"
            complete(r0, r10)
            java.lang.Boolean r10 = java.lang.Boolean.FALSE
            return r10
        L99:
            java.lang.Object r10 = r9.parseArray(r10)
            return r10
        L9e:
            java.lang.String r0 = "NaN"
            complete(r0, r10)
            return r3
        La4:
            r1 = 1
        La5:
            r10.next()
            goto L2
        Laa:
            java.lang.Number r10 = r9.parseNumber(r10)
            return r10
        Laf:
            java.lang.String r10 = r9.parseString(r10)
            return r10
        Lb4:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.ajax.JSON.parse(org.eclipse.jetty.util.ajax.JSON$Source):java.lang.Object");
    }
}
