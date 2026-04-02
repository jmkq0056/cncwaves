package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a {
    public static TextParseException a(String str, String str2, Tokenizer tokenizer) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(str2);
        return tokenizer.exception(stringBuffer.toString());
    }
}
