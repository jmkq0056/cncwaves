.class public final Lcom/stripe/core/transaction/Transaction$Builder;
.super Ljava/lang/Object;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/transaction/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008C\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u00cb\u0001\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0010\u0008\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\u0010\u0008\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!\u0012\u0008\u0008\u0002\u0010#\u001a\u00020\u001a\u00a2\u0006\u0002\u0010$J\u0016\u0010\u0014\u001a\u00020\u00002\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010e\u001a\u00020fJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010g\u001a\u00020\u0000J\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0010\u0010h\u001a\u00020\u00002\u0008\u0010i\u001a\u0004\u0018\u00010\u001dJ\u0014\u0010j\u001a\u00020\u00002\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!J\u0010\u0010k\u001a\u00020\u00002\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u000e\u0010l\u001a\u00020m2\u0006\u0010#\u001a\u00020\u001aJ\u000e\u0010n\u001a\u00020\u00002\u0006\u0010o\u001a\u00020\u001aJ\u000e\u0010p\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u001aJ\u000e\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u0010\u001c\u001a\u00020\u001dX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\"\u0010 \u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\u001a\u0010\u0008\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u001a\u0010#\u001a\u00020\u001aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u001a\u0010\u001b\u001a\u00020\u001aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010N\"\u0004\u0008V\u0010PR\u001a\u0010\u0019\u001a\u00020\u001aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010N\"\u0004\u0008X\u0010PR\u001a\u0010\u0010\u001a\u00020\u0011X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010d\u00a8\u0006r"
    }
    d2 = {
        "Lcom/stripe/core/transaction/Transaction$Builder;",
        "",
        "type",
        "Lcom/stripe/core/transaction/Transaction$Type;",
        "settings",
        "Lcom/stripe/transaction/Settings;",
        "error",
        "Lcom/stripe/core/transaction/Transaction$Error;",
        "fallbackReason",
        "Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "cart",
        "Lcom/stripe/cart/Cart;",
        "chargeAttempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "numOfCanceledPayments",
        "",
        "confirmation",
        "Lcom/stripe/hardware/emv/Confirmation;",
        "activeReaderConfiguration",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "integrationType",
        "Lcom/stripe/restclient/IntegrationType;",
        "isOffline",
        "",
        "isDeferredAuthorizationCountry",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "domesticDebitPriority",
        "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "domesticDebitAids",
        "",
        "",
        "forcePinEntry",
        "(Lcom/stripe/core/transaction/Transaction$Type;Lcom/stripe/transaction/Settings;Lcom/stripe/core/transaction/Transaction$Error;Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;Lcom/stripe/currency/Amount;Lcom/stripe/cart/Cart;Lcom/stripe/transaction/ChargeAttempt;ILcom/stripe/hardware/emv/Confirmation;Ljava/util/Set;Lcom/stripe/restclient/IntegrationType;ZZLcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;Z)V",
        "getActiveReaderConfiguration$transaction_release",
        "()Ljava/util/Set;",
        "setActiveReaderConfiguration$transaction_release",
        "(Ljava/util/Set;)V",
        "getAmount$transaction_release",
        "()Lcom/stripe/currency/Amount;",
        "setAmount$transaction_release",
        "(Lcom/stripe/currency/Amount;)V",
        "getCart$transaction_release",
        "()Lcom/stripe/cart/Cart;",
        "setCart$transaction_release",
        "(Lcom/stripe/cart/Cart;)V",
        "getChargeAttempt$transaction_release",
        "()Lcom/stripe/transaction/ChargeAttempt;",
        "setChargeAttempt$transaction_release",
        "(Lcom/stripe/transaction/ChargeAttempt;)V",
        "getConfirmation$transaction_release",
        "()Lcom/stripe/hardware/emv/Confirmation;",
        "setConfirmation$transaction_release",
        "(Lcom/stripe/hardware/emv/Confirmation;)V",
        "getDeviceType$transaction_release",
        "()Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "setDeviceType$transaction_release",
        "(Lcom/stripe/stripeterminal/external/models/DeviceType;)V",
        "getDomesticDebitAids$transaction_release",
        "()Ljava/util/List;",
        "setDomesticDebitAids$transaction_release",
        "(Ljava/util/List;)V",
        "getDomesticDebitPriority$transaction_release",
        "()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "setDomesticDebitPriority$transaction_release",
        "(Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;)V",
        "getError$transaction_release",
        "()Lcom/stripe/core/transaction/Transaction$Error;",
        "setError$transaction_release",
        "(Lcom/stripe/core/transaction/Transaction$Error;)V",
        "getFallbackReason$transaction_release",
        "()Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;",
        "setFallbackReason$transaction_release",
        "(Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;)V",
        "getForcePinEntry$transaction_release",
        "()Z",
        "setForcePinEntry$transaction_release",
        "(Z)V",
        "getIntegrationType$transaction_release",
        "()Lcom/stripe/restclient/IntegrationType;",
        "setIntegrationType$transaction_release",
        "(Lcom/stripe/restclient/IntegrationType;)V",
        "isDeferredAuthorizationCountry$transaction_release",
        "setDeferredAuthorizationCountry$transaction_release",
        "isOffline$transaction_release",
        "setOffline$transaction_release",
        "getNumOfCanceledPayments$transaction_release",
        "()I",
        "setNumOfCanceledPayments$transaction_release",
        "(I)V",
        "getSettings$transaction_release",
        "()Lcom/stripe/transaction/Settings;",
        "setSettings$transaction_release",
        "(Lcom/stripe/transaction/Settings;)V",
        "getType$transaction_release",
        "()Lcom/stripe/core/transaction/Transaction$Type;",
        "setType$transaction_release",
        "(Lcom/stripe/core/transaction/Transaction$Type;)V",
        "build",
        "Lcom/stripe/core/transaction/Transaction;",
        "incrementNumOfCanceledPayments",
        "setDeviceType",
        "devType",
        "setDomesticDebitAids",
        "setDomesticDebitPriority",
        "setForcePinEntry",
        "",
        "setIsDeferredAuthorizationCountry",
        "isDeferredAuthCountry",
        "setOffline",
        "offline",
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


# instance fields
.field private activeReaderConfiguration:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field

.field private amount:Lcom/stripe/currency/Amount;

.field private cart:Lcom/stripe/cart/Cart;

.field private chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

.field private confirmation:Lcom/stripe/hardware/emv/Confirmation;

.field private deviceType:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field private domesticDebitAids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

.field private error:Lcom/stripe/core/transaction/Transaction$Error;

.field private fallbackReason:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

.field private forcePinEntry:Z

.field private integrationType:Lcom/stripe/restclient/IntegrationType;

.field private isDeferredAuthorizationCountry:Z

.field private isOffline:Z

.field private numOfCanceledPayments:I

.field private settings:Lcom/stripe/transaction/Settings;

.field private type:Lcom/stripe/core/transaction/Transaction$Type;


# direct methods
.method public constructor <init>(Lcom/stripe/core/transaction/Transaction$Type;Lcom/stripe/transaction/Settings;Lcom/stripe/core/transaction/Transaction$Error;Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;Lcom/stripe/currency/Amount;Lcom/stripe/cart/Cart;Lcom/stripe/transaction/ChargeAttempt;ILcom/stripe/hardware/emv/Confirmation;Ljava/util/Set;Lcom/stripe/restclient/IntegrationType;ZZLcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/transaction/Transaction$Type;",
            "Lcom/stripe/transaction/Settings;",
            "Lcom/stripe/core/transaction/Transaction$Error;",
            "Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/cart/Cart;",
            "Lcom/stripe/transaction/ChargeAttempt;",
            "I",
            "Lcom/stripe/hardware/emv/Confirmation;",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;",
            "Lcom/stripe/restclient/IntegrationType;",
            "ZZ",
            "Lcom/stripe/stripeterminal/external/models/DeviceType;",
            "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p14

    const-string v1, "type"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "settings"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fallbackReason"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->type:Lcom/stripe/core/transaction/Transaction$Type;

    .line 94
    iput-object p2, p0, Lcom/stripe/core/transaction/Transaction$Builder;->settings:Lcom/stripe/transaction/Settings;

    .line 95
    iput-object p3, p0, Lcom/stripe/core/transaction/Transaction$Builder;->error:Lcom/stripe/core/transaction/Transaction$Error;

    .line 96
    iput-object p4, p0, Lcom/stripe/core/transaction/Transaction$Builder;->fallbackReason:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    .line 98
    iput-object p5, p0, Lcom/stripe/core/transaction/Transaction$Builder;->amount:Lcom/stripe/currency/Amount;

    .line 99
    iput-object p6, p0, Lcom/stripe/core/transaction/Transaction$Builder;->cart:Lcom/stripe/cart/Cart;

    .line 100
    iput-object p7, p0, Lcom/stripe/core/transaction/Transaction$Builder;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    .line 101
    iput p8, p0, Lcom/stripe/core/transaction/Transaction$Builder;->numOfCanceledPayments:I

    .line 102
    iput-object p9, p0, Lcom/stripe/core/transaction/Transaction$Builder;->confirmation:Lcom/stripe/hardware/emv/Confirmation;

    .line 103
    iput-object p10, p0, Lcom/stripe/core/transaction/Transaction$Builder;->activeReaderConfiguration:Ljava/util/Set;

    .line 104
    iput-object p11, p0, Lcom/stripe/core/transaction/Transaction$Builder;->integrationType:Lcom/stripe/restclient/IntegrationType;

    .line 105
    iput-boolean p12, p0, Lcom/stripe/core/transaction/Transaction$Builder;->isOffline:Z

    .line 106
    iput-boolean p13, p0, Lcom/stripe/core/transaction/Transaction$Builder;->isDeferredAuthorizationCountry:Z

    .line 107
    iput-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->deviceType:Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-object/from16 p1, p15

    .line 108
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    move-object/from16 p1, p16

    .line 109
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->domesticDebitAids:Ljava/util/List;

    move/from16 p1, p17

    .line 110
    iput-boolean p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->forcePinEntry:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/core/transaction/Transaction$Type;Lcom/stripe/transaction/Settings;Lcom/stripe/core/transaction/Transaction$Error;Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;Lcom/stripe/currency/Amount;Lcom/stripe/cart/Cart;Lcom/stripe/transaction/ChargeAttempt;ILcom/stripe/hardware/emv/Confirmation;Ljava/util/Set;Lcom/stripe/restclient/IntegrationType;ZZLcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 97
    sget-object v1, Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;->NONE:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    move v11, v3

    goto :goto_5

    :cond_5
    move/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move v15, v3

    goto :goto_9

    :cond_9
    move/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move/from16 v16, v3

    goto :goto_a

    :cond_a
    move/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    .line 107
    sget-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-object/from16 v17, v1

    goto :goto_b

    :cond_b
    move-object/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-object/from16 v18, v2

    goto :goto_c

    :cond_c
    move-object/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v19, v2

    goto :goto_d

    :cond_d
    move-object/from16 v19, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    move/from16 v20, v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v3, p0

    goto :goto_e

    :cond_e
    move/from16 v20, p17

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 92
    :goto_e
    invoke-direct/range {v3 .. v20}, Lcom/stripe/core/transaction/Transaction$Builder;-><init>(Lcom/stripe/core/transaction/Transaction$Type;Lcom/stripe/transaction/Settings;Lcom/stripe/core/transaction/Transaction$Error;Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;Lcom/stripe/currency/Amount;Lcom/stripe/cart/Cart;Lcom/stripe/transaction/ChargeAttempt;ILcom/stripe/hardware/emv/Confirmation;Ljava/util/Set;Lcom/stripe/restclient/IntegrationType;ZZLcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final activeReaderConfiguration(Ljava/util/Set;)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;)",
            "Lcom/stripe/core/transaction/Transaction$Builder;"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->activeReaderConfiguration:Ljava/util/Set;

    return-object p0
.end method

.method public final amount(Lcom/stripe/currency/Amount;)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->amount:Lcom/stripe/currency/Amount;

    return-object p0
.end method

.method public final build()Lcom/stripe/core/transaction/Transaction;
    .locals 1

    .line 187
    new-instance v0, Lcom/stripe/core/transaction/Transaction;

    invoke-direct {v0, p0}, Lcom/stripe/core/transaction/Transaction;-><init>(Lcom/stripe/core/transaction/Transaction$Builder;)V

    return-object v0
.end method

.method public final cart(Lcom/stripe/cart/Cart;)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->cart:Lcom/stripe/cart/Cart;

    return-object p0
.end method

.method public final chargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    return-object p0
.end method

.method public final confirmation(Lcom/stripe/hardware/emv/Confirmation;)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->confirmation:Lcom/stripe/hardware/emv/Confirmation;

    return-object p0
.end method

.method public final error(Lcom/stripe/core/transaction/Transaction$Error;)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->error:Lcom/stripe/core/transaction/Transaction$Error;

    return-object p0
.end method

.method public final fallbackReason(Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 1

    const-string v0, "fallbackReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->fallbackReason:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    return-object p0
.end method

.method public final getActiveReaderConfiguration$transaction_release()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->activeReaderConfiguration:Ljava/util/Set;

    return-object v0
.end method

.method public final getAmount$transaction_release()Lcom/stripe/currency/Amount;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getCart$transaction_release()Lcom/stripe/cart/Cart;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->cart:Lcom/stripe/cart/Cart;

    return-object v0
.end method

.method public final getChargeAttempt$transaction_release()Lcom/stripe/transaction/ChargeAttempt;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    return-object v0
.end method

.method public final getConfirmation$transaction_release()Lcom/stripe/hardware/emv/Confirmation;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->confirmation:Lcom/stripe/hardware/emv/Confirmation;

    return-object v0
.end method

.method public final getDeviceType$transaction_release()Lcom/stripe/stripeterminal/external/models/DeviceType;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->deviceType:Lcom/stripe/stripeterminal/external/models/DeviceType;

    return-object v0
.end method

.method public final getDomesticDebitAids$transaction_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->domesticDebitAids:Ljava/util/List;

    return-object v0
.end method

.method public final getDomesticDebitPriority$transaction_release()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    return-object v0
.end method

.method public final getError$transaction_release()Lcom/stripe/core/transaction/Transaction$Error;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->error:Lcom/stripe/core/transaction/Transaction$Error;

    return-object v0
.end method

.method public final getFallbackReason$transaction_release()Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->fallbackReason:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    return-object v0
.end method

.method public final getForcePinEntry$transaction_release()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->forcePinEntry:Z

    return v0
.end method

.method public final getIntegrationType$transaction_release()Lcom/stripe/restclient/IntegrationType;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->integrationType:Lcom/stripe/restclient/IntegrationType;

    return-object v0
.end method

.method public final getNumOfCanceledPayments$transaction_release()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->numOfCanceledPayments:I

    return v0
.end method

.method public final getSettings$transaction_release()Lcom/stripe/transaction/Settings;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->settings:Lcom/stripe/transaction/Settings;

    return-object v0
.end method

.method public final getType$transaction_release()Lcom/stripe/core/transaction/Transaction$Type;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->type:Lcom/stripe/core/transaction/Transaction$Type;

    return-object v0
.end method

.method public final incrementNumOfCanceledPayments()Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->settings:Lcom/stripe/transaction/Settings;

    invoke-virtual {v0}, Lcom/stripe/transaction/Settings;->getAllowIncrementNumOfCanceledPayments()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->numOfCanceledPayments:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->numOfCanceledPayments:I

    :cond_0
    return-object p0
.end method

.method public final integrationType(Lcom/stripe/restclient/IntegrationType;)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->integrationType:Lcom/stripe/restclient/IntegrationType;

    return-object p0
.end method

.method public final isDeferredAuthorizationCountry$transaction_release()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->isDeferredAuthorizationCountry:Z

    return v0
.end method

.method public final isOffline$transaction_release()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/stripe/core/transaction/Transaction$Builder;->isOffline:Z

    return v0
.end method

.method public final setActiveReaderConfiguration$transaction_release(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->activeReaderConfiguration:Ljava/util/Set;

    return-void
.end method

.method public final setAmount$transaction_release(Lcom/stripe/currency/Amount;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->amount:Lcom/stripe/currency/Amount;

    return-void
.end method

.method public final setCart$transaction_release(Lcom/stripe/cart/Cart;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->cart:Lcom/stripe/cart/Cart;

    return-void
.end method

.method public final setChargeAttempt$transaction_release(Lcom/stripe/transaction/ChargeAttempt;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    return-void
.end method

.method public final setConfirmation$transaction_release(Lcom/stripe/hardware/emv/Confirmation;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->confirmation:Lcom/stripe/hardware/emv/Confirmation;

    return-void
.end method

.method public final setDeferredAuthorizationCountry$transaction_release(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->isDeferredAuthorizationCountry:Z

    return-void
.end method

.method public final setDeviceType(Lcom/stripe/stripeterminal/external/models/DeviceType;)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 1

    .line 170
    move-object v0, p0

    check-cast v0, Lcom/stripe/core/transaction/Transaction$Builder;

    if-nez p1, :cond_0

    .line 171
    sget-object p1, Lcom/stripe/stripeterminal/external/models/DeviceType;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

    :cond_0
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->deviceType:Lcom/stripe/stripeterminal/external/models/DeviceType;

    return-object p0
.end method

.method public final setDeviceType$transaction_release(Lcom/stripe/stripeterminal/external/models/DeviceType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->deviceType:Lcom/stripe/stripeterminal/external/models/DeviceType;

    return-void
.end method

.method public final setDomesticDebitAids(Ljava/util/List;)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/core/transaction/Transaction$Builder;"
        }
    .end annotation

    const-string v0, "domesticDebitAids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    move-object v0, p0

    check-cast v0, Lcom/stripe/core/transaction/Transaction$Builder;

    .line 179
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->domesticDebitAids:Ljava/util/List;

    return-object p0
.end method

.method public final setDomesticDebitAids$transaction_release(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->domesticDebitAids:Ljava/util/List;

    return-void
.end method

.method public final setDomesticDebitPriority(Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 1

    .line 174
    move-object v0, p0

    check-cast v0, Lcom/stripe/core/transaction/Transaction$Builder;

    .line 175
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    return-object p0
.end method

.method public final setDomesticDebitPriority$transaction_release(Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    return-void
.end method

.method public final setError$transaction_release(Lcom/stripe/core/transaction/Transaction$Error;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->error:Lcom/stripe/core/transaction/Transaction$Error;

    return-void
.end method

.method public final setFallbackReason$transaction_release(Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->fallbackReason:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    return-void
.end method

.method public final setForcePinEntry(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->forcePinEntry:Z

    return-void
.end method

.method public final setForcePinEntry$transaction_release(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->forcePinEntry:Z

    return-void
.end method

.method public final setIntegrationType$transaction_release(Lcom/stripe/restclient/IntegrationType;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->integrationType:Lcom/stripe/restclient/IntegrationType;

    return-void
.end method

.method public final setIsDeferredAuthorizationCountry(Z)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 1

    .line 166
    move-object v0, p0

    check-cast v0, Lcom/stripe/core/transaction/Transaction$Builder;

    .line 167
    iput-boolean p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->isDeferredAuthorizationCountry:Z

    return-object p0
.end method

.method public final setNumOfCanceledPayments$transaction_release(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->numOfCanceledPayments:I

    return-void
.end method

.method public final setOffline(Z)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 1

    .line 162
    move-object v0, p0

    check-cast v0, Lcom/stripe/core/transaction/Transaction$Builder;

    .line 163
    iput-boolean p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->isOffline:Z

    return-object p0
.end method

.method public final setOffline$transaction_release(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->isOffline:Z

    return-void
.end method

.method public final setSettings$transaction_release(Lcom/stripe/transaction/Settings;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->settings:Lcom/stripe/transaction/Settings;

    return-void
.end method

.method public final setType$transaction_release(Lcom/stripe/core/transaction/Transaction$Type;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->type:Lcom/stripe/core/transaction/Transaction$Type;

    return-void
.end method

.method public final type(Lcom/stripe/core/transaction/Transaction$Type;)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/stripe/core/transaction/Transaction$Builder;->type:Lcom/stripe/core/transaction/Transaction$Type;

    return-object p0
.end method
