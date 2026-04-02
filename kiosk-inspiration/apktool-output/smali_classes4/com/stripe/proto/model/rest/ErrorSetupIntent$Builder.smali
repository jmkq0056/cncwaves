.class public final Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ErrorSetupIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/ErrorSetupIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/ErrorSetupIntent;",
        "Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010!\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\"J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010#J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u001a\u0010\u0014\u001a\u00020\u00002\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0014\u0010\u001c\u001a\u00020\u00002\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001dJ\u0010\u0010\u001e\u001a\u00020\u00002\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001f\u001a\u00020\u00002\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010 \u001a\u00020\u00002\u0008\u0010 \u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/ErrorSetupIntent;",
        "()V",
        "application",
        "",
        "client_secret",
        "created",
        "",
        "Ljava/lang/Long;",
        "customer",
        "description",
        "id",
        "last_setup_error",
        "Lcom/stripe/proto/model/rest/LastSetupError;",
        "latest_attempt",
        "livemode",
        "",
        "Ljava/lang/Boolean;",
        "mandate",
        "metadata",
        "",
        "next_action",
        "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;",
        "on_behalf_of",
        "payment_method",
        "payment_method_options",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions;",
        "payment_method_types",
        "",
        "single_use_mandate",
        "status",
        "usage",
        "build",
        "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;",
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
.field public application:Ljava/lang/String;

.field public client_secret:Ljava/lang/String;

.field public created:Ljava/lang/Long;

.field public customer:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;

.field public latest_attempt:Ljava/lang/String;

.field public livemode:Ljava/lang/Boolean;

.field public mandate:Ljava/lang/String;

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

.field public next_action:Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

.field public on_behalf_of:Ljava/lang/String;

.field public payment_method:Ljava/lang/String;

.field public payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

.field public payment_method_types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public single_use_mandate:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public usage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 374
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 391
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->metadata:Ljava/util/Map;

    .line 400
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->payment_method_types:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final application(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->application:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 374
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->build()Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/ErrorSetupIntent;
    .locals 23

    move-object/from16 v0, p0

    .line 585
    new-instance v1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    .line 586
    iget-object v2, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->id:Ljava/lang/String;

    .line 587
    iget-object v3, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->client_secret:Ljava/lang/String;

    .line 588
    iget-object v4, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->customer:Ljava/lang/String;

    .line 589
    iget-object v5, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->description:Ljava/lang/String;

    .line 590
    iget-object v6, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;

    .line 591
    iget-object v7, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->metadata:Ljava/util/Map;

    .line 592
    iget-object v8, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->next_action:Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    .line 593
    iget-object v9, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->payment_method:Ljava/lang/String;

    .line 594
    iget-object v10, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->payment_method_types:Ljava/util/List;

    .line 595
    iget-object v11, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->status:Ljava/lang/String;

    .line 596
    iget-object v12, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->usage:Ljava/lang/String;

    .line 597
    iget-object v13, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->created:Ljava/lang/Long;

    .line 598
    iget-object v14, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->latest_attempt:Ljava/lang/String;

    .line 599
    iget-object v15, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->livemode:Ljava/lang/Boolean;

    move-object/from16 v16, v1

    .line 600
    iget-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->mandate:Ljava/lang/String;

    move-object/from16 v17, v1

    .line 601
    iget-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->single_use_mandate:Ljava/lang/String;

    move-object/from16 v18, v1

    .line 602
    iget-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->application:Ljava/lang/String;

    move-object/from16 v19, v1

    .line 603
    iget-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->on_behalf_of:Ljava/lang/String;

    move-object/from16 v20, v1

    .line 604
    iget-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    .line 605
    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v21

    move-object/from16 v22, v20

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    .line 585
    invoke-direct/range {v1 .. v21}, Lcom/stripe/proto/model/rest/ErrorSetupIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final client_secret(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->client_secret:Ljava/lang/String;

    return-object p0
.end method

.method public final created(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->created:Ljava/lang/Long;

    return-object p0
.end method

.method public final customer(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->customer:Ljava/lang/String;

    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final last_setup_error(Lcom/stripe/proto/model/rest/LastSetupError;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;

    return-object p0
.end method

.method public final latest_attempt(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->latest_attempt:Ljava/lang/String;

    return-object p0
.end method

.method public final livemode(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->livemode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final mandate(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->mandate:Ljava/lang/String;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final next_action(Lcom/stripe/proto/model/rest/SetupIntent$NextAction;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->next_action:Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    return-object p0
.end method

.method public final on_behalf_of(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->on_behalf_of:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->payment_method:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method_options(Lcom/stripe/proto/model/rest/PaymentMethodOptions;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    return-object p0
.end method

.method public final payment_method_types(Ljava/util/List;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;"
        }
    .end annotation

    const-string v0, "payment_method_types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 501
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->payment_method_types:Ljava/util/List;

    return-object p0
.end method

.method public final single_use_mandate(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->single_use_mandate:Ljava/lang/String;

    return-object p0
.end method

.method public final status(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->status:Ljava/lang/String;

    return-object p0
.end method

.method public final usage(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->usage:Ljava/lang/String;

    return-object p0
.end method
