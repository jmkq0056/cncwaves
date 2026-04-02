.class public final Lcom/stripe/core/storage/AndroidKeyValueStore$listener$1;
.super Ljava/lang/Object;
.source "AndroidKeyValueStore.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/storage/AndroidKeyValueStore;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "com/stripe/core/storage/AndroidKeyValueStore$listener$1",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "changeListener",
        "Lcom/stripe/jvmcore/storage/StoreChangeListener;",
        "getChangeListener",
        "()Lcom/stripe/jvmcore/storage/StoreChangeListener;",
        "onSharedPreferenceChanged",
        "",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "key",
        "",
        "storage_release"
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
.field private final changeListener:Lcom/stripe/jvmcore/storage/StoreChangeListener;

.field final synthetic this$0:Lcom/stripe/core/storage/AndroidKeyValueStore;


# direct methods
.method constructor <init>(Lcom/stripe/core/storage/AndroidKeyValueStore;)V
    .locals 1

    iput-object p1, p0, Lcom/stripe/core/storage/AndroidKeyValueStore$listener$1;->this$0:Lcom/stripe/core/storage/AndroidKeyValueStore;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/stripe/jvmcore/storage/StoreChangeListener;

    invoke-virtual {p1}, Lcom/stripe/core/storage/AndroidKeyValueStore;->getListenerMap()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/storage/StoreChangeListener;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/stripe/core/storage/AndroidKeyValueStore$listener$1;->changeListener:Lcom/stripe/jvmcore/storage/StoreChangeListener;

    return-void
.end method


# virtual methods
.method public final getChangeListener()Lcom/stripe/jvmcore/storage/StoreChangeListener;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/core/storage/AndroidKeyValueStore$listener$1;->changeListener:Lcom/stripe/jvmcore/storage/StoreChangeListener;

    return-object v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/stripe/core/storage/AndroidKeyValueStore$listener$1;->changeListener:Lcom/stripe/jvmcore/storage/StoreChangeListener;

    iget-object v0, p0, Lcom/stripe/core/storage/AndroidKeyValueStore$listener$1;->this$0:Lcom/stripe/core/storage/AndroidKeyValueStore;

    check-cast v0, Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/jvmcore/storage/StoreChangeListener;->onValueChanged(Lcom/stripe/jvmcore/storage/KeyValueStore;Ljava/lang/String;)V

    return-void
.end method
