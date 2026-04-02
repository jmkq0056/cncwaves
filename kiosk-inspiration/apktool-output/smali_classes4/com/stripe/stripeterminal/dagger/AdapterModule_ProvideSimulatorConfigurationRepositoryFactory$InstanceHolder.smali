.class final Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "AdapterModule_ProvideSimulatorConfigurationRepositoryFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory$InstanceHolder;->INSTANCE:Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory;
    .locals 1

    .line 40
    sget-object v0, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory$InstanceHolder;->INSTANCE:Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory;

    return-object v0
.end method
