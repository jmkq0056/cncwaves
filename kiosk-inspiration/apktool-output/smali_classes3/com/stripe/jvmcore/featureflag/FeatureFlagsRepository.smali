.class public final Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;
.super Ljava/lang/Object;
.source "FeatureFlagsRepository.kt"

# interfaces
.implements Lcom/stripe/jvmcore/featureflag/ReaderFeatureFlagsProvider;
.implements Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 /2\u00020\u00012\u00020\u0002:\u0001/B\u0017\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0002J\u0008\u0010*\u001a\u00020\nH\u0016J\u0006\u0010+\u001a\u00020\'J\u000e\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\nR!\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0012R\u0011\u0010\u0017\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0012R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001a8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u000e\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u001e\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010 \u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0012R\u0011\u0010\"\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u0012R\u0011\u0010$\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u0012\u00a8\u00060"
    }
    d2 = {
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "Lcom/stripe/jvmcore/featureflag/ReaderFeatureFlagsProvider;",
        "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
        "sharedPrefs",
        "Lcom/stripe/jvmcore/storage/SharedPrefs;",
        "factoryImageHelper",
        "Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;",
        "(Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;)V",
        "_featureFlagsUpdated",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "get_featureFlagsUpdated",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "_featureFlagsUpdated$delegate",
        "Lkotlin/Lazy;",
        "enableClientLoggerDispatcher",
        "",
        "getEnableClientLoggerDispatcher",
        "()Z",
        "enableCollectInputsInterstitialScreen",
        "getEnableCollectInputsInterstitialScreen",
        "enableTracesToObservabilityDataEndpoint",
        "getEnableTracesToObservabilityDataEndpoint",
        "enableWPEAccessibilityVolumeControl",
        "getEnableWPEAccessibilityVolumeControl",
        "featureFlagsUpdated",
        "Lkotlinx/coroutines/flow/Flow;",
        "getFeatureFlagsUpdated",
        "()Lkotlinx/coroutines/flow/Flow;",
        "featureFlagsUpdated$delegate",
        "selectionFormTogglesBelowSubmitButtons",
        "getSelectionFormTogglesBelowSubmitButtons",
        "ttpAutoReconnectEnabled",
        "getTtpAutoReconnectEnabled",
        "ttpaEftposEnabled",
        "getTtpaEftposEnabled",
        "ttpaPinEntryEnabled",
        "getTtpaPinEntryEnabled",
        "encodeSha256",
        "",
        "value",
        "",
        "getFeatureFlags",
        "getReaderFeatureFlagsHash",
        "putFeatureFlags",
        "",
        "readerFeatureFlags",
        "Companion",
        "featureflag"
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
.field public static final Companion:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository$Companion;

.field private static final FACTORY_IMAGE_FEATURE_FLAGS:Lcom/stripe/proto/model/config/ReaderFeatureFlags;


# instance fields
.field private final _featureFlagsUpdated$delegate:Lkotlin/Lazy;

.field private final factoryImageHelper:Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;

.field private final featureFlagsUpdated$delegate:Lkotlin/Lazy;

.field private final sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;


# direct methods
.method static constructor <clinit>()V
    .locals 156

    new-instance v0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->Companion:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository$Companion;

    .line 93
    new-instance v2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    const/16 v154, 0x3f

    const/16 v155, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const-wide/16 v64, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const-wide/16 v86, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const-wide/16 v90, 0x0

    const/16 v92, 0x0

    const-wide/16 v93, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const-wide/16 v97, 0x0

    const-wide/16 v99, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const/16 v108, 0x0

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v124, 0x0

    const/16 v125, 0x0

    const/16 v126, 0x0

    const/16 v127, 0x0

    const/16 v128, 0x0

    const/16 v129, 0x0

    const/16 v130, 0x0

    const/16 v131, 0x0

    const/16 v132, 0x0

    const/16 v133, 0x0

    const/16 v134, 0x0

    const/16 v135, 0x0

    const/16 v136, 0x0

    const-wide/16 v137, 0x0

    const/16 v139, 0x0

    const/16 v140, 0x0

    const/16 v141, 0x0

    const/16 v142, 0x0

    const/16 v143, 0x0

    const-wide/16 v144, 0x0

    const-wide/16 v146, 0x0

    const/16 v148, 0x0

    const/16 v149, 0x0

    const/16 v150, -0x1

    const/16 v151, -0x1

    const/16 v152, -0x1

    const/16 v153, -0x1

    invoke-direct/range {v2 .. v155}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;-><init>(ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->FACTORY_IMAGE_FEATURE_FLAGS:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "sharedPrefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryImageHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    .line 16
    iput-object p2, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->factoryImageHelper:Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;

    .line 54
    new-instance p1, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository$_featureFlagsUpdated$2;

    invoke-direct {p1, p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository$_featureFlagsUpdated$2;-><init>(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->_featureFlagsUpdated$delegate:Lkotlin/Lazy;

    .line 58
    new-instance p1, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository$featureFlagsUpdated$2;

    invoke-direct {p1, p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository$featureFlagsUpdated$2;-><init>(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->featureFlagsUpdated$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getFACTORY_IMAGE_FEATURE_FLAGS$cp()Lcom/stripe/proto/model/config/ReaderFeatureFlags;
    .locals 1

    .line 13
    sget-object v0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->FACTORY_IMAGE_FEATURE_FLAGS:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    return-object v0
.end method

.method public static final synthetic access$get_featureFlagsUpdated(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->get_featureFlagsUpdated()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    return-object p0
.end method

.method private final encodeSha256([B)Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getKeyValueStore()Lcom/stripe/jvmcore/storage/KeyValueStore;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->base64Encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final get_featureFlagsUpdated()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->_featureFlagsUpdated$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public getEnableClientLoggerDispatcher()Z
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_logger_dispatcher:Z

    return v0
.end method

.method public final getEnableCollectInputsInterstitialScreen()Z
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_collect_inputs_interstitial_screen:Z

    return v0
.end method

.method public getEnableTracesToObservabilityDataEndpoint()Z
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_traces_to_observability_data_endpoint:Z

    return v0
.end method

.method public final getEnableWPEAccessibilityVolumeControl()Z
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_accessibility_volume_control:Z

    return v0
.end method

.method public getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->factoryImageHelper:Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;

    invoke-interface {v0}, Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;->isFactoryImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->FACTORY_IMAGE_FEATURE_FLAGS:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    return-object v0
.end method

.method public final getFeatureFlagsUpdated()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->featureFlagsUpdated$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getReaderFeatureFlagsHash()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->encode()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->encodeSha256([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectionFormTogglesBelowSubmitButtons()Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->selection_form_toggles_below_submit_buttons:Z

    return v0
.end method

.method public final getTtpAutoReconnectEnabled()Z
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttp_auto_reconnect:Z

    return v0
.end method

.method public final getTtpaEftposEnabled()Z
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_eftpos_payments:Z

    return v0
.end method

.method public final getTtpaPinEntryEnabled()Z
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_pin:Z

    return v0
.end method

.method public final putFeatureFlags(Lcom/stripe/proto/model/config/ReaderFeatureFlags;)V
    .locals 1

    const-string v0, "readerFeatureFlags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putFeatureFlags(Lcom/stripe/proto/model/config/ReaderFeatureFlags;)V

    .line 79
    iget-object v0, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->factoryImageHelper:Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;

    invoke-interface {v0}, Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;->isFactoryImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->get_featureFlagsUpdated()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object v0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->FACTORY_IMAGE_FEATURE_FLAGS:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->get_featureFlagsUpdated()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
