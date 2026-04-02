.class public final Lcom/stripe/jvmcore/restclient/IdempotencyHeader;
.super Ljava/lang/Object;
.source "IdempotencyHeader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/restclient/IdempotencyHeader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \t2\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/IdempotencyHeader;",
        "",
        "generator",
        "Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;",
        "(Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;)V",
        "headerEntry",
        "Lkotlin/Pair;",
        "",
        "key",
        "Companion",
        "base"
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
.field public static final Companion:Lcom/stripe/jvmcore/restclient/IdempotencyHeader$Companion;

.field private static final IDEMPOTENCY_KEY_HEADER_NAME:Ljava/lang/String; = "Idempotency-Key"


# instance fields
.field private final generator:Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/restclient/IdempotencyHeader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/restclient/IdempotencyHeader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/restclient/IdempotencyHeader;->Companion:Lcom/stripe/jvmcore/restclient/IdempotencyHeader$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;)V
    .locals 1

    const-string v0, "generator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/IdempotencyHeader;->generator:Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;

    return-void
.end method

.method public static synthetic headerEntry$default(Lcom/stripe/jvmcore/restclient/IdempotencyHeader;Ljava/lang/String;ILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/stripe/jvmcore/restclient/IdempotencyHeader;->generator:Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;

    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;->generateKey()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/restclient/IdempotencyHeader;->headerEntry(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final headerEntry(Ljava/lang/String;)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, "Idempotency-Key"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
