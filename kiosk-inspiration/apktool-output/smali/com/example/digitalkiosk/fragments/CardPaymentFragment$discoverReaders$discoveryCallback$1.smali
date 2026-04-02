.class public final Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryCallback$1;
.super Ljava/lang/Object;
.source "CardPaymentFragment.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->discoverReaders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryCallback$1",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "onSuccess",
        "",
        "onFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryCallback$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryCallback$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    const-string v0, "Reader Discovery Failed"

    invoke-static {p1, v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$paymentFailed(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
