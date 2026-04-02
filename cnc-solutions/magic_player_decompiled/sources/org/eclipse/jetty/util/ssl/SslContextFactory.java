package org.eclipse.jetty.util.ssl;

import android.support.v4.media.b;
import android.support.v4.media.f;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.Security;
import java.security.UnrecoverableKeyException;
import java.security.cert.CRL;
import java.security.cert.CertStore;
import java.security.cert.Certificate;
import java.security.cert.CollectionCertStoreParameters;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.net.ssl.CertPathTrustManagerParameters;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLServerSocket;
import javax.net.ssl.SSLServerSocketFactory;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.resource.Resource;
import org.eclipse.jetty.util.security.CertificateUtils;
import org.eclipse.jetty.util.security.CertificateValidator;
import org.eclipse.jetty.util.security.Password;

/* JADX INFO: loaded from: classes2.dex */
public class SslContextFactory extends AbstractLifeCycle {
    public static final String DEFAULT_KEYMANAGERFACTORY_ALGORITHM;
    public static final String DEFAULT_KEYSTORE_PATH;
    public static final String DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM;
    public static final String KEYPASSWORD_PROPERTY = "org.eclipse.jetty.ssl.keypassword";
    public static final String PASSWORD_PROPERTY = "org.eclipse.jetty.ssl.password";
    private boolean _allowRenegotiate;
    private String _certAlias;
    private SSLContext _context;
    private String _crlPath;
    private boolean _enableCRLDP;
    private boolean _enableOCSP;
    private final Set<String> _excludeCipherSuites;
    private final Set<String> _excludeProtocols;
    private Set<String> _includeCipherSuites;
    private Set<String> _includeProtocols;
    private String _keyManagerFactoryAlgorithm;
    private transient Password _keyManagerPassword;
    private KeyStore _keyStore;
    private InputStream _keyStoreInputStream;
    private transient Password _keyStorePassword;
    private String _keyStorePath;
    private String _keyStoreProvider;
    private String _keyStoreType;
    private int _maxCertPathLength;
    private boolean _needClientAuth;
    private String _ocspResponderURL;
    private String _secureRandomAlgorithm;
    private boolean _sessionCachingEnabled;
    private String _sslProtocol;
    private String _sslProvider;
    private int _sslSessionCacheSize;
    private int _sslSessionTimeout;
    private boolean _trustAll;
    private String _trustManagerFactoryAlgorithm;
    private KeyStore _trustStore;
    private InputStream _trustStoreInputStream;
    private transient Password _trustStorePassword;
    private String _trustStorePath;
    private String _trustStoreProvider;
    private String _trustStoreType;
    private boolean _validateCerts;
    private boolean _validatePeerCerts;
    private boolean _wantClientAuth;
    public static final TrustManager[] TRUST_ALL_CERTS = {new X509TrustManager() { // from class: org.eclipse.jetty.util.ssl.SslContextFactory.1
        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }};
    private static final Logger LOG = Log.getLogger((Class<?>) SslContextFactory.class);

    static {
        DEFAULT_KEYMANAGERFACTORY_ALGORITHM = Security.getProperty("ssl.KeyManagerFactory.algorithm") == null ? "SunX509" : Security.getProperty("ssl.KeyManagerFactory.algorithm");
        DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM = Security.getProperty("ssl.TrustManagerFactory.algorithm") != null ? Security.getProperty("ssl.TrustManagerFactory.algorithm") : "SunX509";
        StringBuilder sb = new StringBuilder();
        sb.append(System.getProperty("user.home"));
        DEFAULT_KEYSTORE_PATH = b.a(sb, File.separator, ".keystore");
    }

    public SslContextFactory() {
        this._excludeProtocols = new LinkedHashSet();
        this._includeProtocols = new LinkedHashSet();
        this._excludeCipherSuites = new LinkedHashSet();
        this._includeCipherSuites = new LinkedHashSet();
        this._keyStoreType = "JKS";
        this._trustStoreType = "JKS";
        this._needClientAuth = false;
        this._wantClientAuth = false;
        this._allowRenegotiate = true;
        this._sslProtocol = "TLS";
        this._keyManagerFactoryAlgorithm = DEFAULT_KEYMANAGERFACTORY_ALGORITHM;
        this._trustManagerFactoryAlgorithm = DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM;
        this._maxCertPathLength = -1;
        this._enableCRLDP = false;
        this._enableOCSP = false;
        this._sessionCachingEnabled = true;
        this._trustAll = true;
    }

    public void addExcludeCipherSuites(String... strArr) {
        checkNotStarted();
        this._excludeCipherSuites.addAll(Arrays.asList(strArr));
    }

    public void addExcludeProtocols(String... strArr) {
        checkNotStarted();
        this._excludeProtocols.addAll(Arrays.asList(strArr));
    }

    public void checkKeyStore() {
        if (this._context != null) {
            return;
        }
        KeyStore keyStore = this._keyStore;
        if (keyStore == null && this._keyStoreInputStream == null && this._keyStorePath == null) {
            throw new IllegalStateException("SSL doesn't have a valid keystore");
        }
        if (this._trustStore == null && this._trustStoreInputStream == null && this._trustStorePath == null) {
            this._trustStore = keyStore;
            this._trustStorePath = this._keyStorePath;
            this._trustStoreInputStream = this._keyStoreInputStream;
            this._trustStoreType = this._keyStoreType;
            this._trustStoreProvider = this._keyStoreProvider;
            this._trustStorePassword = this._keyStorePassword;
            this._trustManagerFactoryAlgorithm = this._keyManagerFactoryAlgorithm;
        }
        InputStream inputStream = this._keyStoreInputStream;
        if (inputStream == null || inputStream != this._trustStoreInputStream) {
            return;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            IO.copy(this._keyStoreInputStream, byteArrayOutputStream);
            this._keyStoreInputStream.close();
            this._keyStoreInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
            this._trustStoreInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
        } catch (Exception e4) {
            throw new IllegalStateException(e4);
        }
    }

    public void checkNotStarted() {
        if (isStarted()) {
            StringBuilder sbA = f.a("Cannot modify configuration when ");
            sbA.append(getState());
            throw new IllegalStateException(sbA.toString());
        }
    }

    public void customize(SSLEngine sSLEngine) {
        if (getWantClientAuth()) {
            sSLEngine.setWantClientAuth(getWantClientAuth());
        }
        if (getNeedClientAuth()) {
            sSLEngine.setNeedClientAuth(getNeedClientAuth());
        }
        sSLEngine.setEnabledCipherSuites(selectCipherSuites(sSLEngine.getEnabledCipherSuites(), sSLEngine.getSupportedCipherSuites()));
        sSLEngine.setEnabledProtocols(selectProtocols(sSLEngine.getEnabledProtocols(), sSLEngine.getSupportedProtocols()));
    }

    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() throws Exception {
        String string;
        TrustManager[] trustManagerArr;
        if (this._context == null) {
            if (this._keyStore == null && this._keyStoreInputStream == null && this._keyStorePath == null && this._trustStore == null && this._trustStoreInputStream == null && this._trustStorePath == null) {
                if (this._trustAll) {
                    LOG.debug("No keystore or trust store configured.  ACCEPTING UNTRUSTED CERTIFICATES!!!!!", new Object[0]);
                    trustManagerArr = TRUST_ALL_CERTS;
                } else {
                    trustManagerArr = null;
                }
                String str = this._secureRandomAlgorithm;
                SecureRandom secureRandom = str == null ? null : SecureRandom.getInstance(str);
                String str2 = this._sslProvider;
                SSLContext sSLContext = str2 == null ? SSLContext.getInstance(this._sslProtocol) : SSLContext.getInstance(this._sslProtocol, str2);
                this._context = sSLContext;
                sSLContext.init(null, trustManagerArr, secureRandom);
                return;
            }
            checkKeyStore();
            KeyStore keyStoreLoadKeyStore = loadKeyStore();
            KeyStore keyStoreLoadTrustStore = loadTrustStore();
            Collection<? extends CRL> collectionLoadCRL = loadCRL(this._crlPath);
            if (this._validateCerts && keyStoreLoadKeyStore != null) {
                if (this._certAlias == null) {
                    ArrayList list = Collections.list(keyStoreLoadKeyStore.aliases());
                    this._certAlias = list.size() == 1 ? (String) list.get(0) : null;
                }
                String str3 = this._certAlias;
                Certificate certificate = str3 == null ? null : keyStoreLoadKeyStore.getCertificate(str3);
                if (certificate == null) {
                    StringBuilder sbA = f.a("No certificate found in the keystore");
                    if (this._certAlias == null) {
                        string = "";
                    } else {
                        StringBuilder sbA2 = f.a(" for alias ");
                        sbA2.append(this._certAlias);
                        string = sbA2.toString();
                    }
                    sbA.append(string);
                    throw new Exception(sbA.toString());
                }
                CertificateValidator certificateValidator = new CertificateValidator(keyStoreLoadTrustStore, collectionLoadCRL);
                certificateValidator.setMaxCertPathLength(this._maxCertPathLength);
                certificateValidator.setEnableCRLDP(this._enableCRLDP);
                certificateValidator.setEnableOCSP(this._enableOCSP);
                certificateValidator.setOcspResponderURL(this._ocspResponderURL);
                certificateValidator.validate(keyStoreLoadKeyStore, certificate);
            }
            KeyManager[] keyManagers = getKeyManagers(keyStoreLoadKeyStore);
            TrustManager[] trustManagers = getTrustManagers(keyStoreLoadTrustStore, collectionLoadCRL);
            String str4 = this._secureRandomAlgorithm;
            SecureRandom secureRandom2 = str4 != null ? SecureRandom.getInstance(str4) : null;
            String str5 = this._sslProvider;
            SSLContext sSLContext2 = str5 == null ? SSLContext.getInstance(this._sslProtocol) : SSLContext.getInstance(this._sslProtocol, str5);
            this._context = sSLContext2;
            sSLContext2.init(keyManagers, trustManagers, secureRandom2);
            SSLEngine sSLEngineNewSslEngine = newSslEngine();
            Logger logger = LOG;
            logger.info("Enabled Protocols {} of {}", Arrays.asList(sSLEngineNewSslEngine.getEnabledProtocols()), Arrays.asList(sSLEngineNewSslEngine.getSupportedProtocols()));
            if (logger.isDebugEnabled()) {
                logger.debug("Enabled Ciphers   {} of {}", Arrays.asList(sSLEngineNewSslEngine.getEnabledCipherSuites()), Arrays.asList(sSLEngineNewSslEngine.getSupportedCipherSuites()));
            }
        }
    }

    public String getCertAlias() {
        return this._certAlias;
    }

    public String getCrlPath() {
        return this._crlPath;
    }

    public String[] getExcludeCipherSuites() {
        Set<String> set = this._excludeCipherSuites;
        return (String[]) set.toArray(new String[set.size()]);
    }

    public String[] getExcludeProtocols() {
        Set<String> set = this._excludeProtocols;
        return (String[]) set.toArray(new String[set.size()]);
    }

    public String[] getIncludeCipherSuites() {
        Set<String> set = this._includeCipherSuites;
        return (String[]) set.toArray(new String[set.size()]);
    }

    public String[] getIncludeProtocols() {
        Set<String> set = this._includeProtocols;
        return (String[]) set.toArray(new String[set.size()]);
    }

    public KeyManager[] getKeyManagers(KeyStore keyStore) throws NoSuchAlgorithmException, UnrecoverableKeyException, KeyStoreException {
        KeyManager[] keyManagers = null;
        if (keyStore != null) {
            KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(this._keyManagerFactoryAlgorithm);
            Password password = this._keyManagerPassword;
            keyManagerFactory.init(keyStore, (password == null && (password = this._keyStorePassword) == null) ? null : password.toString().toCharArray());
            keyManagers = keyManagerFactory.getKeyManagers();
            if (this._certAlias != null) {
                for (int i4 = 0; i4 < keyManagers.length; i4++) {
                    if (keyManagers[i4] instanceof X509KeyManager) {
                        keyManagers[i4] = new AliasedX509ExtendedKeyManager(this._certAlias, (X509KeyManager) keyManagers[i4]);
                    }
                }
            }
        }
        return keyManagers;
    }

    @Deprecated
    public String getKeyStore() {
        return this._keyStorePath;
    }

    @Deprecated
    public InputStream getKeyStoreInputStream() {
        checkKeyStore();
        return this._keyStoreInputStream;
    }

    public String getKeyStorePath() {
        return this._keyStorePath;
    }

    public String getKeyStoreProvider() {
        return this._keyStoreProvider;
    }

    public String getKeyStoreType() {
        return this._keyStoreType;
    }

    public int getMaxCertPathLength() {
        return this._maxCertPathLength;
    }

    public boolean getNeedClientAuth() {
        return this._needClientAuth;
    }

    public String getOcspResponderURL() {
        return this._ocspResponderURL;
    }

    public String getProtocol() {
        return this._sslProtocol;
    }

    public String getProvider() {
        return this._sslProvider;
    }

    public String getSecureRandomAlgorithm() {
        return this._secureRandomAlgorithm;
    }

    public SSLContext getSslContext() {
        if (isStarted()) {
            return this._context;
        }
        throw new IllegalStateException(getState());
    }

    public String getSslKeyManagerFactoryAlgorithm() {
        return this._keyManagerFactoryAlgorithm;
    }

    public int getSslSessionCacheSize() {
        return this._sslSessionCacheSize;
    }

    public int getSslSessionTimeout() {
        return this._sslSessionTimeout;
    }

    public String getTrustManagerFactoryAlgorithm() {
        return this._trustManagerFactoryAlgorithm;
    }

    public TrustManager[] getTrustManagers(KeyStore keyStore, Collection<? extends CRL> collection) throws NoSuchAlgorithmException, KeyStoreException, InvalidAlgorithmParameterException {
        if (keyStore == null) {
            return null;
        }
        if (!this._validatePeerCerts || !this._trustManagerFactoryAlgorithm.equalsIgnoreCase("PKIX")) {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(this._trustManagerFactoryAlgorithm);
            trustManagerFactory.init(keyStore);
            return trustManagerFactory.getTrustManagers();
        }
        PKIXBuilderParameters pKIXBuilderParameters = new PKIXBuilderParameters(keyStore, new X509CertSelector());
        pKIXBuilderParameters.setMaxPathLength(this._maxCertPathLength);
        pKIXBuilderParameters.setRevocationEnabled(true);
        if (collection != null && !collection.isEmpty()) {
            pKIXBuilderParameters.addCertStore(CertStore.getInstance("Collection", new CollectionCertStoreParameters(collection)));
        }
        if (this._enableCRLDP) {
            System.setProperty("com.sun.security.enableCRLDP", "true");
        }
        if (this._enableOCSP) {
            Security.setProperty("ocsp.enable", "true");
            String str = this._ocspResponderURL;
            if (str != null) {
                Security.setProperty("ocsp.responderURL", str);
            }
        }
        TrustManagerFactory trustManagerFactory2 = TrustManagerFactory.getInstance(this._trustManagerFactoryAlgorithm);
        trustManagerFactory2.init(new CertPathTrustManagerParameters(pKIXBuilderParameters));
        return trustManagerFactory2.getTrustManagers();
    }

    public String getTrustStore() {
        return this._trustStorePath;
    }

    @Deprecated
    public InputStream getTrustStoreInputStream() {
        checkKeyStore();
        return this._trustStoreInputStream;
    }

    public String getTrustStoreProvider() {
        return this._trustStoreProvider;
    }

    public String getTrustStoreType() {
        return this._trustStoreType;
    }

    @Deprecated
    public boolean getValidateCerts() {
        return this._validateCerts;
    }

    public boolean getWantClientAuth() {
        return this._wantClientAuth;
    }

    public boolean isAllowRenegotiate() {
        return this._allowRenegotiate;
    }

    public boolean isEnableCRLDP() {
        return this._enableCRLDP;
    }

    public boolean isEnableOCSP() {
        return this._enableOCSP;
    }

    public boolean isSessionCachingEnabled() {
        return this._sessionCachingEnabled;
    }

    public boolean isTrustAll() {
        return this._trustAll;
    }

    public boolean isValidateCerts() {
        return this._validateCerts;
    }

    public boolean isValidatePeerCerts() {
        return this._validatePeerCerts;
    }

    public Collection<? extends CRL> loadCRL(String str) {
        return CertificateUtils.loadCRL(str);
    }

    public KeyStore loadKeyStore() {
        KeyStore keyStore = this._keyStore;
        if (keyStore != null) {
            return keyStore;
        }
        InputStream inputStream = this._keyStoreInputStream;
        String str = this._keyStorePath;
        String str2 = this._keyStoreType;
        String str3 = this._keyStoreProvider;
        Password password = this._keyStorePassword;
        return getKeyStore(inputStream, str, str2, str3, password == null ? null : password.toString());
    }

    public KeyStore loadTrustStore() {
        KeyStore keyStore = this._trustStore;
        if (keyStore != null) {
            return keyStore;
        }
        InputStream inputStream = this._trustStoreInputStream;
        String str = this._trustStorePath;
        String str2 = this._trustStoreType;
        String str3 = this._trustStoreProvider;
        Password password = this._trustStorePassword;
        return getKeyStore(inputStream, str, str2, str3, password == null ? null : password.toString());
    }

    public SSLEngine newSslEngine(String str, int i4) {
        SSLEngine sSLEngineCreateSSLEngine = isSessionCachingEnabled() ? this._context.createSSLEngine(str, i4) : this._context.createSSLEngine();
        customize(sSLEngineCreateSSLEngine);
        return sSLEngineCreateSSLEngine;
    }

    public SSLServerSocket newSslServerSocket(String str, int i4, int i5) {
        SSLServerSocketFactory serverSocketFactory = this._context.getServerSocketFactory();
        SSLServerSocket sSLServerSocket = (SSLServerSocket) (str == null ? serverSocketFactory.createServerSocket(i4, i5) : serverSocketFactory.createServerSocket(i4, i5, InetAddress.getByName(str)));
        if (getWantClientAuth()) {
            sSLServerSocket.setWantClientAuth(getWantClientAuth());
        }
        if (getNeedClientAuth()) {
            sSLServerSocket.setNeedClientAuth(getNeedClientAuth());
        }
        sSLServerSocket.setEnabledCipherSuites(selectCipherSuites(sSLServerSocket.getEnabledCipherSuites(), sSLServerSocket.getSupportedCipherSuites()));
        sSLServerSocket.setEnabledProtocols(selectProtocols(sSLServerSocket.getEnabledProtocols(), sSLServerSocket.getSupportedProtocols()));
        return sSLServerSocket;
    }

    public SSLSocket newSslSocket() {
        SSLSocket sSLSocket = (SSLSocket) this._context.getSocketFactory().createSocket();
        if (getWantClientAuth()) {
            sSLSocket.setWantClientAuth(getWantClientAuth());
        }
        if (getNeedClientAuth()) {
            sSLSocket.setNeedClientAuth(getNeedClientAuth());
        }
        sSLSocket.setEnabledCipherSuites(selectCipherSuites(sSLSocket.getEnabledCipherSuites(), sSLSocket.getSupportedCipherSuites()));
        sSLSocket.setEnabledProtocols(selectProtocols(sSLSocket.getEnabledProtocols(), sSLSocket.getSupportedProtocols()));
        return sSLSocket;
    }

    public String[] selectCipherSuites(String[] strArr, String[] strArr2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (this._includeCipherSuites.isEmpty()) {
            linkedHashSet.addAll(Arrays.asList(strArr));
        } else {
            for (String str : this._includeCipherSuites) {
                if (Arrays.asList(strArr2).contains(str)) {
                    linkedHashSet.add(str);
                }
            }
        }
        Set<String> set = this._excludeCipherSuites;
        if (set != null) {
            linkedHashSet.removeAll(set);
        }
        return (String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]);
    }

    public String[] selectProtocols(String[] strArr, String[] strArr2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (this._includeProtocols.isEmpty()) {
            linkedHashSet.addAll(Arrays.asList(strArr));
        } else {
            for (String str : this._includeProtocols) {
                if (Arrays.asList(strArr2).contains(str)) {
                    linkedHashSet.add(str);
                }
            }
        }
        Set<String> set = this._excludeProtocols;
        if (set != null) {
            linkedHashSet.removeAll(set);
        }
        return (String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]);
    }

    public void setAllowRenegotiate(boolean z3) {
        checkNotStarted();
        this._allowRenegotiate = z3;
    }

    public void setCertAlias(String str) {
        checkNotStarted();
        this._certAlias = str;
    }

    public void setCrlPath(String str) {
        checkNotStarted();
        this._crlPath = str;
    }

    public void setEnableCRLDP(boolean z3) {
        checkNotStarted();
        this._enableCRLDP = z3;
    }

    public void setEnableOCSP(boolean z3) {
        checkNotStarted();
        this._enableOCSP = z3;
    }

    public void setExcludeCipherSuites(String... strArr) {
        checkNotStarted();
        this._excludeCipherSuites.clear();
        this._excludeCipherSuites.addAll(Arrays.asList(strArr));
    }

    public void setExcludeProtocols(String... strArr) {
        checkNotStarted();
        this._excludeProtocols.clear();
        this._excludeProtocols.addAll(Arrays.asList(strArr));
    }

    public void setIncludeCipherSuites(String... strArr) {
        checkNotStarted();
        this._includeCipherSuites.clear();
        this._includeCipherSuites.addAll(Arrays.asList(strArr));
    }

    public void setIncludeProtocols(String... strArr) {
        checkNotStarted();
        this._includeProtocols.clear();
        this._includeProtocols.addAll(Arrays.asList(strArr));
    }

    public void setKeyManagerPassword(String str) {
        checkNotStarted();
        this._keyManagerPassword = Password.getPassword("org.eclipse.jetty.ssl.keypassword", str, null);
    }

    @Deprecated
    public void setKeyStore(String str) {
        checkNotStarted();
        this._keyStorePath = str;
    }

    @Deprecated
    public void setKeyStoreInputStream(InputStream inputStream) {
        checkNotStarted();
        this._keyStoreInputStream = inputStream;
    }

    public void setKeyStorePassword(String str) {
        checkNotStarted();
        this._keyStorePassword = Password.getPassword("org.eclipse.jetty.ssl.password", str, null);
    }

    public void setKeyStorePath(String str) {
        checkNotStarted();
        this._keyStorePath = str;
    }

    public void setKeyStoreProvider(String str) {
        checkNotStarted();
        this._keyStoreProvider = str;
    }

    public void setKeyStoreResource(Resource resource) {
        checkNotStarted();
        try {
            this._keyStoreInputStream = resource.getInputStream();
        } catch (IOException unused) {
            StringBuilder sbA = f.a("Unable to get resource input stream for resource ");
            sbA.append(resource.toString());
            throw new InvalidParameterException(sbA.toString());
        }
    }

    public void setKeyStoreType(String str) {
        checkNotStarted();
        this._keyStoreType = str;
    }

    public void setMaxCertPathLength(int i4) {
        checkNotStarted();
        this._maxCertPathLength = i4;
    }

    public void setNeedClientAuth(boolean z3) {
        checkNotStarted();
        this._needClientAuth = z3;
    }

    public void setOcspResponderURL(String str) {
        checkNotStarted();
        this._ocspResponderURL = str;
    }

    public void setProtocol(String str) {
        checkNotStarted();
        this._sslProtocol = str;
    }

    public void setProvider(String str) {
        checkNotStarted();
        this._sslProvider = str;
    }

    public void setSecureRandomAlgorithm(String str) {
        checkNotStarted();
        this._secureRandomAlgorithm = str;
    }

    public void setSessionCachingEnabled(boolean z3) {
        this._sessionCachingEnabled = z3;
    }

    public void setSslContext(SSLContext sSLContext) {
        checkNotStarted();
        this._context = sSLContext;
    }

    public void setSslKeyManagerFactoryAlgorithm(String str) {
        checkNotStarted();
        this._keyManagerFactoryAlgorithm = str;
    }

    public void setSslSessionCacheSize(int i4) {
        this._sslSessionCacheSize = i4;
    }

    public void setSslSessionTimeout(int i4) {
        this._sslSessionTimeout = i4;
    }

    public void setTrustAll(boolean z3) {
        this._trustAll = z3;
    }

    public void setTrustManagerFactoryAlgorithm(String str) {
        checkNotStarted();
        this._trustManagerFactoryAlgorithm = str;
    }

    public void setTrustStore(String str) {
        checkNotStarted();
        this._trustStorePath = str;
    }

    @Deprecated
    public void setTrustStoreInputStream(InputStream inputStream) {
        checkNotStarted();
        this._trustStoreInputStream = inputStream;
    }

    public void setTrustStorePassword(String str) {
        checkNotStarted();
        this._trustStorePassword = Password.getPassword("org.eclipse.jetty.ssl.password", str, null);
    }

    public void setTrustStoreProvider(String str) {
        checkNotStarted();
        this._trustStoreProvider = str;
    }

    public void setTrustStoreResource(Resource resource) {
        checkNotStarted();
        try {
            this._trustStoreInputStream = resource.getInputStream();
        } catch (IOException unused) {
            StringBuilder sbA = f.a("Unable to get resource input stream for resource ");
            sbA.append(resource.toString());
            throw new InvalidParameterException(sbA.toString());
        }
    }

    public void setTrustStoreType(String str) {
        checkNotStarted();
        this._trustStoreType = str;
    }

    public void setValidateCerts(boolean z3) {
        checkNotStarted();
        this._validateCerts = z3;
    }

    public void setValidatePeerCerts(boolean z3) {
        checkNotStarted();
        this._validatePeerCerts = z3;
    }

    public void setWantClientAuth(boolean z3) {
        checkNotStarted();
        this._wantClientAuth = z3;
    }

    public String toString() {
        return String.format("%s@%x(%s,%s)", getClass().getSimpleName(), Integer.valueOf(hashCode()), this._keyStorePath, this._trustStorePath);
    }

    @Deprecated
    public KeyStore getKeyStore(InputStream inputStream, String str, String str2, String str3, String str4) {
        return CertificateUtils.getKeyStore(inputStream, str, str2, str3, str4);
    }

    public SSLEngine newSslEngine() {
        SSLEngine sSLEngineCreateSSLEngine = this._context.createSSLEngine();
        customize(sSLEngineCreateSSLEngine);
        return sSLEngineCreateSSLEngine;
    }

    public void setKeyStore(KeyStore keyStore) {
        checkNotStarted();
        this._keyStore = keyStore;
    }

    public void setTrustStore(KeyStore keyStore) {
        checkNotStarted();
        this._trustStore = keyStore;
    }

    public SslContextFactory(boolean z3) {
        this._excludeProtocols = new LinkedHashSet();
        this._includeProtocols = new LinkedHashSet();
        this._excludeCipherSuites = new LinkedHashSet();
        this._includeCipherSuites = new LinkedHashSet();
        this._keyStoreType = "JKS";
        this._trustStoreType = "JKS";
        this._needClientAuth = false;
        this._wantClientAuth = false;
        this._allowRenegotiate = true;
        this._sslProtocol = "TLS";
        this._keyManagerFactoryAlgorithm = DEFAULT_KEYMANAGERFACTORY_ALGORITHM;
        this._trustManagerFactoryAlgorithm = DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM;
        this._maxCertPathLength = -1;
        this._enableCRLDP = false;
        this._enableOCSP = false;
        this._sessionCachingEnabled = true;
        this._trustAll = z3;
    }

    public SslContextFactory(String str) {
        this._excludeProtocols = new LinkedHashSet();
        this._includeProtocols = new LinkedHashSet();
        this._excludeCipherSuites = new LinkedHashSet();
        this._includeCipherSuites = new LinkedHashSet();
        this._keyStoreType = "JKS";
        this._trustStoreType = "JKS";
        this._needClientAuth = false;
        this._wantClientAuth = false;
        this._allowRenegotiate = true;
        this._sslProtocol = "TLS";
        this._keyManagerFactoryAlgorithm = DEFAULT_KEYMANAGERFACTORY_ALGORITHM;
        this._trustManagerFactoryAlgorithm = DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM;
        this._maxCertPathLength = -1;
        this._enableCRLDP = false;
        this._enableOCSP = false;
        this._sessionCachingEnabled = true;
        this._keyStorePath = str;
    }
}
