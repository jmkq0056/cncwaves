.class public final Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "GenerateAuthenticationChallengeResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse;",
        "Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse;",
        "()V",
        "authentication_challenge",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;",
        "build",
        "terminal_release"
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
.field public authentication_challenge:Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final authentication_challenge(Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;)Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse$Builder;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse$Builder;->authentication_challenge:Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse$Builder;->build()Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse;
    .locals 3

    .line 89
    new-instance v0, Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse;

    .line 90
    iget-object v1, p0, Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse$Builder;->authentication_challenge:Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;

    .line 91
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 89
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/api/armada/GenerateAuthenticationChallengeResponse;-><init>(Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;Lokio/ByteString;)V

    return-object v0
.end method
