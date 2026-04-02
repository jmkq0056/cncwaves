.class public final Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "GenerateRestrictedAccessTokenResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;",
        "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;",
        "()V",
        "access_token",
        "",
        "access_type",
        "Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;",
        "expires_at",
        "",
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
.field public access_token:Ljava/lang/String;

.field public access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

.field public expires_at:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;->access_token:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;->RESTRICTED_TOKEN_ACCESS_TYPE_INVALID:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    iput-object v0, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    return-void
.end method


# virtual methods
.method public final access_token(Ljava/lang/String;)Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;
    .locals 1

    const-string v0, "access_token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;->access_token:Ljava/lang/String;

    return-object p0
.end method

.method public final access_type(Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;)Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;
    .locals 1

    const-string v0, "access_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;->build()Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;
    .locals 6

    .line 134
    new-instance v0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    .line 135
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;->access_token:Ljava/lang/String;

    .line 136
    iget-object v2, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    .line 137
    iget-wide v3, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;->expires_at:J

    .line 138
    invoke-virtual {p0}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 134
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;JLokio/ByteString;)V

    return-object v0
.end method

.method public final expires_at(J)Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;
    .locals 0

    .line 130
    iput-wide p1, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;->expires_at:J

    return-object p0
.end method
