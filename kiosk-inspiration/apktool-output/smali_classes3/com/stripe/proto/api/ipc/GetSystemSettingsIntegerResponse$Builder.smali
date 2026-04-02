.class public final Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "GetSystemSettingsIntegerResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse;",
        "Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse;",
        "()V",
        "success",
        "",
        "value_",
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
.field public success:Z

.field public value_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Builder;->build()Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse;
    .locals 4

    .line 104
    new-instance v0, Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse;

    .line 105
    iget-boolean v1, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Builder;->success:Z

    .line 106
    iget v2, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Builder;->value_:I

    .line 107
    invoke-virtual {p0}, Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 104
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse;-><init>(ZILokio/ByteString;)V

    return-object v0
.end method

.method public final success(Z)Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Builder;
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Builder;->success:Z

    return-object p0
.end method

.method public final value_(I)Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Builder;
    .locals 0

    .line 100
    iput p1, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Builder;->value_:I

    return-object p0
.end method
