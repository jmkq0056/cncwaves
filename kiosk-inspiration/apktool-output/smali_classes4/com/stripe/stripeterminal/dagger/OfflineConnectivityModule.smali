.class public interface abstract Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule;
.super Ljava/lang/Object;
.source "OfflineConnectivityModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008a\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\'\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000b\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule;",
        "",
        "bindStripeConnectivityRepository",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
        "defaultStripeConnectivityRepository",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;",
        "bindStripeNetworkHealthChecker",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;",
        "defaultStripeNetworkHealthChecker",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;->$$INSTANCE:Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;

    sput-object v0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule;->Companion:Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;

    return-void
.end method


# virtual methods
.method public abstract bindStripeConnectivityRepository(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindStripeNetworkHealthChecker(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
