.class public final Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogUploaderFactory;
.super Ljava/lang/Object;
.source "LogModule_ProvideLogUploaderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;",
        ">;"
    }
.end annotation


# instance fields
.field private final uploaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogUploaderFactory;->uploaderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogUploaderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogUploaderFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogUploaderFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogUploaderFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideLogUploader(Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;)Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;
    .locals 1

    .line 46
    sget-object v0, Lcom/stripe/stripeterminal/dagger/LogModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/dagger/LogModule;->provideLogUploader(Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;)Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogUploaderFactory;->uploaderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogUploaderFactory;->provideLogUploader(Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;)Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogUploaderFactory;->get()Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;

    move-result-object v0

    return-object v0
.end method
