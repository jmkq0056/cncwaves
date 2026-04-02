.class final Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "AndroidLogModule_ProvideScheduledExecutorServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory;

    invoke-direct {v0}, Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory;-><init>()V

    sput-object v0, Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory$InstanceHolder;->INSTANCE:Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory;
    .locals 1

    .line 40
    sget-object v0, Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory$InstanceHolder;->INSTANCE:Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory;

    return-object v0
.end method
