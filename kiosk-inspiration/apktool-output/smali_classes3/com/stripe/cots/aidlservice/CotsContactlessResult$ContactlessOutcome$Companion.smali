.class public final Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome$Companion;
.super Ljava/lang/Object;
.source "CotsContactlessResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;
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
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;",
        "fromValue",
        "value",
        "",
        "proto_release"
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

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 363
    :pswitch_1
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->INSECURE_ENVIRONMENT:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 362
    :pswitch_2
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->CARD_READ_TIMED_OUT:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 361
    :pswitch_3
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->PIN_COLLECTED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 360
    :pswitch_4
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->READER_NOT_ACTIVE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 359
    :pswitch_5
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->INVALID_CURRENCY:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 358
    :pswitch_6
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->SEE_PHONE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 357
    :pswitch_7
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->NO_MUTUALLY_SUPPORTED_APPLICATIONS:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 356
    :pswitch_8
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->CANCELED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 355
    :pswitch_9
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->NFC_IS_DISABLED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 354
    :pswitch_a
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->IRRECOVERABLE_ERROR:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 353
    :pswitch_b
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->RECOVERABLE_ERROR:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 352
    :pswitch_c
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->PROCEED_ONLINE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 351
    :pswitch_d
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->DECLINED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 350
    :pswitch_e
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->APPROVED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 349
    :pswitch_f
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ACCESS_NOT_ALLOWED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    .line 348
    :pswitch_10
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->UNKNOWN:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
