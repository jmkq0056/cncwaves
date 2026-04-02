.class public final Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerDefaultSdkDependenciesComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private buildValuesModule:Lcom/stripe/core/device/dagger/BuildValuesModule;

.field private sdkIntModule:Lcom/stripe/core/device/dagger/SdkIntModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$1;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/stripeterminal/dagger/DefaultSdkDependenciesComponent;
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;->buildValuesModule:Lcom/stripe/core/device/dagger/BuildValuesModule;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/stripe/core/device/dagger/BuildValuesModule;

    invoke-direct {v0}, Lcom/stripe/core/device/dagger/BuildValuesModule;-><init>()V

    iput-object v0, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;->buildValuesModule:Lcom/stripe/core/device/dagger/BuildValuesModule;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;->sdkIntModule:Lcom/stripe/core/device/dagger/SdkIntModule;

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Lcom/stripe/core/device/dagger/SdkIntModule;

    invoke-direct {v0}, Lcom/stripe/core/device/dagger/SdkIntModule;-><init>()V

    iput-object v0, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;->sdkIntModule:Lcom/stripe/core/device/dagger/SdkIntModule;

    .line 74
    :cond_1
    new-instance v0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;->buildValuesModule:Lcom/stripe/core/device/dagger/BuildValuesModule;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;->sdkIntModule:Lcom/stripe/core/device/dagger/SdkIntModule;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;-><init>(Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$1;)V

    return-object v0
.end method

.method public buildValuesModule(Lcom/stripe/core/device/dagger/BuildValuesModule;)Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;
    .locals 0

    .line 58
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/device/dagger/BuildValuesModule;

    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;->buildValuesModule:Lcom/stripe/core/device/dagger/BuildValuesModule;

    return-object p0
.end method

.method public sdkIntModule(Lcom/stripe/core/device/dagger/SdkIntModule;)Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;
    .locals 0

    .line 63
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/device/dagger/SdkIntModule;

    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;->sdkIntModule:Lcom/stripe/core/device/dagger/SdkIntModule;

    return-object p0
.end method
