.class final Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory;
    .locals 1

    .line 41
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory;

    return-object v0
.end method
