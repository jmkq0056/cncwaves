.class public final Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CancelSetupIntentResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse;",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse;",
        "()V",
        "error",
        "Lcom/stripe/proto/model/sdk/Error;",
        "setup_intent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "wrapped_error",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
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
.field public error:Lcom/stripe/proto/model/sdk/Error;

.field public setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

.field public wrapped_error:Lcom/stripe/proto/model/rest/ErrorWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;->build()Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse;
    .locals 5

    .line 160
    new-instance v0, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse;

    .line 161
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 162
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    .line 163
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;->wrapped_error:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 164
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 160
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse;-><init>(Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/ErrorWrapper;Lokio/ByteString;)V

    return-object v0
.end method

.method public final error(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 146
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;->wrapped_error:Lcom/stripe/proto/model/rest/ErrorWrapper;

    return-object p0
.end method

.method public final setup_intent(Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    .line 136
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;->wrapped_error:Lcom/stripe/proto/model/rest/ErrorWrapper;

    return-object p0
.end method

.method public final wrapped_error(Lcom/stripe/proto/model/rest/ErrorWrapper;)Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;->wrapped_error:Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 156
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method
