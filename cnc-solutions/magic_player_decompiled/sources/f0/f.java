package f0;

import android.content.Context;
import android.os.Build;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import cn.huidu.lcd.render.R$id;
import cn.huidu.lcd.render.R$layout;
import cn.huidu.lcd.render.model.HtmlNode;
import cn.huidu.lcd.render.model.WidgetNode;

/* JADX INFO: loaded from: classes.dex */
public class f extends d0.h<HtmlNode> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final WebView f1634p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public View f1635q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1636r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1637s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1638t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1639u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f1640v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1641w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f1642x;

    public f(a0.g gVar) {
        super(gVar);
        WebView webView = new WebView(gVar.f30a);
        this.f1634p = webView;
        h0.h.b("HtmlWidget", "initWebView: ");
        webView.setWebChromeClient(new d(this));
        webView.setWebViewClient(new e(this));
    }

    @Override // d0.e
    public void C() {
        super.C();
        this.f1634p.resumeTimers();
        K(false);
    }

    @Override // d0.e
    public void E(int i4) {
        super.E(i4);
        this.f1634p.resumeTimers();
        K(true);
    }

    @Override // d0.e
    public void G() {
        super.G();
        this.f1634p.destroy();
        this.f1489d.removeMessages(3);
        this.f1489d.removeMessages(4);
    }

    @Override // d0.h
    public boolean H(WidgetNode widgetNode) {
        return widgetNode instanceof HtmlNode;
    }

    public void I(String str) {
        h0.h.b("HtmlWidget", "loadUrl: " + str);
        try {
            J(true);
            this.f1634p.loadUrl(str);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public final void J(boolean z3) {
        this.f1636r = z3;
        View view = this.f1635q;
        if (view != null) {
            view.setVisibility(z3 ? 0 : 8);
        }
    }

    public final void K(boolean z3) {
        long jMax;
        int i4 = this.f1637s;
        if (i4 > 0) {
            if (z3) {
                jMax = i4;
                this.f1640v = SystemClock.elapsedRealtime();
            } else {
                jMax = Math.max(((long) this.f1637s) - (SystemClock.elapsedRealtime() - this.f1640v), 1000L);
            }
        } else {
            if (this.f1642x <= 0) {
                return;
            }
            jMax = Math.max(this.f1642x - SystemClock.elapsedRealtime(), 1000L);
        }
        h0.h.b("HtmlWidget", "reload delay: " + jMax + "ms");
        this.f1489d.removeMessages(3);
        this.f1489d.sendEmptyMessageDelayed(3, jMax);
    }

    @Override // d0.e, d0.c
    public void a() {
        super.a();
        K(false);
    }

    @Override // d0.d
    public void m() {
        String strSubstring;
        int iIndexOf;
        int iIndexOf2;
        if (!((HtmlNode) this.f1487b).isAutoRefresh() || ((HtmlNode) this.f1487b).getRefreshInterval() <= 0) {
            this.f1637s = 0;
        } else {
            this.f1637s = Math.max(((HtmlNode) this.f1487b).getRefreshInterval(), 1000);
        }
        this.f1638t = ((HtmlNode) this.f1487b).getOffsetX();
        this.f1639u = ((HtmlNode) this.f1487b).getOffsetY();
        WebSettings settings = this.f1634p.getSettings();
        settings.setCacheMode(2);
        settings.setDomStorageEnabled(true);
        settings.setGeolocationEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setAllowUniversalAccessFromFileURLs(true);
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setSupportZoom(false);
        settings.setBuiltInZoomControls(false);
        boolean z3 = ((HtmlNode) this.f1487b).getScale() == 0;
        settings.setUseWideViewPort(z3);
        settings.setLoadWithOverviewMode(z3);
        settings.setMediaPlaybackRequiresUserGesture(false);
        String userAgent = ((HtmlNode) this.f1487b).getUserAgent();
        h0.h.b("HtmlWidget", "UserAgent: " + userAgent);
        String string = null;
        if (userAgent != null && userAgent.length() != 0) {
            if (userAgent.equals("Original")) {
                settings.setUserAgentString(null);
            } else if (userAgent.equals("Desktop")) {
                String userAgentString = settings.getUserAgentString();
                if (userAgentString == null || !userAgentString.contains("Mozilla") || (iIndexOf = userAgentString.indexOf("Chrome/") + 7) < 0 || (iIndexOf2 = userAgentString.indexOf(" ", iIndexOf)) <= iIndexOf) {
                    strSubstring = "105.0.5195.136";
                } else {
                    strSubstring = userAgentString.substring(iIndexOf, iIndexOf2);
                    h0.h.b("HtmlWidget", "chrome version: " + strSubstring);
                }
                String strA = android.support.v4.media.h.a("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/", strSubstring, " Safari/534.24");
                String strA2 = androidx.appcompat.view.a.a("setUserAgent: ", strA);
                if (h0.h.a(4) && strA2 != null) {
                    Log.i("HtmlWidget", strA2);
                }
                settings.setUserAgentString(strA);
            } else if (userAgent.contains("Mozilla")) {
                settings.setUserAgentString(userAgent);
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(0);
        }
        if (!TextUtils.isEmpty(((HtmlNode) this.f1487b).getUrl())) {
            string = ((HtmlNode) this.f1487b).getUrl();
        } else if (!TextUtils.isEmpty(((HtmlNode) this.f1487b).getHtmlPath())) {
            StringBuilder sbA = android.support.v4.media.f.a("file://");
            sbA.append(((HtmlNode) this.f1487b).getHtmlPath());
            string = sbA.toString();
        }
        if (string == null) {
            h0.h.d("HtmlWidget", "prepare: url is null!");
            return;
        }
        this.f1641w = 0;
        if (SystemClock.elapsedRealtime() < 60000) {
            Message messageObtain = Message.obtain();
            messageObtain.obj = string;
            messageObtain.what = 4;
            this.f1489d.sendMessageDelayed(messageObtain, 3000L);
        } else {
            I(string);
        }
        this.f1634p.pauseTimers();
    }

    @Override // d0.d
    public void n() {
        J(this.f1636r);
    }

    @Override // d0.d
    public View p(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.addView(this.f1634p, -1, -1);
        LayoutInflater.from(context).inflate(R$layout.loading_view, (ViewGroup) frameLayout, true);
        this.f1635q = frameLayout.findViewById(R$id.ll_loading);
        return frameLayout;
    }

    @Override // d0.e
    public void x() {
        D();
    }

    @Override // d0.e
    public void y(Message message) {
        super.y(message);
        int i4 = message.what;
        if (i4 != 3) {
            if (i4 == 4) {
                Object obj = message.obj;
                if (obj instanceof String) {
                    I((String) obj);
                    return;
                }
                return;
            }
            return;
        }
        if (!this.f1636r || this.f1642x > 0) {
            h0.h.b("HtmlWidget", "reload page.");
            this.f1642x = 0L;
            this.f1634p.reload();
        } else {
            h0.h.b("HtmlWidget", "WebView is loading, reload in next time.");
        }
        K(true);
    }

    @Override // d0.e
    public void z() {
        super.z();
        this.f1634p.pauseTimers();
        this.f1489d.removeMessages(3);
        this.f1489d.removeMessages(4);
    }
}
