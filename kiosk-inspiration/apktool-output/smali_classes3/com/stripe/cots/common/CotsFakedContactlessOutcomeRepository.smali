.class public final Lcom/stripe/cots/common/CotsFakedContactlessOutcomeRepository;
.super Ljava/lang/Object;
.source "CotsFakedContactlessOutcomeRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/cots/common/CotsFakedContactlessOutcomeRepository;",
        "",
        "()V",
        "selectedOutcome",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
        "getSelectedOutcome",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "common_release"
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
.field public static final INSTANCE:Lcom/stripe/cots/common/CotsFakedContactlessOutcomeRepository;

.field private static final selectedOutcome:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/cots/common/CotsFakedContactlessOutcomeRepository;

    invoke-direct {v0}, Lcom/stripe/cots/common/CotsFakedContactlessOutcomeRepository;-><init>()V

    sput-object v0, Lcom/stripe/cots/common/CotsFakedContactlessOutcomeRepository;->INSTANCE:Lcom/stripe/cots/common/CotsFakedContactlessOutcomeRepository;

    .line 13
    sget-object v0, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->VISA:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lcom/stripe/cots/common/CotsFakedContactlessOutcomeRepository;->selectedOutcome:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSelectedOutcome()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
            ">;"
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/stripe/cots/common/CotsFakedContactlessOutcomeRepository;->selectedOutcome:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method
