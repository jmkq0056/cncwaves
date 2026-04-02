.class public abstract Lcom/stripe/offlinemode/dagger/OfflineForwardingModule;
.super Ljava/lang/Object;
.source "OfflineForwardingModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\'J\u0015\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH!\u00a2\u0006\u0002\u0008\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\'J\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H!\u00a2\u0006\u0002\u0008\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\'\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/offlinemode/dagger/OfflineForwardingModule;",
        "",
        "()V",
        "bindForwardingDelayCalculator",
        "Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;",
        "defaultOfflineForwardingDelayCalculator",
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;",
        "bindOfflineApiClient",
        "Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;",
        "defaultOfflineForwardingApiClient",
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;",
        "bindOfflineApiClient$offlinemode_release",
        "bindOfflineConnectionService",
        "Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;",
        "defaultOfflineConnectionService",
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;",
        "bindOfflineCredentialsProvider",
        "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;",
        "offlineCredentialsProviderProxy",
        "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;",
        "bindOfflineCredentialsProvider$offlinemode_release",
        "bindOfflinePaymentService",
        "Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;",
        "defaultOfflinePaymentService",
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;",
        "Companion",
        "offlinemode_release"
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
.field public static final Companion:Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule;->Companion:Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindForwardingDelayCalculator(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;)Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindOfflineApiClient$offlinemode_release(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;)Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindOfflineConnectionService(Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;)Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindOfflineCredentialsProvider$offlinemode_release(Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;)Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;
    .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
    .end annotation

    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindOfflinePaymentService(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;)Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
