.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SdkProxyScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;",
        "()V",
        "client_api_call",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
        "client_callback",
        "service_api_call",
        "service_callback",
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
.field public client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;
    .locals 6

    .line 214
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;

    .line 215
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 216
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 217
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 218
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 219
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 214
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V

    return-object v0
.end method

.method public final client_api_call(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 170
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 171
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final client_callback(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 196
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 197
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final service_api_call(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 183
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 184
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final service_callback(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 208
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 209
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 210
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method
