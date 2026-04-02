.class public final Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FirmwareMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/FirmwareMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/FirmwareMetadata;",
        "Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/FirmwareMetadata;",
        "()V",
        "name",
        "",
        "package_name",
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
.field public name:Ljava/lang/String;

.field public package_name:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;->name:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;->version:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;->package_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;->build()Lcom/stripe/proto/model/common/FirmwareMetadata;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/FirmwareMetadata;
    .locals 5

    .line 150
    new-instance v0, Lcom/stripe/proto/model/common/FirmwareMetadata;

    .line 151
    iget-object v1, p0, Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;->name:Ljava/lang/String;

    .line 152
    iget-object v2, p0, Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;->version:Ljava/lang/String;

    .line 153
    iget-object v3, p0, Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;->package_name:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 150
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/common/FirmwareMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final name(Ljava/lang/String;)Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final package_name(Ljava/lang/String;)Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "package_name is deprecated"
    .end annotation

    const-string v0, "package_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;->package_name:Ljava/lang/String;

    return-object p0
.end method

.method public final version(Ljava/lang/String;)Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lcom/stripe/proto/model/common/FirmwareMetadata$Builder;->version:Ljava/lang/String;

    return-object p0
.end method
