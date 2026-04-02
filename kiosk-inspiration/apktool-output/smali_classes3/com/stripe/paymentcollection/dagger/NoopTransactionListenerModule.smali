.class public final Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule;
.super Ljava/lang/Object;
.source "NoopTransactionListenerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule;",
        "",
        "()V",
        "provideNoopTransactionListener",
        "Lcom/stripe/paymentcollection/TransactionListener;",
        "wiring"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule;

    invoke-direct {v0}, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule;-><init>()V

    sput-object v0, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule;->INSTANCE:Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideNoopTransactionListener()Lcom/stripe/paymentcollection/TransactionListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 11
    new-instance v0, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule$provideNoopTransactionListener$1;

    invoke-direct {v0}, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule$provideNoopTransactionListener$1;-><init>()V

    check-cast v0, Lcom/stripe/paymentcollection/TransactionListener;

    return-object v0
.end method
