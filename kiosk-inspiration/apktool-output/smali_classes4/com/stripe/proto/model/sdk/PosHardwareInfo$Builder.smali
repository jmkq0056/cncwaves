.class public final Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PosHardwareInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/sdk/PosHardwareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/sdk/PosHardwareInfo;",
        "Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/sdk/PosHardwareInfo;",
        "()V",
        "cpu_architecture",
        "",
        "cpu_maker",
        "cpu_speed",
        "memory_amount",
        "model_number",
        "os_architecture",
        "serial_number",
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
.field public cpu_architecture:Ljava/lang/String;

.field public cpu_maker:Ljava/lang/String;

.field public cpu_speed:Ljava/lang/String;

.field public memory_amount:Ljava/lang/String;

.field public model_number:Ljava/lang/String;

.field public os_architecture:Ljava/lang/String;

.field public serial_number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->cpu_architecture:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->cpu_maker:Ljava/lang/String;

    .line 191
    iput-object v0, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->cpu_speed:Ljava/lang/String;

    .line 194
    iput-object v0, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->memory_amount:Ljava/lang/String;

    .line 197
    iput-object v0, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->model_number:Ljava/lang/String;

    .line 200
    iput-object v0, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->os_architecture:Ljava/lang/String;

    .line 203
    iput-object v0, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->serial_number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->build()Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/sdk/PosHardwareInfo;
    .locals 9

    .line 261
    new-instance v0, Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    .line 262
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->cpu_architecture:Ljava/lang/String;

    .line 263
    iget-object v2, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->cpu_maker:Ljava/lang/String;

    .line 264
    iget-object v3, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->cpu_speed:Ljava/lang/String;

    .line 265
    iget-object v4, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->memory_amount:Ljava/lang/String;

    .line 266
    iget-object v5, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->model_number:Ljava/lang/String;

    .line 267
    iget-object v6, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->os_architecture:Ljava/lang/String;

    .line 268
    iget-object v7, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->serial_number:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v8

    .line 261
    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/sdk/PosHardwareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final cpu_architecture(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;
    .locals 1

    const-string v0, "cpu_architecture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->cpu_architecture:Ljava/lang/String;

    return-object p0
.end method

.method public final cpu_maker(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;
    .locals 1

    const-string v0, "cpu_maker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->cpu_maker:Ljava/lang/String;

    return-object p0
.end method

.method public final cpu_speed(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;
    .locals 1

    const-string v0, "cpu_speed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->cpu_speed:Ljava/lang/String;

    return-object p0
.end method

.method public final memory_amount(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;
    .locals 1

    const-string v0, "memory_amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->memory_amount:Ljava/lang/String;

    return-object p0
.end method

.method public final model_number(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;
    .locals 1

    const-string v0, "model_number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->model_number:Ljava/lang/String;

    return-object p0
.end method

.method public final os_architecture(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;
    .locals 1

    const-string v0, "os_architecture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->os_architecture:Ljava/lang/String;

    return-object p0
.end method

.method public final serial_number(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;
    .locals 1

    const-string v0, "serial_number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;->serial_number:Ljava/lang/String;

    return-object p0
.end method
