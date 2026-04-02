.class public final Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ActivatedConnectionToken.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/ActivatedConnectionToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;",
        "()V",
        "account_id",
        "",
        "account_ref",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;",
        "connection_context_id",
        "livemode",
        "",
        "Ljava/lang/Boolean;",
        "offline_stripe_session_token",
        "reader_id",
        "reader_rpc_session_token",
        "sdk_rpc_session_token",
        "stripe_session_token",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;",
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

.field public account_ref:Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;

.field public connection_context_id:Ljava/lang/String;

.field public livemode:Ljava/lang/Boolean;

.field public offline_stripe_session_token:Ljava/lang/String;

.field public reader_id:Ljava/lang/String;

.field public reader_rpc_session_token:Ljava/lang/String;

.field public sdk_rpc_session_token:Ljava/lang/String;

.field public stripe_session_token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final account_id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->account_id:Ljava/lang/String;

    return-object p0
.end method

.method public final account_ref(Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;)Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->account_ref:Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->build()Lcom/stripe/proto/model/rest/ActivatedConnectionToken;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/ActivatedConnectionToken;
    .locals 11

    .line 313
    new-instance v0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;

    .line 314
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->account_ref:Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;

    .line 315
    iget-object v2, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->sdk_rpc_session_token:Ljava/lang/String;

    .line 316
    iget-object v3, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->reader_rpc_session_token:Ljava/lang/String;

    .line 317
    iget-object v4, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->stripe_session_token:Ljava/lang/String;

    .line 318
    iget-object v5, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->reader_id:Ljava/lang/String;

    .line 319
    iget-object v6, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->livemode:Ljava/lang/Boolean;

    .line 320
    iget-object v7, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->account_id:Ljava/lang/String;

    .line 321
    iget-object v8, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->connection_context_id:Ljava/lang/String;

    .line 322
    iget-object v9, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->offline_stripe_session_token:Ljava/lang/String;

    .line 323
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    .line 313
    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;-><init>(Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final connection_context_id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->connection_context_id:Ljava/lang/String;

    return-object p0
.end method

.method public final livemode(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->livemode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final offline_stripe_session_token(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->offline_stripe_session_token:Ljava/lang/String;

    return-object p0
.end method

.method public final reader_id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->reader_id:Ljava/lang/String;

    return-object p0
.end method

.method public final reader_rpc_session_token(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->reader_rpc_session_token:Ljava/lang/String;

    return-object p0
.end method

.method public final sdk_rpc_session_token(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->sdk_rpc_session_token:Ljava/lang/String;

    return-object p0
.end method

.method public final stripe_session_token(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;->stripe_session_token:Ljava/lang/String;

    return-object p0
.end method
