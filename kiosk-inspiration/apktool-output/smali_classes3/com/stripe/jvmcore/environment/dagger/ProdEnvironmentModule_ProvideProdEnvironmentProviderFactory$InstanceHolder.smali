.class final Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory;
    .locals 1

    .line 40
    sget-object v0, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory;

    return-object v0
.end method
