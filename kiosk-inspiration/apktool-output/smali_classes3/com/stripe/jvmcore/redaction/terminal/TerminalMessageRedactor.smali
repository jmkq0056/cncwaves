.class public final Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;
.super Ljava/lang/Object;
.source "TerminalMessageRedactor.kt"

# interfaces
.implements Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u00042\u000e\u0010\u0005\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;",
        "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
        "()V",
        "toRedactedMessage",
        "Lcom/squareup/wire/Message;",
        "message",
        "terminal-redaction"
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;

    invoke-direct {v0}, Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;->INSTANCE:Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toRedactedMessage(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Message<",
            "**>;)",
            "Lcom/squareup/wire/Message<",
            "**>;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/stripe/jvmcore/redaction/terminal/RedactionUtils;->INSTANCE:Lcom/stripe/jvmcore/redaction/terminal/RedactionUtils;

    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/redaction/terminal/RedactionUtils;->toLogProto(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;

    move-result-object p1

    return-object p1
.end method
