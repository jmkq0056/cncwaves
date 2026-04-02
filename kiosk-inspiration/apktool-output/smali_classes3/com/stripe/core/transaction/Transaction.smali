.class public final Lcom/stripe/core/transaction/Transaction;
.super Ljava/lang/Object;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/transaction/Transaction$Builder;,
        Lcom/stripe/core/transaction/Transaction$Companion;,
        Lcom/stripe/core/transaction/Transaction$Error;,
        Lcom/stripe/core/transaction/Transaction$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 G2\u00020\u0001:\u0004FGHIB\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010E\u001a\u00020\u0003R\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0013\u0010#\u001a\u0004\u0018\u00010$\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0013\u0010\'\u001a\u0004\u0018\u00010(\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0011\u0010+\u001a\u00020,\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0011\u0010/\u001a\u000200\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0013\u00103\u001a\u0004\u0018\u000104\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0011\u00107\u001a\u000200\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00102R\u0011\u00108\u001a\u000200\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00102R\u0011\u00109\u001a\u00020:\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010<R\u0011\u0010=\u001a\u00020>\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010@R\u0011\u0010A\u001a\u00020B\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010D\u00a8\u0006J"
    }
    d2 = {
        "Lcom/stripe/core/transaction/Transaction;",
        "",
        "builder",
        "Lcom/stripe/core/transaction/Transaction$Builder;",
        "(Lcom/stripe/core/transaction/Transaction$Builder;)V",
        "activeReaderConfiguration",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "getActiveReaderConfiguration",
        "()Ljava/util/Set;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "cart",
        "Lcom/stripe/cart/Cart;",
        "getCart",
        "()Lcom/stripe/cart/Cart;",
        "chargeAttempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "getChargeAttempt",
        "()Lcom/stripe/transaction/ChargeAttempt;",
        "confirmation",
        "Lcom/stripe/hardware/emv/Confirmation;",
        "getConfirmation",
        "()Lcom/stripe/hardware/emv/Confirmation;",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "getDeviceType",
        "()Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "domesticDebitAids",
        "",
        "",
        "getDomesticDebitAids",
        "()Ljava/util/List;",
        "domesticDebitPriority",
        "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "getDomesticDebitPriority",
        "()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "error",
        "Lcom/stripe/core/transaction/Transaction$Error;",
        "getError",
        "()Lcom/stripe/core/transaction/Transaction$Error;",
        "fallbackReason",
        "Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;",
        "getFallbackReason",
        "()Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;",
        "forcePinEntry",
        "",
        "getForcePinEntry",
        "()Z",
        "integrationType",
        "Lcom/stripe/restclient/IntegrationType;",
        "getIntegrationType",
        "()Lcom/stripe/restclient/IntegrationType;",
        "isDeferredAuthorizationCountry",
        "isOffline",
        "numOfCanceledPayments",
        "",
        "getNumOfCanceledPayments",
        "()I",
        "settings",
        "Lcom/stripe/transaction/Settings;",
        "getSettings",
        "()Lcom/stripe/transaction/Settings;",
        "type",
        "Lcom/stripe/core/transaction/Transaction$Type;",
        "getType",
        "()Lcom/stripe/core/transaction/Transaction$Type;",
        "toBuilder",
        "Builder",
        "Companion",
        "Error",
        "Type",
        "transaction_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/core/transaction/Transaction$Companion;


# instance fields
.field private final activeReaderConfiguration:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field

.field private final amount:Lcom/stripe/currency/Amount;

.field private final cart:Lcom/stripe/cart/Cart;

.field private final chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

.field private final confirmation:Lcom/stripe/hardware/emv/Confirmation;

.field private final deviceType:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field private final domesticDebitAids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

.field private final error:Lcom/stripe/core/transaction/Transaction$Error;

.field private final fallbackReason:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

.field private final forcePinEntry:Z

.field private final integrationType:Lcom/stripe/restclient/IntegrationType;

.field private final isDeferredAuthorizationCountry:Z

.field private final isOffline:Z

.field private final numOfCanceledPayments:I

.field private final settings:Lcom/stripe/transaction/Settings;

.field private final type:Lcom/stripe/core/transaction/Transaction$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/transaction/Transaction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/transaction/Transaction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction;->Companion:Lcom/stripe/core/transaction/Transaction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/transaction/Transaction$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getType$transaction_release()Lcom/stripe/core/transaction/Transaction$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/transaction/Transaction;->type:Lcom/stripe/core/transaction/Transaction$Type;

    .line 44
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getSettings$transaction_release()Lcom/stripe/transaction/Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/transaction/Transaction;->settings:Lcom/stripe/transaction/Settings;

    .line 45
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getError$transaction_release()Lcom/stripe/core/transaction/Transaction$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/transaction/Transaction;->error:Lcom/stripe/core/transaction/Transaction$Error;

    .line 46
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getFallbackReason$transaction_release()Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/transaction/Transaction;->fallbackReason:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    .line 49
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getAmount$transaction_release()Lcom/stripe/currency/Amount;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/transaction/Transaction;->amount:Lcom/stripe/currency/Amount;

    .line 52
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getCart$transaction_release()Lcom/stripe/cart/Cart;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/transaction/Transaction;->cart:Lcom/stripe/cart/Cart;

    .line 55
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getChargeAttempt$transaction_release()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/transaction/Transaction;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    .line 58
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getNumOfCanceledPayments$transaction_release()I

    move-result v0

    iput v0, p0, Lcom/stripe/core/transaction/Transaction;->numOfCanceledPayments:I

    .line 61
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getConfirmation$transaction_release()Lcom/stripe/hardware/emv/Confirmation;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/transaction/Transaction;->confirmation:Lcom/stripe/hardware/emv/Confirmation;

    .line 64
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getActiveReaderConfiguration$transaction_release()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/transaction/Transaction;->activeReaderConfiguration:Ljava/util/Set;

    .line 65
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getIntegrationType$transaction_release()Lcom/stripe/restclient/IntegrationType;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/transaction/Transaction;->integrationType:Lcom/stripe/restclient/IntegrationType;

    .line 69
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->isOffline$transaction_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/stripe/core/transaction/Transaction;->isOffline:Z

    .line 70
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->isDeferredAuthorizationCountry$transaction_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/stripe/core/transaction/Transaction;->isDeferredAuthorizationCountry:Z

    .line 71
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getDeviceType$transaction_release()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/transaction/Transaction;->deviceType:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 72
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getDomesticDebitPriority$transaction_release()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/transaction/Transaction;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    .line 73
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getDomesticDebitAids$transaction_release()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/stripe/core/transaction/Transaction;->domesticDebitAids:Ljava/util/List;

    .line 75
    invoke-virtual {p1}, Lcom/stripe/core/transaction/Transaction$Builder;->getForcePinEntry$transaction_release()Z

    move-result p1

    iput-boolean p1, p0, Lcom/stripe/core/transaction/Transaction;->forcePinEntry:Z

    return-void
.end method


# virtual methods
.method public final getActiveReaderConfiguration()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction;->activeReaderConfiguration:Ljava/util/Set;

    return-object v0
.end method

.method public final getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getCart()Lcom/stripe/cart/Cart;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction;->cart:Lcom/stripe/cart/Cart;

    return-object v0
.end method

.method public final getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    return-object v0
.end method

.method public final getConfirmation()Lcom/stripe/hardware/emv/Confirmation;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction;->confirmation:Lcom/stripe/hardware/emv/Confirmation;

    return-object v0
.end method

.method public final getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction;->deviceType:Lcom/stripe/stripeterminal/external/models/DeviceType;

    return-object v0
.end method

.method public final getDomesticDebitAids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction;->domesticDebitAids:Ljava/util/List;

    return-object v0
.end method

.method public final getDomesticDebitPriority()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    return-object v0
.end method

.method public final getError()Lcom/stripe/core/transaction/Transaction$Error;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction;->error:Lcom/stripe/core/transaction/Transaction$Error;

    return-object v0
.end method

.method public final getFallbackReason()Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction;->fallbackReason:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    return-object v0
.end method

.method public final getForcePinEntry()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/stripe/core/transaction/Transaction;->forcePinEntry:Z

    return v0
.end method

.method public final getIntegrationType()Lcom/stripe/restclient/IntegrationType;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction;->integrationType:Lcom/stripe/restclient/IntegrationType;

    return-object v0
.end method

.method public final getNumOfCanceledPayments()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/stripe/core/transaction/Transaction;->numOfCanceledPayments:I

    return v0
.end method

.method public final getSettings()Lcom/stripe/transaction/Settings;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction;->settings:Lcom/stripe/transaction/Settings;

    return-object v0
.end method

.method public final getType()Lcom/stripe/core/transaction/Transaction$Type;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction;->type:Lcom/stripe/core/transaction/Transaction$Type;

    return-object v0
.end method

.method public final isDeferredAuthorizationCountry()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/stripe/core/transaction/Transaction;->isDeferredAuthorizationCountry:Z

    return v0
.end method

.method public final isOffline()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/stripe/core/transaction/Transaction;->isOffline:Z

    return v0
.end method

.method public final toBuilder()Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 20

    move-object/from16 v0, p0

    .line 78
    new-instance v1, Lcom/stripe/core/transaction/Transaction$Builder;

    .line 79
    iget-object v2, v0, Lcom/stripe/core/transaction/Transaction;->type:Lcom/stripe/core/transaction/Transaction$Type;

    iget-object v3, v0, Lcom/stripe/core/transaction/Transaction;->settings:Lcom/stripe/transaction/Settings;

    iget-object v4, v0, Lcom/stripe/core/transaction/Transaction;->error:Lcom/stripe/core/transaction/Transaction$Error;

    iget-object v5, v0, Lcom/stripe/core/transaction/Transaction;->fallbackReason:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    iget-object v6, v0, Lcom/stripe/core/transaction/Transaction;->amount:Lcom/stripe/currency/Amount;

    iget-object v7, v0, Lcom/stripe/core/transaction/Transaction;->cart:Lcom/stripe/cart/Cart;

    .line 80
    iget-object v8, v0, Lcom/stripe/core/transaction/Transaction;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    iget v9, v0, Lcom/stripe/core/transaction/Transaction;->numOfCanceledPayments:I

    iget-object v10, v0, Lcom/stripe/core/transaction/Transaction;->confirmation:Lcom/stripe/hardware/emv/Confirmation;

    iget-object v11, v0, Lcom/stripe/core/transaction/Transaction;->activeReaderConfiguration:Ljava/util/Set;

    iget-object v12, v0, Lcom/stripe/core/transaction/Transaction;->integrationType:Lcom/stripe/restclient/IntegrationType;

    .line 81
    iget-boolean v13, v0, Lcom/stripe/core/transaction/Transaction;->isOffline:Z

    iget-boolean v14, v0, Lcom/stripe/core/transaction/Transaction;->isDeferredAuthorizationCountry:Z

    iget-object v15, v0, Lcom/stripe/core/transaction/Transaction;->deviceType:Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/stripe/core/transaction/Transaction;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/stripe/core/transaction/Transaction;->domesticDebitAids:Ljava/util/List;

    move-object/from16 v18, v1

    .line 82
    iget-boolean v1, v0, Lcom/stripe/core/transaction/Transaction;->forcePinEntry:Z

    move-object/from16 v19, v18

    move/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v19

    .line 78
    invoke-direct/range {v1 .. v18}, Lcom/stripe/core/transaction/Transaction$Builder;-><init>(Lcom/stripe/core/transaction/Transaction$Type;Lcom/stripe/transaction/Settings;Lcom/stripe/core/transaction/Transaction$Error;Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;Lcom/stripe/currency/Amount;Lcom/stripe/cart/Cart;Lcom/stripe/transaction/ChargeAttempt;ILcom/stripe/hardware/emv/Confirmation;Ljava/util/Set;Lcom/stripe/restclient/IntegrationType;ZZLcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;Z)V

    move-object/from16 v16, v1

    return-object v16
.end method
