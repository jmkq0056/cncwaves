.class public final Lcom/stripe/proto/model/common/VersionInfoPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "VersionInfoPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/VersionInfoPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "Lcom/stripe/proto/model/common/VersionInfoPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/VersionInfoPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "()V",
        "client_type",
        "Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;",
        "client_version",
        "",
        "version_code",
        "",
        "build",
        "common_release"
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
.field public client_type:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public client_version:Ljava/lang/String;

.field public version_code:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 111
    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->CLIENT_TYPE_INVALID:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    iput-object v0, p0, Lcom/stripe/proto/model/common/VersionInfoPb$Builder;->client_type:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/VersionInfoPb$Builder;->build()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/VersionInfoPb;
    .locals 5

    .line 138
    new-instance v0, Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 139
    iget-object v1, p0, Lcom/stripe/proto/model/common/VersionInfoPb$Builder;->client_type:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 140
    iget-object v2, p0, Lcom/stripe/proto/model/common/VersionInfoPb$Builder;->client_version:Ljava/lang/String;

    .line 141
    iget v3, p0, Lcom/stripe/proto/model/common/VersionInfoPb$Builder;->version_code:I

    .line 142
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/VersionInfoPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 138
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/common/VersionInfoPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;Ljava/lang/String;ILokio/ByteString;)V

    return-object v0
.end method

.method public final client_type(Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;)Lcom/stripe/proto/model/common/VersionInfoPb$Builder;
    .locals 1

    const-string v0, "client_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/stripe/proto/model/common/VersionInfoPb$Builder;->client_type:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p0
.end method

.method public final client_version(Ljava/lang/String;)Lcom/stripe/proto/model/common/VersionInfoPb$Builder;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/stripe/proto/model/common/VersionInfoPb$Builder;->client_version:Ljava/lang/String;

    return-object p0
.end method

.method public final version_code(I)Lcom/stripe/proto/model/common/VersionInfoPb$Builder;
    .locals 0

    .line 134
    iput p1, p0, Lcom/stripe/proto/model/common/VersionInfoPb$Builder;->version_code:I

    return-object p0
.end method
