.class public final Lcom/stripe/jvmcore/storage/dagger/PreferencesModule_ProvideDefaultPreferencesFactory;
.super Ljava/lang/Object;
.source "PreferencesModule_ProvideDefaultPreferencesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/prefs/Preferences;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/jvmcore/storage/dagger/PreferencesModule;

.field private final namespaceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/storage/dagger/PreferencesModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/storage/dagger/PreferencesModule;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/stripe/jvmcore/storage/dagger/PreferencesModule_ProvideDefaultPreferencesFactory;->module:Lcom/stripe/jvmcore/storage/dagger/PreferencesModule;

    .line 35
    iput-object p2, p0, Lcom/stripe/jvmcore/storage/dagger/PreferencesModule_ProvideDefaultPreferencesFactory;->namespaceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/storage/dagger/PreferencesModule;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/storage/dagger/PreferencesModule_ProvideDefaultPreferencesFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/storage/dagger/PreferencesModule;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/jvmcore/storage/dagger/PreferencesModule_ProvideDefaultPreferencesFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/jvmcore/storage/dagger/PreferencesModule_ProvideDefaultPreferencesFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/jvmcore/storage/dagger/PreferencesModule_ProvideDefaultPreferencesFactory;-><init>(Lcom/stripe/jvmcore/storage/dagger/PreferencesModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDefaultPreferences(Lcom/stripe/jvmcore/storage/dagger/PreferencesModule;Ljava/lang/String;)Ljava/util/prefs/Preferences;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/storage/dagger/PreferencesModule;->provideDefaultPreferences(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/prefs/Preferences;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/jvmcore/storage/dagger/PreferencesModule_ProvideDefaultPreferencesFactory;->get()Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/prefs/Preferences;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/dagger/PreferencesModule_ProvideDefaultPreferencesFactory;->module:Lcom/stripe/jvmcore/storage/dagger/PreferencesModule;

    iget-object v1, p0, Lcom/stripe/jvmcore/storage/dagger/PreferencesModule_ProvideDefaultPreferencesFactory;->namespaceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/stripe/jvmcore/storage/dagger/PreferencesModule_ProvideDefaultPreferencesFactory;->provideDefaultPreferences(Lcom/stripe/jvmcore/storage/dagger/PreferencesModule;Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method
