.class public final Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CreateSetupIntentResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;",
        "Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;",
        "()V",
        "decline_response",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "error",
        "Lcom/stripe/proto/model/sdk/Error;",
        "offline_details",
        "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;",
        "options",
        "Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;",
        "setup_intent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
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
.field public decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

.field public error:Lcom/stripe/proto/model/sdk/Error;

.field public offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

.field public options:Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;

.field public setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->build()Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;
    .locals 7

    .line 202
    new-instance v0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;

    .line 203
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 204
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    .line 205
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 206
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->options:Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;

    .line 207
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    .line 208
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 202
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;-><init>(Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lokio/ByteString;)V

    return-object v0
.end method

.method public final decline_response(Lcom/stripe/proto/model/rest/ErrorWrapper;)Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/4 p1, 0x0

    .line 197
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 198
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final error(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    const/4 p1, 0x0

    .line 187
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 188
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    return-object p0
.end method

.method public final offline_details(Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;)Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    return-object p0
.end method

.method public final options(Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;)Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->options:Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;

    return-object p0
.end method

.method public final setup_intent(Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    .line 178
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    return-object p0
.end method
