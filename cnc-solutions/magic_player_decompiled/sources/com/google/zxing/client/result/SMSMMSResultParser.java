package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class SMSMMSResultParser extends ResultParser {
    private static void addNumberVia(Collection<String> collection, Collection<String> collection2, String str) {
        int iIndexOf = str.indexOf(59);
        if (iIndexOf < 0) {
            collection.add(str);
            collection2.add(null);
        } else {
            collection.add(str.substring(0, iIndexOf));
            String strSubstring = str.substring(iIndexOf + 1);
            collection2.add(strSubstring.startsWith("via=") ? strSubstring.substring(4) : null);
        }
    }

    @Override // com.google.zxing.client.result.ResultParser
    public SMSParsedResult parse(Result result) {
        String str;
        String massagedText = ResultParser.getMassagedText(result);
        String str2 = null;
        if (!massagedText.startsWith("sms:") && !massagedText.startsWith("SMS:") && !massagedText.startsWith("mms:") && !massagedText.startsWith("MMS:")) {
            return null;
        }
        Map<String, String> nameValuePairs = ResultParser.parseNameValuePairs(massagedText);
        boolean z3 = false;
        if (nameValuePairs == null || nameValuePairs.isEmpty()) {
            str = null;
        } else {
            str2 = nameValuePairs.get("subject");
            str = nameValuePairs.get("body");
            z3 = true;
        }
        int iIndexOf = massagedText.indexOf(63, 4);
        String strSubstring = (iIndexOf < 0 || !z3) ? massagedText.substring(4) : massagedText.substring(4, iIndexOf);
        int i4 = -1;
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        while (true) {
            int i5 = i4 + 1;
            int iIndexOf2 = strSubstring.indexOf(44, i5);
            if (iIndexOf2 <= i4) {
                addNumberVia(arrayList, arrayList2, strSubstring.substring(i5));
                String[] strArr = ResultParser.EMPTY_STR_ARRAY;
                return new SMSParsedResult((String[]) arrayList.toArray(strArr), (String[]) arrayList2.toArray(strArr), str2, str);
            }
            addNumberVia(arrayList, arrayList2, strSubstring.substring(i5, iIndexOf2));
            i4 = iIndexOf2;
        }
    }
}
