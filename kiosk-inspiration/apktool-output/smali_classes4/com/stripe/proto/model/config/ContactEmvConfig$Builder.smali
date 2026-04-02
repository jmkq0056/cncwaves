.class public final Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ContactEmvConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/ContactEmvConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/ContactEmvConfig;",
        "Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000fJ\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000fJ\u0015\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000fJ\u0015\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0014\u0010\n\u001a\u00020\u00002\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/ContactEmvConfig;",
        "()V",
        "allow_efficient_application_selection",
        "",
        "Ljava/lang/Boolean;",
        "allow_emv_application_selection",
        "allow_partial_read_records",
        "allow_quick_emv",
        "supported_applications",
        "",
        "Lcom/stripe/proto/model/config/EmvApplicationId;",
        "vector_configuration",
        "Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;",
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
.field public allow_efficient_application_selection:Ljava/lang/Boolean;

.field public allow_emv_application_selection:Ljava/lang/Boolean;

.field public allow_partial_read_records:Ljava/lang/Boolean;

.field public allow_quick_emv:Ljava/lang/Boolean;

.field public supported_applications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/config/EmvApplicationId;",
            ">;"
        }
    .end annotation
.end field

.field public vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 187
    sget-object v0, Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;->NONE:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    iput-object v0, p0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    .line 190
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->supported_applications:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final allow_efficient_application_selection(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->allow_efficient_application_selection:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final allow_emv_application_selection(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->allow_emv_application_selection:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final allow_partial_read_records(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->allow_partial_read_records:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final allow_quick_emv(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->allow_quick_emv:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->build()Lcom/stripe/proto/model/config/ContactEmvConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/ContactEmvConfig;
    .locals 8

    .line 247
    new-instance v0, Lcom/stripe/proto/model/config/ContactEmvConfig;

    .line 248
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->allow_quick_emv:Ljava/lang/Boolean;

    .line 249
    iget-object v2, p0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->allow_efficient_application_selection:Ljava/lang/Boolean;

    .line 250
    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->allow_partial_read_records:Ljava/lang/Boolean;

    .line 251
    iget-object v4, p0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->allow_emv_application_selection:Ljava/lang/Boolean;

    .line 252
    iget-object v5, p0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    .line 253
    iget-object v6, p0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->supported_applications:Ljava/util/List;

    .line 254
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 247
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/config/ContactEmvConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final supported_applications(Ljava/util/List;)Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/config/EmvApplicationId;",
            ">;)",
            "Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;"
        }
    .end annotation

    const-string v0, "supported_applications"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 243
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->supported_applications:Ljava/util/List;

    return-object p0
.end method

.method public final vector_configuration(Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;)Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;
    .locals 1

    const-string v0, "vector_configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    return-object p0
.end method
