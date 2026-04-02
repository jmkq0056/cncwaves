.class public final Lcom/stripe/proto/model/config/PayPassParameters$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PayPassParameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/PayPassParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/PayPassParameters;",
        "Lcom/stripe/proto/model/config/PayPassParameters$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/PayPassParameters$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/PayPassParameters;",
        "()V",
        "contactless_cvm_required_limit",
        "",
        "contactless_floor_limit",
        "contactless_transaction_limit_no_on_device_cvm",
        "contactless_transaction_limit_on_device_cvm",
        "cvm_capability_not_required",
        "cvm_capability_required",
        "kernel_id",
        "magstripe_cvm_capability_not_required",
        "magstripe_cvm_capability_required",
        "message_hold_time",
        "time_out_value",
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
.field public contactless_cvm_required_limit:Ljava/lang/String;

.field public contactless_floor_limit:Ljava/lang/String;

.field public contactless_transaction_limit_no_on_device_cvm:Ljava/lang/String;

.field public contactless_transaction_limit_on_device_cvm:Ljava/lang/String;

.field public cvm_capability_not_required:Ljava/lang/String;

.field public cvm_capability_required:Ljava/lang/String;

.field public kernel_id:Ljava/lang/String;

.field public magstripe_cvm_capability_not_required:Ljava/lang/String;

.field public magstripe_cvm_capability_required:Ljava/lang/String;

.field public message_hold_time:Ljava/lang/String;

.field public time_out_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 245
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 247
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->kernel_id:Ljava/lang/String;

    .line 250
    iput-object v0, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->magstripe_cvm_capability_required:Ljava/lang/String;

    .line 253
    iput-object v0, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->magstripe_cvm_capability_not_required:Ljava/lang/String;

    .line 256
    iput-object v0, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->cvm_capability_required:Ljava/lang/String;

    .line 259
    iput-object v0, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->cvm_capability_not_required:Ljava/lang/String;

    .line 262
    iput-object v0, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->contactless_floor_limit:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->contactless_cvm_required_limit:Ljava/lang/String;

    .line 268
    iput-object v0, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->contactless_transaction_limit_no_on_device_cvm:Ljava/lang/String;

    .line 271
    iput-object v0, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->contactless_transaction_limit_on_device_cvm:Ljava/lang/String;

    .line 274
    iput-object v0, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->message_hold_time:Ljava/lang/String;

    .line 277
    iput-object v0, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->time_out_value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->build()Lcom/stripe/proto/model/config/PayPassParameters;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/PayPassParameters;
    .locals 13

    .line 361
    new-instance v0, Lcom/stripe/proto/model/config/PayPassParameters;

    .line 362
    iget-object v1, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->kernel_id:Ljava/lang/String;

    .line 363
    iget-object v2, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->magstripe_cvm_capability_required:Ljava/lang/String;

    .line 364
    iget-object v3, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->magstripe_cvm_capability_not_required:Ljava/lang/String;

    .line 365
    iget-object v4, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->cvm_capability_required:Ljava/lang/String;

    .line 366
    iget-object v5, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->cvm_capability_not_required:Ljava/lang/String;

    .line 367
    iget-object v6, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->contactless_floor_limit:Ljava/lang/String;

    .line 368
    iget-object v7, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->contactless_cvm_required_limit:Ljava/lang/String;

    .line 369
    iget-object v8, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->contactless_transaction_limit_no_on_device_cvm:Ljava/lang/String;

    .line 370
    iget-object v9, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->contactless_transaction_limit_on_device_cvm:Ljava/lang/String;

    .line 371
    iget-object v10, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->message_hold_time:Ljava/lang/String;

    .line 372
    iget-object v11, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->time_out_value:Ljava/lang/String;

    .line 373
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    .line 361
    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/model/config/PayPassParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final contactless_cvm_required_limit(Ljava/lang/String;)Lcom/stripe/proto/model/config/PayPassParameters$Builder;
    .locals 1

    const-string v0, "contactless_cvm_required_limit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iput-object p1, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->contactless_cvm_required_limit:Ljava/lang/String;

    return-object p0
.end method

.method public final contactless_floor_limit(Ljava/lang/String;)Lcom/stripe/proto/model/config/PayPassParameters$Builder;
    .locals 1

    const-string v0, "contactless_floor_limit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iput-object p1, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->contactless_floor_limit:Ljava/lang/String;

    return-object p0
.end method

.method public final contactless_transaction_limit_no_on_device_cvm(Ljava/lang/String;)Lcom/stripe/proto/model/config/PayPassParameters$Builder;
    .locals 1

    const-string v0, "contactless_transaction_limit_no_on_device_cvm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iput-object p1, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->contactless_transaction_limit_no_on_device_cvm:Ljava/lang/String;

    return-object p0
.end method

.method public final contactless_transaction_limit_on_device_cvm(Ljava/lang/String;)Lcom/stripe/proto/model/config/PayPassParameters$Builder;
    .locals 1

    const-string v0, "contactless_transaction_limit_on_device_cvm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iput-object p1, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->contactless_transaction_limit_on_device_cvm:Ljava/lang/String;

    return-object p0
.end method

.method public final cvm_capability_not_required(Ljava/lang/String;)Lcom/stripe/proto/model/config/PayPassParameters$Builder;
    .locals 1

    const-string v0, "cvm_capability_not_required"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iput-object p1, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->cvm_capability_not_required:Ljava/lang/String;

    return-object p0
.end method

.method public final cvm_capability_required(Ljava/lang/String;)Lcom/stripe/proto/model/config/PayPassParameters$Builder;
    .locals 1

    const-string v0, "cvm_capability_required"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iput-object p1, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->cvm_capability_required:Ljava/lang/String;

    return-object p0
.end method

.method public final kernel_id(Ljava/lang/String;)Lcom/stripe/proto/model/config/PayPassParameters$Builder;
    .locals 1

    const-string v0, "kernel_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    iput-object p1, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->kernel_id:Ljava/lang/String;

    return-object p0
.end method

.method public final magstripe_cvm_capability_not_required(Ljava/lang/String;)Lcom/stripe/proto/model/config/PayPassParameters$Builder;
    .locals 1

    const-string v0, "magstripe_cvm_capability_not_required"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iput-object p1, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->magstripe_cvm_capability_not_required:Ljava/lang/String;

    return-object p0
.end method

.method public final magstripe_cvm_capability_required(Ljava/lang/String;)Lcom/stripe/proto/model/config/PayPassParameters$Builder;
    .locals 1

    const-string v0, "magstripe_cvm_capability_required"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iput-object p1, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->magstripe_cvm_capability_required:Ljava/lang/String;

    return-object p0
.end method

.method public final message_hold_time(Ljava/lang/String;)Lcom/stripe/proto/model/config/PayPassParameters$Builder;
    .locals 1

    const-string v0, "message_hold_time"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iput-object p1, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->message_hold_time:Ljava/lang/String;

    return-object p0
.end method

.method public final time_out_value(Ljava/lang/String;)Lcom/stripe/proto/model/config/PayPassParameters$Builder;
    .locals 1

    const-string v0, "time_out_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iput-object p1, p0, Lcom/stripe/proto/model/config/PayPassParameters$Builder;->time_out_value:Ljava/lang/String;

    return-object p0
.end method
