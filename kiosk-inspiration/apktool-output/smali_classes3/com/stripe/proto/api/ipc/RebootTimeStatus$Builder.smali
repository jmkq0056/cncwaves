.class public final Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RebootTimeStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/ipc/RebootTimeStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/ipc/RebootTimeStatus;",
        "Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/ipc/RebootTimeStatus;",
        "()V",
        "can_override_locally",
        "",
        "can_reset_locally",
        "time_window",
        "Lcom/stripe/proto/api/ipc/TimeWindow;",
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
.field public can_override_locally:Z

.field public can_reset_locally:Z

.field public time_window:Lcom/stripe/proto/api/ipc/TimeWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;->build()Lcom/stripe/proto/api/ipc/RebootTimeStatus;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/ipc/RebootTimeStatus;
    .locals 5

    .line 127
    new-instance v0, Lcom/stripe/proto/api/ipc/RebootTimeStatus;

    .line 128
    iget-object v1, p0, Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;->time_window:Lcom/stripe/proto/api/ipc/TimeWindow;

    .line 129
    iget-boolean v2, p0, Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;->can_override_locally:Z

    .line 130
    iget-boolean v3, p0, Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;->can_reset_locally:Z

    .line 131
    invoke-virtual {p0}, Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 127
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/ipc/RebootTimeStatus;-><init>(Lcom/stripe/proto/api/ipc/TimeWindow;ZZLokio/ByteString;)V

    return-object v0
.end method

.method public final can_override_locally(Z)Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;->can_override_locally:Z

    return-object p0
.end method

.method public final can_reset_locally(Z)Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;->can_reset_locally:Z

    return-object p0
.end method

.method public final time_window(Lcom/stripe/proto/api/ipc/TimeWindow;)Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;->time_window:Lcom/stripe/proto/api/ipc/TimeWindow;

    return-object p0
.end method
