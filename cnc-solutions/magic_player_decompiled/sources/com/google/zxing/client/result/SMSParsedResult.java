package com.google.zxing.client.result;

import android.support.v4.media.f;

/* JADX INFO: loaded from: classes2.dex */
public final class SMSParsedResult extends ParsedResult {
    private final String body;
    private final String[] numbers;
    private final String subject;
    private final String[] vias;

    public SMSParsedResult(String str, String str2, String str3, String str4) {
        super(ParsedResultType.SMS);
        this.numbers = new String[]{str};
        this.vias = new String[]{str2};
        this.subject = str3;
        this.body = str4;
    }

    public String getBody() {
        return this.body;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(100);
        ParsedResult.maybeAppend(this.numbers, sb);
        ParsedResult.maybeAppend(this.subject, sb);
        ParsedResult.maybeAppend(this.body, sb);
        return sb.toString();
    }

    public String[] getNumbers() {
        return this.numbers;
    }

    public String getSMSURI() {
        StringBuilder sbA = f.a("sms:");
        boolean z3 = true;
        for (int i4 = 0; i4 < this.numbers.length; i4++) {
            if (z3) {
                z3 = false;
            } else {
                sbA.append(',');
            }
            sbA.append(this.numbers[i4]);
            String[] strArr = this.vias;
            if (strArr != null && strArr[i4] != null) {
                sbA.append(";via=");
                sbA.append(this.vias[i4]);
            }
        }
        boolean z4 = this.body != null;
        boolean z5 = this.subject != null;
        if (z4 || z5) {
            sbA.append('?');
            if (z4) {
                sbA.append("body=");
                sbA.append(this.body);
            }
            if (z5) {
                if (z4) {
                    sbA.append('&');
                }
                sbA.append("subject=");
                sbA.append(this.subject);
            }
        }
        return sbA.toString();
    }

    public String getSubject() {
        return this.subject;
    }

    public String[] getVias() {
        return this.vias;
    }

    public SMSParsedResult(String[] strArr, String[] strArr2, String str, String str2) {
        super(ParsedResultType.SMS);
        this.numbers = strArr;
        this.vias = strArr2;
        this.subject = str;
        this.body = str2;
    }
}
