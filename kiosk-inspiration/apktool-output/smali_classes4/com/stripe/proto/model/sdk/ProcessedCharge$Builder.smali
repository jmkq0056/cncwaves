.class public final Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProcessedCharge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/sdk/ProcessedCharge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/sdk/ProcessedCharge;",
        "Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u001a\u0010\r\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0007J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/sdk/ProcessedCharge;",
        "()V",
        "c_time",
        "",
        "charge_id",
        "",
        "charged_amount",
        "Lcom/stripe/proto/model/sdk/ChargeAmount;",
        "description",
        "live_mode",
        "",
        "metadata",
        "",
        "receipt_email",
        "source",
        "Lcom/stripe/proto/model/rest/Source;",
        "statement_descriptor",
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
.field public c_time:J

.field public charge_id:Ljava/lang/String;

.field public charged_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

.field public description:Ljava/lang/String;

.field public live_mode:Z

.field public metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public receipt_email:Ljava/lang/String;

.field public source:Lcom/stripe/proto/model/rest/Source;

.field public statement_descriptor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 214
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 216
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->charge_id:Ljava/lang/String;

    .line 225
    iput-object v0, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->description:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->receipt_email:Ljava/lang/String;

    .line 231
    iput-object v0, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->statement_descriptor:Ljava/lang/String;

    .line 240
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->build()Lcom/stripe/proto/model/sdk/ProcessedCharge;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/sdk/ProcessedCharge;
    .locals 12

    .line 311
    new-instance v0, Lcom/stripe/proto/model/sdk/ProcessedCharge;

    .line 312
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->charge_id:Ljava/lang/String;

    .line 313
    iget-object v2, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->charged_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    .line 314
    iget-wide v3, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->c_time:J

    .line 315
    iget-object v5, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->description:Ljava/lang/String;

    .line 316
    iget-object v6, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->receipt_email:Ljava/lang/String;

    .line 317
    iget-object v7, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->statement_descriptor:Ljava/lang/String;

    .line 318
    iget-boolean v8, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->live_mode:Z

    .line 319
    iget-object v9, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    .line 320
    iget-object v10, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->metadata:Ljava/util/Map;

    .line 321
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v11

    .line 311
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/model/sdk/ProcessedCharge;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/ChargeAmount;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/proto/model/rest/Source;Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final c_time(J)Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;
    .locals 0

    .line 262
    iput-wide p1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->c_time:J

    return-object p0
.end method

.method public final charge_id(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;
    .locals 1

    const-string v0, "charge_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->charge_id:Ljava/lang/String;

    return-object p0
.end method

.method public final charged_amount(Lcom/stripe/proto/model/sdk/ChargeAmount;)Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->charged_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final live_mode(Z)Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->live_mode:Z

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final receipt_email(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;
    .locals 1

    const-string v0, "receipt_email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->receipt_email:Ljava/lang/String;

    return-object p0
.end method

.method public final source(Lcom/stripe/proto/model/rest/Source;)Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    return-object p0
.end method

.method public final statement_descriptor(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;
    .locals 1

    const-string v0, "statement_descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->statement_descriptor:Ljava/lang/String;

    return-object p0
.end method
