.class final enum Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/aaa003zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "aaa014zz"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

.field public static final enum aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

.field public static final enum aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

.field public static final enum aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

.field public static final enum aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

.field private static final synthetic aaa005:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    const-string v2, "POS_LIB_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    const-string v3, "POS_LIB_NOT_FOUND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    new-instance v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    const-string v4, "SERIAL_PORT_LIB_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    new-instance v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    const-string v5, "SERIAL_PORT_LIB_NOT_FOUND"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    .line 2
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa005:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

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

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa005:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    return-object v0
.end method
