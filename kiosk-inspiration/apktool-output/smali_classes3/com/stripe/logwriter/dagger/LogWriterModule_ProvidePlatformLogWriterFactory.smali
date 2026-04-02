.class public final Lcom/stripe/logwriter/dagger/LogWriterModule_ProvidePlatformLogWriterFactory;
.super Ljava/lang/Object;
.source "LogWriterModule_ProvidePlatformLogWriterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/logwriter/dagger/LogWriterModule_ProvidePlatformLogWriterFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/logwriter/PlatformLogWriter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/logwriter/dagger/LogWriterModule_ProvidePlatformLogWriterFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvidePlatformLogWriterFactory$InstanceHolder;->access$000()Lcom/stripe/logwriter/dagger/LogWriterModule_ProvidePlatformLogWriterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static providePlatformLogWriter()Lcom/stripe/logwriter/PlatformLogWriter;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/logwriter/dagger/LogWriterModule;->INSTANCE:Lcom/stripe/logwriter/dagger/LogWriterModule;

    invoke-virtual {v0}, Lcom/stripe/logwriter/dagger/LogWriterModule;->providePlatformLogWriter()Lcom/stripe/logwriter/PlatformLogWriter;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/logwriter/PlatformLogWriter;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/logwriter/PlatformLogWriter;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvidePlatformLogWriterFactory;->providePlatformLogWriter()Lcom/stripe/logwriter/PlatformLogWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvidePlatformLogWriterFactory;->get()Lcom/stripe/logwriter/PlatformLogWriter;

    move-result-object v0

    return-object v0
.end method
