package com.stripe.cots.common.compatibility;

import android.content.Context;
import android.nfc.NfcAdapter;
import android.security.keystore.KeyGenParameterSpec;
import android.security.keystore.KeyInfo;
import com.scottyab.rootbeer.RootBeer;
import com.stripe.core.device.SdkInt;
import com.stripe.cots.common.CotsError;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PreFlightChecks.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B/\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0011J\b\u0010\u0012\u001a\u00020\u0013H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/cots/common/compatibility/PreFlightChecks;", "", "context", "Landroid/content/Context;", "keyFactory", "Ljava/security/KeyFactory;", "key", "Ljava/security/Key;", "rootBeer", "Lcom/scottyab/rootbeer/RootBeer;", "sdkInt", "Lcom/stripe/core/device/SdkInt;", "(Landroid/content/Context;Ljava/security/KeyFactory;Ljava/security/Key;Lcom/scottyab/rootbeer/RootBeer;Lcom/stripe/core/device/SdkInt;)V", "(Landroid/content/Context;Lcom/scottyab/rootbeer/RootBeer;Lcom/stripe/core/device/SdkInt;)V", "getDeviceCompatibility", "Lcom/stripe/cots/common/CotsError;", "initialize", "", "isHardwareBackedKeystore", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PreFlightChecks {
    private final Context context;
    private Key key;
    private KeyFactory keyFactory;
    private final RootBeer rootBeer;
    private final SdkInt sdkInt;

    public PreFlightChecks(Context context, RootBeer rootBeer, SdkInt sdkInt) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(rootBeer, "rootBeer");
        Intrinsics.checkNotNullParameter(sdkInt, "sdkInt");
        this.context = context;
        this.rootBeer = rootBeer;
        this.sdkInt = sdkInt;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PreFlightChecks(Context context, KeyFactory keyFactory, Key key, RootBeer rootBeer, SdkInt sdkInt) {
        this(context, rootBeer, sdkInt);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(keyFactory, "keyFactory");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(rootBeer, "rootBeer");
        Intrinsics.checkNotNullParameter(sdkInt, "sdkInt");
        this.key = key;
        this.keyFactory = keyFactory;
    }

    public final void initialize() throws NoSuchAlgorithmException, NoSuchProviderException, InvalidAlgorithmParameterException {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        Intrinsics.checkNotNullExpressionValue(keyFactory, "getInstance(...)");
        this.keyFactory = keyFactory;
        KeyGenParameterSpec keyGenParameterSpecBuild = new KeyGenParameterSpec.Builder("preflight", 2).setDigests("SHA-256", "SHA-1").setBlockModes("ECB").setEncryptionPaddings("OAEPPadding").setSignaturePaddings("PSS").setKeySize(2048).build();
        Intrinsics.checkNotNullExpressionValue(keyGenParameterSpecBuild, "build(...)");
        keyPairGenerator.initialize(keyGenParameterSpecBuild);
        PrivateKey privateKey = keyPairGenerator.genKeyPair().getPrivate();
        Intrinsics.checkNotNullExpressionValue(privateKey, "getPrivate(...)");
        this.key = privateKey;
    }

    public final CotsError getDeviceCompatibility() {
        if (NfcAdapter.getDefaultAdapter(this.context) == null) {
            return CotsError.DISCOVERY_MISSING_NFC_READER;
        }
        if (!isHardwareBackedKeystore()) {
            return CotsError.DISCOVERY_UNTRUSTED_HARDWARE;
        }
        if (this.rootBeer.isRooted()) {
            return CotsError.ATTESTATION_DEVICE_TAMPERED;
        }
        if (!this.sdkInt.isAtLeast(30)) {
            return CotsError.DISCOVERY_UNSUPPORTED_ANDROID_VERSION;
        }
        return CotsError.NONE;
    }

    private final boolean isHardwareBackedKeystore() {
        Key key = null;
        if (this.sdkInt.isAtLeast(31)) {
            List listListOf = CollectionsKt.listOf((Object[]) new Integer[]{2, 1});
            KeyFactory keyFactory = this.keyFactory;
            if (keyFactory == null) {
                Intrinsics.throwUninitializedPropertyAccessException("keyFactory");
                keyFactory = null;
            }
            Key key2 = this.key;
            if (key2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("key");
            } else {
                key = key2;
            }
            return listListOf.contains(Integer.valueOf(((KeyInfo) keyFactory.getKeySpec(key, KeyInfo.class)).getSecurityLevel()));
        }
        KeyFactory keyFactory2 = this.keyFactory;
        if (keyFactory2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("keyFactory");
            keyFactory2 = null;
        }
        Key key3 = this.key;
        if (key3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("key");
        } else {
            key = key3;
        }
        return ((KeyInfo) keyFactory2.getKeySpec(key, KeyInfo.class)).isInsideSecureHardware();
    }
}
