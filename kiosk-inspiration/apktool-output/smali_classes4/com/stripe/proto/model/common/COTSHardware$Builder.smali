.class public final Lcom/stripe/proto/model/common/COTSHardware$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "COTSHardware.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/COTSHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/COTSHardware;",
        "Lcom/stripe/proto/model/common/COTSHardware$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/COTSHardware$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/COTSHardware;",
        "()V",
        "manufacturer",
        "",
        "mobile_os",
        "Lcom/stripe/proto/model/common/MobileOS;",
        "model",
        "name",
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
.field public manufacturer:Ljava/lang/String;

.field public mobile_os:Lcom/stripe/proto/model/common/MobileOS;

.field public model:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/COTSHardware$Builder;->name:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/stripe/proto/model/common/COTSHardware$Builder;->model:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/stripe/proto/model/common/COTSHardware$Builder;->manufacturer:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/stripe/proto/model/common/MobileOS;->UNKNOWN_OS:Lcom/stripe/proto/model/common/MobileOS;

    iput-object v0, p0, Lcom/stripe/proto/model/common/COTSHardware$Builder;->mobile_os:Lcom/stripe/proto/model/common/MobileOS;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/COTSHardware$Builder;->build()Lcom/stripe/proto/model/common/COTSHardware;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/COTSHardware;
    .locals 6

    .line 174
    new-instance v0, Lcom/stripe/proto/model/common/COTSHardware;

    .line 175
    iget-object v1, p0, Lcom/stripe/proto/model/common/COTSHardware$Builder;->name:Ljava/lang/String;

    .line 176
    iget-object v2, p0, Lcom/stripe/proto/model/common/COTSHardware$Builder;->model:Ljava/lang/String;

    .line 177
    iget-object v3, p0, Lcom/stripe/proto/model/common/COTSHardware$Builder;->manufacturer:Ljava/lang/String;

    .line 178
    iget-object v4, p0, Lcom/stripe/proto/model/common/COTSHardware$Builder;->mobile_os:Lcom/stripe/proto/model/common/MobileOS;

    .line 179
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/COTSHardware$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 174
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/common/COTSHardware;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/MobileOS;Lokio/ByteString;)V

    return-object v0
.end method

.method public final manufacturer(Ljava/lang/String;)Lcom/stripe/proto/model/common/COTSHardware$Builder;
    .locals 1

    const-string v0, "manufacturer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Lcom/stripe/proto/model/common/COTSHardware$Builder;->manufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public final mobile_os(Lcom/stripe/proto/model/common/MobileOS;)Lcom/stripe/proto/model/common/COTSHardware$Builder;
    .locals 1

    const-string v0, "mobile_os"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/stripe/proto/model/common/COTSHardware$Builder;->mobile_os:Lcom/stripe/proto/model/common/MobileOS;

    return-object p0
.end method

.method public final model(Ljava/lang/String;)Lcom/stripe/proto/model/common/COTSHardware$Builder;
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iput-object p1, p0, Lcom/stripe/proto/model/common/COTSHardware$Builder;->model:Ljava/lang/String;

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/stripe/proto/model/common/COTSHardware$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lcom/stripe/proto/model/common/COTSHardware$Builder;->name:Ljava/lang/String;

    return-object p0
.end method
