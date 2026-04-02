.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BbposSdkScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;",
        "()V",
        "device_reset_callback",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;",
        "missing_key",
        "serial_port_callback_error",
        "serial_port_state_machine_connection",
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
.field public device_reset_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public missing_key:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public serial_port_callback_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public serial_port_state_machine_connection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;
    .locals 6

    .line 206
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;

    .line 207
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->serial_port_callback_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 208
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->missing_key:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 209
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->serial_port_state_machine_connection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 210
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->device_reset_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 211
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 206
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_reset_callback(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->device_reset_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->serial_port_callback_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 201
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->missing_key:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 202
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->serial_port_state_machine_connection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final missing_key(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->missing_key:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->serial_port_callback_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 177
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->serial_port_state_machine_connection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 178
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->device_reset_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final serial_port_callback_error(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->serial_port_callback_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->missing_key:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 165
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->serial_port_state_machine_connection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 166
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->device_reset_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final serial_port_state_machine_connection(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->serial_port_state_machine_connection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 187
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->serial_port_callback_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 188
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->missing_key:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 189
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;->device_reset_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method
