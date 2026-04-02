.class public final Lcom/stripe/proto/model/common/SignedAssetPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SignedAssetPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/SignedAssetPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/SignedAssetPb;",
        "Lcom/stripe/proto/model/common/SignedAssetPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\tJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/SignedAssetPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/SignedAssetPb;",
        "()V",
        "android_package_metadata",
        "Lcom/stripe/proto/model/common/AndroidPackageMetadata;",
        "create_time",
        "Lcom/stripe/proto/model/common/InstantPb;",
        "description",
        "",
        "md5_checksum",
        "original_publisher",
        "semantic_versioned_metadata",
        "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;",
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
.field public android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

.field public create_time:Lcom/stripe/proto/model/common/InstantPb;

.field public description:Ljava/lang/String;

.field public md5_checksum:Ljava/lang/String;

.field public original_publisher:Ljava/lang/String;

.field public semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->md5_checksum:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->description:Ljava/lang/String;

    .line 177
    iput-object v0, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->original_publisher:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final android_package_metadata(Lcom/stripe/proto/model/common/AndroidPackageMetadata;)Lcom/stripe/proto/model/common/SignedAssetPb$Builder;
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    const/4 p1, 0x0

    .line 219
    iput-object p1, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->build()Lcom/stripe/proto/model/common/SignedAssetPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/SignedAssetPb;
    .locals 8

    .line 229
    new-instance v0, Lcom/stripe/proto/model/common/SignedAssetPb;

    .line 230
    iget-object v1, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->md5_checksum:Ljava/lang/String;

    .line 231
    iget-object v2, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->description:Ljava/lang/String;

    .line 232
    iget-object v3, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->create_time:Lcom/stripe/proto/model/common/InstantPb;

    .line 233
    iget-object v4, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->original_publisher:Ljava/lang/String;

    .line 234
    iget-object v5, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    .line 235
    iget-object v6, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    .line 236
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 229
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/common/SignedAssetPb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lokio/ByteString;)V

    return-object v0
.end method

.method public final create_time(Lcom/stripe/proto/model/common/InstantPb;)Lcom/stripe/proto/model/common/SignedAssetPb$Builder;
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->create_time:Lcom/stripe/proto/model/common/InstantPb;

    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/stripe/proto/model/common/SignedAssetPb$Builder;
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final md5_checksum(Ljava/lang/String;)Lcom/stripe/proto/model/common/SignedAssetPb$Builder;
    .locals 1

    const-string v0, "md5_checksum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->md5_checksum:Ljava/lang/String;

    return-object p0
.end method

.method public final original_publisher(Ljava/lang/String;)Lcom/stripe/proto/model/common/SignedAssetPb$Builder;
    .locals 1

    const-string v0, "original_publisher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iput-object p1, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->original_publisher:Ljava/lang/String;

    return-object p0
.end method

.method public final semantic_versioned_metadata(Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;)Lcom/stripe/proto/model/common/SignedAssetPb$Builder;
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    const/4 p1, 0x0

    .line 225
    iput-object p1, p0, Lcom/stripe/proto/model/common/SignedAssetPb$Builder;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    return-object p0
.end method
