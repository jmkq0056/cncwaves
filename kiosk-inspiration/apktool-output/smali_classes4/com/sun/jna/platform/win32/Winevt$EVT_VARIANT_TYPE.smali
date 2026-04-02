.class public final enum Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;
.super Ljava/lang/Enum;
.source "Winevt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winevt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EVT_VARIANT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeAnsiString:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeBinary:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeBoolean:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeByte:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeDouble:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeEvtHandle:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeEvtXml:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeFileTime:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeGuid:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeHexInt32:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeHexInt64:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeInt16:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeInt32:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeInt64:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeNull:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeSByte:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeSid:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeSingle:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeSizeT:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeString:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeSysTime:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeUInt16:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeUInt32:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

.field public static final enum EvtVarTypeUInt64:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;


# instance fields
.field private final field:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 50
    new-instance v1, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/4 v0, 0x0

    const-string v2, ""

    const-string v3, "EvtVarTypeNull"

    invoke-direct {v1, v3, v0, v2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeNull:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 53
    new-instance v2, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/4 v0, 0x1

    const-string v3, "String"

    const-string v4, "EvtVarTypeString"

    invoke-direct {v2, v4, v0, v3}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeString:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 56
    new-instance v3, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/4 v0, 0x2

    const-string v4, "AnsiString"

    const-string v5, "EvtVarTypeAnsiString"

    invoke-direct {v3, v5, v0, v4}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeAnsiString:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 59
    new-instance v4, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/4 v0, 0x3

    const-string v5, "SByte"

    const-string v6, "EvtVarTypeSByte"

    invoke-direct {v4, v6, v0, v5}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeSByte:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 62
    new-instance v5, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/4 v0, 0x4

    const-string v6, "Byte"

    const-string v7, "EvtVarTypeByte"

    invoke-direct {v5, v7, v0, v6}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeByte:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 65
    new-instance v6, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/4 v0, 0x5

    const-string v7, "Int16"

    const-string v8, "EvtVarTypeInt16"

    invoke-direct {v6, v8, v0, v7}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeInt16:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 68
    new-instance v7, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/4 v0, 0x6

    const-string v8, "UInt16"

    const-string v9, "EvtVarTypeUInt16"

    invoke-direct {v7, v9, v0, v8}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeUInt16:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 71
    new-instance v8, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const-string v0, "EvtVarTypeInt32"

    const/4 v9, 0x7

    const-string v10, "Int32"

    invoke-direct {v8, v0, v9, v10}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeInt32:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 74
    new-instance v9, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/16 v0, 0x8

    const-string v11, "UInt32"

    const-string v12, "EvtVarTypeUInt32"

    invoke-direct {v9, v12, v0, v11}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeUInt32:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 77
    new-instance v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const-string v11, "EvtVarTypeInt64"

    const/16 v12, 0x9

    const-string v13, "Int64"

    invoke-direct {v0, v11, v12, v13}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeInt64:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 80
    new-instance v11, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/16 v12, 0xa

    const-string v14, "UInt64"

    const-string v15, "EvtVarTypeUInt64"

    invoke-direct {v11, v15, v12, v14}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeUInt64:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 83
    new-instance v12, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/16 v14, 0xb

    const-string v15, "Single"

    move-object/from16 v16, v0

    const-string v0, "EvtVarTypeSingle"

    invoke-direct {v12, v0, v14, v15}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeSingle:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 86
    new-instance v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/16 v14, 0xc

    const-string v15, "Double"

    move-object/from16 v17, v1

    const-string v1, "EvtVarTypeDouble"

    invoke-direct {v0, v1, v14, v15}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeDouble:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 89
    new-instance v14, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/16 v1, 0xd

    const-string v15, "Boolean"

    move-object/from16 v18, v0

    const-string v0, "EvtVarTypeBoolean"

    invoke-direct {v14, v0, v1, v15}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeBoolean:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 92
    new-instance v15, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/16 v0, 0xe

    const-string v1, "Binary"

    move-object/from16 v19, v2

    const-string v2, "EvtVarTypeBinary"

    invoke-direct {v15, v2, v0, v1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeBinary:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 95
    new-instance v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/16 v1, 0xf

    const-string v2, "Guid"

    move-object/from16 v20, v3

    const-string v3, "EvtVarTypeGuid"

    invoke-direct {v0, v3, v1, v2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeGuid:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 98
    new-instance v1, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/16 v2, 0x10

    const-string v3, "SizeT"

    move-object/from16 v21, v0

    const-string v0, "EvtVarTypeSizeT"

    invoke-direct {v1, v0, v2, v3}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeSizeT:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 101
    new-instance v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/16 v2, 0x11

    const-string v3, "FileTime"

    move-object/from16 v22, v1

    const-string v1, "EvtVarTypeFileTime"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeFileTime:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 104
    new-instance v1, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/16 v2, 0x12

    const-string v3, "SysTime"

    move-object/from16 v23, v0

    const-string v0, "EvtVarTypeSysTime"

    invoke-direct {v1, v0, v2, v3}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeSysTime:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 107
    new-instance v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/16 v2, 0x13

    const-string v3, "Sid"

    move-object/from16 v24, v1

    const-string v1, "EvtVarTypeSid"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeSid:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 110
    new-instance v1, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const-string v2, "EvtVarTypeHexInt32"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3, v10}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeHexInt32:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 113
    new-instance v2, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const-string v3, "EvtVarTypeHexInt64"

    const/16 v10, 0x15

    invoke-direct {v2, v3, v10, v13}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeHexInt64:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 116
    new-instance v3, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/16 v10, 0x16

    const-string v13, "EvtHandle"

    move-object/from16 v25, v0

    const-string v0, "EvtVarTypeEvtHandle"

    invoke-direct {v3, v0, v10, v13}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeEvtHandle:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    .line 119
    new-instance v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    const/16 v10, 0x17

    const-string v13, "Xml"

    move-object/from16 v26, v1

    const-string v1, "EvtVarTypeEvtXml"

    invoke-direct {v0, v1, v10, v13}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeEvtXml:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    move-object/from16 v10, v16

    move-object/from16 v1, v17

    move-object/from16 v13, v18

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    move-object/from16 v21, v26

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v24, v0

    .line 47
    filled-new-array/range {v1 .. v24}, [Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->$VALUES:[Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput-object p3, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->field:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;
    .locals 1

    .line 47
    const-class v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;
    .locals 1

    .line 47
    sget-object v0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->$VALUES:[Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    invoke-virtual {v0}, [Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    return-object v0
.end method


# virtual methods
.method public getArrField()Ljava/lang/String;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->field:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->field:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Arr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getField()Ljava/lang/String;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->field:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->field:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Val"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
