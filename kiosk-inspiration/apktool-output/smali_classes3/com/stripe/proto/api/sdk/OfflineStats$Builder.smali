.class public final Lcom/stripe/proto/api/sdk/OfflineStats$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OfflineStats.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/OfflineStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
        "Lcom/stripe/proto/api/sdk/OfflineStats$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u001a\u0010\u0004\u001a\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tR\u001e\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/OfflineStats$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
        "()V",
        "payment_amounts_by_currency",
        "",
        "",
        "",
        "payments_count",
        "",
        "setup_intents_count",
        "build",
        "internal_release"
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
.field public payment_amounts_by_currency:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public payments_count:I

.field public setup_intents_count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 125
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/OfflineStats$Builder;->payment_amounts_by_currency:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OfflineStats$Builder;->build()Lcom/stripe/proto/api/sdk/OfflineStats;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/OfflineStats;
    .locals 5

    .line 157
    new-instance v0, Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 158
    iget v1, p0, Lcom/stripe/proto/api/sdk/OfflineStats$Builder;->payments_count:I

    .line 159
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/OfflineStats$Builder;->payment_amounts_by_currency:Ljava/util/Map;

    .line 160
    iget v3, p0, Lcom/stripe/proto/api/sdk/OfflineStats$Builder;->setup_intents_count:I

    .line 161
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OfflineStats$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 157
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/sdk/OfflineStats;-><init>(ILjava/util/Map;ILokio/ByteString;)V

    return-object v0
.end method

.method public final payment_amounts_by_currency(Ljava/util/Map;)Lcom/stripe/proto/api/sdk/OfflineStats$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/stripe/proto/api/sdk/OfflineStats$Builder;"
        }
    .end annotation

    const-string v0, "payment_amounts_by_currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OfflineStats$Builder;->payment_amounts_by_currency:Ljava/util/Map;

    return-object p0
.end method

.method public final payments_count(I)Lcom/stripe/proto/api/sdk/OfflineStats$Builder;
    .locals 0

    .line 135
    iput p1, p0, Lcom/stripe/proto/api/sdk/OfflineStats$Builder;->payments_count:I

    return-object p0
.end method

.method public final setup_intents_count(I)Lcom/stripe/proto/api/sdk/OfflineStats$Builder;
    .locals 0

    .line 153
    iput p1, p0, Lcom/stripe/proto/api/sdk/OfflineStats$Builder;->setup_intents_count:I

    return-object p0
.end method
