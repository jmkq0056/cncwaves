.class public final Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmSetupIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;",
        "()V",
        "mandate_data",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate;",
        "offline_details",
        "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;",
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
.field public mandate_data:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate;

.field public offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

.field public setup_intent_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;->setup_intent_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;->build()Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;
    .locals 5

    .line 139
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;

    .line 140
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;->setup_intent_id:Ljava/lang/String;

    .line 141
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;->mandate_data:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate;

    .line 142
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    .line 143
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 139
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lokio/ByteString;)V

    return-object v0
.end method

.method public final mandate_data(Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;->mandate_data:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate;

    return-object p0
.end method

.method public final offline_details(Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    return-object p0
.end method

.method public final setup_intent_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;
    .locals 1

    const-string v0, "setup_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Builder;->setup_intent_id:Ljava/lang/String;

    return-object p0
.end method
