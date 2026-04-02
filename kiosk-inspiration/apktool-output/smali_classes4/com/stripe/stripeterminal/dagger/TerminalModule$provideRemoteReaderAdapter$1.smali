.class final synthetic Lcom/stripe/stripeterminal/dagger/TerminalModule$provideRemoteReaderAdapter$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "TerminalModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideRemoteReaderAdapter(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    const-string v5, "getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v4, "getFeatureFlags"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/proto/model/config/ReaderFeatureFlags;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule$provideRemoteReaderAdapter$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 247
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule$provideRemoteReaderAdapter$1;->invoke()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    return-object v0
.end method
