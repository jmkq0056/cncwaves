.class final enum Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/aaa003zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "aaa004zz"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

.field public static final enum aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

.field public static final enum aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

.field public static final enum aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

.field public static final enum aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

.field public static final enum aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

.field public static final enum aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

.field public static final enum aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

.field public static final enum aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

.field public static final enum aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

.field public static final enum aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

.field private static final synthetic aaa011:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    const-string v1, "NO_CARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    const-string v2, "INSERTED_CARD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    const-string v3, "NOT_ICC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    new-instance v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    const-string v4, "BAD_SWIPE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    new-instance v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    const-string v5, "MCR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    new-instance v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    const-string v6, "MAG_HEAD_FAIL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    new-instance v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    const-string v7, "TAP_CARD_DETECTED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    new-instance v7, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    const-string v8, "USE_ICC_CARD"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    new-instance v8, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    const-string v9, "KEY_ERROR"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    new-instance v9, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    const-string v10, "MANUAL_PAN_ENTRY"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    new-instance v10, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    const-string v11, "CARD_NOT_SUPPORTED"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    .line 2
    filled-new-array/range {v0 .. v10}, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa011:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

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

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa011:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    return-object v0
.end method
