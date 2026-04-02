.class public final enum Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;
.super Ljava/lang/Enum;
.source "ShlObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/ShlObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KNOWN_FOLDER_FLAG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

.field public static final enum ALIAS_ONLY:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

.field public static final enum CREATE:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

.field public static final enum DEFAULT_PATH:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

.field public static final enum DONT_UNEXPAND:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

.field public static final enum DONT_VERIFY:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

.field public static final enum INIT:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

.field public static final enum NONE:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

.field public static final enum NOT_PARENT_RELATIVE:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

.field public static final enum NO_ALIAS:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

.field public static final enum NO_APPCONTAINER_REDIRECTION:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

.field public static final enum SIMPLE_IDLIST:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;


# instance fields
.field private flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 105
    new-instance v0, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->NONE:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    .line 112
    new-instance v1, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    const/4 v2, 0x1

    const/16 v3, 0x100

    const-string v4, "SIMPLE_IDLIST"

    invoke-direct {v1, v4, v2, v3}, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->SIMPLE_IDLIST:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    .line 118
    new-instance v2, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    const/4 v3, 0x2

    const/16 v4, 0x200

    const-string v5, "NOT_PARENT_RELATIVE"

    invoke-direct {v2, v5, v3, v4}, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->NOT_PARENT_RELATIVE:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    .line 125
    new-instance v3, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    const/4 v4, 0x3

    const/16 v5, 0x400

    const-string v6, "DEFAULT_PATH"

    invoke-direct {v3, v6, v4, v5}, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->DEFAULT_PATH:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    .line 131
    new-instance v4, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    const/4 v5, 0x4

    const/16 v6, 0x800

    const-string v7, "INIT"

    invoke-direct {v4, v7, v5, v6}, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->INIT:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    .line 139
    new-instance v5, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    const/4 v6, 0x5

    const/16 v7, 0x1000

    const-string v8, "NO_ALIAS"

    invoke-direct {v5, v8, v6, v7}, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->NO_ALIAS:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    .line 146
    new-instance v6, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    const/4 v7, 0x6

    const/16 v8, 0x2000

    const-string v9, "DONT_UNEXPAND"

    invoke-direct {v6, v9, v7, v8}, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->DONT_UNEXPAND:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    .line 155
    new-instance v7, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    const/4 v8, 0x7

    const/16 v9, 0x4000

    const-string v10, "DONT_VERIFY"

    invoke-direct {v7, v10, v8, v9}, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->DONT_VERIFY:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    .line 170
    new-instance v8, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    const/16 v9, 0x8

    const v10, 0x8000

    const-string v11, "CREATE"

    invoke-direct {v8, v11, v9, v10}, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->CREATE:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    .line 176
    new-instance v9, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    const/16 v10, 0x9

    const/high16 v11, 0x10000

    const-string v12, "NO_APPCONTAINER_REDIRECTION"

    invoke-direct {v9, v12, v10, v11}, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->NO_APPCONTAINER_REDIRECTION:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    .line 181
    new-instance v10, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    const/16 v11, 0xa

    const/high16 v12, -0x80000000

    const-string v13, "ALIAS_ONLY"

    invoke-direct {v10, v13, v11, v12}, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->ALIAS_ONLY:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    .line 100
    filled-new-array/range {v0 .. v10}, [Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->$VALUES:[Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 187
    iput p3, p0, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->flag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;
    .locals 1

    .line 100
    const-class v0, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    return-object p0
.end method

.method public static values()[Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;
    .locals 1

    .line 100
    sget-object v0, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->$VALUES:[Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    invoke-virtual {v0}, [Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    return-object v0
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->flag:I

    return v0
.end method
