.class public final Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CollectSetupIntentPaymentMethodRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;",
        "()V",
        "allow_redisplay",
        "Lcom/stripe/proto/model/rest/AllowRedisplay;",
        "enable_customer_cancellation",
        "",
        "manual_entry",
        "offline_behavior",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
        "offline_details",
        "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;",
        "setup_intent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "setup_intent_id",
        "",
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
.field public allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

.field public enable_customer_cancellation:Z

.field public manual_entry:Z

.field public offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

.field public offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

.field public setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

.field public setup_intent_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->setup_intent_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final allow_redisplay(Lcom/stripe/proto/model/rest/AllowRedisplay;)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->build()Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;
    .locals 9

    .line 230
    new-instance v0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;

    .line 231
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->setup_intent_id:Ljava/lang/String;

    .line 232
    iget-boolean v2, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->manual_entry:Z

    .line 233
    iget-boolean v3, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->enable_customer_cancellation:Z

    .line 234
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    .line 235
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    .line 236
    iget-object v6, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 237
    iget-object v7, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    .line 238
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v8

    .line 230
    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;-><init>(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)V

    return-object v0
.end method

.method public final enable_customer_cancellation(Z)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->enable_customer_cancellation:Z

    return-object p0
.end method

.method public final manual_entry(Z)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->manual_entry:Z

    return-object p0
.end method

.method public final offline_behavior(Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    return-object p0
.end method

.method public final offline_details(Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    return-object p0
.end method

.method public final setup_intent(Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    return-object p0
.end method

.method public final setup_intent_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;
    .locals 1

    const-string v0, "setup_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->setup_intent_id:Ljava/lang/String;

    return-object p0
.end method
