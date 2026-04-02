.class public final Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideFilesDirectoryFactory;
.super Ljava/lang/Object;
.source "ContextModule_ProvideFilesDirectoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/ContextModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/ContextModule;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideFilesDirectoryFactory;->module:Lcom/stripe/stripeterminal/dagger/ContextModule;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/ContextModule;)Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideFilesDirectoryFactory;
    .locals 1

    .line 39
    new-instance v0, Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideFilesDirectoryFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideFilesDirectoryFactory;-><init>(Lcom/stripe/stripeterminal/dagger/ContextModule;)V

    return-object v0
.end method

.method public static provideFilesDirectory(Lcom/stripe/stripeterminal/dagger/ContextModule;)Ljava/io/File;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/ContextModule;->provideFilesDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public get()Ljava/io/File;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideFilesDirectoryFactory;->module:Lcom/stripe/stripeterminal/dagger/ContextModule;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideFilesDirectoryFactory;->provideFilesDirectory(Lcom/stripe/stripeterminal/dagger/ContextModule;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideFilesDirectoryFactory;->get()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
