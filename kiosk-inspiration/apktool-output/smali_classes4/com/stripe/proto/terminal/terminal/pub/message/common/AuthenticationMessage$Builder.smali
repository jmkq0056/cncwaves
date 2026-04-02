.class public final Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AuthenticationMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;",
        "()V",
        "authentication_key_id",
        "",
        "nonce",
        "Lokio/ByteString;",
        "signature",
        "signature_algorithm",
        "Lcom/stripe/proto/terminalauth/pub/message/Algorithm;",
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
.field public authentication_key_id:Ljava/lang/String;

.field public nonce:Lokio/ByteString;

.field public signature:Ljava/lang/String;

.field public signature_algorithm:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 133
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->nonce:Lokio/ByteString;

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->signature:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->authentication_key_id:Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/stripe/proto/terminalauth/pub/message/Algorithm;->ALGORITHM_INVALID:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;

    return-void
.end method


# virtual methods
.method public final authentication_key_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;
    .locals 1

    const-string v0, "authentication_key_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->authentication_key_id:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;
    .locals 6

    .line 179
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;

    .line 180
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->nonce:Lokio/ByteString;

    .line 181
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->signature:Ljava/lang/String;

    .line 182
    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->authentication_key_id:Ljava/lang/String;

    .line 183
    iget-object v4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;

    .line 184
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 179
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;-><init>(Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/Algorithm;Lokio/ByteString;)V

    return-object v0
.end method

.method public final nonce(Lokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;
    .locals 1

    const-string v0, "nonce"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->nonce:Lokio/ByteString;

    return-object p0
.end method

.method public final signature(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;
    .locals 1

    const-string v0, "signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->signature:Ljava/lang/String;

    return-object p0
.end method

.method public final signature_algorithm(Lcom/stripe/proto/terminalauth/pub/message/Algorithm;)Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;
    .locals 1

    const-string v0, "signature_algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;

    return-object p0
.end method
