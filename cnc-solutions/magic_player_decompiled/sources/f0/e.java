package f0;

import android.os.SystemClock;
import android.util.Log;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: loaded from: classes.dex */
public class e extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f1633a;

    public e(f fVar) {
        this.f1633a = fVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        h0.h.b("HtmlWidget", "onPageFinished: " + str);
        this.f1633a.J(false);
        try {
            f fVar = this.f1633a;
            if (fVar.f1638t < 0) {
                fVar.f1638t = 0;
            }
            if (fVar.f1639u < 0) {
                fVar.f1639u = 0;
            }
            if (fVar.f1638t > 0 || fVar.f1639u > 0) {
                webView.postDelayed(new d.d(this), 300L);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        int errorCode = webResourceError.getErrorCode();
        StringBuilder sbA = android.support.v4.media.a.a("onReceivedError: getErrorCode()->", errorCode, " getDescription->");
        sbA.append((Object) webResourceError.getDescription());
        Log.d("HtmlWidget", sbA.toString());
        if (errorCode == -6 || errorCode == -9 || errorCode == -8 || errorCode == -1 || errorCode == -11 || errorCode == -2 || !this.f1633a.w()) {
            return;
        }
        f fVar = this.f1633a;
        int i4 = fVar.f1641w + 1;
        fVar.f1641w = i4;
        int iMin = Math.min(i4 * 5000, 15000);
        StringBuilder sbA2 = android.support.v4.media.a.a("onReceivedError: reload delay: ", iMin, "ms, retry count: ");
        sbA2.append(this.f1633a.f1641w);
        String string = sbA2.toString();
        if (h0.h.a(4) && string != null) {
            Log.i("HtmlWidget", string);
        }
        long j4 = iMin;
        this.f1633a.f1642x = SystemClock.elapsedRealtime() + j4;
        this.f1633a.f1489d.removeMessages(3);
        this.f1633a.f1489d.sendEmptyMessageDelayed(3, j4);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return false;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        webView.loadUrl(str);
        return false;
    }
}
