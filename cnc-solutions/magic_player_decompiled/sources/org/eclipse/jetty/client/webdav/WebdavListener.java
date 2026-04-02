package org.eclipse.jetty.client.webdav;

import android.support.v4.media.d;
import android.support.v4.media.g;
import java.io.IOException;
import org.eclipse.jetty.client.HttpDestination;
import org.eclipse.jetty.client.HttpEventListenerWrapper;
import org.eclipse.jetty.client.HttpExchange;
import org.eclipse.jetty.client.security.SecurityListener;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class WebdavListener extends HttpEventListenerWrapper {
    private static final Logger LOG = Log.getLogger((Class<?>) WebdavListener.class);
    private HttpDestination _destination;
    private HttpExchange _exchange;
    private boolean _needIntercept;
    private boolean _requestComplete;
    private boolean _responseComplete;
    private boolean _webdavEnabled;

    public WebdavListener(HttpDestination httpDestination, HttpExchange httpExchange) {
        super(httpExchange.getEventListener(), true);
        this._destination = httpDestination;
        this._exchange = httpExchange;
        if (HttpMethods.PUT.equalsIgnoreCase(httpExchange.getMethod())) {
            this._webdavEnabled = true;
        }
    }

    private boolean checkExists(String str) {
        if (str == null) {
            System.out.println("have failed miserably");
            return false;
        }
        PropfindExchange propfindExchange = new PropfindExchange();
        propfindExchange.setAddress(this._exchange.getAddress());
        propfindExchange.setMethod(HttpMethods.GET);
        propfindExchange.setScheme(this._exchange.getScheme());
        propfindExchange.setEventListener(new SecurityListener(this._destination, propfindExchange));
        propfindExchange.setConfigureListeners(false);
        propfindExchange.setRequestURI(str);
        this._destination.send(propfindExchange);
        try {
            propfindExchange.waitForDone();
            return propfindExchange.exists();
        } catch (InterruptedException e4) {
            LOG.ignore(e4);
            return false;
        }
    }

    private boolean checkWebdavSupported() {
        WebdavSupportedExchange webdavSupportedExchange = new WebdavSupportedExchange();
        webdavSupportedExchange.setAddress(this._exchange.getAddress());
        webdavSupportedExchange.setMethod(HttpMethods.OPTIONS);
        webdavSupportedExchange.setScheme(this._exchange.getScheme());
        webdavSupportedExchange.setEventListener(new SecurityListener(this._destination, webdavSupportedExchange));
        webdavSupportedExchange.setConfigureListeners(false);
        webdavSupportedExchange.setRequestURI(this._exchange.getURI());
        this._destination.send(webdavSupportedExchange);
        try {
            webdavSupportedExchange.waitTilCompletion();
            return webdavSupportedExchange.isWebdavSupported();
        } catch (InterruptedException e4) {
            LOG.ignore(e4);
            return false;
        }
    }

    private boolean makeCollection(String str) {
        MkcolExchange mkcolExchange = new MkcolExchange();
        mkcolExchange.setAddress(this._exchange.getAddress());
        mkcolExchange.setMethod("MKCOL " + str + " HTTP/1.1");
        mkcolExchange.setScheme(this._exchange.getScheme());
        mkcolExchange.setEventListener(new SecurityListener(this._destination, mkcolExchange));
        mkcolExchange.setConfigureListeners(false);
        mkcolExchange.setRequestURI(str);
        this._destination.send(mkcolExchange);
        try {
            mkcolExchange.waitForDone();
            return mkcolExchange.exists();
        } catch (InterruptedException e4) {
            LOG.ignore(e4);
            return false;
        }
    }

    private boolean resolveCollectionIssues() {
        String uri = this._exchange.getURI();
        String[] strArrSplit = this._exchange.getURI().split("/");
        int length = strArrSplit.length;
        String strParentPath = URIUtil.parentPath(uri);
        boolean z3 = false;
        int i4 = 0;
        while (strParentPath != null && !checkExists(strParentPath)) {
            i4++;
            strParentPath = URIUtil.parentPath(strParentPath);
        }
        if (checkWebdavSupported()) {
            while (true) {
                z3 = true;
                if (i4 <= 0) {
                    break;
                }
                StringBuilder sbA = g.a(strParentPath, "/");
                int i5 = (length - i4) - 1;
                sbA.append(strArrSplit[i5]);
                makeCollection(sbA.toString());
                StringBuilder sbA2 = g.a(strParentPath, "/");
                sbA2.append(strArrSplit[i5]);
                strParentPath = sbA2.toString();
                i4--;
            }
        }
        return z3;
    }

    @Override // org.eclipse.jetty.client.HttpEventListenerWrapper, org.eclipse.jetty.client.HttpEventListener
    public void onRequestComplete() {
        this._requestComplete = true;
        if (!this._needIntercept) {
            super.onRequestComplete();
            return;
        }
        if (!this._responseComplete) {
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                logger.debug("WebdavListener:Not ready, calling super", new Object[0]);
            }
            super.onRequestComplete();
            return;
        }
        try {
            if (resolveCollectionIssues()) {
                setDelegatingRequests(true);
                setDelegatingResponses(true);
                this._requestComplete = false;
                this._responseComplete = false;
                this._destination.resend(this._exchange);
            } else {
                setDelegatingRequests(true);
                setDelegatingResponses(true);
                super.onRequestComplete();
            }
        } catch (IOException unused) {
            LOG.debug("WebdavListener:Complete:IOException: might not be dealing with dav server, delegate", new Object[0]);
            super.onRequestComplete();
        }
    }

    @Override // org.eclipse.jetty.client.HttpEventListenerWrapper, org.eclipse.jetty.client.HttpEventListener
    public void onResponseComplete() {
        this._responseComplete = true;
        if (!this._needIntercept) {
            super.onResponseComplete();
            return;
        }
        if (!this._requestComplete) {
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                logger.debug("WebdavListener:Not ready, calling super", new Object[0]);
            }
            super.onResponseComplete();
            return;
        }
        try {
            if (resolveCollectionIssues()) {
                setDelegatingRequests(true);
                setDelegatingResponses(true);
                this._requestComplete = false;
                this._responseComplete = false;
                this._destination.resend(this._exchange);
            } else {
                setDelegationResult(false);
                setDelegatingRequests(true);
                setDelegatingResponses(true);
                super.onResponseComplete();
            }
        } catch (IOException unused) {
            LOG.debug("WebdavListener:Complete:IOException: might not be dealing with dav server, delegate", new Object[0]);
            super.onResponseComplete();
        }
    }

    @Override // org.eclipse.jetty.client.HttpEventListenerWrapper, org.eclipse.jetty.client.HttpEventListener
    public void onResponseStatus(Buffer buffer, int i4, Buffer buffer2) {
        if (!this._webdavEnabled) {
            this._needIntercept = false;
            super.onResponseStatus(buffer, i4, buffer2);
            return;
        }
        Logger logger = LOG;
        if (logger.isDebugEnabled()) {
            logger.debug(d.a("WebdavListener:Response Status: ", i4), new Object[0]);
        }
        if (i4 != 403 && i4 != 409) {
            this._needIntercept = false;
            setDelegatingResponses(true);
            setDelegatingRequests(true);
        } else if (this._webdavEnabled) {
            if (logger.isDebugEnabled()) {
                logger.debug("WebdavListener:Response Status: dav enabled, taking a stab at resolving put issue", new Object[0]);
            }
            setDelegatingResponses(false);
            this._needIntercept = true;
        } else {
            if (logger.isDebugEnabled()) {
                logger.debug("WebdavListener:Response Status: Webdav Disabled", new Object[0]);
            }
            setDelegatingResponses(true);
            setDelegatingRequests(true);
            this._needIntercept = false;
        }
        super.onResponseStatus(buffer, i4, buffer2);
    }
}
