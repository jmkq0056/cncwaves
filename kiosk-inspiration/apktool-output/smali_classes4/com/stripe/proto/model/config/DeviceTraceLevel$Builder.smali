.class public final Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DeviceTraceLevel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/DeviceTraceLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/DeviceTraceLevel;",
        "Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/DeviceTraceLevel;",
        "()V",
        "trace_level",
        "Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel;",
        "trace_sample_rate",
        "",
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
.field public trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel;

.field public trace_sample_rate:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 99
    sget-object v0, Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel;->UNKNOWN:Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel;

    iput-object v0, p0, Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;->trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;->build()Lcom/stripe/proto/model/config/DeviceTraceLevel;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/DeviceTraceLevel;
    .locals 5

    .line 119
    new-instance v0, Lcom/stripe/proto/model/config/DeviceTraceLevel;

    .line 120
    iget-object v1, p0, Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;->trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel;

    .line 121
    iget-wide v2, p0, Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;->trace_sample_rate:D

    .line 122
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 119
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/config/DeviceTraceLevel;-><init>(Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel;DLokio/ByteString;)V

    return-object v0
.end method

.method public final trace_level(Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel;)Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;
    .locals 1

    const-string v0, "trace_level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;->trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel;

    return-object p0
.end method

.method public final trace_sample_rate(D)Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;->trace_sample_rate:D

    return-object p0
.end method
