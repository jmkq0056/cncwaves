.class public final Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;
.super Ljava/lang/Object;
.source "MainlandIdempotencyGenerator.kt"

# interfaces
.implements Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainlandIdempotencyGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainlandIdempotencyGenerator.kt\ncom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1549#2:28\n1620#2,3:29\n*S KotlinDebug\n*F\n+ 1 MainlandIdempotencyGenerator.kt\ncom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator\n*L\n15#1:28\n15#1:29,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u001f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;",
        "Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "deviceInfoRepository",
        "Lcom/stripe/device/DeviceInfoRepository;",
        "random",
        "Lkotlin/random/Random;",
        "(Lcom/stripe/time/Clock;Lcom/stripe/device/DeviceInfoRepository;Lkotlin/random/Random;)V",
        "generateKey",
        "",
        "Companion",
        "base"
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
.field public static final Companion:Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator$Companion;

.field private static final LENGTH:I = 0x8

.field private static final VALID_CHARS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clock:Lcom/stripe/time/Clock;

.field private final deviceInfoRepository:Lcom/stripe/device/DeviceInfoRepository;

.field private final random:Lkotlin/random/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;->Companion:Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator$Companion;

    .line 24
    new-instance v0, Lkotlin/ranges/CharRange;

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/CharRange;-><init>(CC)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lkotlin/ranges/CharRange;

    const/16 v2, 0x41

    const/16 v3, 0x5a

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/CharRange;-><init>(CC)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lkotlin/ranges/CharRange;

    const/16 v2, 0x61

    const/16 v3, 0x7a

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/CharRange;-><init>(CC)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;->VALID_CHARS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/time/Clock;Lcom/stripe/device/DeviceInfoRepository;Lkotlin/random/Random;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;->clock:Lcom/stripe/time/Clock;

    .line 10
    iput-object p2, p0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;->deviceInfoRepository:Lcom/stripe/device/DeviceInfoRepository;

    .line 11
    iput-object p3, p0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;->random:Lkotlin/random/Random;

    return-void
.end method


# virtual methods
.method public generateKey()Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 14
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 29
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 15
    sget-object v2, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;->VALID_CHARS:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    iget-object v3, p0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;->random:Lkotlin/random/Random;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->random(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 30
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 28
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 16
    const-string v0, ""

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;->deviceInfoRepository:Lcom/stripe/device/DeviceInfoRepository;

    invoke-interface {v1}, Lcom/stripe/device/DeviceInfoRepository;->getPlatformDeviceInfo()Lcom/stripe/device/PlatformDeviceInfo;

    move-result-object v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v3}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/stripe/device/PlatformDeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
