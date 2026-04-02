.class public final Lcom/stripe/hardware/emv/Messages;
.super Ljava/lang/Object;
.source "Messages.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/hardware/emv/Messages;",
        "",
        "()V",
        "ONLINE_AUTHORIZATION_RESPONSE_APPROVE",
        "",
        "ONLINE_AUTHORIZATION_RESPONSE_DECLINE",
        "UNABLE_TO_GO_ONLINE_DECLINE_OFFLINE",
        "public_release"
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
.field public static final INSTANCE:Lcom/stripe/hardware/emv/Messages;

.field public static final ONLINE_AUTHORIZATION_RESPONSE_APPROVE:Ljava/lang/String; = "8A023030"

.field public static final ONLINE_AUTHORIZATION_RESPONSE_DECLINE:Ljava/lang/String; = "8A023035"

.field public static final UNABLE_TO_GO_ONLINE_DECLINE_OFFLINE:Ljava/lang/String; = "8A025A33"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/hardware/emv/Messages;

    invoke-direct {v0}, Lcom/stripe/hardware/emv/Messages;-><init>()V

    sput-object v0, Lcom/stripe/hardware/emv/Messages;->INSTANCE:Lcom/stripe/hardware/emv/Messages;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
