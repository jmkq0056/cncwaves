.class public final Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SemanticVersionedAssetMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;",
        "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;",
        "()V",
        "build_variant",
        "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;",
        "is_debug",
        "",
        "name",
        "",
        "product_id",
        "signed_key",
        "version",
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
.field public build_variant:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;

.field public is_debug:Z

.field public name:Ljava/lang/String;

.field public product_id:Ljava/lang/String;

.field public signed_key:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 161
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->name:Ljava/lang/String;

    .line 166
    iput-object v0, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->version:Ljava/lang/String;

    .line 172
    iput-object v0, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->signed_key:Ljava/lang/String;

    .line 175
    sget-object v1, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;->BUILD_VARIANT_TYPE_INVALID:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;

    iput-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->build_variant:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;

    .line 178
    iput-object v0, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->product_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->build()Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;
    .locals 8

    .line 225
    new-instance v0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    .line 226
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->name:Ljava/lang/String;

    .line 227
    iget-object v2, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->version:Ljava/lang/String;

    .line 228
    iget-boolean v3, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->is_debug:Z

    .line 229
    iget-object v4, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->signed_key:Ljava/lang/String;

    .line 230
    iget-object v5, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->build_variant:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;

    .line 231
    iget-object v6, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->product_id:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 225
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final build_variant(Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;)Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;
    .locals 1

    const-string v0, "build_variant"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iput-object p1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->build_variant:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;

    return-object p0
.end method

.method public final is_debug(Z)Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->is_debug:Z

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iput-object p1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final product_id(Ljava/lang/String;)Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;
    .locals 1

    const-string v0, "product_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->product_id:Ljava/lang/String;

    return-object p0
.end method

.method public final signed_key(Ljava/lang/String;)Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;
    .locals 1

    const-string v0, "signed_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->signed_key:Ljava/lang/String;

    return-object p0
.end method

.method public final version(Ljava/lang/String;)Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iput-object p1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->version:Ljava/lang/String;

    return-object p0
.end method
