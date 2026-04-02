.class public final Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SetupIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/SetupIntent$NextAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;",
        "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u001a\u0010\u0008\u001a\u00020\u00002\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;",
        "()V",
        "redirect_to_url",
        "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;",
        "type",
        "",
        "use_stripe_sdk",
        "",
        "build",
        "internal_release"
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
.field public redirect_to_url:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;

.field public type:Ljava/lang/String;

.field public use_stripe_sdk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 910
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 918
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;->use_stripe_sdk:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 910
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;->build()Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/SetupIntent$NextAction;
    .locals 5

    .line 944
    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    .line 945
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;->redirect_to_url:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;

    .line 946
    iget-object v2, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;->type:Ljava/lang/String;

    .line 947
    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;->use_stripe_sdk:Ljava/util/Map;

    .line 948
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 944
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;-><init>(Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final redirect_to_url(Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;)Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;->redirect_to_url:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;
    .locals 0

    .line 932
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final use_stripe_sdk(Ljava/util/Map;)Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;"
        }
    .end annotation

    const-string v0, "use_stripe_sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;->use_stripe_sdk:Ljava/util/Map;

    return-object p0
.end method
