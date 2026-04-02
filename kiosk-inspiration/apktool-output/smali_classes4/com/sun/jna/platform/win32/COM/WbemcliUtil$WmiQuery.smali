.class public Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;
.super Ljava/lang/Object;
.source "WbemcliUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/WbemcliUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmiQuery"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private nameSpace:Ljava/lang/String;

.field private propertyEnum:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private wmiClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 108
    const-string v0, "ROOT\\CIMV2"

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->nameSpace:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->wmiClassName:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->propertyEnum:Ljava/lang/Class;

    return-void
.end method

.method private static enumerateProperties(Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;Ljava/lang/Class;I)Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    move/from16 v0, p2

    .line 287
    new-instance v1, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;

    sget-object v2, Lcom/sun/jna/platform/win32/COM/WbemcliUtil;->INSTANCE:Lcom/sun/jna/platform/win32/COM/WbemcliUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, p1

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;-><init>(Lcom/sun/jna/platform/win32/COM/WbemcliUtil;Ljava/lang/Class;)V

    const/4 v2, 0x1

    .line 290
    new-array v4, v2, [Lcom/sun/jna/Pointer;

    .line 291
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 292
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 294
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Enum;

    array-length v9, v8

    move v10, v6

    :goto_0
    if-ge v10, v9, :cond_0

    aget-object v11, v8, v10

    .line 295
    new-instance v12, Lcom/sun/jna/WString;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 297
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v8

    sget-object v9, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq v8, v9, :cond_10

    move-object/from16 v8, p0

    .line 300
    invoke-virtual {v8, v0, v2, v4, v5}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;->Next(II[Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v9

    .line 302
    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result v10

    if-eq v10, v2, :cond_10

    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result v10

    const v11, 0x40005

    if-ne v10, v11, :cond_1

    goto/16 :goto_6

    .line 306
    :cond_1
    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result v10

    const v11, 0x40004

    if-eq v10, v11, :cond_f

    .line 310
    invoke-static {v9}, Lcom/sun/jna/platform/win32/COM/COMUtils;->FAILED(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 314
    new-instance v14, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v14}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    .line 315
    new-instance v15, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v15}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 318
    new-instance v11, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;

    aget-object v9, v4, v6

    invoke-direct {v11, v9}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;-><init>(Lcom/sun/jna/Pointer;)V

    .line 319
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Enum;

    array-length v10, v9

    move v12, v6

    :goto_2
    if-ge v12, v10, :cond_d

    aget-object v13, v9, v12

    .line 320
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sun/jna/WString;

    move-object/from16 v17, v13

    const/4 v13, 0x0

    move/from16 v18, v12

    move-object/from16 v12, v16

    const/16 v16, 0x0

    move-object/from16 v6, v17

    invoke-virtual/range {v11 .. v16}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;->Get(Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 321
    invoke-virtual {v14}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->getValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_3

    :cond_2
    invoke-virtual {v14}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v12

    :goto_3
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 322
    invoke-virtual {v15}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v13

    if-eqz v12, :cond_c

    if-eq v12, v2, :cond_c

    const/4 v2, 0x2

    if-eq v12, v2, :cond_b

    const/4 v2, 0x3

    if-eq v12, v2, :cond_a

    const/4 v2, 0x4

    if-eq v12, v2, :cond_9

    const/4 v2, 0x5

    if-eq v12, v2, :cond_8

    const/16 v2, 0x8

    if-eq v12, v2, :cond_7

    const/16 v2, 0xb

    if-eq v12, v2, :cond_6

    const/16 v2, 0x11

    if-eq v12, v2, :cond_5

    and-int/lit16 v2, v12, 0x2000

    const/16 v3, 0x2000

    if-eq v2, v3, :cond_4

    and-int/lit8 v2, v12, 0xd

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    and-int/lit8 v2, v12, 0x9

    const/16 v3, 0x9

    if-eq v2, v3, :cond_4

    and-int/lit16 v2, v12, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_3

    goto :goto_4

    .line 357
    :cond_3
    invoke-virtual {v14}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v12, v13, v6, v2}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->access$000(Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;IILjava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v2, 0x0

    .line 355
    invoke-static {v1, v12, v13, v6, v2}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->access$000(Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;IILjava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_5

    .line 331
    :cond_5
    invoke-virtual {v14}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->byteValue()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {v1, v12, v13, v6, v2}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->access$000(Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;IILjava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_5

    .line 337
    :cond_6
    invoke-virtual {v14}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v12, v13, v6, v2}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->access$000(Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;IILjava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_5

    .line 325
    :cond_7
    invoke-virtual {v14}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->stringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v12, v13, v6, v2}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->access$000(Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;IILjava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_5

    .line 343
    :cond_8
    invoke-virtual {v14}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, v12, v13, v6, v2}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->access$000(Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;IILjava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_5

    .line 340
    :cond_9
    invoke-virtual {v14}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v12, v13, v6, v2}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->access$000(Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;IILjava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_5

    .line 328
    :cond_a
    invoke-virtual {v14}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v12, v13, v6, v2}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->access$000(Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;IILjava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_5

    .line 334
    :cond_b
    invoke-virtual {v14}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-static {v1, v12, v13, v6, v2}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->access$000(Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;IILjava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    .line 347
    invoke-static {v1, v12, v13, v6, v2}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->access$000(Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;IILjava/lang/Enum;Ljava/lang/Object;)V

    .line 360
    :goto_5
    sget-object v2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v2, v14}, Lcom/sun/jna/platform/win32/OleAuto;->VariantClear(Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    add-int/lit8 v12, v18, 0x1

    move-object/from16 v3, p1

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    .line 362
    :cond_d
    invoke-virtual {v11}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;->Release()I

    .line 364
    invoke-static {v1}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->access$100(Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;)V

    move-object/from16 v3, p1

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 311
    :cond_e
    new-instance v0, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string v1, "Failed to enumerate results."

    invoke-direct {v0, v1, v9}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    throw v0

    .line 307
    :cond_f
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No results after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_6
    return-object v1
.end method

.method private static selectProperties(Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;)Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;",
            "Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery<",
            "TT;>;)",
            "Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;"
        }
    .end annotation

    .line 218
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->getPropertyEnum()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 221
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 222
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    const/16 v3, 0x2c

    .line 223
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_0
    const-string v0, " FROM "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->getWmiClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x30

    const/4 v1, 0x0

    const-string v2, "WQL"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;->ExecQuery(Ljava/lang/String;Ljava/lang/String;ILcom/sun/jna/platform/win32/COM/Wbemcli$IWbemContext;)Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execute()Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 156
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->execute(I)Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 158
    :catch_0
    new-instance v0, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string v1, "Got a WMI timeout when infinite wait was specified. This should never happen."

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(I)Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->getPropertyEnum()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->getNameSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil;->connectServer(Ljava/lang/String;)Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;

    move-result-object v0

    .line 188
    :try_start_0
    invoke-static {v0, p0}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->selectProperties(Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;)Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->getPropertyEnum()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->enumerateProperties(Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;Ljava/lang/Class;I)Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :try_start_2
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;->Release()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;->Release()I

    return-object p1

    :catchall_0
    move-exception p1

    .line 194
    :try_start_3
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;->Release()I

    .line 195
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 198
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;->Release()I

    .line 199
    throw p1

    .line 180
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The query\'s property enum has no values."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNameSpace()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->nameSpace:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyEnum()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->propertyEnum:Ljava/lang/Class;

    return-object v0
.end method

.method public getWmiClassName()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->wmiClassName:Ljava/lang/String;

    return-object v0
.end method

.method public setNameSpace(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->nameSpace:Ljava/lang/String;

    return-void
.end method

.method public setWmiClassName(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->wmiClassName:Ljava/lang/String;

    return-void
.end method
