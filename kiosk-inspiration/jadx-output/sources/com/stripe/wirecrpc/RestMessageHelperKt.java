package com.stripe.wirecrpc;

import io.ktor.http.ContentDisposition;
import java.text.ParseException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.apache.http.protocol.HTTP;

/* JADX INFO: compiled from: RestMessageHelper.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0005\u001a\u000e\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002\"\u001d\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"mimeTypeMap", "", "", "getMimeTypeMap", "()Ljava/util/Map;", "getMimeTypeFromFilename", ContentDisposition.Parameters.FileName, "codegen-utils"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class RestMessageHelperKt {
    private static final Map<String, String> mimeTypeMap = MapsKt.mapOf(TuplesKt.to("txt", HTTP.PLAIN_TEXT_TYPE), TuplesKt.to("svg", "image/svg+xml"));

    public static final Map<String, String> getMimeTypeMap() {
        return mimeTypeMap;
    }

    public static final String getMimeTypeFromFilename(String filename) throws ParseException {
        Intrinsics.checkNotNullParameter(filename, "filename");
        MatchResult matchResultFind$default = Regex.find$default(new Regex("\\.[0-9a-z]+$"), filename, 0, 2, null);
        if (matchResultFind$default == null) {
            throw new ParseException("Could not find file extension in filename: " + filename, 0);
        }
        String strSubstringAfterLast$default = StringsKt.substringAfterLast$default(matchResultFind$default.getValue(), ".", (String) null, 2, (Object) null);
        String str = mimeTypeMap.get(strSubstringAfterLast$default);
        if (str != null) {
            return str;
        }
        throw new ParseException("Could not find MIME type for extension " + strSubstringAfterLast$default + " from filename " + filename, 0);
    }
}
