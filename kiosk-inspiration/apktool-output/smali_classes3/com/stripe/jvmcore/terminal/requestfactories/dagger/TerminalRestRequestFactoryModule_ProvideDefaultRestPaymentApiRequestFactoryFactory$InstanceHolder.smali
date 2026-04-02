.class final Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;
    .locals 1

    .line 41
    sget-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;

    return-object v0
.end method
