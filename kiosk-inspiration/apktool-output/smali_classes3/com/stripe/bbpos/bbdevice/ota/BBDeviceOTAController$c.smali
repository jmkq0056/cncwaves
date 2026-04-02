.class final enum Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

.field public static final enum b:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

.field public static final enum c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

.field public static final enum d:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

.field public static final enum e:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

.field public static final enum f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

.field public static final enum g:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

.field private static final synthetic h:[Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    const-string v1, "WisePOS1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    const-string v2, "WisePOS2"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->b:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    const-string v3, "WisePOS1_1"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    const-string v4, "WisePOSPlus"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->d:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    const-string v5, "WisePOS_SEVEN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->e:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    const-string v6, "WisePOS_TOUCH"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    .line 7
    new-instance v6, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    const-string v7, "WisePOS_GO"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->g:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    .line 8
    filled-new-array/range {v0 .. v6}, [Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->h:[Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->h:[Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    return-object v0
.end method
