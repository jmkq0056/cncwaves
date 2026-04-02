package com.stripe.offlinemode.cipher;

import android.security.keystore.KeyGenParameterSpec;
import com.google.android.gms.stats.CodePackage;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableEntryException;
import java.security.cert.CertificateException;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.inject.Inject;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineAesKeyProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u0007\b\u0007¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0002¨\u0006\t"}, d2 = {"Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;", "Ljavax/inject/Provider;", "Ljava/security/Key;", "()V", "generateKey", "Ljavax/crypto/SecretKey;", "get", "getSavedKey", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineAesKeyProvider implements Provider<Key> {
    private static final String ANDROID_KEY_STORE = "AndroidKeyStore";
    private static final int KEY_SIZE = 256;
    private static final String OFFLINE_KEY_NAME = "offline_mode_db_key";

    @Inject
    public OfflineAesKeyProvider() {
    }

    @Override // javax.inject.Provider
    public Key get() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException, UnrecoverableEntryException {
        SecretKey savedKey = getSavedKey();
        return savedKey != null ? savedKey : generateKey();
    }

    private final SecretKey generateKey() throws NoSuchAlgorithmException, NoSuchProviderException, InvalidAlgorithmParameterException {
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", ANDROID_KEY_STORE);
        KeyGenParameterSpec keyGenParameterSpecBuild = new KeyGenParameterSpec.Builder(OFFLINE_KEY_NAME, 3).setBlockModes(CodePackage.GCM).setKeySize(256).setEncryptionPaddings("NoPadding").build();
        Intrinsics.checkNotNullExpressionValue(keyGenParameterSpecBuild, "build(...)");
        keyGenerator.init(keyGenParameterSpecBuild);
        SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
        Intrinsics.checkNotNullExpressionValue(secretKeyGenerateKey, "generateKey(...)");
        return secretKeyGenerateKey;
    }

    private final SecretKey getSavedKey() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException, UnrecoverableEntryException {
        KeyStore keyStore = KeyStore.getInstance(ANDROID_KEY_STORE);
        keyStore.load(null);
        if (keyStore.containsAlias(OFFLINE_KEY_NAME)) {
            KeyStore.Entry entry = keyStore.getEntry(OFFLINE_KEY_NAME, null);
            KeyStore.SecretKeyEntry secretKeyEntry = entry instanceof KeyStore.SecretKeyEntry ? (KeyStore.SecretKeyEntry) entry : null;
            if (secretKeyEntry != null) {
                return secretKeyEntry.getSecretKey();
            }
        }
        return null;
    }
}
