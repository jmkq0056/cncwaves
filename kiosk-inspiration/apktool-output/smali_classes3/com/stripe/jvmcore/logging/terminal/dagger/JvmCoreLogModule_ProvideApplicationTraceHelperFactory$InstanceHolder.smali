.class final Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "JvmCoreLogModule_ProvideApplicationTraceHelperFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory;
    .locals 1

    .line 43
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory;

    return-object v0
.end method
