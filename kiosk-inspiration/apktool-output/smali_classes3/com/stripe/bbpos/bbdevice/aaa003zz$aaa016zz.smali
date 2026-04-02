.class final enum Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/aaa003zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "aaa016zz"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

.field public static final enum aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

.field private static final synthetic aaa002:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    const-string v1, "GENERAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    const-string v2, "AID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    .line 2
    filled-new-array {v0, v1}, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa002:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

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

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa002:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    return-object v0
.end method
