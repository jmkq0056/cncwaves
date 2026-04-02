.class public final Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ForwardedSetupIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;",
        "Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;",
        "()V",
        "forwarding_error",
        "Lcom/stripe/proto/api/sdk/ForwardingError;",
        "offline_details",
        "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;",
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
.field public forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

.field public offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

.field public setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;->build()Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;
    .locals 5

    .line 127
    new-instance v0, Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;

    .line 128
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    .line 129
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 130
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    .line 131
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 127
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;-><init>(Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/api/sdk/ForwardingError;Lokio/ByteString;)V

    return-object v0
.end method

.method public final forwarding_error(Lcom/stripe/proto/api/sdk/ForwardingError;)Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    return-object p0
.end method

.method public final offline_details(Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;)Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    return-object p0
.end method

.method public final setup_intent(Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    return-object p0
.end method
