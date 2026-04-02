.class public abstract Lcom/stripe/core/bbpos/dagger/BbposUpdateModule$Bindings;
.super Ljava/lang/Object;
.source "BbposUpdateModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Bindings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H!\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/dagger/BbposUpdateModule$Bindings;",
        "",
        "()V",
        "bindReaderUpdateController",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
        "controller",
        "Lcom/stripe/core/bbpos/BbposReaderUpdateController;",
        "bindReaderUpdateController$sdk_release",
        "sdk_release"
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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindReaderUpdateController$sdk_release(Lcom/stripe/core/bbpos/BbposReaderUpdateController;)Lcom/stripe/core/hardware/updates/ReaderUpdateController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
