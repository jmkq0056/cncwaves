.class public final Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreatePayment;
.super Lcom/stripe/offlinemode/log/OfflineTrace;
.source "OfflineTrace.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/offlinemode/log/OfflineTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfflineCreatePayment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreatePayment;",
        "Lcom/stripe/offlinemode/log/OfflineTrace;",
        "()V",
        "offlinemode_release"
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
.field public static final INSTANCE:Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreatePayment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreatePayment;

    invoke-direct {v0}, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreatePayment;-><init>()V

    sput-object v0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreatePayment;->INSTANCE:Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreatePayment;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 13
    const-string v0, "create_payment"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/stripe/offlinemode/log/OfflineTrace;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
