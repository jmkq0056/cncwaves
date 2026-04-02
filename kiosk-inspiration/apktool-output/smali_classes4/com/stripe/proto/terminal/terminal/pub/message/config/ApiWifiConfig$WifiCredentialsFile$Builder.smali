.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApiWifiConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;",
        "()V",
        "file_id",
        "",
        "presigned_s3_url",
        "Lcom/stripe/proto/model/common/UrlPb;",
        "s3_url",
        "sha256_checksum",
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
.field public file_id:Ljava/lang/String;

.field public presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

.field public s3_url:Lcom/stripe/proto/model/common/UrlPb;

.field public sha256_checksum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 979
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 981
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;->file_id:Ljava/lang/String;

    .line 990
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;->sha256_checksum:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 979
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;
    .locals 6

    .line 1021
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;

    .line 1022
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;->file_id:Ljava/lang/String;

    .line 1023
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;->s3_url:Lcom/stripe/proto/model/common/UrlPb;

    .line 1024
    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    .line 1025
    iget-object v4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;->sha256_checksum:Ljava/lang/String;

    .line 1026
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 1021
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/UrlPb;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final file_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;
    .locals 1

    const-string v0, "file_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 993
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;->file_id:Ljava/lang/String;

    return-object p0
.end method

.method public final presigned_s3_url(Lcom/stripe/proto/model/common/UrlPb;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;
    .locals 0

    .line 1009
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    return-object p0
.end method

.method public final s3_url(Lcom/stripe/proto/model/common/UrlPb;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;
    .locals 0

    .line 1001
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;->s3_url:Lcom/stripe/proto/model/common/UrlPb;

    return-object p0
.end method

.method public final sha256_checksum(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;
    .locals 1

    const-string v0, "sha256_checksum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1017
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;->sha256_checksum:Ljava/lang/String;

    return-object p0
.end method
