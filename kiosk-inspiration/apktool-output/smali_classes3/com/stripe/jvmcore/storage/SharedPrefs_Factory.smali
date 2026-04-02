.class public final Lcom/stripe/jvmcore/storage/SharedPrefs_Factory;
.super Ljava/lang/Object;
.source "SharedPrefs_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/storage/SharedPrefs;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyValueStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/KeyValueStore;",
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
            "Lcom/stripe/jvmcore/storage/KeyValueStore;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/stripe/jvmcore/storage/SharedPrefs_Factory;->keyValueStoreProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/storage/SharedPrefs_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/KeyValueStore;",
            ">;)",
            "Lcom/stripe/jvmcore/storage/SharedPrefs_Factory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/stripe/jvmcore/storage/SharedPrefs_Factory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/storage/SharedPrefs_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/jvmcore/storage/KeyValueStore;)Lcom/stripe/jvmcore/storage/SharedPrefs;
    .locals 1

    .line 42
    new-instance v0, Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/storage/SharedPrefs;-><init>(Lcom/stripe/jvmcore/storage/KeyValueStore;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/storage/SharedPrefs;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs_Factory;->keyValueStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-static {v0}, Lcom/stripe/jvmcore/storage/SharedPrefs_Factory;->newInstance(Lcom/stripe/jvmcore/storage/KeyValueStore;)Lcom/stripe/jvmcore/storage/SharedPrefs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/stripe/jvmcore/storage/SharedPrefs_Factory;->get()Lcom/stripe/jvmcore/storage/SharedPrefs;

    move-result-object v0

    return-object v0
.end method
