package io.ktor.client.plugins.cookies;

import com.google.firebase.sessions.settings.RemoteSettings;
import io.ktor.http.Cookie;
import io.ktor.http.IpParserKt;
import io.ktor.http.URLProtocolKt;
import io.ktor.http.URLUtilsKt;
import io.ktor.http.Url;
import io.ktor.util.TextKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: CookiesStorage.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0007\u001a\u0014\u0010\b\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0000\u001a\u0014\u0010\u000b\u001a\u00020\f*\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"addCookie", "", "Lio/ktor/client/plugins/cookies/CookiesStorage;", "urlString", "", "cookie", "Lio/ktor/http/Cookie;", "(Lio/ktor/client/plugins/cookies/CookiesStorage;Ljava/lang/String;Lio/ktor/http/Cookie;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fillDefaults", "requestUrl", "Lio/ktor/http/Url;", "matches", "", "ktor-client-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class CookiesStorageKt {
    public static final Object addCookie(CookiesStorage cookiesStorage, String str, Cookie cookie, Continuation<? super Unit> continuation) {
        Object objAddCookie = cookiesStorage.addCookie(URLUtilsKt.Url(str), cookie, continuation);
        return objAddCookie == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAddCookie : Unit.INSTANCE;
    }

    public static final boolean matches(Cookie cookie, Url requestUrl) {
        String lowerCasePreservingASCIIRules;
        String strTrimStart;
        Intrinsics.checkNotNullParameter(cookie, "<this>");
        Intrinsics.checkNotNullParameter(requestUrl, "requestUrl");
        String domain = cookie.getDomain();
        if (domain == null || (lowerCasePreservingASCIIRules = TextKt.toLowerCasePreservingASCIIRules(domain)) == null || (strTrimStart = StringsKt.trimStart(lowerCasePreservingASCIIRules, '.')) == null) {
            throw new IllegalStateException("Domain field should have the default value".toString());
        }
        cookie.getPath();
        String path = cookie.getPath();
        if (path == null) {
            throw new IllegalStateException("Path field should have the default value".toString());
        }
        if (!StringsKt.endsWith$default((CharSequence) path, '/', false, 2, (Object) null)) {
            path = cookie.getPath() + '/';
        }
        String lowerCasePreservingASCIIRules2 = TextKt.toLowerCasePreservingASCIIRules(requestUrl.getHost());
        String encodedPath = requestUrl.getEncodedPath();
        if (!StringsKt.endsWith$default((CharSequence) encodedPath, '/', false, 2, (Object) null)) {
            encodedPath = encodedPath + '/';
        }
        if (!Intrinsics.areEqual(lowerCasePreservingASCIIRules2, strTrimStart) && (IpParserKt.hostIsIp(lowerCasePreservingASCIIRules2) || !StringsKt.endsWith$default(lowerCasePreservingASCIIRules2, "." + strTrimStart, false, 2, (Object) null))) {
            return false;
        }
        if (Intrinsics.areEqual(path, RemoteSettings.FORWARD_SLASH_STRING) || Intrinsics.areEqual(encodedPath, path) || StringsKt.startsWith$default(encodedPath, path, false, 2, (Object) null)) {
            return !cookie.getSecure() || URLProtocolKt.isSecure(requestUrl.getProtocol());
        }
        return false;
    }

    public static final Cookie fillDefaults(Cookie cookie, Url requestUrl) {
        Intrinsics.checkNotNullParameter(cookie, "<this>");
        Intrinsics.checkNotNullParameter(requestUrl, "requestUrl");
        String path = cookie.getPath();
        Cookie cookieCopy$default = (path == null || !StringsKt.startsWith$default(path, RemoteSettings.FORWARD_SLASH_STRING, false, 2, (Object) null)) ? Cookie.copy$default(cookie, null, null, null, 0, null, null, requestUrl.getEncodedPath(), false, false, null, 959, null) : cookie;
        String domain = cookieCopy$default.getDomain();
        return (domain == null || StringsKt.isBlank(domain)) ? Cookie.copy$default(cookieCopy$default, null, null, null, 0, null, requestUrl.getHost(), null, false, false, null, 991, null) : cookieCopy$default;
    }
}
