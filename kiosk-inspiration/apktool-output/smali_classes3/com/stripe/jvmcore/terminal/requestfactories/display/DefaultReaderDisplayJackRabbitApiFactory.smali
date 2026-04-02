.class public final Lcom/stripe/jvmcore/terminal/requestfactories/display/DefaultReaderDisplayJackRabbitApiFactory;
.super Ljava/lang/Object;
.source "DefaultReaderDisplayJackRabbitApiFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultReaderDisplayJackRabbitApiFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultReaderDisplayJackRabbitApiFactory.kt\ncom/stripe/jvmcore/terminal/requestfactories/display/DefaultReaderDisplayJackRabbitApiFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,32:1\n1549#2:33\n1620#2,3:34\n*S KotlinDebug\n*F\n+ 1 DefaultReaderDisplayJackRabbitApiFactory.kt\ncom/stripe/jvmcore/terminal/requestfactories/display/DefaultReaderDisplayJackRabbitApiFactory\n*L\n16#1:33\n16#1:34,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/display/DefaultReaderDisplayJackRabbitApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;",
        "()V",
        "clearReaderDisplay",
        "Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;",
        "setReaderDisplay",
        "Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "terminal-requestfactories"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearReaderDisplay()Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;
    .locals 3

    .line 30
    new-instance v0, Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;
    .locals 21

    const-string v0, "cart"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Cart;->getCurrency()Ljava/lang/String;

    move-result-object v10

    .line 14
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Cart;->getTax()J

    move-result-wide v6

    .line 15
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Cart;->getTotal()J

    move-result-wide v8

    .line 16
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Cart;->getLineItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 35
    check-cast v2, Lcom/stripe/stripeterminal/external/models/CartLineItem;

    .line 18
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CartLineItem;->getDescription()Ljava/lang/String;

    move-result-object v13

    .line 19
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CartLineItem;->getQuantity()I

    move-result v12

    .line 20
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CartLineItem;->getAmount()J

    move-result-wide v14

    .line 17
    new-instance v11, Lcom/stripe/proto/model/sdk/LineItem;

    const/16 v19, 0x38

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v11 .. v20}, Lcom/stripe/proto/model/sdk/LineItem;-><init>(ILjava/lang/String;JLjava/util/List;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    invoke-interface {v1, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 12
    new-instance v1, Lcom/stripe/proto/model/sdk/Cart;

    const/16 v12, 0x8e

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v13}, Lcom/stripe/proto/model/sdk/Cart;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JJLjava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    new-instance v11, Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "cart"

    const/4 v14, 0x0

    move-object v13, v1

    invoke-direct/range {v11 .. v16}, Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/Cart;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11
.end method
