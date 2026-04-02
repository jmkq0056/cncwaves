.class public final Lcom/stripe/core/transaction/SettingsRepository_Factory;
.super Ljava/lang/Object;
.source "SettingsRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final sharedPrefsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/core/transaction/SettingsRepository_Factory;->sharedPrefsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/transaction/SettingsRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;)",
            "Lcom/stripe/core/transaction/SettingsRepository_Factory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/stripe/core/transaction/SettingsRepository_Factory;

    invoke-direct {v0, p0}, Lcom/stripe/core/transaction/SettingsRepository_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/jvmcore/storage/SharedPrefs;)Lcom/stripe/core/transaction/SettingsRepository;
    .locals 1

    .line 43
    new-instance v0, Lcom/stripe/core/transaction/SettingsRepository;

    invoke-direct {v0, p0}, Lcom/stripe/core/transaction/SettingsRepository;-><init>(Lcom/stripe/jvmcore/storage/SharedPrefs;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/core/transaction/SettingsRepository;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/core/transaction/SettingsRepository_Factory;->sharedPrefsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-static {v0}, Lcom/stripe/core/transaction/SettingsRepository_Factory;->newInstance(Lcom/stripe/jvmcore/storage/SharedPrefs;)Lcom/stripe/core/transaction/SettingsRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/core/transaction/SettingsRepository_Factory;->get()Lcom/stripe/core/transaction/SettingsRepository;

    move-result-object v0

    return-object v0
.end method
