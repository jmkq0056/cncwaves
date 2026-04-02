.class public final Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReceivedAccountIdFromConnectionToken.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;",
        "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0015\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\nR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;",
        "()V",
        "account_id",
        "",
        "livemode",
        "",
        "Ljava/lang/Boolean;",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final account_id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;->account_id:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;->build()Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;
    .locals 4

    .line 117
    new-instance v0, Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;->account_id:Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;->livemode:Ljava/lang/Boolean;

    .line 120
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 117
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v0
.end method

.method public final livemode(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;->livemode:Ljava/lang/Boolean;

    return-object p0
.end method
