.class public final Lcom/stripe/jvmcore/storage/StoreChangeListener;
.super Ljava/lang/Object;
.source "StoreChangeListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0018\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0003\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004R \u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/jvmcore/storage/StoreChangeListener;",
        "",
        "listenerMap",
        "",
        "",
        "",
        "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;",
        "(Ljava/util/Map;)V",
        "onValueChanged",
        "",
        "keyValueStore",
        "Lcom/stripe/jvmcore/storage/KeyValueStore;",
        "key",
        "storage"
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
.field private final listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "listenerMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/stripe/jvmcore/storage/StoreChangeListener;->listenerMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onValueChanged(Lcom/stripe/jvmcore/storage/KeyValueStore;Ljava/lang/String;)V
    .locals 4

    const-string v0, "keyValueStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 34
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/StoreChangeListener;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_4

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;

    .line 38
    :try_start_0
    instance-of v2, v1, Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsStringChangeListener;

    if-eqz v2, :cond_1

    .line 39
    check-cast v1, Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsStringChangeListener;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsStringChangeListener;->invoke(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    instance-of v2, v1, Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsIntChangeListener;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 42
    check-cast v1, Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsIntChangeListener;

    invoke-interface {p1, p2, v3}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsIntChangeListener;->invoke(I)V

    goto :goto_0

    .line 44
    :cond_2
    instance-of v2, v1, Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsLongChangeListener;

    if-eqz v2, :cond_3

    .line 45
    check-cast v1, Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsLongChangeListener;

    const-wide/16 v2, 0x0

    invoke-interface {p1, p2, v2, v3}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsLongChangeListener;->invoke(J)V

    goto :goto_0

    .line 47
    :cond_3
    instance-of v2, v1, Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsBooleanChangeListener;

    if-eqz v2, :cond_0

    .line 48
    check-cast v1, Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsBooleanChangeListener;

    invoke-interface {p1, p2, v3}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsBooleanChangeListener;->invoke(Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-void
.end method
