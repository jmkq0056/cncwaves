.class public final Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryListener$1;
.super Ljava/lang/Object;
.source "CardPaymentFragment.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;


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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryListener$1",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "onUpdateDiscoveredReaders",
        "",
        "readers",
        "",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
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

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryListener$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateDiscoveredReaders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getKioskSetting()Lcom/example/digitalkiosk/models/KioskSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/KioskSetting;->getStripe_reader()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 135
    :goto_0
    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/external/models/Reader;

    .line 138
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryListener$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-static {p1, v1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$connectReader(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Lcom/stripe/stripeterminal/external/models/Reader;)V

    return-void

    .line 145
    :cond_2
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryListener$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->getDiscoveryTask()Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryListener$1$onUpdateDiscoveredReaders$1;

    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryListener$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-direct {v0, v1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryListener$1$onUpdateDiscoveredReaders$1;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/Callback;

    invoke-interface {p1, v0}, Lcom/stripe/stripeterminal/external/callable/Cancelable;->cancel(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    return-void

    .line 156
    :cond_3
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryListener$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->getDiscoveryTask()Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryListener$1$onUpdateDiscoveredReaders$2;

    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryListener$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-direct {v0, v1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryListener$1$onUpdateDiscoveredReaders$2;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/Callback;

    invoke-interface {p1, v0}, Lcom/stripe/stripeterminal/external/callable/Cancelable;->cancel(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    :cond_4
    return-void
.end method
