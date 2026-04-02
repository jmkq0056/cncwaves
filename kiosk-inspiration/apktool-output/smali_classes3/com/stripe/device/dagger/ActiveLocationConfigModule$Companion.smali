.class public final Lcom/stripe/device/dagger/ActiveLocationConfigModule$Companion;
.super Ljava/lang/Object;
.source "ActiveLocationConfigModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/device/dagger/ActiveLocationConfigModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\r\u0010\u0003\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/device/dagger/ActiveLocationConfigModule$Companion;",
        "",
        "()V",
        "provideDefaultActiveLocationConfigRepository",
        "Lcom/stripe/device/DefaultActiveLocationConfigRepository;",
        "provideDefaultActiveLocationConfigRepository$wiring",
        "wiring"
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
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/device/dagger/ActiveLocationConfigModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideDefaultActiveLocationConfigRepository$wiring()Lcom/stripe/device/DefaultActiveLocationConfigRepository;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 21
    new-instance v0, Lcom/stripe/device/DefaultActiveLocationConfigRepository;

    invoke-direct {v0}, Lcom/stripe/device/DefaultActiveLocationConfigRepository;-><init>()V

    return-object v0
.end method
