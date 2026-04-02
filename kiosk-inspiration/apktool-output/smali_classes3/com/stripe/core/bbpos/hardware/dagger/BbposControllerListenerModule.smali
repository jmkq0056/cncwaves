.class public final Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule;
.super Ljava/lang/Object;
.source "BbposControllerListenerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0008\u0001\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule;",
        "",
        "()V",
        "provideBbposControllerListenerFactory",
        "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;",
        "readerStatusListener",
        "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
        "configurationListener",
        "Lcom/stripe/hardware/emv/ConfigurationListener;",
        "bbposReaderInfoFactory",
        "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
        "debugLogsShouldBeSentToSplunk",
        "Ljavax/inject/Provider;",
        "",
        "hardware_release"
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
.field public static final INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule;-><init>()V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule;->INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideBbposControllerListenerFactory(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/emv/ConfigurationListener;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;
    .locals 1
    .param p4    # Ljavax/inject/Provider;
        .annotation runtime Lcom/stripe/core/featureflag/dagger/DebugLogsShouldBeSentToSplunk;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            "Lcom/stripe/hardware/emv/ConfigurationListener;",
            "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;"
        }
    .end annotation

    const-string v0, "readerStatusListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bbposReaderInfoFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugLogsShouldBeSentToSplunk"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;-><init>(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/emv/ConfigurationListener;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Ljavax/inject/Provider;)V

    return-object v0
.end method
