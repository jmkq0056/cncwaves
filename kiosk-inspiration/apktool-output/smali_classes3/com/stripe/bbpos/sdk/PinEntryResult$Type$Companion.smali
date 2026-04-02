.class public final Lcom/stripe/bbpos/sdk/PinEntryResult$Type$Companion;
.super Ljava/lang/Object;
.source "PinEntryResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/PinEntryResult$Type;
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
        "Lcom/stripe/bbpos/sdk/PinEntryResult$Type$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;",
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

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/bbpos/sdk/PinEntryResult$Type;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 207
    :pswitch_0
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ICC_REMOVED:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    .line 206
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->INCORRECT_PIN:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    .line 205
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->WRONG_PIN_LENGTH:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    .line 204
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->BYPASS:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    .line 203
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->TIMEOUT:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    .line 202
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->CANCEL:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    .line 201
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ENTERED:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    .line 200
    :pswitch_7
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->PIN_ENTRY_RESULT_UNKNOWN:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
