.class public final Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;
.super Ljava/lang/Object;
.source "DefaultKeyValueStore.kt"

# interfaces
.implements Lcom/stripe/jvmcore/storage/KeyValueStore;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultKeyValueStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultKeyValueStore.kt\ncom/stripe/jvmcore/storage/DefaultKeyValueStore\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,102:1\n1855#2,2:103\n1855#2,2:105\n*S KotlinDebug\n*F\n+ 1 DefaultKeyValueStore.kt\ncom/stripe/jvmcore/storage/DefaultKeyValueStore\n*L\n60#1:103,2\n70#1:105,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\u0016\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0016H\u0016J\u001c\u0010\u0017\u001a\u00020\u00142\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016J\u0008\u0010\u001b\u001a\u00020\u0014H\u0016J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\tH\u0016J\u0018\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u001dH\u0016J\u0018\u0010!\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010 \u001a\u00020\"H\u0016J\u0018\u0010#\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010 \u001a\u00020$H\u0016J\u001c\u0010%\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001e\u001a\u00020\t2\u0008\u0010 \u001a\u0004\u0018\u00010\tH\u0016J\u0018\u0010&\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\'\u001a\u00020\u001dH\u0016J\u0018\u0010(\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\'\u001a\u00020\"H\u0016J\u0018\u0010)\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\'\u001a\u00020$H\u0016J\u0018\u0010*\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\'\u001a\u00020\tH\u0016J\u000e\u0010+\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u0006J\u0010\u0010-\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\tH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;",
        "Lcom/stripe/jvmcore/storage/KeyValueStore;",
        "preferences",
        "Ljava/util/prefs/Preferences;",
        "(Ljava/util/prefs/Preferences;)V",
        "changeListener",
        "Lcom/stripe/jvmcore/storage/StoreChangeListener;",
        "listenerMap",
        "",
        "",
        "",
        "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;",
        "getListenerMap",
        "()Ljava/util/Map;",
        "base64Decode",
        "",
        "encodedMessage",
        "base64Encode",
        "byteArray",
        "batchRemoveFields",
        "",
        "keys",
        "",
        "batchSetFields",
        "map",
        "",
        "",
        "clear",
        "contains",
        "",
        "key",
        "getBoolean",
        "default",
        "getInt",
        "",
        "getLong",
        "",
        "getString",
        "putBoolean",
        "value",
        "putInt",
        "putLong",
        "putString",
        "registerChangeListener",
        "listener",
        "remove",
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
.field private final changeListener:Lcom/stripe/jvmcore/storage/StoreChangeListener;

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

.field private final preferences:Ljava/util/prefs/Preferences;


# direct methods
.method public static synthetic $r8$lambda$LsvA5VSFWBvJDqX-tY6FaTscLPM(Lcom/stripe/jvmcore/storage/StoreChangeListener;Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;Ljava/util/prefs/PreferenceChangeEvent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->registerChangeListener$lambda$4(Lcom/stripe/jvmcore/storage/StoreChangeListener;Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;Ljava/util/prefs/PreferenceChangeEvent;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/prefs/Preferences;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    .line 11
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->listenerMap:Ljava/util/Map;

    .line 12
    new-instance p1, Lcom/stripe/jvmcore/storage/StoreChangeListener;

    invoke-virtual {p0}, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->getListenerMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/stripe/jvmcore/storage/StoreChangeListener;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->changeListener:Lcom/stripe/jvmcore/storage/StoreChangeListener;

    .line 15
    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->registerChangeListener(Lcom/stripe/jvmcore/storage/StoreChangeListener;)V

    return-void
.end method

.method private static final registerChangeListener$lambda$4(Lcom/stripe/jvmcore/storage/StoreChangeListener;Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;Ljava/util/prefs/PreferenceChangeEvent;)V
    .locals 1

    const-string v0, "$listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    check-cast p1, Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-virtual {p2}, Ljava/util/prefs/PreferenceChangeEvent;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/storage/StoreChangeListener;->onValueChanged(Lcom/stripe/jvmcore/storage/KeyValueStore;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public base64Decode(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "encodedMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "decode(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public base64Encode([B)Ljava/lang/String;
    .locals 1

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Ljava/util/Base64;->getMimeEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "encodeToString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public declared-synchronized batchRemoveFields(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    .line 60
    check-cast p1, Ljava/lang/Iterable;

    .line 103
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized batchSetFields(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    .line 70
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 105
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 72
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/prefs/Preferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/prefs/Preferences;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 74
    :cond_1
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/prefs/Preferences;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 75
    :cond_2
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/prefs/Preferences;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 76
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported data type for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    invoke-virtual {v0}, Ljava/util/prefs/Preferences;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    invoke-virtual {v0}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "keys(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    invoke-virtual {v0, p1, p2}, Ljava/util/prefs/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    invoke-virtual {v0, p1, p2}, Ljava/util/prefs/Preferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getListenerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;",
            ">;>;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->listenerMap:Ljava/util/Map;

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/prefs/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    invoke-virtual {v0, p1, p2}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    invoke-virtual {v0, p1, p2}, Ljava/util/prefs/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    invoke-virtual {v0, p1, p2}, Ljava/util/prefs/Preferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/prefs/Preferences;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    invoke-virtual {v0, p1, p2}, Ljava/util/prefs/Preferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final registerChangeListener(Lcom/stripe/jvmcore/storage/StoreChangeListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    new-instance v1, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/jvmcore/storage/StoreChangeListener;Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;)V

    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->preferences:Ljava/util/prefs/Preferences;

    invoke-virtual {v0, p1}, Ljava/util/prefs/Preferences;->remove(Ljava/lang/String;)V

    return-void
.end method
