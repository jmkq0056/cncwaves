.class public final Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;
.super Ljava/lang/Object;
.source "FeatureFlagModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/core/featureflag/dagger/FeatureFlagModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/featureflag/dagger/FeatureFlagModule$Bindings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;",
        "",
        "()V",
        "providesDebugLogsShouldBeSentToSplunkFeatureFlag",
        "",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "providesObservabilityFeatureFlags",
        "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
        "providesReaderFeatureFlags",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "providesTtpAutoReconnectEnabledFeatureFlag",
        "Bindings",
        "featureflag_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final providesDebugLogsShouldBeSentToSplunkFeatureFlag(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)Z
    .locals 1
    .annotation runtime Lcom/stripe/core/featureflag/dagger/DebugLogsShouldBeSentToSplunk;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "featureFlagsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object p1

    iget-boolean p1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_send_bbpos_debug_logs_to_splunk:Z

    return p1
.end method

.method public final providesObservabilityFeatureFlags(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "featureFlagsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    check-cast p1, Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;

    return-object p1
.end method

.method public final providesReaderFeatureFlags(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)Lcom/stripe/proto/model/config/ReaderFeatureFlags;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "featureFlagsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object p1

    return-object p1
.end method

.method public final providesTtpAutoReconnectEnabledFeatureFlag(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)Z
    .locals 1
    .annotation runtime Lcom/stripe/core/featureflag/dagger/TtpAutoReconnectEnabled;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "featureFlagsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getTtpAutoReconnectEnabled()Z

    move-result p1

    return p1
.end method
