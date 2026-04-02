package com.stripe.offlinemode.cipher;

import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.inject.Inject;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineCipherProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00052\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0005B\u0007\b\u0007¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;", "Ljavax/inject/Provider;", "Ljavax/crypto/Cipher;", "()V", "get", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineCipherProvider implements Provider<Cipher> {
    public static final String TRANSFORMATION = "AES/GCM/NoPadding";

    @Inject
    public OfflineCipherProvider() {
    }

    @Override // javax.inject.Provider
    public Cipher get() throws NoSuchPaddingException, NoSuchAlgorithmException {
        Cipher cipher = Cipher.getInstance(TRANSFORMATION);
        Intrinsics.checkNotNullExpressionValue(cipher, "getInstance(...)");
        return cipher;
    }
}
