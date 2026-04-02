.class public final Lcom/example/digitalkiosk/PrinterService$Companion;
.super Ljava/lang/Object;
.source "PrinterService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/PrinterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0005\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/example/digitalkiosk/PrinterService$Companion;",
        "",
        "<init>",
        "()V",
        "printReceipt",
        "",
        "order",
        "Lcom/example/digitalkiosk/models/Order;",
        "environmentFriendlyPrint",
        "testPrint",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$NXZoMdjPe-I5QJG1O921ZtoGasA(Lcom/dantsu/escposprinter/EscPosPrinter;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/PrinterService$Companion;->printReceipt$lambda$0(Lcom/dantsu/escposprinter/EscPosPrinter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S0wdWZ39sUoB_m70FSADH8IigOk(Lcom/dantsu/escposprinter/EscPosPrinter;)V
    .locals 0

    invoke-static {p0}, Lcom/example/digitalkiosk/PrinterService$Companion;->testPrint$lambda$2(Lcom/dantsu/escposprinter/EscPosPrinter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Fe8rFlB8V0LdsxAWQkhydIQm5g(Lcom/dantsu/escposprinter/EscPosPrinter;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/PrinterService$Companion;->environmentFriendlyPrint$lambda$1(Lcom/dantsu/escposprinter/EscPosPrinter;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/digitalkiosk/PrinterService$Companion;-><init>()V

    return-void
.end method

.method private static final environmentFriendlyPrint$lambda$1(Lcom/dantsu/escposprinter/EscPosPrinter;Ljava/lang/String;)V
    .locals 2

    .line 220
    invoke-virtual {p0, p1}, Lcom/dantsu/escposprinter/EscPosPrinter;->printFormattedText(Ljava/lang/String;)Lcom/dantsu/escposprinter/EscPosPrinter;

    const-wide/16 v0, 0xc8

    .line 221
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 222
    const-string p1, ""

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, p1, v0}, Lcom/dantsu/escposprinter/EscPosPrinter;->printFormattedTextAndCut(Ljava/lang/String;F)Lcom/dantsu/escposprinter/EscPosPrinter;

    .line 223
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/EscPosPrinter;->disconnectPrinter()Lcom/dantsu/escposprinter/EscPosPrinter;

    .line 224
    sget-object p0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {p0}, Lcom/example/digitalkiosk/MainActivity$Companion;->checkPrinterPaperStatus()V

    return-void
.end method

.method private static final printReceipt$lambda$0(Lcom/dantsu/escposprinter/EscPosPrinter;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 2

    .line 206
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dantsu/escposprinter/EscPosPrinter;->printFormattedText(Ljava/lang/String;)Lcom/dantsu/escposprinter/EscPosPrinter;

    const-wide/16 v0, 0xc8

    .line 207
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 208
    const-string p1, ""

    const/high16 v0, 0x420c0000    # 35.0f

    invoke-virtual {p0, p1, v0}, Lcom/dantsu/escposprinter/EscPosPrinter;->printFormattedTextAndCut(Ljava/lang/String;F)Lcom/dantsu/escposprinter/EscPosPrinter;

    .line 209
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/EscPosPrinter;->disconnectPrinter()Lcom/dantsu/escposprinter/EscPosPrinter;

    .line 210
    sget-object p0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {p0}, Lcom/example/digitalkiosk/MainActivity$Companion;->checkPrinterPaperStatus()V

    return-void
.end method

.method private static final testPrint$lambda$2(Lcom/dantsu/escposprinter/EscPosPrinter;)V
    .locals 2

    .line 233
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->getPrinterCodepage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dantsu/escposprinter/EscPosPrinter;->printCharsetEncodingCharacters(I)Lcom/dantsu/escposprinter/EscPosPrinter;

    const-wide/16 v0, 0xc8

    .line 234
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 235
    const-string v0, ""

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v0, v1}, Lcom/dantsu/escposprinter/EscPosPrinter;->printFormattedTextAndCut(Ljava/lang/String;F)Lcom/dantsu/escposprinter/EscPosPrinter;

    .line 236
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/EscPosPrinter;->disconnectPrinter()Lcom/dantsu/escposprinter/EscPosPrinter;

    .line 237
    sget-object p0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {p0}, Lcom/example/digitalkiosk/MainActivity$Companion;->checkPrinterPaperStatus()V

    return-void
.end method


# virtual methods
.method public final environmentFriendlyPrint(Lcom/example/digitalkiosk/models/Order;)V
    .locals 3

    const-string v0, "order"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->connectPrinter()Lcom/dantsu/escposprinter/EscPosPrinter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n\n\n\n[C]<b><font size=\'big\'>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Order;->getOrder_number()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "</font></b>\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 219
    new-instance v1, Ljava/lang/Thread;

    .line 225
    new-instance v2, Lcom/example/digitalkiosk/PrinterService$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/example/digitalkiosk/PrinterService$Companion$$ExternalSyntheticLambda1;-><init>(Lcom/dantsu/escposprinter/EscPosPrinter;Ljava/lang/String;)V

    .line 219
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 225
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final printReceipt(Lcom/example/digitalkiosk/models/Order;)V
    .locals 26

    const-string v0, "order"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->connectPrinter()Lcom/dantsu/escposprinter/EscPosPrinter;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 43
    sget-object v2, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v3, "receipt_title"

    invoke-virtual {v2, v3}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v2}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 44
    :cond_0
    const-string v2, "receipt"

    .line 46
    :goto_0
    sget-object v3, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v4, "receipt_takeaway"

    invoke-virtual {v3, v4}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 47
    :cond_1
    const-string v3, "Take Away"

    .line 49
    :goto_1
    sget-object v4, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v5, "receipt_dine_in"

    invoke-virtual {v4, v5}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 51
    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 50
    :cond_2
    const-string v4, "Dine In"

    .line 52
    :goto_2
    sget-object v5, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v6, "receipt_pickup"

    invoke-virtual {v5, v6}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 54
    invoke-virtual {v5}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 53
    :cond_3
    const-string v5, "Pick Up"

    .line 55
    :goto_3
    sget-object v6, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v7, "pickup_phone_number_receipt"

    invoke-virtual {v6, v7}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 57
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 56
    :cond_4
    const-string v6, "Phone Number"

    .line 58
    :goto_4
    sget-object v7, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v8, "receipt_order_type"

    invoke-virtual {v7, v8}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 60
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 59
    :cond_5
    const-string v7, "Order Type"

    .line 61
    :goto_5
    sget-object v8, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v9, "receipt_kiosk_id"

    invoke-virtual {v8, v9}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 63
    invoke-virtual {v8}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 62
    :cond_6
    const-string v8, "Kiosk ID"

    .line 64
    :goto_6
    sget-object v9, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v10, "receipt_table_number"

    invoke-virtual {v9, v10}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 66
    invoke-virtual {v9}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    .line 65
    :cond_7
    const-string v9, "Table Number"

    .line 67
    :goto_7
    sget-object v10, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v11, "receipt_pickup_time"

    invoke-virtual {v10, v11}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 69
    invoke-virtual {v10}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    .line 68
    :cond_8
    const-string v10, "Pickup Time"

    .line 70
    :goto_8
    sget-object v11, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v12, "receipt_items"

    invoke-virtual {v11, v12}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 72
    invoke-virtual {v11}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    .line 71
    :cond_9
    const-string v11, "Items"

    .line 73
    :goto_9
    sget-object v12, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v13, "receipt_total"

    invoke-virtual {v12, v13}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 75
    invoke-virtual {v12}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    .line 74
    :cond_a
    const-string v12, "Total"

    .line 76
    :goto_a
    sget-object v13, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v14, "receipt_items_total"

    invoke-virtual {v13, v14}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 78
    invoke-virtual {v13}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v13

    goto :goto_b

    .line 77
    :cond_b
    const-string v13, "Items Total (Including Tax)"

    .line 79
    :goto_b
    sget-object v14, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v15, "receipt_card_fees"

    invoke-virtual {v14, v15}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 81
    invoke-virtual {v14}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    .line 80
    :cond_c
    const-string v14, "Card Fees"

    .line 83
    :goto_c
    sget-object v15, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v1, "receipt_discount_voucher"

    invoke-virtual {v15, v1}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 85
    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 84
    :cond_d
    const-string v1, "Discount Voucher"

    .line 86
    :goto_d
    sget-object v15, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    move-object/from16 v16, v3

    const-string v3, "receipt_tax"

    invoke-virtual {v15, v3}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 88
    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 87
    :cond_e
    const-string v3, "Tax"

    .line 89
    :goto_e
    sget-object v15, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    move-object/from16 v17, v4

    const-string v4, "receipt_tax_amount"

    invoke-virtual {v15, v4}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 91
    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    .line 90
    :cond_f
    const-string v4, "Amount"

    .line 92
    :goto_f
    sget-object v15, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    move-object/from16 v18, v5

    const-string v5, "receipt_tax_included"

    invoke-virtual {v15, v5}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 94
    invoke-virtual {v5}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    .line 93
    :cond_10
    const-string v5, "Incl. Tax"

    .line 96
    :goto_10
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v19, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v20, v5

    const-string v5, "\n\n\n\n[C]<b><font size=\'big-2\'>"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getOrder_number()I

    move-result v5

    .line 96
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string v5, "</font></b>\n\n\n\n\n[C]"

    .line 96
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getCafe_name()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    const-string v5, ",\n[C]"

    .line 96
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getCafe_address()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getCafe_zipcode()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    const-string v0, "[C]"

    move-object/from16 v22, v4

    if-eqz v21, :cond_11

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v3

    iget-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getCafe_zipcode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getCafe_city()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_11

    :cond_11
    move-object/from16 v23, v3

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getCafe_city()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 105
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getCafe_vat()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[C]VAT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getCafe_vat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 108
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n\n\n[C]<font size=\'big\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 109
    const-string v3, "</font>\n\n\n"

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getOrder_type()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dine-in"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "pick-up"

    if-eqz v2, :cond_13

    move-object/from16 v2, v17

    goto :goto_12

    .line 114
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getOrder_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v2, v18

    goto :goto_12

    :cond_14
    move-object/from16 v2, v16

    .line 117
    :goto_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "[L]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n[L]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getKiosk_id()Ljava/lang/String;

    move-result-object v8

    .line 117
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getFormatted_date()Ljava/lang/String;

    move-result-object v8

    .line 117
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getOrder_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getDinein_table()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getDinein_table()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 124
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getOrder_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getPickup_time()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getPickup_time()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 127
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getOrder_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getPickup_number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getPickup_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 131
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[R]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v4, "iterator(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v8, "next(...)"

    const-string v9, "format(...)"

    const-string v11, "%.2f"

    if-eqz v6, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/example/digitalkiosk/models/OrderItem;

    .line 134
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/OrderItem;->getName()Ljava/lang/String;

    move-result-object v12

    .line 135
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/OrderItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_19

    const/16 v17, 0x0

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/OrderItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v10, 0x20

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_13

    :cond_19
    const/16 v17, 0x0

    .line 137
    :goto_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "[L]  "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/OrderItem;->getSubtotal()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v12, 0x1

    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v10, 0xa

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 138
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/OrderItem;->getSub_items()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 139
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/OrderItem;->getSub_items()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/example/digitalkiosk/models/OrderItem;

    .line 140
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/OrderItem;->getSubtotal()F

    move-result v10

    cmpg-float v10, v10, v17

    const-string v12, "[L]    "

    if-nez v10, :cond_1a

    .line 141
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v0

    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/OrderItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/OrderItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v0, v24

    goto :goto_14

    :cond_1a
    move-object/from16 v24, v0

    .line 143
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/OrderItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/OrderItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_1b

    .line 145
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v6

    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/OrderItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v10, 0x20

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_1b
    move-object/from16 v25, v6

    .line 146
    :goto_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/OrderItem;->getSubtotal()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v12, 0x1

    invoke-static {v6, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v11, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v0, v24

    move-object/from16 v6, v25

    goto/16 :goto_14

    :cond_1c
    const/16 v17, 0x0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getAmount()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getCard_fee()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v12, 0x1

    invoke-static {v6, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v11, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getCard_fee()F

    move-result v0

    cmpl-float v0, v0, v17

    const-string v6, "\n"

    if-lez v0, :cond_1d

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getCard_fee()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v12, 0x1

    invoke-static {v7, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 158
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getVoucher_name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getVoucher_name()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getVoucher_discount_amount()Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v12, 0x1

    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 162
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n[L][R]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    const-string v6, "%[R]"

    .line 162
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v6, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getTax_percent()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v12, 0x1

    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getAmount()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getCard_fee()F

    move-result v7

    sub-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getTax()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n\n\n\n\n[L]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_address1()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_address2()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_address2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 173
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_postal_code()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_postal_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_20
    move-object v0, v1

    .line 175
    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_state()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 176
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_state()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_city()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 181
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_city()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n[L]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/StripeDetails;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    const-string v1, "[L][L]"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/StripeDetails;->getTime()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    const-string v1, "[L]\n\n[L]"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    sget-object v1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/MainActivity$Companion;->getCurrency()Lcom/example/digitalkiosk/models/Currency;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_25
    const/4 v1, 0x0

    :goto_17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getAmount()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v12, 0x1

    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    const-string v1, "[L]\n\n\n[L]"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/StripeDetails;->getCard_brand()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/StripeDetails;->getRead_method()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/StripeDetails;->getLast4()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 193
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n[C]--------------------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->getPrintLines()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/example/digitalkiosk/models/PrinterLine;

    .line 196
    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/PrinterLine;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/PrinterLine;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_18

    :cond_27
    move-object/from16 v3, v16

    const/16 v10, 0xa

    .line 198
    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/PrinterLine;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "qr"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n[C]<qrcode size=\'30\'>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/PrinterLine;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</qrcode>\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_28
    move-object/from16 v16, v3

    goto :goto_18

    .line 202
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n[C]--------------------------------------------\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 205
    new-instance v0, Ljava/lang/Thread;

    .line 211
    new-instance v1, Lcom/example/digitalkiosk/PrinterService$Companion$$ExternalSyntheticLambda0;

    move-object/from16 v2, v19

    invoke-direct {v1, v2, v15}, Lcom/example/digitalkiosk/PrinterService$Companion$$ExternalSyntheticLambda0;-><init>(Lcom/dantsu/escposprinter/EscPosPrinter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 205
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2a
    return-void
.end method

.method public final testPrint()V
    .locals 3

    .line 230
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->connectPrinter()Lcom/dantsu/escposprinter/EscPosPrinter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v1, Ljava/lang/Thread;

    .line 238
    new-instance v2, Lcom/example/digitalkiosk/PrinterService$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/example/digitalkiosk/PrinterService$Companion$$ExternalSyntheticLambda2;-><init>(Lcom/dantsu/escposprinter/EscPosPrinter;)V

    .line 232
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 238
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
