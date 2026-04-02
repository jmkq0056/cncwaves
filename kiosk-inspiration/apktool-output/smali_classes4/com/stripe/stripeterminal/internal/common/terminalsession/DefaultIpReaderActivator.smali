.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;
.super Ljava/lang/Object;
.source "DefaultIpReaderActivator.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;",
        "backgroundReaderActivator",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;)V",
        "activateReader",
        "",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "(Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "terminalsession_release"
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
.field private final backgroundReaderActivator:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;)V
    .locals 1

    const-string v0, "backgroundReaderActivator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;->backgroundReaderActivator:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;

    return-void
.end method


# virtual methods
.method public activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 12
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;->backgroundReaderActivator:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;

    .line 15
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator$activateReader$2;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator$activateReader$2;-><init>()V

    .line 14
    new-instance v1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;

    const/4 v2, 0x1

    .line 15
    check-cast v0, Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;

    .line 14
    invoke-direct {v1, v2, v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;-><init>(ZLcom/stripe/stripeterminal/external/callable/InternetReaderListener;)V

    check-cast v1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    .line 12
    invoke-virtual {p2, p1, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->activateInBackground(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;

    .line 19
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
