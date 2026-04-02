.class public final Lcom/stripe/stripeterminal/internal/common/json/PaymentMethodTypesJsonAdapter;
.super Ljava/lang/Object;
.source "PaymentMethodTypesJsonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentMethodTypesJsonAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodTypesJsonAdapter.kt\ncom/stripe/stripeterminal/internal/common/json/PaymentMethodTypesJsonAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,27:1\n1603#2,9:28\n1855#2:37\n1856#2:39\n1612#2:40\n1603#2,9:41\n1855#2:50\n1856#2:52\n1612#2:53\n1#3:38\n1#3:51\n*S KotlinDebug\n*F\n+ 1 PaymentMethodTypesJsonAdapter.kt\ncom/stripe/stripeterminal/internal/common/json/PaymentMethodTypesJsonAdapter\n*L\n17#1:28,9\n17#1:37\n17#1:39\n17#1:40\n24#1:41,9\n24#1:50\n24#1:52\n24#1:53\n17#1:38\n24#1:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0008H\u0007J\u001c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008H\u0007R2\u0010\u0003\u001a&\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/json/PaymentMethodTypesJsonAdapter;",
        "",
        "()V",
        "adapter",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "kotlin.jvm.PlatformType",
        "fromJson",
        "",
        "paymentMethodTypes",
        "",
        "toJson",
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
.field private final adapter:Lcom/squareup/moshi/JsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/JsonAdapter<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-class v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lcom/stripe/json/BaseEnumJsonAdapterKt;->createEnumJsonAdapterWithFallback(Ljava/lang/Class;Ljava/lang/Enum;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/squareup/moshi/JsonAdapter;->lenient()Lcom/squareup/moshi/JsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/json/PaymentMethodTypesJsonAdapter;->adapter:Lcom/squareup/moshi/JsonAdapter;

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation runtime Lcom/squareup/moshi/FromJson;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation

    const-string v0, "paymentMethodTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    check-cast p1, Ljava/lang/Iterable;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 37
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 17
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/json/PaymentMethodTypesJsonAdapter;->adapter:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v2, v1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    if-eqz v1, :cond_0

    .line 36
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final toJson(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation runtime Lcom/squareup/moshi/ToJson;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "paymentMethodTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p1, Ljava/lang/Iterable;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 50
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 49
    check-cast v1, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 24
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/json/PaymentMethodTypesJsonAdapter;->adapter:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v2, v1}, Lcom/squareup/moshi/JsonAdapter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
