.class public final Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnect$1;
.super Ljava/lang/Object;
.source "BbposBluetoothAdapter.kt"

# interfaces
.implements Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->startConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnect$1",
        "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;",
        "onSessionTokenChanged",
        "",
        "token",
        "",
        "adapter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnect$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionTokenChanged(Ljava/lang/String;)V
    .locals 0

    .line 354
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnect$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->update()V

    return-void
.end method
