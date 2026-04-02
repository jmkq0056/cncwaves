.class final Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$3;
.super Ljava/lang/Object;
.source "BbposAssetInstallProcessor.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->startSession(Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "",
        "it",
        "Lcom/stripe/hardware/status/ReaderException;",
        "apply-IoAF18A",
        "(Lcom/stripe/hardware/status/ReaderException;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$3<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$3;

    invoke-direct {v0}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$3;-><init>()V

    sput-object v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$3;->INSTANCE:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$3;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 278
    check-cast p1, Lcom/stripe/hardware/status/ReaderException;

    invoke-virtual {p0, p1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$3;->apply-IoAF18A(Lcom/stripe/hardware/status/ReaderException;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

.method public final apply-IoAF18A(Lcom/stripe/hardware/status/ReaderException;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
