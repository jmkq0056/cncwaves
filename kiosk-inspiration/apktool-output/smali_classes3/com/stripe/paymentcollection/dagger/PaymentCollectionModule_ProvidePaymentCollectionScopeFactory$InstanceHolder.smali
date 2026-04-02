.class final Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "PaymentCollectionModule_ProvidePaymentCollectionScopeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory;

    invoke-direct {v0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory;-><init>()V

    sput-object v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory$InstanceHolder;->INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory;
    .locals 1

    .line 40
    sget-object v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory$InstanceHolder;->INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory;

    return-object v0
.end method
