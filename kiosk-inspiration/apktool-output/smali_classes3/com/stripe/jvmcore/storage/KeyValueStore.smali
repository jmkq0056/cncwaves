.class public interface abstract Lcom/stripe/jvmcore/storage/KeyValueStore;
.super Ljava/lang/Object;
.source "KeyValueStore.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H&J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\nH&J\u0016\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0011H&J\u001c\u0010\u0012\u001a\u00020\u000f2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0014H&J\u0008\u0010\u0015\u001a\u00020\u000fH&J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0004H&J\u0018\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0017H&J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001cH&J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001eH&J\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0004H&J\u0018\u0010 \u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0017H&J\u0018\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u001cH&J\u0018\u0010#\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u001eH&J\u0018\u0010$\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H&J\u0010\u0010%\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0004H&R$\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006&\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/storage/KeyValueStore;",
        "",
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


# virtual methods
.method public abstract base64Decode(Ljava/lang/String;)[B
.end method

.method public abstract base64Encode([B)Ljava/lang/String;
.end method

.method public abstract batchRemoveFields(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract batchSetFields(Ljava/util/Map;)V
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
.end method

.method public abstract clear()V
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getListenerMap()Ljava/util/Map;
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
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)V
.end method

.method public abstract putInt(Ljava/lang/String;I)V
.end method

.method public abstract putLong(Ljava/lang/String;J)V
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method
