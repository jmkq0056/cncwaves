.class public final Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider;
.super Ljava/lang/Object;
.source "DefaultApplicationInformationProvider.kt"

# interfaces
.implements Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\u0007H\u0016R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider;",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "lazySdkApplicationInformationFactory",
        "Ldagger/Lazy;",
        "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;",
        "(Ldagger/Lazy;)V",
        "sdkApplicationInformation",
        "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "getSdkApplicationInformation",
        "()Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "sdkApplicationInformation$delegate",
        "Lkotlin/Lazy;",
        "get",
        "sdkmanager_publish"
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
.field private final sdkApplicationInformation$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lazySdkApplicationInformationFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider$sdkApplicationInformation$2;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider$sdkApplicationInformation$2;-><init>(Ldagger/Lazy;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider;->sdkApplicationInformation$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getSdkApplicationInformation()Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider;->sdkApplicationInformation$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/terminal/appinfo/ApplicationInformation;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider;->getSdkApplicationInformation()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    return-object v0
.end method
