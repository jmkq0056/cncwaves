package org.eclipse.jetty.http;

import android.support.v4.media.b;
import android.support.v4.media.f;
import androidx.appcompat.view.a;
import androidx.recyclerview.widget.RecyclerView;
import com.arcsoft.face.BuildConfig;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.BufferCache;
import org.eclipse.jetty.io.BufferDateCache;
import org.eclipse.jetty.io.BufferUtil;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.util.B64Code;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.QuotedStringTokenizer;
import org.eclipse.jetty.util.StringMap;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class HttpFields {
    private static final String[] DAYS;
    private static final Logger LOG = Log.getLogger((Class<?>) HttpFields.class);
    private static final String[] MONTHS;
    public static final String __01Jan1970;
    public static final Buffer __01Jan1970_BUFFER;
    public static final String __01Jan1970_COOKIE;
    public static final String __COOKIE_DELIM = "\"\\\n\r\t\f\b%+ ;=";
    public static final TimeZone __GMT;
    private static ConcurrentMap<String, Buffer> __cache = null;
    private static int __cacheSize = 0;
    public static final BufferDateCache __dateCache;
    private static final ThreadLocal<DateGenerator> __dateGenerator;
    private static final ThreadLocal<DateParser> __dateParser;
    private static final String[] __dateReceiveFmt;
    private static final Float __one;
    private static final StringMap __qualities;
    public static final String __separators = ", \t";
    private static final Float __zero;
    private final ArrayList<Field> _fields = new ArrayList<>(20);
    private final HashMap<Buffer, Field> _names = new HashMap<>(32);

    public static class DateGenerator {
        private final StringBuilder buf;
        private final GregorianCalendar gc;

        private DateGenerator() {
            this.buf = new StringBuilder(32);
            this.gc = new GregorianCalendar(HttpFields.__GMT);
        }

        public void formatCookieDate(StringBuilder sb, long j4) {
            this.gc.setTimeInMillis(j4);
            int i4 = this.gc.get(7);
            int i5 = this.gc.get(5);
            int i6 = this.gc.get(2);
            int i7 = this.gc.get(1) % 10000;
            int i8 = (int) ((j4 / 1000) % 86400);
            int i9 = i8 % 60;
            int i10 = i8 / 60;
            sb.append(HttpFields.DAYS[i4]);
            sb.append(',');
            sb.append(' ');
            StringUtil.append2digits(sb, i5);
            sb.append('-');
            sb.append(HttpFields.MONTHS[i6]);
            sb.append('-');
            StringUtil.append2digits(sb, i7 / 100);
            StringUtil.append2digits(sb, i7 % 100);
            sb.append(' ');
            StringUtil.append2digits(sb, i10 / 60);
            sb.append(':');
            StringUtil.append2digits(sb, i10 % 60);
            sb.append(':');
            StringUtil.append2digits(sb, i9);
            sb.append(" GMT");
        }

        public String formatDate(long j4) {
            this.buf.setLength(0);
            this.gc.setTimeInMillis(j4);
            int i4 = this.gc.get(7);
            int i5 = this.gc.get(5);
            int i6 = this.gc.get(2);
            int i7 = this.gc.get(1);
            int i8 = this.gc.get(11);
            int i9 = this.gc.get(12);
            int i10 = this.gc.get(13);
            this.buf.append(HttpFields.DAYS[i4]);
            this.buf.append(',');
            this.buf.append(' ');
            StringUtil.append2digits(this.buf, i5);
            this.buf.append(' ');
            this.buf.append(HttpFields.MONTHS[i6]);
            this.buf.append(' ');
            StringUtil.append2digits(this.buf, i7 / 100);
            StringUtil.append2digits(this.buf, i7 % 100);
            this.buf.append(' ');
            StringUtil.append2digits(this.buf, i8);
            this.buf.append(':');
            StringUtil.append2digits(this.buf, i9);
            this.buf.append(':');
            StringUtil.append2digits(this.buf, i10);
            this.buf.append(" GMT");
            return this.buf.toString();
        }
    }

    public static class DateParser {
        public final SimpleDateFormat[] _dateReceive;

        private DateParser() {
            this._dateReceive = new SimpleDateFormat[HttpFields.__dateReceiveFmt.length];
        }

        public long parse(String str) {
            int i4 = 0;
            int i5 = 0;
            while (true) {
                SimpleDateFormat[] simpleDateFormatArr = this._dateReceive;
                if (i5 < simpleDateFormatArr.length) {
                    if (simpleDateFormatArr[i5] == null) {
                        simpleDateFormatArr[i5] = new SimpleDateFormat(HttpFields.__dateReceiveFmt[i5], Locale.US);
                        this._dateReceive[i5].setTimeZone(HttpFields.__GMT);
                    }
                    try {
                        continue;
                        return ((Date) this._dateReceive[i5].parseObject(str)).getTime();
                    } catch (Exception unused) {
                        i5++;
                    }
                } else {
                    if (!str.endsWith(" GMT")) {
                        return -1L;
                    }
                    String strSubstring = str.substring(i4, str.length() - 4);
                    while (true) {
                        SimpleDateFormat[] simpleDateFormatArr2 = this._dateReceive;
                        if (i4 >= simpleDateFormatArr2.length) {
                            return -1L;
                        }
                        try {
                            return ((Date) simpleDateFormatArr2[i4].parseObject(strSubstring)).getTime();
                        } catch (Exception unused2) {
                            i4++;
                        }
                    }
                }
            }
        }
    }

    public static final class Field {
        private Buffer _name;
        private Field _next;
        private Buffer _value;

        public int getIntValue() {
            return (int) getLongValue();
        }

        public long getLongValue() {
            return BufferUtil.toLong(this._value);
        }

        public String getName() {
            return BufferUtil.to8859_1_String(this._name);
        }

        public Buffer getNameBuffer() {
            return this._name;
        }

        public int getNameOrdinal() {
            return HttpHeaders.CACHE.getOrdinal(this._name);
        }

        public String getValue() {
            return BufferUtil.to8859_1_String(this._value);
        }

        public Buffer getValueBuffer() {
            return this._value;
        }

        public int getValueOrdinal() {
            return HttpHeaderValues.CACHE.getOrdinal(this._value);
        }

        public void putTo(Buffer buffer) {
            Buffer buffer2 = this._name;
            if ((buffer2 instanceof BufferCache.CachedBuffer ? ((BufferCache.CachedBuffer) buffer2).getOrdinal() : -1) >= 0) {
                buffer.put(this._name);
            } else {
                int index = this._name.getIndex();
                int iPutIndex = this._name.putIndex();
                while (index < iPutIndex) {
                    int i4 = index + 1;
                    byte bPeek = this._name.peek(index);
                    if (bPeek != 10 && bPeek != 13 && bPeek != 58) {
                        buffer.put(bPeek);
                    }
                    index = i4;
                }
            }
            buffer.put(HttpTokens.COLON);
            buffer.put((byte) 32);
            Buffer buffer3 = this._value;
            if ((buffer3 instanceof BufferCache.CachedBuffer ? ((BufferCache.CachedBuffer) buffer3).getOrdinal() : -1) >= 0) {
                buffer.put(this._value);
            } else {
                int index2 = this._value.getIndex();
                int iPutIndex2 = this._value.putIndex();
                while (index2 < iPutIndex2) {
                    int i5 = index2 + 1;
                    byte bPeek2 = this._value.peek(index2);
                    if (bPeek2 != 10 && bPeek2 != 13) {
                        buffer.put(bPeek2);
                    }
                    index2 = i5;
                }
            }
            BufferUtil.putCRLF(buffer);
        }

        public String toString() {
            StringBuilder sbA = f.a("[");
            sbA.append(getName());
            sbA.append("=");
            sbA.append(this._value);
            return b.a(sbA, this._next == null ? "" : "->", "]");
        }

        private Field(Buffer buffer, Buffer buffer2) {
            this._name = buffer;
            this._value = buffer2;
            this._next = null;
        }
    }

    static {
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        __GMT = timeZone;
        BufferDateCache bufferDateCache = new BufferDateCache("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        __dateCache = bufferDateCache;
        timeZone.setID("GMT");
        bufferDateCache.setTimeZone(timeZone);
        DAYS = new String[]{"Sat", "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
        MONTHS = new String[]{"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", "Jan"};
        __dateGenerator = new ThreadLocal<DateGenerator>() { // from class: org.eclipse.jetty.http.HttpFields.1
            @Override // java.lang.ThreadLocal
            public DateGenerator initialValue() {
                return new DateGenerator();
            }
        };
        __dateReceiveFmt = new String[]{"EEE, dd MMM yyyy HH:mm:ss zzz", "EEE, dd-MMM-yy HH:mm:ss", "EEE MMM dd HH:mm:ss yyyy", "EEE, dd MMM yyyy HH:mm:ss", "EEE dd MMM yyyy HH:mm:ss zzz", "EEE dd MMM yyyy HH:mm:ss", "EEE MMM dd yyyy HH:mm:ss zzz", "EEE MMM dd yyyy HH:mm:ss", "EEE MMM-dd-yyyy HH:mm:ss zzz", "EEE MMM-dd-yyyy HH:mm:ss", "dd MMM yyyy HH:mm:ss zzz", "dd MMM yyyy HH:mm:ss", "dd-MMM-yy HH:mm:ss zzz", "dd-MMM-yy HH:mm:ss", "MMM dd HH:mm:ss yyyy zzz", "MMM dd HH:mm:ss yyyy", "EEE MMM dd HH:mm:ss yyyy zzz", "EEE, MMM dd HH:mm:ss yyyy zzz", "EEE, MMM dd HH:mm:ss yyyy", "EEE, dd-MMM-yy HH:mm:ss zzz", "EEE dd-MMM-yy HH:mm:ss zzz", "EEE dd-MMM-yy HH:mm:ss"};
        __dateParser = new ThreadLocal<DateParser>() { // from class: org.eclipse.jetty.http.HttpFields.2
            @Override // java.lang.ThreadLocal
            public DateParser initialValue() {
                return new DateParser();
            }
        };
        String date = formatDate(0L);
        __01Jan1970 = date;
        __01Jan1970_BUFFER = new ByteArrayBuffer(date);
        __01Jan1970_COOKIE = formatCookieDate(0L).trim();
        __cache = new ConcurrentHashMap();
        __cacheSize = Integer.getInteger("org.eclipse.jetty.http.HttpFields.CACHE", RecyclerView.MAX_SCROLL_DURATION).intValue();
        Float f4 = new Float(BuildConfig.VERSION_NAME);
        __one = f4;
        Float f5 = new Float("0.0");
        __zero = f5;
        StringMap stringMap = new StringMap();
        __qualities = stringMap;
        stringMap.put((String) null, (Object) f4);
        stringMap.put(BuildConfig.VERSION_NAME, (Object) f4);
        stringMap.put("1", (Object) f4);
        stringMap.put("0.9", (Object) new Float("0.9"));
        stringMap.put("0.8", (Object) new Float("0.8"));
        stringMap.put("0.7", (Object) new Float("0.7"));
        stringMap.put("0.66", (Object) new Float("0.66"));
        stringMap.put("0.6", (Object) new Float("0.6"));
        stringMap.put("0.5", (Object) new Float("0.5"));
        stringMap.put("0.4", (Object) new Float("0.4"));
        stringMap.put("0.33", (Object) new Float("0.33"));
        stringMap.put("0.3", (Object) new Float("0.3"));
        stringMap.put("0.2", (Object) new Float("0.2"));
        stringMap.put("0.1", (Object) new Float("0.1"));
        stringMap.put("0", (Object) f5);
        stringMap.put("0.0", (Object) f5);
    }

    private Buffer convertValue(String str) {
        Buffer buffer = __cache.get(str);
        if (buffer != null) {
            return buffer;
        }
        try {
            ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(str, "ISO-8859-1");
            if (__cacheSize <= 0) {
                return byteArrayBuffer;
            }
            if (__cache.size() > __cacheSize) {
                __cache.clear();
            }
            Buffer bufferPutIfAbsent = __cache.putIfAbsent(str, byteArrayBuffer);
            return bufferPutIfAbsent != null ? bufferPutIfAbsent : byteArrayBuffer;
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static void formatCookieDate(StringBuilder sb, long j4) {
        __dateGenerator.get().formatCookieDate(sb, j4);
    }

    public static String formatDate(long j4) {
        return __dateGenerator.get().formatDate(j4);
    }

    public static Float getQuality(String str) {
        if (str == null) {
            return __zero;
        }
        int iIndexOf = str.indexOf(";");
        int i4 = iIndexOf + 1;
        if (iIndexOf < 0 || i4 == str.length()) {
            return __one;
        }
        int i5 = i4 + 1;
        if (str.charAt(i4) == 'q') {
            int i6 = i5 + 1;
            Map.Entry entry = __qualities.getEntry(str, i6, str.length() - i6);
            if (entry != null) {
                return (Float) entry.getValue();
            }
        }
        HashMap map = new HashMap(3);
        valueParameters(str, map);
        String str2 = (String) map.get("q");
        Float f4 = (Float) __qualities.get(str2);
        if (f4 != null) {
            return f4;
        }
        try {
            return new Float(str2);
        } catch (Exception unused) {
            return __one;
        }
    }

    public static long parseDate(String str) {
        return __dateParser.get().parse(str);
    }

    public static List qualityList(Enumeration enumeration) {
        if (enumeration == null || !enumeration.hasMoreElements()) {
            return Collections.EMPTY_LIST;
        }
        Object objAdd = null;
        Object objAdd2 = null;
        while (enumeration.hasMoreElements()) {
            String string = enumeration.nextElement().toString();
            Float quality = getQuality(string);
            if (quality.floatValue() >= 0.001d) {
                objAdd = LazyList.add(objAdd, string);
                objAdd2 = LazyList.add(objAdd2, quality);
            }
        }
        List list = LazyList.getList(objAdd, false);
        if (list.size() < 2) {
            return list;
        }
        List list2 = LazyList.getList(objAdd2, false);
        Float f4 = __zero;
        int size = list.size();
        while (true) {
            int i4 = size - 1;
            if (size <= 0) {
                list2.clear();
                return list;
            }
            Float f5 = (Float) list2.get(i4);
            if (f4.compareTo(f5) > 0) {
                Object obj = list.get(i4);
                int i5 = i4 + 1;
                list.set(i4, list.get(i5));
                list.set(i5, obj);
                list2.set(i4, list2.get(i5));
                list2.set(i5, f5);
                f4 = __zero;
                size = list.size();
            } else {
                f4 = f5;
                size = i4;
            }
        }
    }

    public static String valueParameters(String str, Map<String, String> map) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(59);
        if (iIndexOf < 0) {
            return str;
        }
        if (map == null) {
            return str.substring(0, iIndexOf).trim();
        }
        QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer(str.substring(iIndexOf), ";", false, true);
        while (quotedStringTokenizer.hasMoreTokens()) {
            QuotedStringTokenizer quotedStringTokenizer2 = new QuotedStringTokenizer(quotedStringTokenizer.nextToken(), "= ");
            if (quotedStringTokenizer2.hasMoreTokens()) {
                map.put(quotedStringTokenizer2.nextToken(), quotedStringTokenizer2.hasMoreTokens() ? quotedStringTokenizer2.nextToken() : null);
            }
        }
        return str.substring(0, iIndexOf).trim();
    }

    public void add(String str, String str2) {
        if (str2 == null) {
            return;
        }
        add(HttpHeaders.CACHE.lookup(str), convertValue(str2));
    }

    public void addDateField(String str, long j4) {
        add(HttpHeaders.CACHE.lookup(str), new ByteArrayBuffer(formatDate(j4)));
    }

    public void addLongField(String str, long j4) {
        add(HttpHeaders.CACHE.lookup(str), BufferUtil.toBuffer(j4));
    }

    public void addSetCookie(HttpCookie httpCookie) {
        addSetCookie(httpCookie.getName(), httpCookie.getValue(), httpCookie.getDomain(), httpCookie.getPath(), httpCookie.getMaxAge(), httpCookie.getComment(), httpCookie.isSecure(), httpCookie.isHttpOnly(), httpCookie.getVersion());
    }

    public void clear() {
        this._fields.clear();
        this._names.clear();
    }

    public boolean containsKey(Buffer buffer) {
        return this._names.containsKey(HttpHeaders.CACHE.lookup(buffer));
    }

    public Buffer get(Buffer buffer) {
        Field field = getField(buffer);
        if (field == null) {
            return null;
        }
        return field._value;
    }

    public long getDateField(String str) {
        String strValueParameters;
        Field field = getField(str);
        if (field == null || (strValueParameters = valueParameters(BufferUtil.to8859_1_String(field._value), null)) == null) {
            return -1L;
        }
        long j4 = __dateParser.get().parse(strValueParameters);
        if (j4 != -1) {
            return j4;
        }
        throw new IllegalArgumentException(a.a("Cannot convert date: ", strValueParameters));
    }

    public Field getField(int i4) {
        return this._fields.get(i4);
    }

    public Enumeration<String> getFieldNames() {
        final Enumeration enumeration = Collections.enumeration(this._names.keySet());
        return new Enumeration<String>() { // from class: org.eclipse.jetty.http.HttpFields.3
            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return enumeration.hasMoreElements();
            }

            @Override // java.util.Enumeration
            public String nextElement() {
                return enumeration.nextElement().toString();
            }
        };
    }

    public Collection<String> getFieldNamesCollection() {
        ArrayList arrayList = new ArrayList(this._fields.size());
        for (Field field : this._fields) {
            if (field != null) {
                arrayList.add(BufferUtil.to8859_1_String(field._name));
            }
        }
        return arrayList;
    }

    public long getLongField(String str) {
        Field field = getField(str);
        if (field == null) {
            return -1L;
        }
        return field.getLongValue();
    }

    public String getStringField(String str) {
        Field field = getField(str);
        if (field == null) {
            return null;
        }
        return field.getValue();
    }

    public Enumeration<String> getValues(String str) {
        Field field = getField(str);
        return field == null ? Collections.enumeration(Collections.emptyList()) : new Enumeration<String>(field) { // from class: org.eclipse.jetty.http.HttpFields.4

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public Field f2887f;
            public final /* synthetic */ Field val$field;

            {
                this.val$field = field;
                this.f2887f = field;
            }

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.f2887f != null;
            }

            @Override // java.util.Enumeration
            public String nextElement() {
                Field field2 = this.f2887f;
                if (field2 == null) {
                    throw new NoSuchElementException();
                }
                this.f2887f = field2._next;
                return field2.getValue();
            }
        };
    }

    public Collection<String> getValuesCollection(String str) {
        Field field = getField(str);
        if (field == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (field != null) {
            arrayList.add(field.getValue());
            field = field._next;
        }
        return arrayList;
    }

    public void put(String str, String str2) {
        if (str2 == null) {
            remove(str);
        } else {
            put(HttpHeaders.CACHE.lookup(str), convertValue(str2));
        }
    }

    public void putDateField(Buffer buffer, long j4) {
        put(buffer, new ByteArrayBuffer(formatDate(j4)));
    }

    public void putLongField(Buffer buffer, long j4) {
        put(buffer, BufferUtil.toBuffer(j4));
    }

    public void putTo(Buffer buffer) {
        for (int i4 = 0; i4 < this._fields.size(); i4++) {
            Field field = this._fields.get(i4);
            if (field != null) {
                field.putTo(buffer);
            }
        }
        BufferUtil.putCRLF(buffer);
    }

    public void remove(String str) {
        remove(HttpHeaders.CACHE.lookup(str));
    }

    public int size() {
        return this._fields.size();
    }

    public String toString() {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i4 = 0; i4 < this._fields.size(); i4++) {
                Field field = this._fields.get(i4);
                if (field != null) {
                    String name = field.getName();
                    if (name != null) {
                        stringBuffer.append(name);
                    }
                    stringBuffer.append(": ");
                    String value = field.getValue();
                    if (value != null) {
                        stringBuffer.append(value);
                    }
                    stringBuffer.append("\r\n");
                }
            }
            stringBuffer.append("\r\n");
            return stringBuffer.toString();
        } catch (Exception e4) {
            LOG.warn(e4);
            return e4.toString();
        }
    }

    public static String formatCookieDate(long j4) {
        StringBuilder sb = new StringBuilder(28);
        formatCookieDate(sb, j4);
        return sb.toString();
    }

    private Field getField(String str) {
        return this._names.get(HttpHeaders.CACHE.lookup(str));
    }

    public void addSetCookie(String str, String str2, String str3, String str4, long j4, String str5, boolean z3, boolean z4, int i4) {
        boolean z5;
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Bad cookie name");
        }
        StringBuilder sb = new StringBuilder(128);
        QuotedStringTokenizer.quoteIfNeeded(sb, str, __COOKIE_DELIM);
        sb.append(B64Code.__pad);
        String string = sb.toString();
        if (str2 != null && str2.length() > 0) {
            QuotedStringTokenizer.quoteIfNeeded(sb, str2, __COOKIE_DELIM);
        }
        if (str5 != null && str5.length() > 0) {
            sb.append(";Comment=");
            QuotedStringTokenizer.quoteIfNeeded(sb, str5, __COOKIE_DELIM);
        }
        boolean z6 = true;
        if (str4 == null || str4.length() <= 0) {
            z5 = false;
        } else {
            sb.append(";Path=");
            if (str4.trim().startsWith("\"")) {
                sb.append(str4);
            } else {
                QuotedStringTokenizer.quoteIfNeeded(sb, str4, __COOKIE_DELIM);
            }
            z5 = true;
        }
        if (str3 == null || str3.length() <= 0) {
            z6 = false;
        } else {
            sb.append(";Domain=");
            QuotedStringTokenizer.quoteIfNeeded(sb, str3.toLowerCase(Locale.ENGLISH), __COOKIE_DELIM);
        }
        if (j4 >= 0) {
            sb.append(";Expires=");
            if (j4 == 0) {
                sb.append(__01Jan1970_COOKIE);
            } else {
                formatCookieDate(sb, (1000 * j4) + System.currentTimeMillis());
            }
            if (i4 > 0) {
                sb.append(";Max-Age=");
                sb.append(j4);
            }
        }
        if (z3) {
            sb.append(";Secure");
        }
        if (z4) {
            sb.append(";HttpOnly");
        }
        String string2 = sb.toString();
        Field field = null;
        for (Field field2 = getField(HttpHeaders.SET_COOKIE); field2 != null; field2 = field2._next) {
            String string3 = field2._value == null ? null : field2._value.toString();
            if (string3 != null && string3.startsWith(string)) {
                if (z6 || string3.contains("Domain")) {
                    if (z6) {
                        if (!string3.contains("Domain=" + str3)) {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
                if (z5 || string3.contains("Path")) {
                    if (z5) {
                        if (string3.contains("Path=" + str4)) {
                        }
                    } else {
                        continue;
                    }
                }
                this._fields.remove(field2);
                if (field == null) {
                    this._names.put(HttpHeaders.SET_COOKIE_BUFFER, field2._next);
                } else {
                    field._next = field2._next;
                }
                add(HttpHeaders.SET_COOKIE_BUFFER, new ByteArrayBuffer(string2));
                put(HttpHeaders.EXPIRES_BUFFER, __01Jan1970_BUFFER);
            }
            field = field2;
        }
        add(HttpHeaders.SET_COOKIE_BUFFER, new ByteArrayBuffer(string2));
        put(HttpHeaders.EXPIRES_BUFFER, __01Jan1970_BUFFER);
    }

    public boolean containsKey(String str) {
        return this._names.containsKey(HttpHeaders.CACHE.lookup(str));
    }

    public void remove(Buffer buffer) {
        if (!(buffer instanceof BufferCache.CachedBuffer)) {
            buffer = HttpHeaders.CACHE.lookup(buffer);
        }
        for (Field fieldRemove = this._names.remove(buffer); fieldRemove != null; fieldRemove = fieldRemove._next) {
            this._fields.remove(fieldRemove);
        }
    }

    private Field getField(Buffer buffer) {
        return this._names.get(HttpHeaders.CACHE.lookup(buffer));
    }

    public long getLongField(Buffer buffer) {
        Field field = getField(buffer);
        if (field == null) {
            return -1L;
        }
        return field.getLongValue();
    }

    public String getStringField(Buffer buffer) {
        Field field = getField(buffer);
        if (field == null) {
            return null;
        }
        return field.getValue();
    }

    public void putLongField(String str, long j4) {
        put(HttpHeaders.CACHE.lookup(str), BufferUtil.toBuffer(j4));
    }

    public void add(Buffer buffer, Buffer buffer2) {
        if (buffer2 != null) {
            if (!(buffer instanceof BufferCache.CachedBuffer)) {
                buffer = HttpHeaders.CACHE.lookup(buffer);
            }
            Buffer bufferAsImmutableBuffer = buffer.asImmutableBuffer();
            if (!(buffer2 instanceof BufferCache.CachedBuffer) && HttpHeaderValues.hasKnownValues(HttpHeaders.CACHE.getOrdinal(bufferAsImmutableBuffer))) {
                buffer2 = HttpHeaderValues.CACHE.lookup(buffer2);
            }
            Buffer bufferAsImmutableBuffer2 = buffer2.asImmutableBuffer();
            Field field = null;
            for (Field field2 = this._names.get(bufferAsImmutableBuffer); field2 != null; field2 = field2._next) {
                field = field2;
            }
            Field field3 = new Field(bufferAsImmutableBuffer, bufferAsImmutableBuffer2);
            this._fields.add(field3);
            if (field != null) {
                field._next = field3;
                return;
            } else {
                this._names.put(bufferAsImmutableBuffer, field3);
                return;
            }
        }
        throw new IllegalArgumentException("null value");
    }

    public void addLongField(Buffer buffer, long j4) {
        add(buffer, BufferUtil.toBuffer(j4));
    }

    public void putDateField(String str, long j4) {
        putDateField(HttpHeaders.CACHE.lookup(str), j4);
    }

    public Enumeration<String> getValues(Buffer buffer) {
        Field field = getField(buffer);
        if (field == null) {
            return Collections.enumeration(Collections.emptyList());
        }
        return new Enumeration<String>(field) { // from class: org.eclipse.jetty.http.HttpFields.5

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public Field f2888f;
            public final /* synthetic */ Field val$field;

            {
                this.val$field = field;
                this.f2888f = field;
            }

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.f2888f != null;
            }

            @Override // java.util.Enumeration
            public String nextElement() {
                Field field2 = this.f2888f;
                if (field2 == null) {
                    throw new NoSuchElementException();
                }
                this.f2888f = field2._next;
                return field2.getValue();
            }
        };
    }

    public void put(Buffer buffer, String str) {
        put(HttpHeaders.CACHE.lookup(buffer), convertValue(str));
    }

    public void put(Buffer buffer, Buffer buffer2) {
        remove(buffer);
        if (buffer2 == null) {
            return;
        }
        if (!(buffer instanceof BufferCache.CachedBuffer)) {
            buffer = HttpHeaders.CACHE.lookup(buffer);
        }
        if (!(buffer2 instanceof BufferCache.CachedBuffer)) {
            buffer2 = HttpHeaderValues.CACHE.lookup(buffer2).asImmutableBuffer();
        }
        Field field = new Field(buffer, buffer2);
        this._fields.add(field);
        this._names.put(buffer, field);
    }

    public Enumeration<String> getValues(String str, final String str2) {
        final Enumeration<String> values = getValues(str);
        if (values == null) {
            return null;
        }
        return new Enumeration<String>() { // from class: org.eclipse.jetty.http.HttpFields.6
            public QuotedStringTokenizer tok = null;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                QuotedStringTokenizer quotedStringTokenizer = this.tok;
                if (quotedStringTokenizer != null && quotedStringTokenizer.hasMoreElements()) {
                    return true;
                }
                while (values.hasMoreElements()) {
                    QuotedStringTokenizer quotedStringTokenizer2 = new QuotedStringTokenizer((String) values.nextElement(), str2, false, false);
                    this.tok = quotedStringTokenizer2;
                    if (quotedStringTokenizer2.hasMoreElements()) {
                        return true;
                    }
                }
                this.tok = null;
                return false;
            }

            @Override // java.util.Enumeration
            public String nextElement() {
                if (!hasMoreElements()) {
                    throw new NoSuchElementException();
                }
                String str3 = (String) this.tok.nextElement();
                return str3 != null ? str3.trim() : str3;
            }
        };
    }

    public void put(String str, List<?> list) {
        if (list != null && list.size() != 0) {
            Buffer bufferLookup = HttpHeaders.CACHE.lookup(str);
            Object obj = list.get(0);
            if (obj != null) {
                put(bufferLookup, HttpHeaderValues.CACHE.lookup(obj.toString()));
            } else {
                remove(bufferLookup);
            }
            if (list.size() > 1) {
                Iterator<?> it = list.iterator();
                it.next();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next != null) {
                        put(bufferLookup, HttpHeaderValues.CACHE.lookup(next.toString()));
                    }
                }
                return;
            }
            return;
        }
        remove(str);
    }

    public void add(HttpFields httpFields) {
        if (httpFields == null) {
            return;
        }
        Enumeration<String> fieldNames = httpFields.getFieldNames();
        while (fieldNames.hasMoreElements()) {
            String strNextElement = fieldNames.nextElement();
            Enumeration<String> values = httpFields.getValues(strNextElement);
            while (values.hasMoreElements()) {
                add(strNextElement, values.nextElement());
            }
        }
    }
}
