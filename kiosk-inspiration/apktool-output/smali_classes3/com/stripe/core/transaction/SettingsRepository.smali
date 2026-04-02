.class public final Lcom/stripe/core/transaction/SettingsRepository;
.super Ljava/lang/Object;
.source "SettingsRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/transaction/SettingsRepository$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 .2\u00020\u0001:\u0001.B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R<\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00068F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR(\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R$\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00198F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR$\u0010\u001f\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010\u0010\"\u0004\u0008!\u0010\u0012R$\u0010#\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010)\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020(8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "",
        "sharedPrefs",
        "Lcom/stripe/jvmcore/storage/SharedPrefs;",
        "(Lcom/stripe/jvmcore/storage/SharedPrefs;)V",
        "value",
        "Lkotlin/Pair;",
        "",
        "encryptedAccountOfflineConfig",
        "getEncryptedAccountOfflineConfig",
        "()Lkotlin/Pair;",
        "setEncryptedAccountOfflineConfig",
        "(Lkotlin/Pair;)V",
        "",
        "keyProfileName",
        "getKeyProfileName",
        "()Ljava/lang/String;",
        "setKeyProfileName",
        "(Ljava/lang/String;)V",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;",
        "lpmConfig",
        "getLpmConfig",
        "()Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;",
        "setLpmConfig",
        "(Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;)V",
        "Lcom/stripe/proto/model/config/MagstripeConfig;",
        "magstripeConfig",
        "getMagstripeConfig",
        "()Lcom/stripe/proto/model/config/MagstripeConfig;",
        "setMagstripeConfig",
        "(Lcom/stripe/proto/model/config/MagstripeConfig;)V",
        "merchantDetailsForEdgeHeadersOnly",
        "getMerchantDetailsForEdgeHeadersOnly",
        "setMerchantDetailsForEdgeHeadersOnly",
        "Lcom/stripe/transaction/Settings;",
        "settings",
        "getSettings",
        "()Lcom/stripe/transaction/Settings;",
        "setSettings",
        "(Lcom/stripe/transaction/Settings;)V",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "tippingConfig",
        "getTippingConfig",
        "()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "setTippingConfig",
        "(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;)V",
        "Companion",
        "transaction_release"
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
.field public static final Companion:Lcom/stripe/core/transaction/SettingsRepository$Companion;

.field private static _settings:Lcom/stripe/transaction/Settings;


# instance fields
.field private final sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/transaction/SettingsRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/transaction/SettingsRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/transaction/SettingsRepository;->Companion:Lcom/stripe/core/transaction/SettingsRepository$Companion;

    .line 14
    sget-object v0, Lcom/stripe/transaction/Settings;->Companion:Lcom/stripe/transaction/Settings$Companion;

    invoke-virtual {v0}, Lcom/stripe/transaction/Settings$Companion;->getDEFAULT()Lcom/stripe/transaction/Settings;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/transaction/SettingsRepository;->_settings:Lcom/stripe/transaction/Settings;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/storage/SharedPrefs;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "sharedPrefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/stripe/core/transaction/SettingsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    return-void
.end method


# virtual methods
.method public final getEncryptedAccountOfflineConfig()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "[B[B>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/stripe/core/transaction/SettingsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getEncryptedAccountOfflineConfig()Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyProfileName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/stripe/core/transaction/SettingsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getKeyProfileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLpmConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/core/transaction/SettingsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getLpmConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    move-result-object v0

    return-object v0
.end method

.method public final getMagstripeConfig()Lcom/stripe/proto/model/config/MagstripeConfig;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/core/transaction/SettingsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getMagstripeConfig()Lcom/stripe/proto/model/config/MagstripeConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getMerchantDetailsForEdgeHeadersOnly()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/stripe/core/transaction/SettingsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getMerchantDetailsForEdgeHeadersOnly()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSettings()Lcom/stripe/transaction/Settings;
    .locals 1

    .line 59
    sget-object v0, Lcom/stripe/core/transaction/SettingsRepository;->_settings:Lcom/stripe/transaction/Settings;

    return-object v0
.end method

.method public final getTippingConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/core/transaction/SettingsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getTippingConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    move-result-object v0

    return-object v0
.end method

.method public final setEncryptedAccountOfflineConfig(Lkotlin/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "[B[B>;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/stripe/core/transaction/SettingsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {v0, v1, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putEncryptedAccountOfflineConfig([B[B)V

    return-void
.end method

.method public final setKeyProfileName(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/stripe/core/transaction/SettingsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putKeyProfileName(Ljava/lang/String;)V

    return-void
.end method

.method public final setLpmConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/stripe/core/transaction/SettingsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putLpmConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;)V

    return-void
.end method

.method public final setMagstripeConfig(Lcom/stripe/proto/model/config/MagstripeConfig;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/stripe/core/transaction/SettingsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putMagstripeConfig(Lcom/stripe/proto/model/config/MagstripeConfig;)V

    return-void
.end method

.method public final setMerchantDetailsForEdgeHeadersOnly(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/stripe/core/transaction/SettingsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->setMerchantDetailsForEdgeHeadersOnly(Ljava/lang/String;)V

    return-void
.end method

.method public final setSettings(Lcom/stripe/transaction/Settings;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sput-object p1, Lcom/stripe/core/transaction/SettingsRepository;->_settings:Lcom/stripe/transaction/Settings;

    return-void
.end method

.method public final setTippingConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/stripe/core/transaction/SettingsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putTippingConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;)V

    return-void
.end method
