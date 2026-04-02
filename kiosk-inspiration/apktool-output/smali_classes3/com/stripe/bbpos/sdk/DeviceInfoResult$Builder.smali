.class public final Lcom/stripe/bbpos/sdk/DeviceInfoResult$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DeviceInfoResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/DeviceInfoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/DeviceInfoResult;",
        "Lcom/stripe/bbpos/sdk/DeviceInfoResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/DeviceInfoResult$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/DeviceInfoResult;",
        "()V",
        "deviceInfo",
        "Lcom/stripe/bbpos/sdk/DeviceInfo;",
        "rawReaderData",
        "",
        "",
        "build",
        "sdk-protos_release"
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
.field public deviceInfo:Lcom/stripe/bbpos/sdk/DeviceInfo;

.field public rawReaderData:Ljava/util/Map;
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

    .line 91
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 96
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/DeviceInfoResult$Builder;->rawReaderData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/DeviceInfoResult$Builder;->build()Lcom/stripe/bbpos/sdk/DeviceInfoResult;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/DeviceInfoResult;
    .locals 4

    .line 108
    new-instance v0, Lcom/stripe/bbpos/sdk/DeviceInfoResult;

    .line 109
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/DeviceInfoResult$Builder;->deviceInfo:Lcom/stripe/bbpos/sdk/DeviceInfo;

    .line 110
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/DeviceInfoResult$Builder;->rawReaderData:Ljava/util/Map;

    .line 111
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/DeviceInfoResult$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 108
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/bbpos/sdk/DeviceInfoResult;-><init>(Lcom/stripe/bbpos/sdk/DeviceInfo;Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final deviceInfo(Lcom/stripe/bbpos/sdk/DeviceInfo;)Lcom/stripe/bbpos/sdk/DeviceInfoResult$Builder;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfoResult$Builder;->deviceInfo:Lcom/stripe/bbpos/sdk/DeviceInfo;

    return-object p0
.end method

.method public final rawReaderData(Ljava/util/Map;)Lcom/stripe/bbpos/sdk/DeviceInfoResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/bbpos/sdk/DeviceInfoResult$Builder;"
        }
    .end annotation

    const-string v0, "rawReaderData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfoResult$Builder;->rawReaderData:Ljava/util/Map;

    return-object p0
.end method
