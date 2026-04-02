.class public final Lcom/stripe/cots/common/compatibility/PreFlightChecks;
.super Ljava/lang/Object;
.source "PreFlightChecks.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B/\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/cots/common/compatibility/PreFlightChecks;",
        "",
        "context",
        "Landroid/content/Context;",
        "keyFactory",
        "Ljava/security/KeyFactory;",
        "key",
        "Ljava/security/Key;",
        "rootBeer",
        "Lcom/scottyab/rootbeer/RootBeer;",
        "sdkInt",
        "Lcom/stripe/core/device/SdkInt;",
        "(Landroid/content/Context;Ljava/security/KeyFactory;Ljava/security/Key;Lcom/scottyab/rootbeer/RootBeer;Lcom/stripe/core/device/SdkInt;)V",
        "(Landroid/content/Context;Lcom/scottyab/rootbeer/RootBeer;Lcom/stripe/core/device/SdkInt;)V",
        "getDeviceCompatibility",
        "Lcom/stripe/cots/common/CotsError;",
        "initialize",
        "",
        "isHardwareBackedKeystore",
        "",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private key:Ljava/security/Key;

.field private keyFactory:Ljava/security/KeyFactory;

.field private final rootBeer:Lcom/scottyab/rootbeer/RootBeer;

.field private final sdkInt:Lcom/stripe/core/device/SdkInt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/scottyab/rootbeer/RootBeer;Lcom/stripe/core/device/SdkInt;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootBeer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkInt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->rootBeer:Lcom/scottyab/rootbeer/RootBeer;

    .line 31
    iput-object p3, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->sdkInt:Lcom/stripe/core/device/SdkInt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/security/KeyFactory;Ljava/security/Key;Lcom/scottyab/rootbeer/RootBeer;Lcom/stripe/core/device/SdkInt;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootBeer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkInt"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1, p4, p5}, Lcom/stripe/cots/common/compatibility/PreFlightChecks;-><init>(Landroid/content/Context;Lcom/scottyab/rootbeer/RootBeer;Lcom/stripe/core/device/SdkInt;)V

    .line 51
    iput-object p3, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->key:Ljava/security/Key;

    .line 52
    iput-object p2, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->keyFactory:Ljava/security/KeyFactory;

    return-void
.end method

.method private final isHardwareBackedKeystore()Z
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->sdkInt:Lcom/stripe/core/device/SdkInt;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/stripe/core/device/SdkInt;->isAtLeast(I)Z

    move-result v0

    const-string v1, "key"

    const-string v2, "keyFactory"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 106
    new-array v4, v0, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 105
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->keyFactory:Ljava/security/KeyFactory;

    if-nez v4, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_0
    iget-object v2, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->key:Ljava/security/Key;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    const-class v1, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v4, v3, v1}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v1}, Landroid/security/keystore/KeyInfo;->getSecurityLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->keyFactory:Ljava/security/KeyFactory;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    iget-object v2, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->key:Ljava/security/Key;

    if-nez v2, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    const-class v1, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v0, v3, v1}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    check-cast v0, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v0}, Landroid/security/keystore/KeyInfo;->isInsideSecureHardware()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getDeviceCompatibility()Lcom/stripe/cots/common/CotsError;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/stripe/cots/common/CotsError;->DISCOVERY_MISSING_NFC_READER:Lcom/stripe/cots/common/CotsError;

    return-object v0

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->isHardwareBackedKeystore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    sget-object v0, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNTRUSTED_HARDWARE:Lcom/stripe/cots/common/CotsError;

    return-object v0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->rootBeer:Lcom/scottyab/rootbeer/RootBeer;

    invoke-virtual {v0}, Lcom/scottyab/rootbeer/RootBeer;->isRooted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    sget-object v0, Lcom/stripe/cots/common/CotsError;->ATTESTATION_DEVICE_TAMPERED:Lcom/stripe/cots/common/CotsError;

    return-object v0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->sdkInt:Lcom/stripe/core/device/SdkInt;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/stripe/core/device/SdkInt;->isAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    sget-object v0, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/cots/common/CotsError;

    return-object v0

    .line 95
    :cond_3
    sget-object v0, Lcom/stripe/cots/common/CotsError;->NONE:Lcom/stripe/cots/common/CotsError;

    return-object v0
.end method

.method public final initialize()V
    .locals 6

    .line 62
    const-string v0, "AndroidKeyStore"

    .line 60
    const-string v1, "RSA"

    invoke-static {v1, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 64
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    const-string v2, "getInstance(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->keyFactory:Ljava/security/KeyFactory;

    .line 65
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v2, "preflight"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 66
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "SHA-256"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "SHA-1"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 67
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "ECB"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 68
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "OAEPPadding"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 69
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "PSS"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/16 v2, 0x800

    .line 70
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 74
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    const-string v1, "getPrivate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/security/Key;

    iput-object v0, p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->key:Ljava/security/Key;

    return-void
.end method
