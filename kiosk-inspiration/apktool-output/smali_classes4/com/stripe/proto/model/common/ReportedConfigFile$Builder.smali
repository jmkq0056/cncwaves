.class public final Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReportedConfigFile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/ReportedConfigFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/ReportedConfigFile;",
        "Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/ReportedConfigFile;",
        "()V",
        "file_content",
        "",
        "file_ctime",
        "",
        "file_mtime",
        "file_name",
        "file_version",
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
.field public file_content:Ljava/lang/String;

.field public file_ctime:I

.field public file_mtime:I

.field public file_name:Ljava/lang/String;

.field public file_version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;->file_name:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;->file_content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;->build()Lcom/stripe/proto/model/common/ReportedConfigFile;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/ReportedConfigFile;
    .locals 7

    .line 196
    new-instance v0, Lcom/stripe/proto/model/common/ReportedConfigFile;

    .line 197
    iget-object v1, p0, Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;->file_name:Ljava/lang/String;

    .line 198
    iget-object v2, p0, Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;->file_content:Ljava/lang/String;

    .line 199
    iget v3, p0, Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;->file_version:I

    .line 200
    iget v4, p0, Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;->file_ctime:I

    .line 201
    iget v5, p0, Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;->file_mtime:I

    .line 202
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 196
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/common/ReportedConfigFile;-><init>(Ljava/lang/String;Ljava/lang/String;IIILokio/ByteString;)V

    return-object v0
.end method

.method public final file_content(Ljava/lang/String;)Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;
    .locals 1

    const-string v0, "file_content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;->file_content:Ljava/lang/String;

    return-object p0
.end method

.method public final file_ctime(I)Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;
    .locals 0

    .line 187
    iput p1, p0, Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;->file_ctime:I

    return-object p0
.end method

.method public final file_mtime(I)Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;
    .locals 0

    .line 192
    iput p1, p0, Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;->file_mtime:I

    return-object p0
.end method

.method public final file_name(Ljava/lang/String;)Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;
    .locals 1

    const-string v0, "file_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;->file_name:Ljava/lang/String;

    return-object p0
.end method

.method public final file_version(I)Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;
    .locals 0

    .line 179
    iput p1, p0, Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;->file_version:I

    return-object p0
.end method
