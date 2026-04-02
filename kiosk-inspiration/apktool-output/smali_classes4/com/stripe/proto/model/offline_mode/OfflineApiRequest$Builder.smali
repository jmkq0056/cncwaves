.class public final Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OfflineApiRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u001a\u0010\n\u001a\u00020\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0007J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\u000e\u001a\u00020\u00002\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fJ\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0017R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
        "()V",
        "account_id",
        "",
        "connection_id",
        "",
        "created_at",
        "endpoint",
        "headers",
        "",
        "id",
        "offline_id",
        "params",
        "",
        "Lcom/stripe/proto/model/offline_mode/NameValuePair;",
        "payment_intent",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "setup_intent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "stripe_entity_id",
        "type",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
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
.field public account_id:Ljava/lang/String;

.field public connection_id:J

.field public created_at:J

.field public endpoint:Ljava/lang/String;

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:J

.field public offline_id:Ljava/lang/String;

.field public params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

.field public setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

.field public stripe_entity_id:Ljava/lang/String;

.field public type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 253
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 255
    sget-object v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CREATE_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->account_id:Ljava/lang/String;

    .line 273
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->headers:Ljava/util/Map;

    .line 276
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->params:Ljava/util/List;

    .line 279
    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->endpoint:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final account_id(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;
    .locals 1

    const-string v0, "account_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->account_id:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->build()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;
    .locals 19

    move-object/from16 v0, p0

    .line 366
    new-instance v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    .line 367
    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 368
    iget-object v3, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->account_id:Ljava/lang/String;

    .line 369
    iget-object v4, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->offline_id:Ljava/lang/String;

    .line 370
    iget-object v5, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->stripe_entity_id:Ljava/lang/String;

    .line 371
    iget-wide v6, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->connection_id:J

    .line 372
    iget-wide v8, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->id:J

    .line 373
    iget-object v10, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->headers:Ljava/util/Map;

    .line 374
    iget-object v11, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->params:Ljava/util/List;

    .line 375
    iget-object v12, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->endpoint:Ljava/lang/String;

    .line 376
    iget-object v13, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 377
    iget-wide v14, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->created_at:J

    move-object/from16 v16, v1

    .line 378
    iget-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 379
    invoke-virtual {v0}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v17

    move-object/from16 v18, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v18

    .line 366
    invoke-direct/range {v1 .. v17}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;-><init>(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final connection_id(J)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;
    .locals 0

    .line 311
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->connection_id:J

    return-object p0
.end method

.method public final created_at(J)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;
    .locals 0

    .line 357
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->created_at:J

    return-object p0
.end method

.method public final endpoint(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;
    .locals 1

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->endpoint:Ljava/lang/String;

    return-object p0
.end method

.method public final headers(Ljava/util/Map;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public final id(J)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;
    .locals 0

    .line 316
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->id:J

    return-object p0
.end method

.method public final offline_id(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->offline_id:Ljava/lang/String;

    return-object p0
.end method

.method public final params(Ljava/util/List;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/NameValuePair;",
            ">;)",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 334
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->params:Ljava/util/List;

    return-object p0
.end method

.method public final payment_intent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    return-object p0
.end method

.method public final setup_intent(Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    return-object p0
.end method

.method public final stripe_entity_id(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->stripe_entity_id:Ljava/lang/String;

    return-object p0
.end method

.method public final type(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    return-object p0
.end method
