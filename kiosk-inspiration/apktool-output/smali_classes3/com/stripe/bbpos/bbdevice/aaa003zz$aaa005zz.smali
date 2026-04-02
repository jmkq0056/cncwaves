.class final enum Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/aaa003zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "aaa005zz"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

.field public static final enum aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

.field public static final enum aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

.field public static final enum aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

.field public static final enum aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

.field public static final enum aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

.field private static final synthetic aaa007:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/4 v2, 0x1

    const/16 v3, 0xfa

    const-string v4, "BLUETOOTH_2"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/4 v3, 0x2

    const/16 v4, 0x96

    const-string v5, "BLUETOOTH_4"

    invoke-direct {v2, v5, v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const-string v4, "SERIAL"

    const/4 v5, 0x3

    const/16 v6, 0x100

    invoke-direct {v3, v4, v5, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/4 v5, 0x4

    const/16 v7, 0x3a

    const-string v8, "USB"

    invoke-direct {v4, v8, v5, v7}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const-string v7, "TEST_CHANNEL"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    .line 7
    filled-new-array/range {v0 .. v5}, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa007:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa007:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    return-object v0
.end method


# virtual methods
.method aaa000()I
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MI PAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p0, v0, :cond_0

    const/16 v0, 0x28

    return v0

    .line 4
    :cond_0
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa000:I

    return v0
.end method
