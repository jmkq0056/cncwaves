.class public final Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AndroidPackageMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/AndroidPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/AndroidPackageMetadata;",
        "Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0008R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/AndroidPackageMetadata;",
        "()V",
        "is_debug",
        "",
        "is_factory_image",
        "package_name",
        "",
        "version_code",
        "",
        "version_name",
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
.field public is_debug:Z

.field public is_factory_image:Z

.field public package_name:Ljava/lang/String;

.field public version_code:I

.field public version_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;->package_name:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;->version_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;->build()Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/AndroidPackageMetadata;
    .locals 7

    .line 196
    new-instance v0, Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    .line 197
    iget-object v1, p0, Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;->package_name:Ljava/lang/String;

    .line 198
    iget v2, p0, Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;->version_code:I

    .line 199
    iget-object v3, p0, Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;->version_name:Ljava/lang/String;

    .line 200
    iget-boolean v4, p0, Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;->is_debug:Z

    .line 201
    iget-boolean v5, p0, Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;->is_factory_image:Z

    .line 202
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 196
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/common/AndroidPackageMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLokio/ByteString;)V

    return-object v0
.end method

.method public final is_debug(Z)Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;->is_debug:Z

    return-object p0
.end method

.method public final is_factory_image(Z)Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;->is_factory_image:Z

    return-object p0
.end method

.method public final package_name(Ljava/lang/String;)Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;
    .locals 1

    const-string v0, "package_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;->package_name:Ljava/lang/String;

    return-object p0
.end method

.method public final version_code(I)Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;
    .locals 0

    .line 165
    iput p1, p0, Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;->version_code:I

    return-object p0
.end method

.method public final version_name(Ljava/lang/String;)Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;
    .locals 1

    const-string v0, "version_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;->version_name:Ljava/lang/String;

    return-object p0
.end method
