.class public final Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;
.super Ljava/lang/Object;
.source "OfflineAesKeyProvider.kt"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Ljava/security/Key;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineAesKeyProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineAesKeyProvider.kt\ncom/stripe/offlinemode/cipher/OfflineAesKeyProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,53:1\n1#2:54\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0008B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;",
        "Ljavax/inject/Provider;",
        "Ljava/security/Key;",
        "()V",
        "generateKey",
        "Ljavax/crypto/SecretKey;",
        "get",
        "getSavedKey",
        "Companion",
        "offlinemode_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field public static final Companion:Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider$Companion;

.field private static final KEY_SIZE:I = 0x100

.field private static final OFFLINE_KEY_NAME:Ljava/lang/String; = "offline_mode_db_key"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;->Companion:Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final generateKey()Ljavax/crypto/SecretKey;
    .locals 6

    .line 25
    const-string v0, "AES"

    const-string v1, "AndroidKeyStore"

    invoke-static {v0, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 26
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 27
    const-string v2, "offline_mode_db_key"

    const/4 v3, 0x3

    .line 26
    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x1

    .line 30
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "GCM"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/16 v3, 0x100

    .line 31
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 32
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "NoPadding"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 35
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v1, "generateKey(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getSavedKey()Ljavax/crypto/SecretKey;
    .locals 4

    .line 39
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 40
    const-string v2, "offline_mode_db_key"

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    instance-of v2, v0, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;->get()Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/security/Key;
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;->getSavedKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/security/Key;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0
.end method
