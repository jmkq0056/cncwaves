.class final enum Lcom/stripe/bbpos/bbdevice/ota/y$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ota/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/ota/y$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/stripe/bbpos/bbdevice/ota/y$b;

.field public static final enum b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

.field public static final enum c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

.field public static final enum d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

.field public static final enum e:Lcom/stripe/bbpos/bbdevice/ota/y$b;

.field public static final enum f:Lcom/stripe/bbpos/bbdevice/ota/y$b;

.field public static final enum g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

.field public static final enum h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

.field public static final enum i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

.field public static final enum j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

.field private static final synthetic k:[Lcom/stripe/bbpos/bbdevice/ota/y$b;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->a:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v2, "REMOTE_FIRMWARE_UPDATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v3, "REMOTE_CONFIG_UPDATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v4, "REMOTE_KEY_INJECTION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/stripe/bbpos/bbdevice/ota/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v5, "GET_TARGET_VERSION"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/stripe/bbpos/bbdevice/ota/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->e:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v6, "GET_TARGET_VERSION_LIST"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/stripe/bbpos/bbdevice/ota/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/ota/y$b;->f:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    .line 7
    new-instance v6, Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v7, "SET_TARGET_VERSION"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/stripe/bbpos/bbdevice/ota/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/ota/y$b;->g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    .line 8
    new-instance v7, Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v8, "LOCAL_FIRMWARE_UPDATE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/stripe/bbpos/bbdevice/ota/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    .line 9
    new-instance v8, Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v9, "LOCAL_CONFIG_UPDATE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/stripe/bbpos/bbdevice/ota/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    .line 10
    new-instance v9, Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v10, "GET_FILE_SIGNATURE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/stripe/bbpos/bbdevice/ota/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    .line 11
    filled-new-array/range {v0 .. v9}, [Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->k:[Lcom/stripe/bbpos/bbdevice/ota/y$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/y$b;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/ota/y$b;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/ota/y$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->k:[Lcom/stripe/bbpos/bbdevice/ota/y$b;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/ota/y$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/ota/y$b;

    return-object v0
.end method
