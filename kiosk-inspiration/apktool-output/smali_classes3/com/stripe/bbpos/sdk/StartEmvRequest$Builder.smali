.class public final Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "StartEmvRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/StartEmvRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/StartEmvRequest;",
        "Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010 \u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u000fJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u000fJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\tJ\u0015\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010!J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\tJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\tJ\u0010\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0005J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001fR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0017R\u0012\u0010\u0018\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/StartEmvRequest;",
        "()V",
        "amount",
        "",
        "checkCardMode",
        "Lcom/stripe/bbpos/sdk/CheckCardMode;",
        "checkCardTimeout",
        "",
        "contactlessOnlinePinOption",
        "Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;",
        "currencyCode",
        "currencyExponent",
        "disableQuickChip",
        "",
        "domesticDebitPriority",
        "Lcom/stripe/bbpos/sdk/DomesticDebitPriority;",
        "forcePinEntry",
        "isAccessiblePinPad",
        "isMerchantChoiceRouting",
        "onlineProcessTimeout",
        "pinEntryTimeout",
        "Ljava/lang/Integer;",
        "quickChipOption",
        "Lcom/stripe/bbpos/sdk/QuickChipOption;",
        "selectAccountTypeTimeout",
        "selectApplicationTimeout",
        "terminalCapabilitiesOverride",
        "terminalTime",
        "transactionType",
        "Lcom/stripe/bbpos/sdk/TransactionType;",
        "build",
        "(Ljava/lang/Integer;)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;",
        "sdk-protos_release"
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
.field public amount:Ljava/lang/String;

.field public checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

.field public checkCardTimeout:I

.field public contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

.field public currencyCode:I

.field public currencyExponent:I

.field public disableQuickChip:Z

.field public domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

.field public forcePinEntry:Z

.field public isAccessiblePinPad:Z

.field public isMerchantChoiceRouting:Z

.field public onlineProcessTimeout:I

.field public pinEntryTimeout:Ljava/lang/Integer;

.field public quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

.field public selectAccountTypeTimeout:I

.field public selectApplicationTimeout:I

.field public terminalCapabilitiesOverride:Ljava/lang/String;

.field public terminalTime:Ljava/lang/String;

.field public transactionType:Lcom/stripe/bbpos/sdk/TransactionType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 307
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 309
    sget-object v0, Lcom/stripe/bbpos/sdk/TransactionType;->TRANSACTION_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/TransactionType;

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    .line 312
    sget-object v0, Lcom/stripe/bbpos/sdk/CheckCardMode;->CHECK_CARD_MODE_UNKNOWN:Lcom/stripe/bbpos/sdk/CheckCardMode;

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    .line 321
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->amount:Ljava/lang/String;

    .line 339
    iput-object v0, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->terminalTime:Ljava/lang/String;

    .line 342
    sget-object v0, Lcom/stripe/bbpos/sdk/QuickChipOption;->QUICK_CHIP_OPTION_UNKNOWN:Lcom/stripe/bbpos/sdk/QuickChipOption;

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    return-void
.end method


# virtual methods
.method public final amount(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->amount:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->build()Lcom/stripe/bbpos/sdk/StartEmvRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/StartEmvRequest;
    .locals 23

    move-object/from16 v0, p0

    .line 460
    new-instance v1, Lcom/stripe/bbpos/sdk/StartEmvRequest;

    .line 461
    iget-object v2, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    .line 462
    iget-object v3, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    .line 463
    iget v4, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->currencyCode:I

    .line 464
    iget v5, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->currencyExponent:I

    .line 465
    iget-object v6, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->amount:Ljava/lang/String;

    .line 466
    iget-boolean v7, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->disableQuickChip:Z

    .line 467
    iget v8, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->checkCardTimeout:I

    .line 468
    iget v9, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->selectApplicationTimeout:I

    .line 469
    iget v10, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->selectAccountTypeTimeout:I

    .line 470
    iget v11, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->onlineProcessTimeout:I

    .line 471
    iget-object v12, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->terminalTime:Ljava/lang/String;

    .line 472
    iget-object v13, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    .line 473
    iget-boolean v14, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->isMerchantChoiceRouting:Z

    .line 474
    iget-object v15, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->terminalCapabilitiesOverride:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 475
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    move-object/from16 v17, v1

    .line 476
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    move-object/from16 v18, v1

    .line 477
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->forcePinEntry:Z

    move/from16 v19, v1

    .line 478
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->isAccessiblePinPad:Z

    move/from16 v20, v1

    .line 479
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->pinEntryTimeout:Ljava/lang/Integer;

    .line 480
    invoke-virtual {v0}, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v21

    move/from16 v22, v20

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v22

    .line 460
    invoke-direct/range {v1 .. v21}, Lcom/stripe/bbpos/sdk/StartEmvRequest;-><init>(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final checkCardMode(Lcom/stripe/bbpos/sdk/CheckCardMode;)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 1

    const-string v0, "checkCardMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p0
.end method

.method public final checkCardTimeout(I)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 0

    .line 396
    iput p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->checkCardTimeout:I

    return-object p0
.end method

.method public final contactlessOnlinePinOption(Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    return-object p0
.end method

.method public final currencyCode(I)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 0

    .line 376
    iput p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->currencyCode:I

    return-object p0
.end method

.method public final currencyExponent(I)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 0

    .line 381
    iput p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->currencyExponent:I

    return-object p0
.end method

.method public final disableQuickChip(Z)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 0

    .line 391
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->disableQuickChip:Z

    return-object p0
.end method

.method public final domesticDebitPriority(Lcom/stripe/bbpos/sdk/DomesticDebitPriority;)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    return-object p0
.end method

.method public final forcePinEntry(Z)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 0

    .line 446
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->forcePinEntry:Z

    return-object p0
.end method

.method public final isAccessiblePinPad(Z)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 0

    .line 451
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->isAccessiblePinPad:Z

    return-object p0
.end method

.method public final isMerchantChoiceRouting(Z)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 0

    .line 426
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->isMerchantChoiceRouting:Z

    return-object p0
.end method

.method public final onlineProcessTimeout(I)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 0

    .line 411
    iput p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->onlineProcessTimeout:I

    return-object p0
.end method

.method public final pinEntryTimeout(Ljava/lang/Integer;)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->pinEntryTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public final quickChipOption(Lcom/stripe/bbpos/sdk/QuickChipOption;)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 1

    const-string v0, "quickChipOption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    return-object p0
.end method

.method public final selectAccountTypeTimeout(I)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 0

    .line 406
    iput p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->selectAccountTypeTimeout:I

    return-object p0
.end method

.method public final selectApplicationTimeout(I)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 0

    .line 401
    iput p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->selectApplicationTimeout:I

    return-object p0
.end method

.method public final terminalCapabilitiesOverride(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->terminalCapabilitiesOverride:Ljava/lang/String;

    return-object p0
.end method

.method public final terminalTime(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 1

    const-string v0, "terminalTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->terminalTime:Ljava/lang/String;

    return-object p0
.end method

.method public final transactionType(Lcom/stripe/bbpos/sdk/TransactionType;)Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;
    .locals 1

    const-string v0, "transactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartEmvRequest$Builder;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    return-object p0
.end method
