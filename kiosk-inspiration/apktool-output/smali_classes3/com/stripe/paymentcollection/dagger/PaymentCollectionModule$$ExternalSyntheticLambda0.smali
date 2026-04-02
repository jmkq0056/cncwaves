.class public final synthetic Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;


# instance fields
.field public final synthetic f$0:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, p1}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->$r8$lambda$UK2KHYm_0PosrtP2cR2G0QXCvkw(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object p1

    return-object p1
.end method
