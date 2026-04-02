.class public final Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent;
.super Ljava/lang/Object;
.source "DaggerDefaultSdkDependenciesComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;,
        Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;
    .locals 2

    .line 42
    new-instance v0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;-><init>(Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$1;)V

    return-object v0
.end method

.method public static create()Lcom/stripe/stripeterminal/dagger/DefaultSdkDependenciesComponent;
    .locals 2

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;-><init>(Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$1;)V

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$Builder;->build()Lcom/stripe/stripeterminal/dagger/DefaultSdkDependenciesComponent;

    move-result-object v0

    return-object v0
.end method
