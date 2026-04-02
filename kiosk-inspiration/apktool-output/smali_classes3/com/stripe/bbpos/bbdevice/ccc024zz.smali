.class final Lcom/stripe/bbpos/bbdevice/ccc024zz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final aaa000:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;",
            "[B>;"
        }
    .end annotation
.end field

.field static final aaa001:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 56

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc024zz;->aaa000:Ljava/util/Hashtable;

    .line 2
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/ccc024zz;->aaa001:Ljava/util/Hashtable;

    .line 5
    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->A:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    const/16 v3, 0x10

    new-array v4, v3, [B

    fill-array-data v4, :array_0

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->B:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    new-array v5, v3, [B

    fill-array-data v5, :array_1

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->C:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    new-array v6, v3, [B

    fill-array-data v6, :array_2

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->D:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    new-array v7, v3, [B

    fill-array-data v7, :array_3

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->E:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    new-array v8, v3, [B

    fill-array-data v8, :array_4

    invoke-virtual {v0, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->F:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    new-array v9, v3, [B

    fill-array-data v9, :array_5

    invoke-virtual {v0, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->G:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    new-array v10, v3, [B

    fill-array-data v10, :array_6

    invoke-virtual {v0, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->H:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    new-array v11, v3, [B

    fill-array-data v11, :array_7

    invoke-virtual {v0, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->I:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    new-array v12, v3, [B

    fill-array-data v12, :array_8

    invoke-virtual {v0, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v12, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->J:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    new-array v13, v3, [B

    fill-array-data v13, :array_9

    invoke-virtual {v0, v12, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v13, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->K:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    new-array v14, v3, [B

    fill-array-data v14, :array_a

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->L:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    new-array v15, v3, [B

    fill-array-data v15, :array_b

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->M:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v16, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_c

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->N:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v17, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_d

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->O:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v18, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_e

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->P:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v19, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_f

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->Q:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v20, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_10

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->R:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v21, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_11

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->S:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v22, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_12

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->T:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v23, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_13

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->U:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v24, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_14

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->V:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v25, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_15

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->W:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v26, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_16

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->X:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v27, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_17

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->Y:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v28, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_18

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->Z:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v29, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_19

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->RUPEE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v30, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_1a

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->YEN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v31, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_1b

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->POUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v32, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_1c

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->EURO:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v33, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_1d

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->WON:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v34, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_1e

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->DIRHAM:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v35, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_1f

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->RIYAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v36, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_20

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->RIYAL_2:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v37, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_21

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->DOLLAR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v38, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_22

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->SPACE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v39, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_23

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->SLASH_AND_DOT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v40, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_24

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->DOT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v41, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_25

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->YUAN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v42, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_26

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->NEW_SHEKEL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v43, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_27

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->DONG:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move/from16 v44, v3

    const/16 v3, 0x30

    move-object/from16 v45, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_28

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->RUPIAH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v46, v15

    new-array v15, v3, [B

    fill-array-data v15, :array_29

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->SOL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    const/16 v3, 0x20

    move-object/from16 v48, v14

    new-array v14, v3, [B

    fill-array-data v14, :array_2a

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->PESO:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move/from16 v49, v3

    move-object/from16 v50, v15

    const/16 v3, 0x30

    new-array v15, v3, [B

    fill-array-data v15, :array_2b

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->FORINT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    const/4 v15, 0x0

    move-object/from16 v51, v14

    new-array v14, v15, [B

    invoke-virtual {v0, v3, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->KRONA:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v52, v3

    new-array v3, v15, [B

    invoke-virtual {v0, v14, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->KRONE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v53, v14

    new-array v14, v15, [B

    invoke-virtual {v0, v3, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->LEI:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v54, v3

    new-array v3, v15, [B

    invoke-virtual {v0, v14, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->REAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-object/from16 v55, v14

    new-array v14, v15, [B

    invoke-virtual {v0, v3, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->ZLOTY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    new-array v15, v15, [B

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 59
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 60
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 61
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    .line 62
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 63
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    .line 64
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    .line 65
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x8

    .line 66
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x9

    .line 67
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    .line 68
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    .line 69
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc

    .line 70
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xd

    .line 71
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xe

    .line 72
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xf

    .line 73
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v20

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x11

    .line 75
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v21

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x12

    .line 76
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v22

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x13

    .line 77
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v23

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    .line 78
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v24

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x15

    .line 79
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v25

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x16

    .line 80
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v26

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x17

    .line 81
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v27

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x18

    .line 82
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v28

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x19

    .line 83
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v29

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1a

    .line 84
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v30

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1f

    .line 86
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v31

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x24

    .line 87
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v32

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static/range {v49 .. v49}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v33

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1e

    .line 89
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v34

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x23

    .line 90
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v35

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1c

    .line 91
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v36

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x21

    .line 92
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v37

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22

    .line 93
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v38

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1d

    .line 94
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v39

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1b

    .line 95
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v40

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x25

    .line 96
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v41

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x26

    .line 97
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v42

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x27

    .line 98
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v43

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x28

    .line 99
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v45

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x29

    .line 100
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v46

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2a

    .line 101
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v48

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2b

    .line 102
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v50

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2c

    .line 103
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v51

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2d

    .line 104
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v52

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2e

    .line 105
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v53

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2e

    .line 106
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v54

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2f

    .line 107
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    move-object/from16 v2, v55

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v47, 0x30

    .line 108
    invoke-static/range {v47 .. v47}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x31

    .line 109
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v14, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x20t
        0x3ft
        0x10t
        0x2t
        0x8t
        0x2t
        0x4t
        0x2t
        0x4t
        0x2t
        -0x4t
        0x3ft
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0x3ft
        -0x7ct
        0x20t
        -0x7ct
        0x20t
        -0x7ct
        0x20t
        -0x7ct
        0x20t
        0x78t
        0x1ft
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        -0x10t
        0xft
        0x8t
        0x10t
        0x4t
        0x20t
        0x4t
        0x20t
        0x4t
        0x20t
        0x8t
        0x10t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0x3ft
        0x4t
        0x20t
        0x4t
        0x20t
        0x4t
        0x20t
        0x4t
        0x20t
        -0x8t
        0x1ft
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0x3ft
        -0x7ct
        0x20t
        -0x7ct
        0x20t
        -0x7ct
        0x20t
        -0x7ct
        0x20t
        0x4t
        0x20t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0x3ft
        -0x7ct
        0x0t
        -0x7ct
        0x0t
        -0x7ct
        0x0t
        -0x7ct
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x0t
        -0x8t
        0x1ft
        0x4t
        0x20t
        0x4t
        0x20t
        0x4t
        0x22t
        0x4t
        0x22t
        0x8t
        0x1et
        0x0t
        0x0t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0x3ft
        -0x80t
        0x0t
        -0x80t
        0x0t
        -0x80t
        0x0t
        -0x80t
        0x0t
        -0x4t
        0x3ft
        0x0t
        0x0t
    .end array-data

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x4t
        0x20t
        0x4t
        0x20t
        0x4t
        0x20t
        -0x4t
        0x3ft
        0x4t
        0x20t
        0x4t
        0x20t
        0x0t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x18t
        0x4t
        0x20t
        0x4t
        0x20t
        0x4t
        0x20t
        0x4t
        0x20t
        -0x4t
        0x1ft
        0x0t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0x3ft
        -0x80t
        0x1t
        0x60t
        0x1t
        0x10t
        0x2t
        0x8t
        0x4t
        0x4t
        0x38t
        0x0t
        0x0t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0x3ft
        0x0t
        0x20t
        0x0t
        0x20t
        0x0t
        0x20t
        0x0t
        0x20t
        0x0t
        0x20t
        0x0t
        0x0t
    .end array-data

    :array_c
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0x3ft
        0x8t
        0x0t
        0x10t
        0x0t
        0x10t
        0x0t
        0x8t
        0x0t
        -0x4t
        0x3ft
        0x0t
        0x0t
    .end array-data

    :array_d
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0x3ft
        0x20t
        0x0t
        0x40t
        0x0t
        -0x80t
        0x0t
        0x0t
        0x1t
        -0x4t
        0x3ft
        0x0t
        0x0t
    .end array-data

    :array_e
    .array-data 1
        0x0t
        0x0t
        -0x8t
        0x1ft
        0x4t
        0x20t
        0x4t
        0x20t
        0x4t
        0x20t
        0x4t
        0x20t
        -0x8t
        0x1ft
        0x0t
        0x0t
    .end array-data

    :array_f
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0x3ft
        -0x7ct
        0x0t
        -0x7ct
        0x0t
        -0x7ct
        0x0t
        -0x7ct
        0x0t
        0x78t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_10
    .array-data 1
        0x0t
        0x0t
        -0x8t
        0x1ft
        0x4t
        0x10t
        0x4t
        0x10t
        0x4t
        0x10t
        0x4t
        0x10t
        -0x8t
        0x2ft
        0x0t
        0x0t
    .end array-data

    :array_11
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0x3ft
        0x4t
        0x1t
        0x4t
        0x1t
        0x4t
        0x3t
        0x4t
        0x5t
        -0x8t
        0x38t
        0x0t
        0x0t
    .end array-data

    :array_12
    .array-data 1
        0x0t
        0x0t
        0x78t
        0x10t
        -0x7ct
        0x20t
        -0x7ct
        0x20t
        -0x7ct
        0x20t
        -0x7ct
        0x20t
        0x8t
        0x1ft
        0x0t
        0x0t
    .end array-data

    :array_13
    .array-data 1
        0x0t
        0x0t
        0x4t
        0x0t
        0x4t
        0x0t
        0x4t
        0x0t
        -0x4t
        0x3ft
        0x4t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_14
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0x3ft
        0x0t
        0x20t
        0x0t
        0x20t
        0x0t
        0x20t
        0x0t
        0x20t
        -0x4t
        0x3ft
        0x0t
        0x0t
    .end array-data

    :array_15
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0xft
        0x0t
        0x10t
        0x0t
        0x20t
        0x0t
        0x20t
        0x0t
        0x10t
        -0x4t
        0xft
        0x0t
        0x0t
    .end array-data

    :array_16
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0x3ft
        0x0t
        0x20t
        0x0t
        0x3ct
        0x0t
        0x20t
        0x0t
        0x20t
        -0x4t
        0x1ft
        0x0t
        0x0t
    .end array-data

    :array_17
    .array-data 1
        0x0t
        0x0t
        0x3ct
        0x3ct
        0x40t
        0x2t
        -0x80t
        0x0t
        0x0t
        0x1t
        0x40t
        0x2t
        0x3ct
        0x3ct
        0x0t
        0x0t
    .end array-data

    :array_18
    .array-data 1
        0x0t
        0x0t
        0x3ct
        0x0t
        0x40t
        0x0t
        -0x80t
        0x0t
        -0x80t
        0x3ft
        0x40t
        0x0t
        0x3ct
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_19
    .array-data 1
        0x0t
        0x0t
        0x4t
        0x3ct
        0x4t
        0x22t
        0x4t
        0x21t
        -0x7ct
        0x20t
        0x44t
        0x20t
        0x3ct
        0x20t
        0x0t
        0x0t
    .end array-data

    :array_1a
    .array-data 1
        0x0t
        0x0t
        0x36t
        0x3t
        0x36t
        0xft
        -0x42t
        0x3dt
        -0x2t
        -0xft
        -0xat
        -0x40t
        0x36t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1b
    .array-data 1
        0x0t
        0x0t
        0x1ct
        0x5t
        0x60t
        0x5t
        -0x80t
        0x3ft
        -0x80t
        0x3ft
        0x60t
        0x5t
        0x1ct
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_1c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x61t
        -0x8t
        0x7ft
        -0x4t
        0x5ft
        0xct
        0x41t
        0xct
        0x41t
        0x18t
        0x40t
        0x0t
        0x0t
    .end array-data

    :array_1d
    .array-data 1
        0x0t
        0x0t
        0x40t
        0x1t
        -0x8t
        0x1ft
        -0x4t
        0x3ft
        0x44t
        0x21t
        0x44t
        0x21t
        0x4ct
        0x30t
        0x18t
        0x18t
    .end array-data

    :array_1e
    .array-data 1
        -0x80t
        0x2t
        -0x8t
        0xft
        -0x80t
        0x12t
        -0x8t
        0xft
        -0x80t
        0x12t
        -0x8t
        0xft
        -0x80t
        0x2t
        0x0t
        0x0t
    .end array-data

    :array_1f
    .array-data 1
        -0x2t
        0x67t
        0x0t
        0x0t
        0x0t
        0x10t
        0x0t
        0x0t
        0x30t
        0x8t
        0x60t
        0x8t
        -0x40t
        0x8t
        -0x80t
        0x7t
    .end array-data

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0xet
        0x0t
        0x18t
        0x0t
        0x10t
        0x0t
        0x10t
        0x0t
        0x18t
        -0x4t
        0xft
        0x0t
        0x0t
    .end array-data

    :array_21
    .array-data 1
        -0x4t
        0x4ft
        0x0t
        0x18t
        0x0t
        0x50t
        0x0t
        0x18t
        0x0t
        0x4et
        0x0t
        0x60t
        0x0t
        0x3ct
        0x0t
        0x0t
    .end array-data

    :array_22
    .array-data 1
        0x0t
        0x0t
        0x70t
        0x8t
        -0x78t
        0x10t
        -0x4t
        0x3ft
        -0x78t
        0x10t
        0x10t
        0xft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_23
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_24
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0xct
        0x0t
        0x3t
        -0x40t
        0x0t
        0x30t
        0x30t
        0xct
        0x30t
        0x0t
        0x0t
    .end array-data

    :array_25
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_26
    .array-data 1
        0x0t
        0x0t
        0x1ct
        0x5t
        0x60t
        0x5t
        -0x80t
        0x3ft
        -0x80t
        0x3ft
        0x60t
        0x5t
        0x1ct
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_27
    .array-data 1
        0x0t
        0x0t
        -0x8t
        0x1ft
        0x8t
        0x0t
        -0x18t
        0x1ft
        0x8t
        0x10t
        -0x8t
        0x17t
        0x0t
        0x10t
        -0x8t
        0x1ft
    .end array-data

    :array_28
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0xft
        0x0t
        0x10t
        0x0t
        0x20t
        0x0t
        0x20t
        0x0t
        0x10t
        -0x4t
        0xft
        0x0t
        0x0t
        0x0t
        0x0t
        -0x4t
        0x3ft
        0x20t
        0x0t
        0x40t
        0x0t
        -0x80t
        0x0t
        0x0t
        0x1t
        -0x4t
        0x3ft
        0x0t
        0x0t
        0x0t
        0x0t
        -0x4t
        0x3ft
        0x4t
        0x20t
        0x4t
        0x20t
        0x4t
        0x20t
        0x4t
        0x20t
        -0x8t
        0x1ft
        0x0t
        0x0t
    .end array-data

    :array_29
    .array-data 1
        0x0t
        0x0t
        0x4t
        0x20t
        0x4t
        0x20t
        0x4t
        0x20t
        -0x4t
        0x3ft
        0x4t
        0x20t
        0x4t
        0x20t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x4t
        0x3ft
        0x4t
        0x20t
        0x4t
        0x20t
        0x4t
        0x20t
        0x4t
        0x20t
        -0x8t
        0x1ft
        0x0t
        0x0t
        0x0t
        0x0t
        -0x4t
        0x3ft
        0x4t
        0x1t
        0x4t
        0x1t
        0x4t
        0x3t
        0x4t
        0x5t
        -0x8t
        0x38t
        0x0t
        0x0t
    .end array-data

    :array_2a
    .array-data 1
        0x0t
        0x0t
        0x78t
        0x10t
        -0x7ct
        0x20t
        -0x7ct
        0x20t
        -0x7ct
        0x20t
        -0x7ct
        0x20t
        0x8t
        0x1ft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0xct
        0x0t
        0x3t
        -0x40t
        0x0t
        0x30t
        0x30t
        0xct
        0x30t
        0x0t
        0x0t
    .end array-data

    :array_2b
    .array-data 1
        0x0t
        0x0t
        -0x4t
        0x3ft
        -0x7ct
        0x0t
        -0x7ct
        0x0t
        -0x7ct
        0x0t
        -0x7ct
        0x0t
        0x78t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x4t
        0x3ft
        -0x80t
        0x0t
        -0x80t
        0x0t
        -0x80t
        0x0t
        -0x80t
        0x0t
        -0x4t
        0x3ft
        0x0t
        0x0t
        0x0t
        0x0t
        -0x4t
        0x3ft
        -0x7ct
        0x0t
        -0x7ct
        0x0t
        -0x7ct
        0x0t
        -0x7ct
        0x0t
        0x78t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
