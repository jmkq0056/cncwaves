.class public final Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;
.super Ljava/lang/Object;
.source "NoopGatorUploaderOutOfMemoryLoggerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;",
        "",
        "()V",
        "providesGatorUploaderOutOfMemoryLogger",
        "Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;",
        "gator"
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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final providesGatorUploaderOutOfMemoryLogger()Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 13
    new-instance v0, Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule$providesGatorUploaderOutOfMemoryLogger$1;

    invoke-direct {v0}, Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule$providesGatorUploaderOutOfMemoryLogger$1;-><init>()V

    check-cast v0, Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;

    return-object v0
.end method
