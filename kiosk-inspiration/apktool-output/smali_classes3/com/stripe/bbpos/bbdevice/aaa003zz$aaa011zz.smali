.class final enum Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/aaa003zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "aaa011zz"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

.field public static final enum aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

.field public static final enum aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

.field public static final enum aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

.field public static final enum aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

.field private static final synthetic aaa005:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    const-string v2, "NO_PAPER_OR_COVER_OPENED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    const-string v3, "WRONG_PRINTER_COMMAND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    const-string v4, "OVERHEAT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    const-string v5, "PRINTER_ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    .line 6
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa005:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa005:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    return-object v0
.end method
