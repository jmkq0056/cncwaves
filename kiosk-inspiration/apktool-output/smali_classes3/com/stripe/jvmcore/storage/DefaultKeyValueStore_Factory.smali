.class public final Lcom/stripe/jvmcore/storage/DefaultKeyValueStore_Factory;
.super Ljava/lang/Object;
.source "DefaultKeyValueStore_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;",
        ">;"
    }
.end annotation


# instance fields
.field private final preferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/prefs/Preferences;",
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
            "Ljava/util/prefs/Preferences;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore_Factory;->preferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/storage/DefaultKeyValueStore_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/prefs/Preferences;",
            ">;)",
            "Lcom/stripe/jvmcore/storage/DefaultKeyValueStore_Factory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore_Factory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ljava/util/prefs/Preferences;)Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;
    .locals 1

    .line 43
    new-instance v0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;-><init>(Ljava/util/prefs/Preferences;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore_Factory;->preferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/prefs/Preferences;

    invoke-static {v0}, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore_Factory;->newInstance(Ljava/util/prefs/Preferences;)Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore_Factory;->get()Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;

    move-result-object v0

    return-object v0
.end method
