package com.google.zxing.client.result;

/* JADX INFO: loaded from: classes2.dex */
public final class ExpandedProductResultParser extends ResultParser {
    private static String findAIvalue(int i4, String str) {
        if (str.charAt(i4) != '(') {
            return null;
        }
        String strSubstring = str.substring(i4 + 1);
        StringBuilder sb = new StringBuilder();
        for (int i5 = 0; i5 < strSubstring.length(); i5++) {
            char cCharAt = strSubstring.charAt(i5);
            if (cCharAt == ')') {
                return sb.toString();
            }
            if (cCharAt < '0' || cCharAt > '9') {
                return null;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    private static String findValue(int i4, String str) {
        StringBuilder sb = new StringBuilder();
        String strSubstring = str.substring(i4);
        for (int i5 = 0; i5 < strSubstring.length(); i5++) {
            char cCharAt = strSubstring.charAt(i5);
            if (cCharAt != '(') {
                sb.append(cCharAt);
            } else {
                if (findAIvalue(i5, strSubstring) != null) {
                    break;
                }
                sb.append('(');
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004f  */
    @Override // com.google.zxing.client.result.ResultParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.client.result.ExpandedProductParsedResult parse(com.google.zxing.Result r24) {
        /*
            Method dump skipped, instruction units count: 862
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.result.ExpandedProductResultParser.parse(com.google.zxing.Result):com.google.zxing.client.result.ExpandedProductParsedResult");
    }
}
