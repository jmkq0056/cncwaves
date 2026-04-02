.class public final enum Lcom/stripe/bbota01z/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbota01z/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/stripe/bbota01z/f;

.field public static final enum c:Lcom/stripe/bbota01z/f;

.field public static final enum d:Lcom/stripe/bbota01z/f;

.field public static final enum e:Lcom/stripe/bbota01z/f;

.field public static final enum f:Lcom/stripe/bbota01z/f;

.field public static final enum g:Lcom/stripe/bbota01z/f;

.field public static final enum h:Lcom/stripe/bbota01z/f;

.field public static final enum i:Lcom/stripe/bbota01z/f;

.field public static final enum j:Lcom/stripe/bbota01z/f;

.field private static final synthetic k:[Lcom/stripe/bbota01z/f;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/stripe/bbota01z/f;

    const-string v1, "DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbota01z/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbota01z/f;->b:Lcom/stripe/bbota01z/f;

    .line 2
    new-instance v1, Lcom/stripe/bbota01z/f;

    const-string v2, "EOF"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbota01z/f;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbota01z/f;->c:Lcom/stripe/bbota01z/f;

    .line 3
    new-instance v2, Lcom/stripe/bbota01z/f;

    const-string v3, "EXT_SEG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbota01z/f;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbota01z/f;->d:Lcom/stripe/bbota01z/f;

    .line 4
    new-instance v3, Lcom/stripe/bbota01z/f;

    const-string v4, "START_SEG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbota01z/f;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbota01z/f;->e:Lcom/stripe/bbota01z/f;

    .line 5
    new-instance v4, Lcom/stripe/bbota01z/f;

    const-string v5, "EXT_LIN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/stripe/bbota01z/f;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbota01z/f;->f:Lcom/stripe/bbota01z/f;

    .line 6
    new-instance v5, Lcom/stripe/bbota01z/f;

    const-string v6, "START_LIN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/stripe/bbota01z/f;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbota01z/f;->g:Lcom/stripe/bbota01z/f;

    .line 7
    new-instance v6, Lcom/stripe/bbota01z/f;

    const-string v7, "BBPOS_DEFINE_CMAC"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/stripe/bbota01z/f;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/stripe/bbota01z/f;->h:Lcom/stripe/bbota01z/f;

    .line 8
    new-instance v7, Lcom/stripe/bbota01z/f;

    const-string v8, "BBPOS_DEFINE_TARGET_DEVICE_CHECKING"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/stripe/bbota01z/f;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/stripe/bbota01z/f;->i:Lcom/stripe/bbota01z/f;

    .line 9
    new-instance v8, Lcom/stripe/bbota01z/f;

    const/16 v9, 0x8

    const/16 v10, 0xff

    const-string v11, "UNKNOWN"

    invoke-direct {v8, v11, v9, v10}, Lcom/stripe/bbota01z/f;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/stripe/bbota01z/f;->j:Lcom/stripe/bbota01z/f;

    .line 10
    filled-new-array/range {v0 .. v8}, [Lcom/stripe/bbota01z/f;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbota01z/f;->k:[Lcom/stripe/bbota01z/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/stripe/bbota01z/f;->a:I

    return-void
.end method

.method public static a(I)Lcom/stripe/bbota01z/f;
    .locals 5

    .line 1
    invoke-static {}, Lcom/stripe/bbota01z/f;->values()[Lcom/stripe/bbota01z/f;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/stripe/bbota01z/f;->a:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget-object p0, Lcom/stripe/bbota01z/f;->j:Lcom/stripe/bbota01z/f;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbota01z/f;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbota01z/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbota01z/f;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbota01z/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbota01z/f;->k:[Lcom/stripe/bbota01z/f;

    invoke-virtual {v0}, [Lcom/stripe/bbota01z/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbota01z/f;

    return-object v0
.end method
