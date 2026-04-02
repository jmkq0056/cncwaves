.class final Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideGsonFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "JvmCoreLogModule_ProvideGsonFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideGsonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideGsonFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideGsonFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideGsonFactory;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideGsonFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideGsonFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideGsonFactory;
    .locals 1

    .line 40
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideGsonFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideGsonFactory;

    return-object v0
.end method
