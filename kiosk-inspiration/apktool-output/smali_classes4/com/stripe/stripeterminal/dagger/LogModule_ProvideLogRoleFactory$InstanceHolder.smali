.class final Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "LogModule_ProvideLogRoleFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory$InstanceHolder;->INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory;
    .locals 1

    .line 39
    sget-object v0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory$InstanceHolder;->INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory;

    return-object v0
.end method
