.class public final Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Toggle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/Toggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_relay/pub/api/Toggle;",
        "Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_relay/pub/api/Toggle;",
        "()V",
        "default_value",
        "Lcom/stripe/proto/iot_relay/pub/api/Toggle$Value;",
        "description",
        "",
        "title",
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
.field public default_value:Lcom/stripe/proto/iot_relay/pub/api/Toggle$Value;

.field public description:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;->title:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;->description:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/Toggle$Value;->VALUE_INVALID:Lcom/stripe/proto/iot_relay/pub/api/Toggle$Value;

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;->default_value:Lcom/stripe/proto/iot_relay/pub/api/Toggle$Value;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;->build()Lcom/stripe/proto/iot_relay/pub/api/Toggle;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_relay/pub/api/Toggle;
    .locals 5

    .line 129
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/Toggle;

    .line 130
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;->title:Ljava/lang/String;

    .line 131
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;->description:Ljava/lang/String;

    .line 132
    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;->default_value:Lcom/stripe/proto/iot_relay/pub/api/Toggle$Value;

    .line 133
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 129
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/iot_relay/pub/api/Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/Toggle$Value;Lokio/ByteString;)V

    return-object v0
.end method

.method public final default_value(Lcom/stripe/proto/iot_relay/pub/api/Toggle$Value;)Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;
    .locals 1

    const-string v0, "default_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;->default_value:Lcom/stripe/proto/iot_relay/pub/api/Toggle$Value;

    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/Toggle$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
