.class final Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "SchedulersModule_ProvideMainDispatcherFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;

    invoke-direct {v0}, Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;-><init>()V

    sput-object v0, Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory$InstanceHolder;->INSTANCE:Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;
    .locals 1

    .line 40
    sget-object v0, Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory$InstanceHolder;->INSTANCE:Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;

    return-object v0
.end method
