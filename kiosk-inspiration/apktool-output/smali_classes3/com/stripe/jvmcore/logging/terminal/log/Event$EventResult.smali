.class public final enum Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;
.super Ljava/lang/Enum;
.source "Event.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/logging/terminal/log/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;",
        "",
        "(Ljava/lang/String;I)V",
        "OK",
        "ERROR",
        "impl_release"
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

.field public static final enum ERROR:Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

.field public static final enum OK:Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;
    .locals 2

    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;->OK:Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    sget-object v1, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;->ERROR:Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    filled-new-array {v0, v1}, [Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;->OK:Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    .line 52
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;->ERROR:Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;->$values()[Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;->$VALUES:[Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;
    .locals 1

    const-class v0, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    return-object p0
.end method

.method public static values()[Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;
    .locals 1

    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;->$VALUES:[Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    return-object v0
.end method
