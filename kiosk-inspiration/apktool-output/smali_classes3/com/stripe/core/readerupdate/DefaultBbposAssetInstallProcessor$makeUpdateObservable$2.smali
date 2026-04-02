.class final Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$makeUpdateObservable$2;
.super Ljava/lang/Object;
.source "BbposAssetInstallProcessor.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->makeUpdateObservable(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "test"
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
.field public static final INSTANCE:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$makeUpdateObservable$2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$makeUpdateObservable$2<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$makeUpdateObservable$2;

    invoke-direct {v0}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$makeUpdateObservable$2;-><init>()V

    sput-object v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$makeUpdateObservable$2;->INSTANCE:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$makeUpdateObservable$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    instance-of p1, p1, Ljava/lang/Float;

    return p1
.end method
