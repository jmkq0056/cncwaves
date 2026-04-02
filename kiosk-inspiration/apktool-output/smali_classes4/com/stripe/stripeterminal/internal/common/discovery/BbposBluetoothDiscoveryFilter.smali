.class public final Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;
.super Ljava/lang/Object;
.source "BbposBluetoothDiscoveryFilter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposBluetoothDiscoveryFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposBluetoothDiscoveryFilter.kt\ncom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,33:1\n766#2:34\n857#2,2:35\n*S KotlinDebug\n*F\n+ 1 BbposBluetoothDiscoveryFilter.kt\ncom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter\n*L\n30#1:34\n30#1:35,2\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\r\u0010\u0007\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\tJ\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00042\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004J#\u0010\r\u001a\u00020\u00082\u0014\u0010\u0003\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00050\u0004H\u0000\u00a2\u0006\u0002\u0008\u000eR\u001c\u0010\u0003\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00050\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;",
        "",
        "()V",
        "readerClasses",
        "",
        "Lkotlin/reflect/KClass;",
        "Lcom/stripe/core/hardware/Reader;",
        "clearReaderClassesFilter",
        "",
        "clearReaderClassesFilter$common_publish",
        "filterDevices",
        "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
        "readers",
        "setReaderClasses",
        "setReaderClasses$common_publish",
        "common_publish"
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
.field private readerClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;->readerClasses:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final clearReaderClassesFilter$common_publish()V
    .locals 1

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;->readerClasses:Ljava/util/List;

    return-void
.end method

.method public final filterDevices(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
            ">;"
        }
    .end annotation

    const-string v0, "readers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    check-cast p1, Ljava/lang/Iterable;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 35
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/core/hardware/Reader$BluetoothReader;

    .line 30
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;->readerClasses:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final setReaderClasses$common_publish(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "readerClasses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;->readerClasses:Ljava/util/List;

    return-void
.end method
