.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FormsConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;",
        "()V",
        "enabled",
        "",
        "supported_sdk_versions",
        "",
        "",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;",
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
.field public enabled:Z

.field public supported_sdk_versions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 766
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 771
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;->supported_sdk_versions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 766
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;
    .locals 4

    .line 786
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;

    .line 787
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;->enabled:Z

    .line 788
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;->supported_sdk_versions:Ljava/util/Map;

    .line 789
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 786
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;-><init>(ZLjava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final enabled(Z)Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;
    .locals 0

    .line 774
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;->enabled:Z

    return-object p0
.end method

.method public final supported_sdk_versions(Ljava/util/Map;)Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;"
        }
    .end annotation

    const-string v0, "supported_sdk_versions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 782
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;->supported_sdk_versions:Ljava/util/Map;

    return-object p0
.end method
