package org.apache.http.protocol;

import com.google.firebase.perf.FirebasePerformance;
import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes5.dex */
public class RequestConnControl implements HttpRequestInterceptor {
    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        Args.notNull(httpRequest, "HTTP request");
        if (httpRequest.getRequestLine().getMethod().equalsIgnoreCase(FirebasePerformance.HttpMethod.CONNECT) || httpRequest.containsHeader("Connection")) {
            return;
        }
        httpRequest.addHeader("Connection", "Keep-Alive");
    }
}
