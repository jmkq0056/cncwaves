.class public final Lcom/stripe/proto/model/common/ResourceIdPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ResourceIdPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/ResourceIdPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/ResourceIdPb;",
        "Lcom/stripe/proto/model/common/ResourceIdPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/ResourceIdPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/ResourceIdPb;",
        "()V",
        "bundle_name",
        "",
        "content_type",
        "encoding",
        "Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;",
        "prefix",
        "region",
        "Lcom/stripe/proto/model/common/ResourceIdPb$Region;",
        "resource_name",
        "resource_path",
        "service_bundle",
        "Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;",
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
.field public bundle_name:Ljava/lang/String;

.field public content_type:Ljava/lang/String;

.field public encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

.field public prefix:Ljava/lang/String;

.field public region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

.field public resource_name:Ljava/lang/String;

.field public resource_path:Ljava/lang/String;

.field public service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 188
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 190
    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->REGION_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    iput-object v0, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    .line 193
    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SERVICE_BUNDLE_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    iput-object v0, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->bundle_name:Ljava/lang/String;

    .line 199
    sget-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->CONTENT_ENCODING_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    iput-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 202
    iput-object v0, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->content_type:Ljava/lang/String;

    .line 205
    iput-object v0, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->resource_name:Ljava/lang/String;

    .line 208
    iput-object v0, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->resource_path:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->build()Lcom/stripe/proto/model/common/ResourceIdPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/ResourceIdPb;
    .locals 10

    .line 267
    new-instance v0, Lcom/stripe/proto/model/common/ResourceIdPb;

    .line 268
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    .line 269
    iget-object v2, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    .line 270
    iget-object v3, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->bundle_name:Ljava/lang/String;

    .line 271
    iget-object v4, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 272
    iget-object v5, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->content_type:Ljava/lang/String;

    .line 273
    iget-object v6, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->resource_name:Ljava/lang/String;

    .line 274
    iget-object v7, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->resource_path:Ljava/lang/String;

    .line 275
    iget-object v8, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->prefix:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 267
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/model/common/ResourceIdPb;-><init>(Lcom/stripe/proto/model/common/ResourceIdPb$Region;Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;Ljava/lang/String;Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bundle_name(Ljava/lang/String;)Lcom/stripe/proto/model/common/ResourceIdPb$Builder;
    .locals 1

    const-string v0, "bundle_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iput-object p1, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->bundle_name:Ljava/lang/String;

    return-object p0
.end method

.method public final content_type(Ljava/lang/String;)Lcom/stripe/proto/model/common/ResourceIdPb$Builder;
    .locals 1

    const-string v0, "content_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iput-object p1, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->content_type:Ljava/lang/String;

    return-object p0
.end method

.method public final encoding(Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;)Lcom/stripe/proto/model/common/ResourceIdPb$Builder;
    .locals 1

    const-string v0, "encoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iput-object p1, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    return-object p0
.end method

.method public final prefix(Ljava/lang/String;)Lcom/stripe/proto/model/common/ResourceIdPb$Builder;
    .locals 1

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iput-object p1, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public final region(Lcom/stripe/proto/model/common/ResourceIdPb$Region;)Lcom/stripe/proto/model/common/ResourceIdPb$Builder;
    .locals 1

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iput-object p1, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p0
.end method

.method public final resource_name(Ljava/lang/String;)Lcom/stripe/proto/model/common/ResourceIdPb$Builder;
    .locals 1

    const-string v0, "resource_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iput-object p1, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->resource_name:Ljava/lang/String;

    return-object p0
.end method

.method public final resource_path(Ljava/lang/String;)Lcom/stripe/proto/model/common/ResourceIdPb$Builder;
    .locals 1

    const-string v0, "resource_path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iput-object p1, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->resource_path:Ljava/lang/String;

    return-object p0
.end method

.method public final service_bundle(Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;)Lcom/stripe/proto/model/common/ResourceIdPb$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "service_bundle is deprecated"
    .end annotation

    const-string v0, "service_bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iput-object p1, p0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p0
.end method
