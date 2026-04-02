.class public final Lcom/stripe/stripeterminal/dagger/PermissionsModule;
.super Ljava/lang/Object;
.source "PermissionsModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/PermissionsModule;",
        "",
        "()V",
        "provideLocationServicesValidator",
        "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;",
        "context",
        "Landroid/content/Context;",
        "providePermissionsValidator",
        "Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideLocationServicesValidator(Landroid/content/Context;)Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/stripe/stripeterminal/dagger/PermissionsModule$provideLocationServicesValidator$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/dagger/PermissionsModule$provideLocationServicesValidator$1;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;

    return-object v0
.end method

.method public final providePermissionsValidator(Landroid/content/Context;)Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
