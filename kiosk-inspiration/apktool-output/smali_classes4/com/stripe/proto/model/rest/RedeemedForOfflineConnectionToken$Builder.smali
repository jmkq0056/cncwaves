.class public final Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RedeemedForOfflineConnectionToken.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;",
        "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u0015\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;",
        "()V",
        "account_id",
        "",
        "livemode",
        "",
        "Ljava/lang/Boolean;",
        "sdk_rpc_session_token",
        "stripe_session_token",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;",
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

.field public livemode:Ljava/lang/Boolean;

.field public sdk_rpc_session_token:Ljava/lang/String;

.field public stripe_session_token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final account_id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->account_id:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->build()Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;
    .locals 6

    .line 173
    new-instance v0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;

    .line 174
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->account_id:Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->stripe_session_token:Ljava/lang/String;

    .line 176
    iget-object v3, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->sdk_rpc_session_token:Ljava/lang/String;

    .line 177
    iget-object v4, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->livemode:Ljava/lang/Boolean;

    .line 178
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 173
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v0
.end method

.method public final livemode(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->livemode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final sdk_rpc_session_token(Ljava/lang/String;)Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->sdk_rpc_session_token:Ljava/lang/String;

    return-object p0
.end method

.method public final stripe_session_token(Ljava/lang/String;)Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->stripe_session_token:Ljava/lang/String;

    return-object p0
.end method
