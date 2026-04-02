.class public final Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmSetupIntentResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;",
        "()V",
        "confirm_error",
        "Lcom/stripe/proto/model/sdk/Error;",
        "confirmed_setup_intent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "decline_response",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "offline_behavior",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
        "offline_details",
        "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;",
        "offline_stats",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
        "request_id",
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
.field public confirm_error:Lcom/stripe/proto/model/sdk/Error;

.field public confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

.field public decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

.field public offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

.field public offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

.field public offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

.field public request_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->request_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->build()Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;
    .locals 9

    .line 254
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;

    .line 255
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->request_id:Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 257
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 258
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    .line 259
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 260
    iget-object v6, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    .line 261
    iget-object v7, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    .line 262
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v8

    .line 254
    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lokio/ByteString;)V

    return-object v0
.end method

.method public final confirm_error(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    const/4 p1, 0x0

    .line 249
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 250
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    return-object p0
.end method

.method public final confirmed_setup_intent(Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    const/4 p1, 0x0

    .line 229
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 230
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final decline_response(Lcom/stripe/proto/model/rest/ErrorWrapper;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 240
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final offline_behavior(Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    return-object p0
.end method

.method public final offline_details(Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    return-object p0
.end method

.method public final offline_stats(Lcom/stripe/proto/api/sdk/OfflineStats;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    return-object p0
.end method

.method public final request_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;
    .locals 1

    const-string v0, "request_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->request_id:Ljava/lang/String;

    return-object p0
.end method
