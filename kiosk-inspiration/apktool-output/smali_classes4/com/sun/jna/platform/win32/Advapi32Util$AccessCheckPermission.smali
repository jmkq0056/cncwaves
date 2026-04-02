.class public final enum Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;
.super Ljava/lang/Enum;
.source "Advapi32Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Advapi32Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessCheckPermission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

.field public static final enum EXECUTE:Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

.field public static final enum READ:Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

.field public static final enum WRITE:Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;


# instance fields
.field final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 2657
    new-instance v0, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const-string v3, "READ"

    invoke-direct {v0, v3, v1, v2}, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;->READ:Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

    .line 2658
    new-instance v1, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const-string v4, "WRITE"

    invoke-direct {v1, v4, v2, v3}, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;->WRITE:Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

    .line 2659
    new-instance v2, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

    const/4 v3, 0x2

    const/high16 v4, 0x20000000

    const-string v5, "EXECUTE"

    invoke-direct {v2, v5, v3, v4}, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;->EXECUTE:Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

    .line 2656
    filled-new-array {v0, v1, v2}, [Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;->$VALUES:[Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2663
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2664
    iput p3, p0, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;
    .locals 1

    .line 2656
    const-class v0, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

    return-object p0
.end method

.method public static values()[Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;
    .locals 1

    .line 2656
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;->$VALUES:[Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

    invoke-virtual {v0}, [Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 2668
    iget v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;->code:I

    return v0
.end method
