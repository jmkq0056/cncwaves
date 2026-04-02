.class final Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory;

    invoke-direct {v0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory;-><init>()V

    sput-object v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory$InstanceHolder;->INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory;
    .locals 1

    .line 41
    sget-object v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory$InstanceHolder;->INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory;

    return-object v0
.end method
