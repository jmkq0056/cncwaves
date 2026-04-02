.class final synthetic Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$9;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "RemoteReaderAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->execute()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;)V
    .locals 6

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$9;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v4, "execute$convertToPaymentMethodData(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;Lcom/stripe/proto/model/rest/ReaderCollectedData;)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-string v3, "convertToPaymentMethodData"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 386
    check-cast p1, Lcom/stripe/proto/model/rest/ReaderCollectedData;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$9;->invoke(Lcom/stripe/proto/model/rest/ReaderCollectedData;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/proto/model/rest/ReaderCollectedData;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$9;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;

    invoke-static {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->access$execute$convertToPaymentMethodData(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;Lcom/stripe/proto/model/rest/ReaderCollectedData;)V

    return-void
.end method
