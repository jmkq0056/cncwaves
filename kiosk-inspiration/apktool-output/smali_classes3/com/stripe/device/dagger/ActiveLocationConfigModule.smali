.class public abstract Lcom/stripe/device/dagger/ActiveLocationConfigModule;
.super Ljava/lang/Object;
.source "ActiveLocationConfigModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/device/dagger/ActiveLocationConfigModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H!\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/device/dagger/ActiveLocationConfigModule;",
        "",
        "()V",
        "bindActiveLocationConfigRepository",
        "Lcom/stripe/device/ActiveLocationConfigRepository;",
        "impl",
        "Lcom/stripe/device/DefaultActiveLocationConfigRepository;",
        "bindActiveLocationConfigRepository$wiring",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/device/dagger/ActiveLocationConfigModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/device/dagger/ActiveLocationConfigModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/device/dagger/ActiveLocationConfigModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/device/dagger/ActiveLocationConfigModule;->Companion:Lcom/stripe/device/dagger/ActiveLocationConfigModule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindActiveLocationConfigRepository$wiring(Lcom/stripe/device/DefaultActiveLocationConfigRepository;)Lcom/stripe/device/ActiveLocationConfigRepository;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
