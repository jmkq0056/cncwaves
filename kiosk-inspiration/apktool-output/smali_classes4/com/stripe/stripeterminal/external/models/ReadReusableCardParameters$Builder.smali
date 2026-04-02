.class public final Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Builder;
.super Ljava/lang/Object;
.source "ReadReusableCardParameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\t\u001a\u00020\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000bJ\u0016\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Builder;",
        "",
        "()V",
        "customer",
        "",
        "metadata",
        "",
        "build",
        "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;",
        "putAllMetadata",
        "data",
        "",
        "putMetadata",
        "key",
        "value",
        "setCustomer",
        "public_release"
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
.field private customer:Ljava/lang/String;

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Builder;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;
    .locals 4

    .line 80
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Builder;->customer:Ljava/lang/String;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Builder;->metadata:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;-><init>(Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final putAllMetadata(Ljava/util/Map;)Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Builder;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Builder;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Builder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Builder;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setCustomer(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Builder;
    .locals 1

    const-string v0, "customer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Builder;->customer:Ljava/lang/String;

    return-object p0
.end method
