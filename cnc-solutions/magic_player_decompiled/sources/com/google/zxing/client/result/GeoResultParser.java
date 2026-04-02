package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class GeoResultParser extends ResultParser {
    private static final Pattern GEO_URL_PATTERN = Pattern.compile("geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?", 2);

    @Override // com.google.zxing.client.result.ResultParser
    public GeoParsedResult parse(Result result) {
        Matcher matcher = GEO_URL_PATTERN.matcher(ResultParser.getMassagedText(result));
        if (!matcher.matches()) {
            return null;
        }
        String strGroup = matcher.group(4);
        try {
            double d4 = Double.parseDouble(matcher.group(1));
            if (d4 <= 90.0d && d4 >= -90.0d) {
                double d5 = Double.parseDouble(matcher.group(2));
                if (d5 <= 180.0d && d5 >= -180.0d) {
                    double d6 = 0.0d;
                    if (matcher.group(3) != null) {
                        double d7 = Double.parseDouble(matcher.group(3));
                        if (d7 < 0.0d) {
                            return null;
                        }
                        d6 = d7;
                    }
                    return new GeoParsedResult(d4, d5, d6, strGroup);
                }
            }
        } catch (NumberFormatException unused) {
        }
        return null;
    }
}
