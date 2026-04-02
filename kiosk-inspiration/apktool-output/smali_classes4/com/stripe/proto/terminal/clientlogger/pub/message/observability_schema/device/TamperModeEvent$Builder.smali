.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TamperModeEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;",
        "()V",
        "tamper_mode",
        "",
        "tamper_status",
        "tamper_time",
        "tamper_type",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;",
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
.field public tamper_mode:Ljava/lang/String;

.field public tamper_status:Ljava/lang/String;

.field public tamper_time:Ljava/lang/String;

.field public tamper_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;->tamper_mode:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;->tamper_status:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;->tamper_time:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;->TAMPER_TYPE_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;->tamper_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;
    .locals 6

    .line 174
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 175
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;->tamper_mode:Ljava/lang/String;

    .line 176
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;->tamper_status:Ljava/lang/String;

    .line 177
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;->tamper_time:Ljava/lang/String;

    .line 178
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;->tamper_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;

    .line 179
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 174
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;Lokio/ByteString;)V

    return-object v0
.end method

.method public final tamper_mode(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;
    .locals 1

    const-string v0, "tamper_mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;->tamper_mode:Ljava/lang/String;

    return-object p0
.end method

.method public final tamper_status(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;
    .locals 1

    const-string v0, "tamper_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;->tamper_status:Ljava/lang/String;

    return-object p0
.end method

.method public final tamper_time(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;
    .locals 1

    const-string v0, "tamper_time"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;->tamper_time:Ljava/lang/String;

    return-object p0
.end method

.method public final tamper_type(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;
    .locals 1

    const-string v0, "tamper_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent$Builder;->tamper_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;

    return-object p0
.end method
