.class public final Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;
.super Ljava/lang/Object;
.source "SuccessOrderFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ \u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;",
        "",
        "<init>",
        "()V",
        "printReceipt",
        "",
        "usbDriver",
        "Lcom/example/digitalkiosk/msprintsdk/UsbDriver;",
        "order",
        "Lcom/example/digitalkiosk/models/Order;",
        "addReceiptItem",
        "name",
        "",
        "amount",
        "",
        "addSpacing",
        "data",
        "totalLength",
        "",
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
.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;-><init>()V

    return-void
.end method

.method private final addReceiptItem(Ljava/lang/String;FLcom/example/digitalkiosk/msprintsdk/UsbDriver;)V
    .locals 3

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 506
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v2, 0xf

    if-gt p1, v2, :cond_0

    .line 507
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 508
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v2, 0x19

    if-gt p1, v2, :cond_1

    .line 509
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 510
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v0, 0x23

    if-gt p1, v0, :cond_2

    .line 511
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 512
    :cond_2
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.2f"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;->addSpacing(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    return-void
.end method

.method private final addSpacing(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p2, v0

    .line 520
    const-string v0, ""

    const/4 v1, 0x1

    if-gt v1, p2, :cond_0

    .line 521
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eq v1, p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final printReceipt(Lcom/example/digitalkiosk/msprintsdk/UsbDriver;Lcom/example/digitalkiosk/models/Order;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "usbDriver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "order"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Printed Order "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/Order;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PrinterTest"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v2, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v5, "receipt_title"

    invoke-virtual {v2, v5}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v2}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 203
    :cond_0
    const-string v2, "receipt"

    .line 205
    :goto_0
    sget-object v5, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v6, "receipt_takeaway"

    invoke-virtual {v5, v6}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 207
    invoke-virtual {v5}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 206
    :cond_1
    const-string v5, "Take Away"

    .line 208
    :goto_1
    sget-object v6, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v7, "receipt_dine_in"

    invoke-virtual {v6, v7}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 210
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 209
    :cond_2
    const-string v6, "Dine In"

    .line 211
    :goto_2
    sget-object v7, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v8, "receipt_pickup"

    invoke-virtual {v7, v8}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 213
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 212
    :cond_3
    const-string v7, "Pick Up"

    .line 214
    :goto_3
    sget-object v8, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v9, "pickup_phone_number_receipt"

    invoke-virtual {v8, v9}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 216
    invoke-virtual {v8}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 215
    :cond_4
    const-string v8, "Phone Number"

    .line 217
    :goto_4
    sget-object v9, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v10, "receipt_order_type"

    invoke-virtual {v9, v10}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 219
    invoke-virtual {v9}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 218
    :cond_5
    const-string v9, "Order Type"

    .line 220
    :goto_5
    sget-object v10, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v11, "receipt_kiosk_id"

    invoke-virtual {v10, v11}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 222
    invoke-virtual {v10}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    .line 221
    :cond_6
    const-string v10, "Kiosk ID"

    .line 223
    :goto_6
    sget-object v11, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v12, "receipt_table_number"

    invoke-virtual {v11, v12}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 225
    invoke-virtual {v11}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    .line 224
    :cond_7
    const-string v11, "Table Number"

    .line 226
    :goto_7
    sget-object v12, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v13, "receipt_pickup_time"

    invoke-virtual {v12, v13}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 228
    invoke-virtual {v12}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    .line 227
    :cond_8
    const-string v12, "Pickup Time"

    .line 229
    :goto_8
    sget-object v13, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v14, "receipt_items"

    invoke-virtual {v13, v14}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 231
    invoke-virtual {v13}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    .line 230
    :cond_9
    const-string v13, "Items"

    .line 232
    :goto_9
    sget-object v14, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v15, "receipt_total"

    invoke-virtual {v14, v15}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 234
    invoke-virtual {v14}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v14

    goto :goto_a

    .line 233
    :cond_a
    const-string v14, "Total"

    .line 235
    :goto_a
    sget-object v15, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v3, "receipt_items_total"

    invoke-virtual {v15, v3}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 237
    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 236
    :cond_b
    const-string v3, "Items Total (Including Tax)"

    .line 238
    :goto_b
    sget-object v15, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    move-object/from16 v16, v5

    const-string v5, "receipt_card_fees"

    invoke-virtual {v15, v5}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 240
    invoke-virtual {v5}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    .line 239
    :cond_c
    const-string v5, "Card Fees"

    .line 242
    :goto_c
    sget-object v15, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    move-object/from16 v17, v6

    const-string v6, "receipt_discount_voucher"

    invoke-virtual {v15, v6}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 244
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 243
    :cond_d
    const-string v6, "Discount Voucher"

    .line 245
    :goto_d
    sget-object v15, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    move-object/from16 v18, v7

    const-string v7, "receipt_tax"

    invoke-virtual {v15, v7}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 247
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v7

    goto :goto_e

    .line 246
    :cond_e
    const-string v7, "Tax"

    .line 248
    :goto_e
    sget-object v15, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    move-object/from16 v19, v4

    const-string v4, "receipt_tax_amount"

    invoke-virtual {v15, v4}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 250
    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    .line 249
    :cond_f
    const-string v4, "Amount"

    .line 251
    :goto_f
    sget-object v15, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    move-object/from16 v20, v4

    const-string v4, "receipt_tax_included"

    invoke-virtual {v15, v4}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 253
    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    .line 252
    :cond_10
    const-string v4, "Incl. Tax"

    .line 255
    :goto_10
    invoke-virtual {v1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->usbDriverCheck()I

    move-result v15

    move-object/from16 v21, v4

    const/4 v4, -0x1

    move-object/from16 v22, v7

    const/4 v7, 0x1

    if-eq v15, v4, :cond_11

    if-eq v15, v7, :cond_11

    .line 257
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetClean()[B

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 258
    invoke-static {v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 259
    invoke-virtual {v1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->closeUsbDevice()V

    .line 261
    :cond_11
    invoke-virtual {v1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->usbDriverCheck()I

    move-result v15

    if-eq v15, v4, :cond_2b

    if-eq v15, v7, :cond_2b

    .line 263
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetClean()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    const/4 v4, 0x4

    .line 265
    invoke-static {v4}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 266
    invoke-static {v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetAlignment(I)[B

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 267
    invoke-static {v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetBold(I)[B

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    const/4 v15, 0x5

    move/from16 v23, v4

    .line 268
    invoke-static {v15, v15}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetSizetext(II)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getOrder_number()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x0

    invoke-static {v4, v15}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 272
    invoke-static/range {v23 .. v23}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 273
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetClean()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 275
    invoke-static {v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetAlignment(I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    move/from16 v24, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getCafe_name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v15, 0x2c

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v6

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getCafe_address()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 280
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getCafe_zipcode()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x20

    if-eqz v4, :cond_12

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getCafe_zipcode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getCafe_city()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v15, 0x2c

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_11

    .line 283
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getCafe_city()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    :goto_11
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 285
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getCafe_vat()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "VAT "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getCafe_vat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 290
    :cond_13
    invoke-static/range {v23 .. v23}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    const/4 v4, 0x2

    .line 291
    invoke-static {v4, v4}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetSizetext(II)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 296
    invoke-static {v4}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 297
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetClean()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 300
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getOrder_type()Ljava/lang/String;

    move-result-object v2

    const-string v6, "dine-in"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "pick-up"

    if-eqz v2, :cond_14

    move-object/from16 v2, v17

    goto :goto_12

    .line 302
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getOrder_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v2, v18

    goto :goto_12

    :cond_15
    move-object/from16 v2, v16

    .line 305
    :goto_12
    new-instance v15, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ": "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getKiosk_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getFormatted_date()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 311
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getOrder_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getDinein_table()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getDinein_table()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 315
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getOrder_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getPickup_time()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getPickup_time()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 319
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getOrder_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getPickup_number()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getPickup_number()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 323
    :cond_18
    invoke-static/range {v24 .. v24}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    const/4 v2, 0x3

    .line 328
    new-array v4, v2, [B

    fill-array-data v4, :array_0

    .line 329
    invoke-static {v4, v2}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetHTseat([BI)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v4, v24

    invoke-static {v2, v4}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 332
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 333
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 334
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "   "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 337
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v4, "iterator(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, "next(...)"

    if-eqz v6, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/example/digitalkiosk/models/OrderItem;

    .line 338
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/OrderItem;->getName()Ljava/lang/String;

    move-result-object v9

    .line 339
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/OrderItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_1a

    .line 340
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/OrderItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 341
    :cond_1a
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/OrderItem;->getSubtotal()F

    move-result v10

    invoke-direct {v0, v9, v10, v1}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;->addReceiptItem(Ljava/lang/String;FLcom/example/digitalkiosk/msprintsdk/UsbDriver;)V

    .line 342
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/OrderItem;->getSub_items()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_19

    .line 343
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/OrderItem;->getSub_items()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lcom/example/digitalkiosk/models/OrderItem;

    .line 344
    invoke-virtual {v9}, Lcom/example/digitalkiosk/models/OrderItem;->getSubtotal()F

    move-result v10

    cmpg-float v10, v10, v7

    if-nez v10, :cond_1b

    .line 346
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "    "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/example/digitalkiosk/models/OrderItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/example/digitalkiosk/models/OrderItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 347
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 349
    invoke-static {v9, v10}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v9

    .line 348
    invoke-virtual {v1, v9}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    goto :goto_13

    .line 355
    :cond_1b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/example/digitalkiosk/models/OrderItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/example/digitalkiosk/models/OrderItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 356
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "    "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/example/digitalkiosk/models/OrderItem;->getSubtotal()F

    move-result v9

    invoke-direct {v0, v10, v9, v1}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;->addReceiptItem(Ljava/lang/String;FLcom/example/digitalkiosk/msprintsdk/UsbDriver;)V

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_13

    :cond_1c
    const/16 v24, 0x1

    .line 361
    invoke-static/range {v24 .. v24}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 362
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getAmount()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getCard_fee()F

    move-result v6

    sub-float/2addr v2, v6

    invoke-direct {v0, v3, v2, v1}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;->addReceiptItem(Ljava/lang/String;FLcom/example/digitalkiosk/msprintsdk/UsbDriver;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getCard_fee()F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1d

    .line 365
    invoke-static/range {v24 .. v24}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 366
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getCard_fee()F

    move-result v2

    invoke-direct {v0, v5, v2, v1}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;->addReceiptItem(Ljava/lang/String;FLcom/example/digitalkiosk/msprintsdk/UsbDriver;)V

    .line 369
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getVoucher_name()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 370
    invoke-static/range {v24 .. v24}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v25

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v11, 0x20

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getVoucher_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getVoucher_discount_amount()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 371
    invoke-direct {v0, v2, v3, v1}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;->addReceiptItem(Ljava/lang/String;FLcom/example/digitalkiosk/msprintsdk/UsbDriver;)V

    :cond_1e
    const/16 v24, 0x1

    .line 378
    invoke-static/range {v24 .. v24}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 379
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v22

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    invoke-direct {v0, v3, v5}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;->addSpacing(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 382
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    invoke-direct {v0, v6, v5}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;->addSpacing(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 385
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7, v5}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;->addSpacing(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 391
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 392
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getTax_percent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v7, "%.2f"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "format(...)"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2, v5}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;->addSpacing(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 395
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 396
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getAmount()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getCard_fee()F

    move-result v10

    sub-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2, v5}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;->addSpacing(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 399
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 400
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getTax()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2, v5}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;->addSpacing(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    invoke-static {v2, v10}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 403
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v2

    if-eqz v2, :cond_27

    const/4 v2, 0x6

    .line 404
    invoke-static {v2}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    invoke-static {v2, v10}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_address1()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 409
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_address2()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_address2()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    invoke-static {v2, v10}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 414
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_postal_code()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_postal_code()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_20
    move-object v2, v3

    .line 416
    :goto_14
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_state()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_22

    .line 417
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    .line 418
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v11, 0x20

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    :cond_21
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_state()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 421
    :cond_22
    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_city()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_24

    .line 422
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v11, 0x20

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 424
    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/StripeDetails;->getLocation_city()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    invoke-static {v2, v10}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    const/4 v3, 0x1

    .line 428
    invoke-static {v3}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    const/4 v2, 0x2

    .line 431
    new-array v10, v2, [B

    fill-array-data v10, :array_1

    .line 432
    invoke-static {v10, v2}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetHTseat([BI)[B

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/example/digitalkiosk/models/StripeDetails;->getDate()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 435
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0xc

    if-gt v2, v3, :cond_25

    .line 436
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 437
    :cond_25
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/StripeDetails;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v5}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;->addSpacing(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    invoke-static {v2, v10}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    const/4 v3, 0x1

    .line 440
    invoke-static {v3}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 443
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/MainActivity$Companion;->getCurrency()Lcom/example/digitalkiosk/models/Currency;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_26
    const/4 v3, 0x0

    :goto_15
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 446
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintNextHT()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 448
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getAmount()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2, v5}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;->addSpacing(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    const/16 v16, 0x2

    .line 451
    invoke-static/range {v16 .. v16}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/StripeDetails;->getCard_brand()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/StripeDetails;->getRead_method()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "XXXX XXXX XXXX "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/example/digitalkiosk/models/Order;->getStripe_details()Lcom/example/digitalkiosk/models/StripeDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/example/digitalkiosk/models/StripeDetails;->getLast4()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    goto :goto_16

    :cond_27
    const/4 v7, 0x0

    :goto_16
    const/16 v16, 0x2

    .line 460
    invoke-static/range {v16 .. v16}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    const/16 v24, 0x1

    .line 461
    invoke-static/range {v24 .. v24}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetAlignment(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 463
    const-string v2, "--------------------------------------------"

    invoke-static {v2, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 464
    sget-object v2, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/MainActivity$Companion;->getPrintLines()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_28
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/example/digitalkiosk/models/PrinterLine;

    .line 465
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetClean()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/PrinterLine;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/PrinterLine;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "text"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const/16 v24, 0x1

    .line 468
    invoke-static/range {v24 .. v24}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetAlignment(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 469
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    goto :goto_17

    :cond_29
    const/4 v7, 0x0

    const/16 v24, 0x1

    .line 470
    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/PrinterLine;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v5, "qr"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 471
    invoke-static/range {v24 .. v24}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 472
    invoke-static {v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetLinespace(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 473
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->unicodeToUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    const/4 v5, 0x5

    invoke-static {v3, v4, v5, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintQrcode(Ljava/lang/String;III)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 476
    const-string v3, "                                            "

    invoke-static {v3, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 477
    invoke-static {v3, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 478
    invoke-static {v3, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 479
    invoke-static {v3, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 480
    invoke-static {v3, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 481
    invoke-static {v3, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 482
    invoke-static {v3, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 483
    invoke-static {v3, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 484
    invoke-static {v3, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 485
    invoke-static {v3, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    const/16 v24, 0x1

    .line 486
    invoke-static/range {v24 .. v24}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    goto/16 :goto_17

    :cond_2a
    const/16 v16, 0x2

    const/16 v24, 0x1

    .line 489
    invoke-static/range {v16 .. v16}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 490
    invoke-static {}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetClean()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 491
    invoke-static/range {v24 .. v24}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetAlignment(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 493
    const-string v2, "--------------------------------------------"

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintString(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    const/16 v2, 0xa

    .line 495
    invoke-static {v2}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintFeedline(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 496
    invoke-static {v7}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintCutpaper(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([B)I

    .line 498
    invoke-virtual {v1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->closeUsbDevice()V

    .line 499
    const-string v1, "Print Completed"

    move-object/from16 v2, v19

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void

    :array_0
    .array-data 1
        0xft
        0x19t
        0x23t
    .end array-data

    :array_1
    .array-data 1
        0xct
        0x14t
    .end array-data
.end method
