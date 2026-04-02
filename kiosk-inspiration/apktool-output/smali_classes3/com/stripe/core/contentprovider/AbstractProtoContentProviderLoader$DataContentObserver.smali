.class public final Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataContentObserver;
.super Landroid/database/ContentObserver;
.source "AbstractProtoContentProviderLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DataContentObserver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataContentObserver;",
        "Landroid/database/ContentObserver;",
        "callback",
        "Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;",
        "(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;)V",
        "onChange",
        "",
        "selfChange",
        "",
        "contentprovider_release"
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
.field private final callback:Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataContentObserver;->this$0:Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 103
    invoke-static {p1, v0, p1}, Lcom/stripe/wrappers/HandlerWrapperKt;->handler$default(Landroid/os/Looper;ILjava/lang/Object;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 102
    iput-object p2, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataContentObserver;->callback:Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 106
    iget-object p1, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataContentObserver;->this$0:Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;

    iget-object v0, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataContentObserver;->callback:Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;

    invoke-virtual {p1, v0}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->notifyChange(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;)V

    return-void
.end method
