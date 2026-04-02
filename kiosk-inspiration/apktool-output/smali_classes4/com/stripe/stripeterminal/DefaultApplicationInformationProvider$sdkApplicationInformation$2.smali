.class final Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider$sdkApplicationInformation$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultApplicationInformationProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider;-><init>(Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $lazySdkApplicationInformationFactory:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider$sdkApplicationInformation$2;->$lazySdkApplicationInformationFactory:Ldagger/Lazy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider$sdkApplicationInformation$2;->$lazySdkApplicationInformationFactory:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;->create()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider$sdkApplicationInformation$2;->invoke()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    return-object v0
.end method
