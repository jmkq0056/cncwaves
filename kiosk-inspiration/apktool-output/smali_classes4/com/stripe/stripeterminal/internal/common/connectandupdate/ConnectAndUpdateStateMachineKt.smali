.class public final Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachineKt;
.super Ljava/lang/Object;
.source "ConnectAndUpdateStateMachine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0002"
    }
    d2 = {
        "LOGGER",
        "Lcom/stripe/jvmcore/logging/terminal/log/Log;",
        "common_publish"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const-class v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachineKt;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public static final synthetic access$getLOGGER$p()Lcom/stripe/jvmcore/logging/terminal/log/Log;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachineKt;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-object v0
.end method
