.class public final Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SetupIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0015\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;",
        "()V",
        "application",
        "",
        "created",
        "",
        "Ljava/lang/Long;",
        "customer",
        "id",
        "livemode",
        "",
        "Ljava/lang/Boolean;",
        "object_",
        "on_behalf_of",
        "payment_method",
        "payment_method_details",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;",
        "setup_error",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;",
        "setup_intent",
        "status",
        "usage",
        "build",
        "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;",
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

.field public created:Ljava/lang/Long;

.field public customer:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public livemode:Ljava/lang/Boolean;

.field public object_:Ljava/lang/String;

.field public on_behalf_of:Ljava/lang/String;

.field public payment_method:Ljava/lang/String;

.field public payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

.field public setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

.field public setup_intent:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public usage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1417
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final application(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
    .locals 0

    .line 1477
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->application:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->build()Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;
    .locals 15

    .line 1561
    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    .line 1562
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->id:Ljava/lang/String;

    .line 1563
    iget-object v2, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->object_:Ljava/lang/String;

    .line 1564
    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->application:Ljava/lang/String;

    .line 1565
    iget-object v4, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->created:Ljava/lang/Long;

    .line 1566
    iget-object v5, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->customer:Ljava/lang/String;

    .line 1567
    iget-object v6, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->livemode:Ljava/lang/Boolean;

    .line 1568
    iget-object v7, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->on_behalf_of:Ljava/lang/String;

    .line 1569
    iget-object v8, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->payment_method:Ljava/lang/String;

    .line 1570
    iget-object v9, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    .line 1571
    iget-object v10, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    .line 1572
    iget-object v11, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->setup_intent:Ljava/lang/String;

    .line 1573
    iget-object v12, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->status:Ljava/lang/String;

    .line 1574
    iget-object v13, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->usage:Ljava/lang/String;

    .line 1575
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v14

    .line 1561
    invoke-direct/range {v0 .. v14}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final created(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
    .locals 0

    .line 1485
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->created:Ljava/lang/Long;

    return-object p0
.end method

.method public final customer(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
    .locals 0

    .line 1493
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->customer:Ljava/lang/String;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
    .locals 0

    .line 1461
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final livemode(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
    .locals 0

    .line 1501
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->livemode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final object_(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
    .locals 0

    .line 1469
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->object_:Ljava/lang/String;

    return-object p0
.end method

.method public final on_behalf_of(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
    .locals 0

    .line 1509
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->on_behalf_of:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
    .locals 0

    .line 1517
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->payment_method:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method_details(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
    .locals 0

    .line 1525
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    return-object p0
.end method

.method public final setup_error(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
    .locals 0

    .line 1533
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    return-object p0
.end method

.method public final setup_intent(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
    .locals 0

    .line 1541
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->setup_intent:Ljava/lang/String;

    return-object p0
.end method

.method public final status(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
    .locals 0

    .line 1549
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->status:Ljava/lang/String;

    return-object p0
.end method

.method public final usage(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
    .locals 0

    .line 1557
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->usage:Ljava/lang/String;

    return-object p0
.end method
