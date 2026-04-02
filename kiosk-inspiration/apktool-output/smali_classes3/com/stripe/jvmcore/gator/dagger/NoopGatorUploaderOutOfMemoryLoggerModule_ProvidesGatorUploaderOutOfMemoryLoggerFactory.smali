.class public final Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory;
.super Ljava/lang/Object;
.source "NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory;->module:Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;)Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory;
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory;-><init>(Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;)V

    return-object v0
.end method

.method public static providesGatorUploaderOutOfMemoryLogger(Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;)Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;->providesGatorUploaderOutOfMemoryLogger()Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory;->module:Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;

    invoke-static {v0}, Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory;->providesGatorUploaderOutOfMemoryLogger(Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;)Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory;->get()Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;

    move-result-object v0

    return-object v0
.end method
