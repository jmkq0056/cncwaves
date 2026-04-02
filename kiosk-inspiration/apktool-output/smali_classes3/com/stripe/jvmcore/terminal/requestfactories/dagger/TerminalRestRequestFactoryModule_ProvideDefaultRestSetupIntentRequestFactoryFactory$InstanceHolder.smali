.class final Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory;
    .locals 1

    .line 41
    sget-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory;

    return-object v0
.end method
