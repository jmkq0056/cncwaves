.class public final Lcom/stripe/hardware/paymentcollection/CollectionModel;
.super Ljava/lang/Object;
.source "CollectionModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008$\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bm\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0006\u0010\u0016\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0017J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u00c6\u0003J\t\u0010-\u001a\u00020\u000fH\u00c6\u0003J\t\u0010.\u001a\u00020\u0005H\u00c6\u0003J\t\u0010/\u001a\u00020\u0005H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000f\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u00c6\u0003J\t\u00102\u001a\u00020\rH\u00c6\u0003J\t\u00103\u001a\u00020\u000fH\u00c6\u0003J\t\u00104\u001a\u00020\u000fH\u00c6\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\u0087\u0001\u00106\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000fH\u00c6\u0001J\u0013\u00107\u001a\u00020\u000f2\u0008\u00108\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00109\u001a\u00020:H\u00d6\u0001J\t\u0010;\u001a\u00020\u0012H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0019R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u001eR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0011\u0010\u0016\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001e\u00a8\u0006<"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/CollectionModel;",
        "",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "baseAmount",
        "callToAction",
        "Lcom/stripe/hardware/paymentcollection/RecoverableError;",
        "readerActiveInterfaces",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "readerContactCardSlotState",
        "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;",
        "readerEnableEditTip",
        "",
        "enableCustomerCancellation",
        "surchargeNotice",
        "",
        "nonCardPaymentMethodTypes",
        "",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "useIncrementalAuthUi",
        "(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/RecoverableError;Ljava/util/Set;Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;ZZLjava/lang/String;Ljava/util/List;Z)V",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "getBaseAmount",
        "getCallToAction",
        "()Lcom/stripe/hardware/paymentcollection/RecoverableError;",
        "getEnableCustomerCancellation",
        "()Z",
        "getNonCardPaymentMethodTypes",
        "()Ljava/util/List;",
        "getReaderActiveInterfaces",
        "()Ljava/util/Set;",
        "getReaderContactCardSlotState",
        "()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;",
        "getReaderEnableEditTip",
        "getSurchargeNotice",
        "()Ljava/lang/String;",
        "getTransactionType",
        "()Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "getUseIncrementalAuthUi",
        "component1",
        "component10",
        "component11",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "public_release"
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
.field private final amount:Lcom/stripe/currency/Amount;

.field private final baseAmount:Lcom/stripe/currency/Amount;

.field private final callToAction:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field private final enableCustomerCancellation:Z

.field private final nonCardPaymentMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation
.end field

.field private final readerActiveInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field

.field private final readerContactCardSlotState:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

.field private final readerEnableEditTip:Z

.field private final surchargeNotice:Ljava/lang/String;

.field private final transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

.field private final useIncrementalAuthUi:Z


# direct methods
.method public constructor <init>(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/RecoverableError;Ljava/util/Set;Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;ZZLjava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/TransactionType;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/hardware/paymentcollection/RecoverableError;",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;",
            "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "transactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseAmount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerActiveInterfaces"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerContactCardSlotState"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonCardPaymentMethodTypes"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    .line 27
    iput-object p2, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->amount:Lcom/stripe/currency/Amount;

    .line 34
    iput-object p3, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->baseAmount:Lcom/stripe/currency/Amount;

    .line 38
    iput-object p4, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->callToAction:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 42
    iput-object p5, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerActiveInterfaces:Ljava/util/Set;

    .line 46
    iput-object p6, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerContactCardSlotState:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    .line 51
    iput-boolean p7, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerEnableEditTip:Z

    .line 56
    iput-boolean p8, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->enableCustomerCancellation:Z

    .line 61
    iput-object p9, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->surchargeNotice:Ljava/lang/String;

    .line 66
    iput-object p10, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->nonCardPaymentMethodTypes:Ljava/util/List;

    .line 71
    iput-boolean p11, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->useIncrementalAuthUi:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/paymentcollection/CollectionModel;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/RecoverableError;Ljava/util/Set;Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;ZZLjava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Lcom/stripe/hardware/paymentcollection/CollectionModel;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    iget-object p2, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->amount:Lcom/stripe/currency/Amount;

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    iget-object p3, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->baseAmount:Lcom/stripe/currency/Amount;

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    iget-object p4, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->callToAction:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    iget-object p5, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerActiveInterfaces:Ljava/util/Set;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    iget-object p6, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerContactCardSlotState:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    iget-boolean p7, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerEnableEditTip:Z

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    iget-boolean p8, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->enableCustomerCancellation:Z

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    iget-object p9, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->surchargeNotice:Ljava/lang/String;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    iget-object p10, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->nonCardPaymentMethodTypes:Ljava/util/List;

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    iget-boolean p11, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->useIncrementalAuthUi:Z

    :cond_a
    move-object p12, p10

    move p13, p11

    move p10, p8

    move-object p11, p9

    move-object p8, p6

    move p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p13}, Lcom/stripe/hardware/paymentcollection/CollectionModel;->copy(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/RecoverableError;Ljava/util/Set;Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;ZZLjava/lang/String;Ljava/util/List;Z)Lcom/stripe/hardware/paymentcollection/CollectionModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->nonCardPaymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->useIncrementalAuthUi:Z

    return v0
.end method

.method public final component2()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component3()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->baseAmount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component4()Lcom/stripe/hardware/paymentcollection/RecoverableError;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->callToAction:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object v0
.end method

.method public final component5()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerActiveInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method public final component6()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerContactCardSlotState:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    return-object v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerEnableEditTip:Z

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->enableCustomerCancellation:Z

    return v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->surchargeNotice:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/RecoverableError;Ljava/util/Set;Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;ZZLjava/lang/String;Ljava/util/List;Z)Lcom/stripe/hardware/paymentcollection/CollectionModel;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/TransactionType;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/hardware/paymentcollection/RecoverableError;",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;",
            "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;Z)",
            "Lcom/stripe/hardware/paymentcollection/CollectionModel;"
        }
    .end annotation

    const-string v0, "transactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseAmount"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerActiveInterfaces"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerContactCardSlotState"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonCardPaymentMethodTypes"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/hardware/paymentcollection/CollectionModel;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/stripe/hardware/paymentcollection/CollectionModel;-><init>(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/RecoverableError;Ljava/util/Set;Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;ZZLjava/lang/String;Ljava/util/List;Z)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/paymentcollection/CollectionModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/paymentcollection/CollectionModel;

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/CollectionModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->amount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/CollectionModel;->amount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->baseAmount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/CollectionModel;->baseAmount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->callToAction:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/CollectionModel;->callToAction:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerActiveInterfaces:Ljava/util/Set;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerActiveInterfaces:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerContactCardSlotState:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerContactCardSlotState:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerEnableEditTip:Z

    iget-boolean v3, p1, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerEnableEditTip:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->enableCustomerCancellation:Z

    iget-boolean v3, p1, Lcom/stripe/hardware/paymentcollection/CollectionModel;->enableCustomerCancellation:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->surchargeNotice:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/CollectionModel;->surchargeNotice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->nonCardPaymentMethodTypes:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/CollectionModel;->nonCardPaymentMethodTypes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->useIncrementalAuthUi:Z

    iget-boolean p1, p1, Lcom/stripe/hardware/paymentcollection/CollectionModel;->useIncrementalAuthUi:Z

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getBaseAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->baseAmount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getCallToAction()Lcom/stripe/hardware/paymentcollection/RecoverableError;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->callToAction:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object v0
.end method

.method public final getEnableCustomerCancellation()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->enableCustomerCancellation:Z

    return v0
.end method

.method public final getNonCardPaymentMethodTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->nonCardPaymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getReaderActiveInterfaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerActiveInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method public final getReaderContactCardSlotState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerContactCardSlotState:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    return-object v0
.end method

.method public final getReaderEnableEditTip()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerEnableEditTip:Z

    return v0
.end method

.method public final getSurchargeNotice()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->surchargeNotice:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object v0
.end method

.method public final getUseIncrementalAuthUi()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->useIncrementalAuthUi:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v0}, Lcom/stripe/hardware/paymentcollection/TransactionType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->baseAmount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->callToAction:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/RecoverableError;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerActiveInterfaces:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerContactCardSlotState:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerEnableEditTip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->enableCustomerCancellation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->surchargeNotice:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->nonCardPaymentMethodTypes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->useIncrementalAuthUi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CollectionModel(transactionType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", baseAmount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->baseAmount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callToAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->callToAction:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", readerActiveInterfaces="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerActiveInterfaces:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", readerContactCardSlotState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerContactCardSlotState:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", readerEnableEditTip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->readerEnableEditTip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enableCustomerCancellation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->enableCustomerCancellation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", surchargeNotice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->surchargeNotice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nonCardPaymentMethodTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->nonCardPaymentMethodTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", useIncrementalAuthUi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/hardware/paymentcollection/CollectionModel;->useIncrementalAuthUi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
