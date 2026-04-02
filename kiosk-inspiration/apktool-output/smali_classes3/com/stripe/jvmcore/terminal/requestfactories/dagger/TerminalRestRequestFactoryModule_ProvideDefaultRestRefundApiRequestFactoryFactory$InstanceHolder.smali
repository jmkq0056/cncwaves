.class final Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory;
    .locals 1

    .line 41
    sget-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory;

    return-object v0
.end method
