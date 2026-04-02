.class final enum Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;
.super Ljava/lang/Enum;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kamranzafar/jtar/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StandardFilePermission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

.field public static final enum EXECUTE:Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

.field public static final enum READ:Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

.field public static final enum WRITE:Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;


# instance fields
.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

    const/4 v1, 0x0

    const/16 v2, 0x48

    const-string v3, "EXECUTE"

    invoke-direct {v0, v3, v1, v2}, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;->EXECUTE:Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

    new-instance v1, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

    const/4 v2, 0x1

    const/16 v3, 0x90

    const-string v4, "WRITE"

    invoke-direct {v1, v4, v2, v3}, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;->WRITE:Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

    new-instance v2, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

    const/4 v3, 0x2

    const/16 v4, 0x120

    const-string v5, "READ"

    invoke-direct {v2, v5, v3, v4}, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;->READ:Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

    .line 22
    filled-new-array {v0, v1, v2}, [Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

    move-result-object v0

    sput-object v0, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;->$VALUES:[Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;->mode:I

    return-void
.end method

.method static synthetic access$000(Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;)I
    .locals 0

    .line 22
    iget p0, p0, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;->mode:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;
    .locals 1

    .line 22
    const-class v0, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

    return-object p0
.end method

.method public static values()[Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;
    .locals 1

    .line 22
    sget-object v0, Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;->$VALUES:[Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

    invoke-virtual {v0}, [Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/kamranzafar/jtar/PermissionUtils$StandardFilePermission;

    return-object v0
.end method
