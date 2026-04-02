.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1$2;
.super Ljava/lang/Object;
.source "BbposAdapter.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/core/hardware/Optional;",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "it",
        "apply"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1$2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1$2<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1$2;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1$2;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1$2;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/stripe/hardware/status/ReaderInfo;)Lcom/stripe/core/hardware/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ")",
            "Lcom/stripe/core/hardware/Optional<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    sget-object v0, Lcom/stripe/core/hardware/Optional;->Companion:Lcom/stripe/core/hardware/Optional$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/core/hardware/Optional$Companion;->of(Ljava/lang/Object;)Lcom/stripe/core/hardware/Optional$Present;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/hardware/Optional;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1055
    check-cast p1, Lcom/stripe/hardware/status/ReaderInfo;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1$2;->apply(Lcom/stripe/hardware/status/ReaderInfo;)Lcom/stripe/core/hardware/Optional;

    move-result-object p1

    return-object p1
.end method
