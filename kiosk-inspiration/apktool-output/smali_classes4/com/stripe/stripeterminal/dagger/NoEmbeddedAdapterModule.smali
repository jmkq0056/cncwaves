.class public final Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;
.super Ljava/lang/Object;
.source "NoEmbeddedAdapterModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;",
        "",
        "()V",
        "provideNoEmbeddedAdapter",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "defaults_release"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideNoEmbeddedAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 1
    .annotation runtime Lcom/stripe/stripeterminal/dagger/EmbeddedAdapter;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
