.class final Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "RandomModule_ProvideRandomFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory;

    invoke-direct {v0}, Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory;-><init>()V

    sput-object v0, Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory$InstanceHolder;->INSTANCE:Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory;
    .locals 1

    .line 40
    sget-object v0, Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory$InstanceHolder;->INSTANCE:Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory;

    return-object v0
.end method
