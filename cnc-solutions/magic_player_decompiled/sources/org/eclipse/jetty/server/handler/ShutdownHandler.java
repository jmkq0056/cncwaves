package org.eclipse.jetty.server.handler;

import android.support.v4.media.f;
import j2.c;
import j2.e;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class ShutdownHandler extends AbstractHandler {
    private static final Logger LOG = Log.getLogger((Class<?>) ShutdownHandler.class);
    private boolean _exitJvm = false;
    private final Server _server;
    private final String _shutdownToken;

    public ShutdownHandler(Server server, String str) {
        this._server = server;
        this._shutdownToken = str;
    }

    private boolean hasCorrectSecurityToken(c cVar) {
        return this._shutdownToken.equals(cVar.getParameter("token"));
    }

    private boolean requestFromLocalhost(c cVar) {
        return "127.0.0.1".equals(getRemoteAddr(cVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shutdownServer() {
        this._server.stop();
        if (this._exitJvm) {
            System.exit(0);
        }
    }

    public String getRemoteAddr(c cVar) {
        return cVar.getRemoteAddr();
    }

    @Override // org.eclipse.jetty.server.Handler
    public void handle(String str, Request request, c cVar, e eVar) {
        if (str.equals("/shutdown")) {
            if (!cVar.getMethod().equals(HttpMethods.POST)) {
                eVar.sendError(HttpStatus.BAD_REQUEST_400);
                return;
            }
            if (!hasCorrectSecurityToken(cVar)) {
                Logger logger = LOG;
                StringBuilder sbA = f.a("Unauthorized shutdown attempt from ");
                sbA.append(getRemoteAddr(cVar));
                logger.warn(sbA.toString(), new Object[0]);
                eVar.sendError(HttpStatus.UNAUTHORIZED_401);
                return;
            }
            if (requestFromLocalhost(cVar)) {
                Logger logger2 = LOG;
                StringBuilder sbA2 = f.a("Shutting down by request from ");
                sbA2.append(getRemoteAddr(cVar));
                logger2.info(sbA2.toString(), new Object[0]);
                new Thread() { // from class: org.eclipse.jetty.server.handler.ShutdownHandler.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            ShutdownHandler.this.shutdownServer();
                        } catch (InterruptedException e4) {
                            ShutdownHandler.LOG.ignore(e4);
                        } catch (Exception e5) {
                            throw new RuntimeException("Shutting down server", e5);
                        }
                    }
                }.start();
                return;
            }
            Logger logger3 = LOG;
            StringBuilder sbA3 = f.a("Unauthorized shutdown attempt from ");
            sbA3.append(getRemoteAddr(cVar));
            logger3.warn(sbA3.toString(), new Object[0]);
            eVar.sendError(HttpStatus.UNAUTHORIZED_401);
        }
    }

    public void setExitJvm(boolean z3) {
        this._exitJvm = z3;
    }
}
