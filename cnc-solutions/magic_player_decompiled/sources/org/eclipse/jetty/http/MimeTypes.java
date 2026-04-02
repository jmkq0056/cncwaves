package org.eclipse.jetty.http;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.BufferCache;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class MimeTypes {
    public static final BufferCache CACHE;
    public static final String FORM_ENCODED = "application/x-www-form-urlencoded";
    public static final BufferCache.CachedBuffer FORM_ENCODED_BUFFER;
    private static final int FORM_ENCODED_ORDINAL = 1;
    public static final String MESSAGE_HTTP = "message/http";
    public static final BufferCache.CachedBuffer MESSAGE_HTTP_BUFFER;
    private static final int MESSAGE_HTTP_ORDINAL = 2;
    public static final String MULTIPART_BYTERANGES = "multipart/byteranges";
    public static final BufferCache.CachedBuffer MULTIPART_BYTERANGES_BUFFER;
    private static final int MULTIPART_BYTERANGES_ORDINAL = 3;
    public static final String TEXT_HTML = "text/html";
    public static final String TEXT_HTML_8859_1 = "text/html;charset=ISO-8859-1";
    public static final BufferCache.CachedBuffer TEXT_HTML_8859_1_BUFFER;
    private static final int TEXT_HTML_8859_1_ORDINAL = 8;
    public static final BufferCache.CachedBuffer TEXT_HTML_BUFFER;
    private static final int TEXT_HTML_ORDINAL = 4;
    public static final String TEXT_HTML_UTF_8 = "text/html;charset=UTF-8";
    public static final BufferCache.CachedBuffer TEXT_HTML_UTF_8_BUFFER;
    private static final int TEXT_HTML_UTF_8_ORDINAL = 11;
    private static final String TEXT_HTML__8859_1 = "text/html; charset=ISO-8859-1";
    public static final BufferCache.CachedBuffer TEXT_HTML__8859_1_BUFFER;
    private static final String TEXT_HTML__UTF_8 = "text/html; charset=UTF-8";
    public static final BufferCache.CachedBuffer TEXT_HTML__UTF_8_BUFFER;
    public static final String TEXT_JSON = "text/json";
    public static final BufferCache.CachedBuffer TEXT_JSON_BUFFER;
    private static final int TEXT_JSON_ORDINAL = 7;
    public static final String TEXT_JSON_UTF_8 = "text/json;charset=UTF-8";
    public static final BufferCache.CachedBuffer TEXT_JSON_UTF_8_BUFFER;
    private static final int TEXT_JSON_UTF_8_ORDINAL = 14;
    private static final String TEXT_JSON__UTF_8 = "text/json; charset=UTF-8";
    public static final BufferCache.CachedBuffer TEXT_JSON__UTF_8_BUFFER;
    public static final String TEXT_PLAIN = "text/plain";
    public static final String TEXT_PLAIN_8859_1 = "text/plain;charset=ISO-8859-1";
    public static final BufferCache.CachedBuffer TEXT_PLAIN_8859_1_BUFFER;
    private static final int TEXT_PLAIN_8859_1_ORDINAL = 9;
    public static final BufferCache.CachedBuffer TEXT_PLAIN_BUFFER;
    private static final int TEXT_PLAIN_ORDINAL = 5;
    public static final String TEXT_PLAIN_UTF_8 = "text/plain;charset=UTF-8";
    public static final BufferCache.CachedBuffer TEXT_PLAIN_UTF_8_BUFFER;
    private static final int TEXT_PLAIN_UTF_8_ORDINAL = 12;
    private static final String TEXT_PLAIN__8859_1 = "text/plain; charset=ISO-8859-1";
    public static final BufferCache.CachedBuffer TEXT_PLAIN__8859_1_BUFFER;
    private static final String TEXT_PLAIN__UTF_8 = "text/plain; charset=UTF-8";
    public static final BufferCache.CachedBuffer TEXT_PLAIN__UTF_8_BUFFER;
    public static final String TEXT_XML = "text/xml";
    public static final String TEXT_XML_8859_1 = "text/xml;charset=ISO-8859-1";
    public static final BufferCache.CachedBuffer TEXT_XML_8859_1_BUFFER;
    private static final int TEXT_XML_8859_1_ORDINAL = 10;
    public static final BufferCache.CachedBuffer TEXT_XML_BUFFER;
    private static final int TEXT_XML_ORDINAL = 6;
    public static final String TEXT_XML_UTF_8 = "text/xml;charset=UTF-8";
    public static final BufferCache.CachedBuffer TEXT_XML_UTF_8_BUFFER;
    private static final int TEXT_XML_UTF_8_ORDINAL = 13;
    private static final String TEXT_XML__8859_1 = "text/xml; charset=ISO-8859-1";
    public static final BufferCache.CachedBuffer TEXT_XML__8859_1_BUFFER;
    private static final String TEXT_XML__UTF_8 = "text/xml; charset=UTF-8";
    public static final BufferCache.CachedBuffer TEXT_XML__UTF_8_BUFFER;
    private static final Map __dftMimeMap;
    private static final Map __encodings;
    private Map _mimeMap;
    private static final Logger LOG = Log.getLogger((Class<?>) MimeTypes.class);
    private static int __index = 15;

    static {
        BufferCache bufferCache = new BufferCache();
        CACHE = bufferCache;
        FORM_ENCODED_BUFFER = bufferCache.add(FORM_ENCODED, 1);
        MESSAGE_HTTP_BUFFER = bufferCache.add(MESSAGE_HTTP, 2);
        MULTIPART_BYTERANGES_BUFFER = bufferCache.add(MULTIPART_BYTERANGES, 3);
        TEXT_HTML_BUFFER = bufferCache.add(TEXT_HTML, 4);
        TEXT_PLAIN_BUFFER = bufferCache.add(TEXT_PLAIN, 5);
        TEXT_XML_BUFFER = bufferCache.add(TEXT_XML, 6);
        TEXT_JSON_BUFFER = bufferCache.add(TEXT_JSON, 7);
        TEXT_HTML_8859_1_BUFFER = bufferCache.add(TEXT_HTML_8859_1, 8);
        TEXT_PLAIN_8859_1_BUFFER = bufferCache.add(TEXT_PLAIN_8859_1, 9);
        TEXT_XML_8859_1_BUFFER = bufferCache.add(TEXT_XML_8859_1, 10);
        TEXT_HTML_UTF_8_BUFFER = bufferCache.add(TEXT_HTML_UTF_8, 11);
        TEXT_PLAIN_UTF_8_BUFFER = bufferCache.add(TEXT_PLAIN_UTF_8, 12);
        TEXT_XML_UTF_8_BUFFER = bufferCache.add(TEXT_XML_UTF_8, 13);
        TEXT_JSON_UTF_8_BUFFER = bufferCache.add(TEXT_JSON_UTF_8, 14);
        TEXT_HTML__8859_1_BUFFER = bufferCache.add(TEXT_HTML__8859_1, 8);
        TEXT_PLAIN__8859_1_BUFFER = bufferCache.add(TEXT_PLAIN__8859_1, 9);
        TEXT_XML__8859_1_BUFFER = bufferCache.add(TEXT_XML__8859_1, 10);
        TEXT_HTML__UTF_8_BUFFER = bufferCache.add(TEXT_HTML__UTF_8, 11);
        TEXT_PLAIN__UTF_8_BUFFER = bufferCache.add(TEXT_PLAIN__UTF_8, 12);
        TEXT_XML__UTF_8_BUFFER = bufferCache.add(TEXT_XML__UTF_8, 13);
        TEXT_JSON__UTF_8_BUFFER = bufferCache.add(TEXT_JSON__UTF_8, 14);
        __dftMimeMap = new HashMap();
        __encodings = new HashMap();
        try {
            ResourceBundle bundle = ResourceBundle.getBundle("org/eclipse/jetty/http/mime");
            Enumeration<String> keys = bundle.getKeys();
            while (keys.hasMoreElements()) {
                String strNextElement = keys.nextElement();
                __dftMimeMap.put(StringUtil.asciiToLowerCase(strNextElement), normalizeMimeType(bundle.getString(strNextElement)));
            }
        } catch (MissingResourceException e4) {
            Logger logger = LOG;
            logger.warn(e4.toString(), new Object[0]);
            logger.debug(e4);
        }
        try {
            ResourceBundle bundle2 = ResourceBundle.getBundle("org/eclipse/jetty/http/encoding");
            Enumeration<String> keys2 = bundle2.getKeys();
            while (keys2.hasMoreElements()) {
                Buffer bufferNormalizeMimeType = normalizeMimeType(keys2.nextElement());
                __encodings.put(bufferNormalizeMimeType, bundle2.getString(bufferNormalizeMimeType.toString()));
            }
        } catch (MissingResourceException e5) {
            Logger logger2 = LOG;
            logger2.warn(e5.toString(), new Object[0]);
            logger2.debug(e5);
        }
        BufferCache.CachedBuffer cachedBuffer = TEXT_HTML_BUFFER;
        BufferCache.CachedBuffer cachedBuffer2 = TEXT_HTML_8859_1_BUFFER;
        cachedBuffer.setAssociate("ISO-8859-1", cachedBuffer2);
        cachedBuffer.setAssociate("ISO_8859_1", cachedBuffer2);
        cachedBuffer.setAssociate("iso-8859-1", cachedBuffer2);
        BufferCache.CachedBuffer cachedBuffer3 = TEXT_PLAIN_BUFFER;
        BufferCache.CachedBuffer cachedBuffer4 = TEXT_PLAIN_8859_1_BUFFER;
        cachedBuffer3.setAssociate("ISO-8859-1", cachedBuffer4);
        cachedBuffer3.setAssociate("ISO_8859_1", cachedBuffer4);
        cachedBuffer3.setAssociate("iso-8859-1", cachedBuffer4);
        BufferCache.CachedBuffer cachedBuffer5 = TEXT_XML_BUFFER;
        BufferCache.CachedBuffer cachedBuffer6 = TEXT_XML_8859_1_BUFFER;
        cachedBuffer5.setAssociate("ISO-8859-1", cachedBuffer6);
        cachedBuffer5.setAssociate("ISO_8859_1", cachedBuffer6);
        cachedBuffer5.setAssociate("iso-8859-1", cachedBuffer6);
        BufferCache.CachedBuffer cachedBuffer7 = TEXT_HTML_UTF_8_BUFFER;
        cachedBuffer.setAssociate(StringUtil.__UTF8, cachedBuffer7);
        cachedBuffer.setAssociate(StringUtil.__UTF8Alt, cachedBuffer7);
        cachedBuffer.setAssociate("utf8", cachedBuffer7);
        cachedBuffer.setAssociate("utf-8", cachedBuffer7);
        BufferCache.CachedBuffer cachedBuffer8 = TEXT_PLAIN_UTF_8_BUFFER;
        cachedBuffer3.setAssociate(StringUtil.__UTF8, cachedBuffer8);
        cachedBuffer3.setAssociate(StringUtil.__UTF8Alt, cachedBuffer8);
        cachedBuffer3.setAssociate("utf8", cachedBuffer8);
        cachedBuffer3.setAssociate("utf-8", cachedBuffer8);
        BufferCache.CachedBuffer cachedBuffer9 = TEXT_XML_UTF_8_BUFFER;
        cachedBuffer5.setAssociate(StringUtil.__UTF8, cachedBuffer9);
        cachedBuffer5.setAssociate(StringUtil.__UTF8Alt, cachedBuffer9);
        cachedBuffer5.setAssociate("utf8", cachedBuffer9);
        cachedBuffer5.setAssociate("utf-8", cachedBuffer9);
        BufferCache.CachedBuffer cachedBuffer10 = TEXT_JSON_BUFFER;
        BufferCache.CachedBuffer cachedBuffer11 = TEXT_JSON_UTF_8_BUFFER;
        cachedBuffer10.setAssociate(StringUtil.__UTF8, cachedBuffer11);
        cachedBuffer10.setAssociate(StringUtil.__UTF8Alt, cachedBuffer11);
        cachedBuffer10.setAssociate("utf8", cachedBuffer11);
        cachedBuffer10.setAssociate("utf-8", cachedBuffer11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:0x00a7, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getCharsetFromContentType(org.eclipse.jetty.io.Buffer r13) {
        /*
            Method dump skipped, instruction units count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.MimeTypes.getCharsetFromContentType(org.eclipse.jetty.io.Buffer):java.lang.String");
    }

    private static synchronized Buffer normalizeMimeType(String str) {
        BufferCache.CachedBuffer cachedBufferAdd;
        BufferCache bufferCache = CACHE;
        cachedBufferAdd = bufferCache.get(str);
        if (cachedBufferAdd == null) {
            int i4 = __index;
            __index = i4 + 1;
            cachedBufferAdd = bufferCache.add(str, i4);
        }
        return cachedBufferAdd;
    }

    public void addMimeMapping(String str, String str2) {
        if (this._mimeMap == null) {
            this._mimeMap = new HashMap();
        }
        this._mimeMap.put(StringUtil.asciiToLowerCase(str), normalizeMimeType(str2));
    }

    public Buffer getMimeByExtension(String str) {
        Buffer buffer = null;
        if (str != null) {
            int iIndexOf = -1;
            while (buffer == null) {
                iIndexOf = str.indexOf(".", iIndexOf + 1);
                if (iIndexOf < 0 || iIndexOf >= str.length()) {
                    break;
                }
                String strAsciiToLowerCase = StringUtil.asciiToLowerCase(str.substring(iIndexOf + 1));
                Map map = this._mimeMap;
                if (map != null) {
                    buffer = (Buffer) map.get(strAsciiToLowerCase);
                }
                if (buffer == null) {
                    buffer = (Buffer) __dftMimeMap.get(strAsciiToLowerCase);
                }
            }
        }
        if (buffer != null) {
            return buffer;
        }
        Map map2 = this._mimeMap;
        if (map2 != null) {
            buffer = (Buffer) map2.get("*");
        }
        return buffer == null ? (Buffer) __dftMimeMap.get("*") : buffer;
    }

    public synchronized Map getMimeMap() {
        return this._mimeMap;
    }

    public void setMimeMap(Map map) {
        if (map == null) {
            this._mimeMap = null;
            return;
        }
        HashMap map2 = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            map2.put(entry.getKey(), normalizeMimeType(entry.getValue().toString()));
        }
        this._mimeMap = map2;
    }
}
