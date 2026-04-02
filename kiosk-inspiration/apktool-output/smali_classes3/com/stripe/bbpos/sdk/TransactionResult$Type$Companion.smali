.class public final Lcom/stripe/bbpos/sdk/TransactionResult$Type$Companion;
.super Ljava/lang/Object;
.source "TransactionResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/TransactionResult$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/TransactionResult$Type$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/bbpos/sdk/TransactionResult$Type;",
        "fromValue",
        "value",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/sdk/TransactionResult$Type$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/bbpos/sdk/TransactionResult$Type;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 202
    :pswitch_0
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->TIMEOUT:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 201
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CANCELED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 200
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CARD_SCHEME_NOT_MATCHED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 199
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->ICC_CARD_REMOVED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 198
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->APPLICATION_BLOCKED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 197
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CONDITION_NOT_SATISFIED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 196
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->INVALID_ICC_DATA:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 195
    :pswitch_7
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->NO_EMV_APPS:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 194
    :pswitch_8
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->MISSING_MANDATORY_DATA:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 193
    :pswitch_9
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 192
    :pswitch_a
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->SELECT_APP_FAIL:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 191
    :pswitch_b
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->DEVICE_ERROR:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 190
    :pswitch_c
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CARD_BLOCKED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 189
    :pswitch_d
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->NOT_ICC:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 188
    :pswitch_e
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CAPK_FAIL:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 187
    :pswitch_f
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CANCELED_OR_TIMEOUT:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 186
    :pswitch_10
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->DECLINED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 185
    :pswitch_11
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->TERMINATED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 184
    :pswitch_12
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->APPROVED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 183
    :pswitch_13
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->TRANSACTION_RESULT_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
