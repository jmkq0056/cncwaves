.class public final Lcom/stripe/proto/model/config/ContactlessCombination$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ContactlessCombination.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/ContactlessCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/ContactlessCombination;",
        "Lcom/stripe/proto/model/config/ContactlessCombination$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0007J\u0008\u0010\u001d\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0014\u0010\u001a\u001a\u00020\u00002\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/ContactlessCombination$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/ContactlessCombination;",
        "()V",
        "aid",
        "",
        "aid_params",
        "",
        "discover_parameters",
        "Lcom/stripe/proto/model/config/DiscoverParameters;",
        "eftpos_parameters",
        "Lcom/stripe/proto/model/config/EftposParameters;",
        "epal_parameters",
        "Lcom/stripe/proto/model/config/EpalParameters;",
        "express_pay_parameters",
        "Lcom/stripe/proto/model/config/ExpressPayParameters;",
        "interac_parameters",
        "Lcom/stripe/proto/model/config/InteracParameters;",
        "is_signature_supported",
        "",
        "jcb_parameters",
        "Lcom/stripe/proto/model/config/JcbParameters;",
        "pay_pass_parameters",
        "Lcom/stripe/proto/model/config/PayPassParameters;",
        "pay_wave_parameters",
        "Lcom/stripe/proto/model/config/PayWaveParameters;",
        "tlvs",
        "",
        "Lcom/stripe/proto/model/config/Tlv;",
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
.field public aid:Ljava/lang/String;

.field public aid_params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

.field public eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

.field public epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

.field public express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

.field public interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

.field public is_signature_supported:Z

.field public jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

.field public pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

.field public pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

.field public tlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/Tlv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 253
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 255
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->aid:Ljava/lang/String;

    .line 258
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->tlvs:Ljava/util/List;

    .line 288
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->aid_params:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final aid(Ljava/lang/String;)Lcom/stripe/proto/model/config/ContactlessCombination$Builder;
    .locals 1

    const-string v0, "aid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->aid:Ljava/lang/String;

    return-object p0
.end method

.method public final aid_params(Ljava/util/Map;)Lcom/stripe/proto/model/config/ContactlessCombination$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/config/ContactlessCombination$Builder;"
        }
    .end annotation

    const-string v0, "aid_params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->aid_params:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->build()Lcom/stripe/proto/model/config/ContactlessCombination;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/ContactlessCombination;
    .locals 14

    .line 416
    new-instance v0, Lcom/stripe/proto/model/config/ContactlessCombination;

    .line 417
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->aid:Ljava/lang/String;

    .line 418
    iget-object v2, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->tlvs:Ljava/util/List;

    .line 419
    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->is_signature_supported:Z

    .line 420
    iget-object v4, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    .line 421
    iget-object v5, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    .line 422
    iget-object v6, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    .line 423
    iget-object v7, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    .line 424
    iget-object v8, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    .line 425
    iget-object v9, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    .line 426
    iget-object v10, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    .line 427
    iget-object v11, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    .line 428
    iget-object v12, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->aid_params:Ljava/util/Map;

    .line 429
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v13

    .line 416
    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/model/config/ContactlessCombination;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/stripe/proto/model/config/PayPassParameters;Lcom/stripe/proto/model/config/PayWaveParameters;Lcom/stripe/proto/model/config/ExpressPayParameters;Lcom/stripe/proto/model/config/JcbParameters;Lcom/stripe/proto/model/config/DiscoverParameters;Lcom/stripe/proto/model/config/InteracParameters;Lcom/stripe/proto/model/config/EpalParameters;Lcom/stripe/proto/model/config/EftposParameters;Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final discover_parameters(Lcom/stripe/proto/model/config/DiscoverParameters;)Lcom/stripe/proto/model/config/ContactlessCombination$Builder;
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    const/4 p1, 0x0

    .line 370
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    .line 371
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    .line 372
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    .line 373
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    .line 374
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    .line 375
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    .line 376
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    return-object p0
.end method

.method public final eftpos_parameters(Lcom/stripe/proto/model/config/EftposParameters;)Lcom/stripe/proto/model/config/ContactlessCombination$Builder;
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    const/4 p1, 0x0

    .line 406
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    .line 407
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    .line 408
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    .line 409
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    .line 410
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    .line 411
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    .line 412
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    return-object p0
.end method

.method public final epal_parameters(Lcom/stripe/proto/model/config/EpalParameters;)Lcom/stripe/proto/model/config/ContactlessCombination$Builder;
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    const/4 p1, 0x0

    .line 394
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    .line 395
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    .line 396
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    .line 397
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    .line 398
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    .line 399
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    .line 400
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    return-object p0
.end method

.method public final express_pay_parameters(Lcom/stripe/proto/model/config/ExpressPayParameters;)Lcom/stripe/proto/model/config/ContactlessCombination$Builder;
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    const/4 p1, 0x0

    .line 346
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    .line 347
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    .line 348
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    .line 349
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    .line 350
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    .line 351
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    .line 352
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    return-object p0
.end method

.method public final interac_parameters(Lcom/stripe/proto/model/config/InteracParameters;)Lcom/stripe/proto/model/config/ContactlessCombination$Builder;
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    const/4 p1, 0x0

    .line 382
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    .line 383
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    .line 384
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    .line 385
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    .line 386
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    .line 387
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    .line 388
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    return-object p0
.end method

.method public final is_signature_supported(Z)Lcom/stripe/proto/model/config/ContactlessCombination$Builder;
    .locals 0

    .line 311
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->is_signature_supported:Z

    return-object p0
.end method

.method public final jcb_parameters(Lcom/stripe/proto/model/config/JcbParameters;)Lcom/stripe/proto/model/config/ContactlessCombination$Builder;
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    const/4 p1, 0x0

    .line 358
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    .line 359
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    .line 360
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    .line 361
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    .line 362
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    .line 363
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    .line 364
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    return-object p0
.end method

.method public final pay_pass_parameters(Lcom/stripe/proto/model/config/PayPassParameters;)Lcom/stripe/proto/model/config/ContactlessCombination$Builder;
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    const/4 p1, 0x0

    .line 322
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    .line 323
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    .line 324
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    .line 325
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    .line 326
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    .line 327
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    .line 328
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    return-object p0
.end method

.method public final pay_wave_parameters(Lcom/stripe/proto/model/config/PayWaveParameters;)Lcom/stripe/proto/model/config/ContactlessCombination$Builder;
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    const/4 p1, 0x0

    .line 334
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    .line 335
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    .line 336
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    .line 337
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    .line 338
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    .line 339
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    .line 340
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    return-object p0
.end method

.method public final tlvs(Ljava/util/List;)Lcom/stripe/proto/model/config/ContactlessCombination$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/Tlv;",
            ">;)",
            "Lcom/stripe/proto/model/config/ContactlessCombination$Builder;"
        }
    .end annotation

    const-string v0, "tlvs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 303
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->tlvs:Ljava/util/List;

    return-object p0
.end method
