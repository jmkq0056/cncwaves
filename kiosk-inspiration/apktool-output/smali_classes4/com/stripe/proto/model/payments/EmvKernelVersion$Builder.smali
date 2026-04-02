.class public final Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "EmvKernelVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/EmvKernelVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/payments/EmvKernelVersion;",
        "Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/payments/EmvKernelVersion;",
        "()V",
        "kernel_type",
        "Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;",
        "vector_configuration",
        "Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;",
        "version",
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
.field public kernel_type:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;

.field public vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 113
    sget-object v0, Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;->UNKNOWN_KERNEL:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;

    iput-object v0, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->kernel_type:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->version:Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;->NONE:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    iput-object v0, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->build()Lcom/stripe/proto/model/payments/EmvKernelVersion;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/payments/EmvKernelVersion;
    .locals 5

    .line 142
    new-instance v0, Lcom/stripe/proto/model/payments/EmvKernelVersion;

    .line 143
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->kernel_type:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;

    .line 144
    iget-object v2, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->version:Ljava/lang/String;

    .line 145
    iget-object v3, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    .line 146
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 142
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/payments/EmvKernelVersion;-><init>(Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;Ljava/lang/String;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Lokio/ByteString;)V

    return-object v0
.end method

.method public final kernel_type(Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;)Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;
    .locals 1

    const-string v0, "kernel_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->kernel_type:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;

    return-object p0
.end method

.method public final vector_configuration(Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;)Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;
    .locals 1

    const-string v0, "vector_configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    return-object p0
.end method

.method public final version(Ljava/lang/String;)Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->version:Ljava/lang/String;

    return-object p0
.end method
