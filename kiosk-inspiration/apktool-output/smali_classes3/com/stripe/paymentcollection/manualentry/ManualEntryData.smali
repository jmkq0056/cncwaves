.class public final Lcom/stripe/paymentcollection/manualentry/ManualEntryData;
.super Ljava/lang/Object;
.source "ManualEntryData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u00084\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00b5\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u0012\u0018\u0008\u0002\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aj\u0002`\u001d\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0018\u00a2\u0006\u0002\u0010\u001fJ\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\t\u0010A\u001a\u00020\u0018H\u00c6\u0003J\u0019\u0010B\u001a\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aj\u0002`\u001dH\u00c6\u0003J\t\u0010C\u001a\u00020\u0018H\u00c6\u0003J\t\u0010D\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010F\u001a\u00020\u0008H\u00c6\u0003J\t\u0010G\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010I\u001a\u00020\u000cH\u00c6\u0003J\t\u0010J\u001a\u00020\u000eH\u00c6\u0003J\t\u0010K\u001a\u00020\u0010H\u00c6\u0003J\u00b9\u0001\u0010L\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0018\u0008\u0002\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aj\u0002`\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0018H\u00c6\u0001J\u0013\u0010M\u001a\u00020\u00182\u0008\u0010N\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010O\u001a\u00020\u0008H\u00d6\u0001J\t\u0010P\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0013\u0010\"\u001a\u0004\u0018\u00010\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010&R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010,R!\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aj\u0002`\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0011\u0010\u001e\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010:R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u00108R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010,\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;",
        "",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "zipCode",
        "",
        "panUnmaskedDigits",
        "panAsteriskCount",
        "",
        "cvvAsteriskCount",
        "expiryDateUnmaskedDigits",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "emvTransactionType",
        "Lcom/stripe/hardware/emv/EmvTransactionType;",
        "integrationType",
        "Lcom/stripe/restclient/IntegrationType;",
        "encryptedData",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;",
        "failureState",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;",
        "failureReason",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;",
        "userConfirmed",
        "",
        "resultListener",
        "Lkotlin/Function1;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;",
        "",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryResultListener;",
        "showError",
        "(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;Z)V",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "collectionResult",
        "getCollectionResult",
        "()Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;",
        "getCvvAsteriskCount",
        "()I",
        "getEmvTransactionType",
        "()Lcom/stripe/hardware/emv/EmvTransactionType;",
        "getEncryptedData",
        "()Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;",
        "getExpiryDateUnmaskedDigits",
        "()Ljava/lang/String;",
        "getFailureReason",
        "()Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;",
        "getFailureState",
        "()Lcom/stripe/paymentcollection/manualentry/ManualEntryState;",
        "getIntegrationType",
        "()Lcom/stripe/restclient/IntegrationType;",
        "getPanAsteriskCount",
        "getPanUnmaskedDigits",
        "getResultListener",
        "()Lkotlin/jvm/functions/Function1;",
        "getShowError",
        "()Z",
        "getTransactionType",
        "()Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "getUserConfirmed",
        "getZipCode",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
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

.field private final cvvAsteriskCount:I

.field private final emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

.field private final encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

.field private final expiryDateUnmaskedDigits:Ljava/lang/String;

.field private final failureReason:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

.field private final failureState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

.field private final integrationType:Lcom/stripe/restclient/IntegrationType;

.field private final panAsteriskCount:I

.field private final panUnmaskedDigits:Ljava/lang/String;

.field private final resultListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final showError:Z

.field private final transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

.field private final userConfirmed:Z

.field private final zipCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 18

    const/16 v16, 0x7fff

    const/16 v17, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;-><init>(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/Amount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lcom/stripe/hardware/paymentcollection/TransactionType;",
            "Lcom/stripe/hardware/emv/EmvTransactionType;",
            "Lcom/stripe/restclient/IntegrationType;",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p14

    const-string v1, "amount"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "zipCode"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "transactionType"

    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "emvTransactionType"

    invoke-static {p8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "integrationType"

    invoke-static {p9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "resultListener"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->amount:Lcom/stripe/currency/Amount;

    .line 20
    iput-object p2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->zipCode:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panUnmaskedDigits:Ljava/lang/String;

    .line 29
    iput p4, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panAsteriskCount:I

    .line 34
    iput p5, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->cvvAsteriskCount:I

    .line 38
    iput-object p6, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->expiryDateUnmaskedDigits:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    .line 46
    iput-object p8, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    .line 50
    iput-object p9, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->integrationType:Lcom/stripe/restclient/IntegrationType;

    .line 54
    iput-object p10, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    .line 59
    iput-object p11, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    .line 64
    iput-object p12, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureReason:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    .line 69
    iput-boolean p13, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->userConfirmed:Z

    .line 74
    iput-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->resultListener:Lkotlin/jvm/functions/Function1;

    move/from16 p1, p15

    .line 78
    iput-boolean p1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->showError:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 16
    invoke-static {}, Lcom/stripe/paymentcollection/manualentry/ManualEntryDataKt;->access$getUNKNOWN_AMOUNT$p()Lcom/stripe/currency/Amount;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 20
    const-string v2, ""

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move-object v8, v4

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    .line 42
    sget-object v9, Lcom/stripe/hardware/paymentcollection/TransactionType;->CHARGE:Lcom/stripe/hardware/paymentcollection/TransactionType;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    .line 46
    sget-object v10, Lcom/stripe/hardware/emv/EmvTransactionType;->QUICK:Lcom/stripe/hardware/emv/EmvTransactionType;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    .line 50
    sget-object v11, Lcom/stripe/restclient/IntegrationType;->LOCAL_POS:Lcom/stripe/restclient/IntegrationType;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    move-object v12, v4

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    move-object v13, v4

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    goto :goto_b

    :cond_b
    move-object/from16 v4, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    move v14, v6

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    .line 74
    sget-object v15, Lcom/stripe/paymentcollection/manualentry/ManualEntryData$1;->INSTANCE:Lcom/stripe/paymentcollection/manualentry/ManualEntryData$1;

    check-cast v15, Lkotlin/jvm/functions/Function1;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    move/from16 p16, v6

    goto :goto_e

    :cond_e
    move/from16 p16, p15

    :goto_e
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p13, v4

    move/from16 p5, v5

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p14, v14

    move-object/from16 p15, v15

    .line 12
    invoke-direct/range {p1 .. p16}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;-><init>(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lcom/stripe/paymentcollection/manualentry/ManualEntryData;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->amount:Lcom/stripe/currency/Amount;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->zipCode:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panUnmaskedDigits:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panAsteriskCount:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->cvvAsteriskCount:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->expiryDateUnmaskedDigits:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->integrationType:Lcom/stripe/restclient/IntegrationType;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureReason:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->userConfirmed:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->resultListener:Lkotlin/jvm/functions/Function1;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->showError:Z

    move/from16 p16, v1

    goto :goto_e

    :cond_e
    move/from16 p16, p15

    :goto_e
    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move/from16 p14, v14

    move-object/from16 p15, v15

    invoke-virtual/range {p1 .. p16}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->copy(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;Z)Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component10()Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    return-object v0
.end method

.method public final component11()Lcom/stripe/paymentcollection/manualentry/ManualEntryState;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    return-object v0
.end method

.method public final component12()Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureReason:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    return-object v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->userConfirmed:Z

    return v0
.end method

.method public final component14()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->resultListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final component15()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->showError:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->zipCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panUnmaskedDigits:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panAsteriskCount:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->cvvAsteriskCount:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->expiryDateUnmaskedDigits:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object v0
.end method

.method public final component8()Lcom/stripe/hardware/emv/EmvTransactionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    return-object v0
.end method

.method public final component9()Lcom/stripe/restclient/IntegrationType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->integrationType:Lcom/stripe/restclient/IntegrationType;

    return-object v0
.end method

.method public final copy(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;Z)Lcom/stripe/paymentcollection/manualentry/ManualEntryData;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/Amount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lcom/stripe/hardware/paymentcollection/TransactionType;",
            "Lcom/stripe/hardware/emv/EmvTransactionType;",
            "Lcom/stripe/restclient/IntegrationType;",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;",
            "Lkotlin/Unit;",
            ">;Z)",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;"
        }
    .end annotation

    const-string v0, "amount"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipCode"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionType"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emvTransactionType"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "integrationType"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v16, p15

    invoke-direct/range {v1 .. v16}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;-><init>(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;Z)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->amount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->amount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->zipCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->zipCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panUnmaskedDigits:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panUnmaskedDigits:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panAsteriskCount:I

    iget v3, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panAsteriskCount:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->cvvAsteriskCount:I

    iget v3, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->cvvAsteriskCount:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->expiryDateUnmaskedDigits:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->expiryDateUnmaskedDigits:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    iget-object v3, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    iget-object v3, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->integrationType:Lcom/stripe/restclient/IntegrationType;

    iget-object v3, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->integrationType:Lcom/stripe/restclient/IntegrationType;

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    iget-object v3, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    iget-object v3, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureReason:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    iget-object v3, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureReason:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->userConfirmed:Z

    iget-boolean v3, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->userConfirmed:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->resultListener:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->resultListener:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->showError:Z

    iget-boolean p1, p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->showError:Z

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getCollectionResult()Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;
    .locals 10

    .line 82
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureReason:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult$Failure;

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureReason:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult$Failure;-><init>(Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;)V

    check-cast v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->zipCode:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->userConfirmed:Z

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult$Success;

    .line 87
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;->getEncPAN()Ljava/lang/String;

    move-result-object v3

    .line 88
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;->getExpiryDate()Ljava/lang/String;

    move-result-object v4

    .line 89
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;->getEncCVV()Ljava/lang/String;

    move-result-object v5

    .line 90
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;->getKsn()Ljava/lang/String;

    move-result-object v7

    .line 91
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;->getMaskedPan()Ljava/lang/String;

    move-result-object v6

    .line 92
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;->getPosEntryMode()Ljava/lang/String;

    move-result-object v8

    .line 93
    iget-object v9, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->zipCode:Ljava/lang/String;

    .line 86
    new-instance v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;

    invoke-direct/range {v2 .. v9}, Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {v0, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult$Success;-><init>(Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;)V

    check-cast v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCvvAsteriskCount()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->cvvAsteriskCount:I

    return v0
.end method

.method public final getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    return-object v0
.end method

.method public final getEncryptedData()Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    return-object v0
.end method

.method public final getExpiryDateUnmaskedDigits()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->expiryDateUnmaskedDigits:Ljava/lang/String;

    return-object v0
.end method

.method public final getFailureReason()Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureReason:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    return-object v0
.end method

.method public final getFailureState()Lcom/stripe/paymentcollection/manualentry/ManualEntryState;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    return-object v0
.end method

.method public final getIntegrationType()Lcom/stripe/restclient/IntegrationType;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->integrationType:Lcom/stripe/restclient/IntegrationType;

    return-object v0
.end method

.method public final getPanAsteriskCount()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panAsteriskCount:I

    return v0
.end method

.method public final getPanUnmaskedDigits()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panUnmaskedDigits:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->resultListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getShowError()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->showError:Z

    return v0
.end method

.method public final getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object v0
.end method

.method public final getUserConfirmed()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->userConfirmed:Z

    return v0
.end method

.method public final getZipCode()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->zipCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->zipCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panUnmaskedDigits:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panAsteriskCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->cvvAsteriskCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->expiryDateUnmaskedDigits:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/TransactionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/EmvTransactionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->integrationType:Lcom/stripe/restclient/IntegrationType;

    invoke-virtual {v1}, Lcom/stripe/restclient/IntegrationType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureReason:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->userConfirmed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->resultListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->showError:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ManualEntryData(amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zipCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->zipCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", panUnmaskedDigits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panUnmaskedDigits:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", panAsteriskCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->panAsteriskCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cvvAsteriskCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->cvvAsteriskCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expiryDateUnmaskedDigits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->expiryDateUnmaskedDigits:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transactionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emvTransactionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", integrationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->integrationType:Lcom/stripe/restclient/IntegrationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encryptedData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->encryptedData:Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failureState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failureReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->failureReason:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userConfirmed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->userConfirmed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->resultListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", showError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->showError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
