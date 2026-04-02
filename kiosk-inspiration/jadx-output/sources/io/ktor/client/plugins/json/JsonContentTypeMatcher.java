package io.ktor.client.plugins.json;

import io.ktor.http.ContentType;
import io.ktor.http.ContentTypeMatcher;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: JsonContentTypeMatcher.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lio/ktor/client/plugins/json/JsonContentTypeMatcher;", "Lio/ktor/http/ContentTypeMatcher;", "()V", "contains", "", "contentType", "Lio/ktor/http/ContentType;", "ktor-client-json"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class JsonContentTypeMatcher implements ContentTypeMatcher {
    @Override // io.ktor.http.ContentTypeMatcher
    public boolean contains(ContentType contentType) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        if (ContentType.Application.INSTANCE.getJson().match(contentType)) {
            return true;
        }
        String string = contentType.withoutParameters().toString();
        return StringsKt.startsWith$default(string, "application/", false, 2, (Object) null) && StringsKt.endsWith$default(string, "+json", false, 2, (Object) null);
    }
}
