.class final Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory;

    invoke-direct {v0}, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory;-><init>()V

    sput-object v0, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory$InstanceHolder;->INSTANCE:Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory;
    .locals 1

    .line 40
    sget-object v0, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory$InstanceHolder;->INSTANCE:Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory;

    return-object v0
.end method
