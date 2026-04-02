.class public abstract Lcom/stripe/stripeterminal/dagger/MainlandModule;
.super Ljava/lang/Object;
.source "MainlandModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008!\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\'\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/MainlandModule;",
        "",
        "()V",
        "bindIdempotencyGenerator",
        "Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;",
        "mainlandIdempotencyGenerator",
        "Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/dagger/MainlandModule;->Companion:Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindIdempotencyGenerator(Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;)Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
