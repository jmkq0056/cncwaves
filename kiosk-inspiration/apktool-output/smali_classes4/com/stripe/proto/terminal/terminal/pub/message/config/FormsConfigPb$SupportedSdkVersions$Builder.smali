.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FormsConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;",
        "()V",
        "denied_versions",
        "",
        "",
        "minimum_version",
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
.field public denied_versions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public minimum_version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 347
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 349
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;->minimum_version:Ljava/lang/String;

    .line 352
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;->denied_versions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;
    .locals 4

    .line 365
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;

    .line 366
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;->minimum_version:Ljava/lang/String;

    .line 367
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;->denied_versions:Ljava/util/List;

    .line 368
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 365
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;-><init>(Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final denied_versions(Ljava/util/List;)Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;"
        }
    .end annotation

    const-string v0, "denied_versions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 361
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;->denied_versions:Ljava/util/List;

    return-object p0
.end method

.method public final minimum_version(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;
    .locals 1

    const-string v0, "minimum_version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;->minimum_version:Ljava/lang/String;

    return-object p0
.end method
