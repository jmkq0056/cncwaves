.class public final Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$onClick$$inlined$schedule$2;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->onClick(Lcom/example/digitalkiosk/models/Item;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 ItemConfigFragment.kt\ncom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3\n*L\n1#1,148:1\n186#2,4:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/concurrent/TimersKt$timerTask$1",
        "Ljava/util/TimerTask;",
        "run",
        "",
        "kotlin-stdlib"
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
.field final synthetic $binding$inlined:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;


# direct methods
.method public constructor <init>(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$onClick$$inlined$schedule$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$onClick$$inlined$schedule$2;->$binding$inlined:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    .line 146
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    move-object v0, p0

    check-cast v0, Ljava/util/TimerTask;

    .line 149
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$onClick$$inlined$schedule$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getMainHandler$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$onClick$10$1;

    iget-object v2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$onClick$$inlined$schedule$2;->$binding$inlined:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    invoke-direct {v1, v2}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$onClick$10$1;-><init>(Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
