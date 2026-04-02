.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OfflineConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0007\u001a\u00020\u00002\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0008\u001a\u00020\u00002\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0005R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;",
        "()V",
        "config_versions",
        "",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;",
        "firmware_versions",
        "key_profile_metadata",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;",
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
.field public config_versions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;",
            ">;"
        }
    .end annotation
.end field

.field public firmware_versions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;",
            ">;"
        }
    .end annotation
.end field

.field public key_profile_metadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1169
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 1171
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;->firmware_versions:Ljava/util/List;

    .line 1174
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;->config_versions:Ljava/util/List;

    .line 1177
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;->key_profile_metadata:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;
    .locals 5

    .line 1197
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;

    .line 1198
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;->firmware_versions:Ljava/util/List;

    .line 1199
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;->config_versions:Ljava/util/List;

    .line 1200
    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;->key_profile_metadata:Ljava/util/List;

    .line 1201
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 1197
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final config_versions(Ljava/util/List;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;"
        }
    .end annotation

    const-string v0, "config_versions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1186
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 1187
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;->config_versions:Ljava/util/List;

    return-object p0
.end method

.method public final firmware_versions(Ljava/util/List;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;"
        }
    .end annotation

    const-string v0, "firmware_versions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1180
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 1181
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;->firmware_versions:Ljava/util/List;

    return-object p0
.end method

.method public final key_profile_metadata(Ljava/util/List;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;"
        }
    .end annotation

    const-string v0, "key_profile_metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1192
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 1193
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$Builder;->key_profile_metadata:Ljava/util/List;

    return-object p0
.end method
