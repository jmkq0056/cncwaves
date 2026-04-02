package org.eclipse.jetty.security.authentication;

import androidx.core.app.NotificationCompat;
import g2.e0;
import g2.y;
import j2.c;
import j2.e;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.BitSet;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.http.HttpTokens;
import org.eclipse.jetty.security.Authenticator;
import org.eclipse.jetty.security.ServerAuthException;
import org.eclipse.jetty.security.UserAuthentication;
import org.eclipse.jetty.server.Authentication;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.UserIdentity;
import org.eclipse.jetty.util.B64Code;
import org.eclipse.jetty.util.QuotedStringTokenizer;
import org.eclipse.jetty.util.TypeUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.security.Constraint;
import org.eclipse.jetty.util.security.Credential;

/* JADX INFO: loaded from: classes2.dex */
public class DigestAuthenticator extends LoginAuthenticator {
    private static final Logger LOG = Log.getLogger((Class<?>) DigestAuthenticator.class);
    public SecureRandom _random = new SecureRandom();
    private long _maxNonceAgeMs = 60000;
    private int _maxNC = 1024;
    private ConcurrentMap<String, Nonce> _nonceMap = new ConcurrentHashMap();
    private Queue<Nonce> _nonceQueue = new ConcurrentLinkedQueue();

    public static class Digest extends Credential {
        private static final long serialVersionUID = -2484639019549527724L;
        public final String method;
        public String username = "";
        public String realm = "";
        public String nonce = "";
        public String nc = "";
        public String cnonce = "";
        public String qop = "";
        public String uri = "";
        public String response = "";

        public Digest(String str) {
            this.method = str;
        }

        @Override // org.eclipse.jetty.util.security.Credential
        public boolean check(Object obj) {
            byte[] bArrDigest;
            if (obj instanceof char[]) {
                obj = new String((char[]) obj);
            }
            String string = obj instanceof String ? (String) obj : obj.toString();
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                if (obj instanceof Credential.MD5) {
                    bArrDigest = ((Credential.MD5) obj).getDigest();
                } else {
                    messageDigest.update(this.username.getBytes("ISO-8859-1"));
                    messageDigest.update(HttpTokens.COLON);
                    messageDigest.update(this.realm.getBytes("ISO-8859-1"));
                    messageDigest.update(HttpTokens.COLON);
                    messageDigest.update(string.getBytes("ISO-8859-1"));
                    bArrDigest = messageDigest.digest();
                }
                messageDigest.reset();
                messageDigest.update(this.method.getBytes("ISO-8859-1"));
                messageDigest.update(HttpTokens.COLON);
                messageDigest.update(this.uri.getBytes("ISO-8859-1"));
                byte[] bArrDigest2 = messageDigest.digest();
                messageDigest.update(TypeUtil.toString(bArrDigest, 16).getBytes("ISO-8859-1"));
                messageDigest.update(HttpTokens.COLON);
                messageDigest.update(this.nonce.getBytes("ISO-8859-1"));
                messageDigest.update(HttpTokens.COLON);
                messageDigest.update(this.nc.getBytes("ISO-8859-1"));
                messageDigest.update(HttpTokens.COLON);
                messageDigest.update(this.cnonce.getBytes("ISO-8859-1"));
                messageDigest.update(HttpTokens.COLON);
                messageDigest.update(this.qop.getBytes("ISO-8859-1"));
                messageDigest.update(HttpTokens.COLON);
                messageDigest.update(TypeUtil.toString(bArrDigest2, 16).getBytes("ISO-8859-1"));
                return TypeUtil.toString(messageDigest.digest(), 16).equalsIgnoreCase(this.response);
            } catch (Exception e4) {
                DigestAuthenticator.LOG.warn(e4);
                return false;
            }
        }

        public String toString() {
            return this.username + "," + this.response;
        }
    }

    public static class Nonce {
        public final String _nonce;
        public final BitSet _seen;
        public final long _ts;

        public Nonce(String str, long j4, int i4) {
            this._nonce = str;
            this._ts = j4;
            this._seen = new BitSet(i4);
        }

        public boolean seen(int i4) {
            synchronized (this) {
                if (i4 >= this._seen.size()) {
                    return true;
                }
                boolean z3 = this._seen.get(i4);
                this._seen.set(i4);
                return z3;
            }
        }
    }

    private int checkNonce(Digest digest, Request request) {
        long timeStamp = request.getTimeStamp() - this._maxNonceAgeMs;
        Nonce noncePeek = this._nonceQueue.peek();
        while (noncePeek != null && noncePeek._ts < timeStamp) {
            this._nonceQueue.remove(noncePeek);
            this._nonceMap.remove(noncePeek._nonce);
            noncePeek = this._nonceQueue.peek();
        }
        try {
            Nonce nonce = this._nonceMap.get(digest.nonce);
            if (nonce == null) {
                return 0;
            }
            long j4 = Long.parseLong(digest.nc, 16);
            if (j4 >= this._maxNC) {
                return 0;
            }
            return nonce.seen((int) j4) ? -1 : 1;
        } catch (Exception e4) {
            LOG.ignore(e4);
            return -1;
        }
    }

    @Override // org.eclipse.jetty.security.Authenticator
    public String getAuthMethod() {
        return Constraint.__DIGEST_AUTH;
    }

    public long getMaxNonceAge() {
        return this._maxNonceAgeMs;
    }

    public int getMaxNonceCount() {
        return this._maxNC;
    }

    public String newNonce(Request request) {
        Nonce nonce;
        do {
            byte[] bArr = new byte[24];
            this._random.nextBytes(bArr);
            nonce = new Nonce(new String(B64Code.encode(bArr)), request.getTimeStamp(), this._maxNC);
        } while (this._nonceMap.putIfAbsent(nonce._nonce, nonce) != null);
        this._nonceQueue.add(nonce);
        return nonce._nonce;
    }

    @Override // org.eclipse.jetty.security.Authenticator
    public boolean secureResponse(y yVar, e0 e0Var, boolean z3, Authentication.User user) {
        return true;
    }

    @Override // org.eclipse.jetty.security.authentication.LoginAuthenticator, org.eclipse.jetty.security.Authenticator
    public void setConfiguration(Authenticator.AuthConfiguration authConfiguration) {
        super.setConfiguration(authConfiguration);
        String initParameter = authConfiguration.getInitParameter("maxNonceAge");
        if (initParameter != null) {
            this._maxNonceAgeMs = Long.valueOf(initParameter).longValue();
        }
    }

    public void setMaxNonceAge(long j4) {
        this._maxNonceAgeMs = j4;
    }

    public void setMaxNonceCount(int i4) {
        this._maxNC = i4;
    }

    @Override // org.eclipse.jetty.security.Authenticator
    public Authentication validateRequest(y yVar, e0 e0Var, boolean z3) throws ServerAuthException {
        if (!z3) {
            return new DeferredAuthentication(this);
        }
        c cVar = (c) yVar;
        e eVar = (e) e0Var;
        String header = cVar.getHeader(HttpHeaders.AUTHORIZATION);
        boolean z4 = true;
        if (header != null) {
            try {
                Logger logger = LOG;
                if (logger.isDebugEnabled()) {
                    logger.debug("Credentials: " + header, new Object[0]);
                }
                QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer(header, "=, ", true, false);
                Digest digest = new Digest(cVar.getMethod());
                String str = null;
                String str2 = null;
                while (quotedStringTokenizer.hasMoreTokens()) {
                    String strNextToken = quotedStringTokenizer.nextToken();
                    char cCharAt = strNextToken.length() == 1 ? strNextToken.charAt(0) : (char) 0;
                    if (cCharAt != ' ') {
                        if (cCharAt != ',') {
                            if (cCharAt == '=') {
                                str2 = str;
                            } else if (str2 != null) {
                                if ("username".equalsIgnoreCase(str2)) {
                                    digest.username = strNextToken;
                                } else if ("realm".equalsIgnoreCase(str2)) {
                                    digest.realm = strNextToken;
                                } else if ("nonce".equalsIgnoreCase(str2)) {
                                    digest.nonce = strNextToken;
                                } else if ("nc".equalsIgnoreCase(str2)) {
                                    digest.nc = strNextToken;
                                } else if ("cnonce".equalsIgnoreCase(str2)) {
                                    digest.cnonce = strNextToken;
                                } else if ("qop".equalsIgnoreCase(str2)) {
                                    digest.qop = strNextToken;
                                } else if (NotificationCompat.MessagingStyle.Message.KEY_DATA_URI.equalsIgnoreCase(str2)) {
                                    digest.uri = strNextToken;
                                } else if ("response".equalsIgnoreCase(str2)) {
                                    digest.response = strNextToken;
                                }
                                str2 = null;
                            }
                            str = strNextToken;
                        } else {
                            str2 = null;
                        }
                    }
                }
                int iCheckNonce = checkNonce(digest, (Request) cVar);
                if (iCheckNonce > 0) {
                    UserIdentity userIdentityLogin = login(digest.username, digest, yVar);
                    if (userIdentityLogin != null) {
                        return new UserAuthentication(getAuthMethod(), userIdentityLogin);
                    }
                } else if (iCheckNonce == 0) {
                }
                z4 = false;
            } catch (IOException e4) {
                throw new ServerAuthException(e4);
            }
        } else {
            z4 = false;
        }
        if (DeferredAuthentication.isDeferred(eVar)) {
            return Authentication.UNAUTHENTICATED;
        }
        String contextPath = cVar.getContextPath();
        if (contextPath == null) {
            contextPath = "/";
        }
        eVar.setHeader(HttpHeaders.WWW_AUTHENTICATE, "Digest realm=\"" + this._loginService.getName() + "\", domain=\"" + contextPath + "\", nonce=\"" + newNonce((Request) cVar) + "\", algorithm=MD5, qop=\"auth\", stale=" + z4);
        eVar.sendError(HttpStatus.UNAUTHORIZED_401);
        return Authentication.SEND_CONTINUE;
    }
}
