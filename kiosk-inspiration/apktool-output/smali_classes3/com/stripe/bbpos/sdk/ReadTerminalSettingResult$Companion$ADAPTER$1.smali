.class public final Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ReadTerminalSettingResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReadTerminalSettingResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadTerminalSettingResult.kt\ncom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,862:1\n463#2,7:863\n1#3:870\n*S KotlinDebug\n*F\n+ 1 ReadTerminalSettingResult.kt\ncom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion$ADAPTER$1\n*L\n766#1:863,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;",
        "decode",
        "reader",
        "Lcom/squareup/wire/ProtoReader;",
        "encode",
        "",
        "writer",
        "Lcom/squareup/wire/ProtoWriter;",
        "value",
        "Lcom/squareup/wire/ReverseProtoWriter;",
        "encodedSize",
        "",
        "redact",
        "sdk-protos_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 650
    const-string v6, "com/stripe/bbpos/sdk/on_return_read_terminal_setting_result.proto"

    .line 644
    const-string v3, "type.googleapis.com/ReadTerminalSettingResult"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;
    .locals 56

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    .line 865
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    move-object/from16 v29, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 793
    invoke-virtual {v0, v3}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 792
    :pswitch_0
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v27, v3

    goto/16 :goto_1

    .line 791
    :pswitch_1
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    goto/16 :goto_1

    .line 790
    :pswitch_2
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    goto/16 :goto_1

    .line 789
    :pswitch_3
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    goto/16 :goto_1

    .line 788
    :pswitch_4
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    goto/16 :goto_1

    .line 787
    :pswitch_5
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    goto/16 :goto_1

    .line 786
    :pswitch_6
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    goto/16 :goto_1

    .line 785
    :pswitch_7
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    goto/16 :goto_1

    .line 784
    :pswitch_8
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    goto/16 :goto_1

    .line 783
    :pswitch_9
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    goto/16 :goto_1

    .line 782
    :pswitch_a
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    goto/16 :goto_1

    .line 781
    :pswitch_b
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    goto/16 :goto_1

    .line 780
    :pswitch_c
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    goto/16 :goto_1

    .line 779
    :pswitch_d
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    goto/16 :goto_1

    .line 778
    :pswitch_e
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    .line 777
    :pswitch_f
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    .line 776
    :pswitch_10
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    .line 775
    :pswitch_11
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    .line 774
    :pswitch_12
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    .line 773
    :pswitch_13
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    goto :goto_1

    .line 772
    :pswitch_14
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    goto :goto_1

    .line 771
    :pswitch_15
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    .line 770
    :pswitch_16
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    goto :goto_1

    .line 769
    :pswitch_17
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_0

    .line 768
    :pswitch_18
    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v28, v3

    :goto_1
    move-object/from16 v4, v29

    goto/16 :goto_0

    .line 869
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v55

    move-object/from16 v3, v29

    .line 796
    new-instance v29, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    .line 797
    move-object/from16 v30, v28

    check-cast v30, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 798
    move-object/from16 v31, v3

    check-cast v31, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 799
    move-object/from16 v32, v5

    check-cast v32, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 800
    move-object/from16 v33, v6

    check-cast v33, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 801
    move-object/from16 v34, v7

    check-cast v34, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 802
    move-object/from16 v35, v8

    check-cast v35, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 803
    move-object/from16 v36, v9

    check-cast v36, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 804
    move-object/from16 v37, v10

    check-cast v37, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 805
    move-object/from16 v38, v11

    check-cast v38, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 806
    move-object/from16 v39, v12

    check-cast v39, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 807
    move-object/from16 v40, v13

    check-cast v40, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 808
    move-object/from16 v41, v14

    check-cast v41, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 809
    move-object/from16 v42, v15

    check-cast v42, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 810
    move-object/from16 v43, v16

    check-cast v43, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 811
    move-object/from16 v44, v17

    check-cast v44, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 812
    move-object/from16 v45, v18

    check-cast v45, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 813
    move-object/from16 v46, v19

    check-cast v46, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 814
    move-object/from16 v47, v20

    check-cast v47, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 815
    move-object/from16 v48, v21

    check-cast v48, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 816
    move-object/from16 v49, v22

    check-cast v49, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 817
    move-object/from16 v50, v23

    check-cast v50, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 818
    move-object/from16 v51, v24

    check-cast v51, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 819
    move-object/from16 v52, v25

    check-cast v52, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 820
    move-object/from16 v53, v26

    check-cast v53, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 821
    move-object/from16 v54, v27

    check-cast v54, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 796
    invoke-direct/range {v29 .. v55}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;-><init>(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lokio/ByteString;)V

    return-object v29

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 644
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 684
    :cond_0
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 685
    :cond_1
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 686
    :cond_2
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 687
    :cond_3
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 688
    :cond_4
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 689
    :cond_5
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 690
    :cond_6
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 691
    :cond_7
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 692
    :cond_8
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 693
    :cond_9
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 694
    :cond_a
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 695
    :cond_b
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 696
    :cond_c
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 697
    :cond_d
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 698
    :cond_e
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 699
    :cond_f
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 700
    :cond_10
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 701
    :cond_11
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 702
    :cond_12
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 703
    :cond_13
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 704
    :cond_14
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x16

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 705
    :cond_15
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x17

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 706
    :cond_16
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 707
    :cond_17
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 708
    :cond_18
    invoke-virtual {p2}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 644
    check-cast p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    invoke-virtual {p2}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 713
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 714
    :cond_0
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 715
    :cond_1
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x17

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 716
    :cond_2
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x16

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 717
    :cond_3
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 718
    :cond_4
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 719
    :cond_5
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 720
    :cond_6
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 721
    :cond_7
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 722
    :cond_8
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 723
    :cond_9
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 724
    :cond_a
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 725
    :cond_b
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 726
    :cond_c
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 727
    :cond_d
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 728
    :cond_e
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 729
    :cond_f
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 730
    :cond_10
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 731
    :cond_11
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 732
    :cond_12
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 733
    :cond_13
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 734
    :cond_14
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 735
    :cond_15
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 736
    :cond_16
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 737
    :cond_17
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 644
    check-cast p2, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 654
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 655
    :cond_0
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 656
    :cond_1
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    :cond_2
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 658
    :cond_3
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 659
    :cond_4
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 660
    :cond_5
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 661
    :cond_6
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 662
    :cond_7
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 663
    :cond_8
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 664
    :cond_9
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 665
    :cond_a
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 666
    :cond_b
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 667
    :cond_c
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 668
    :cond_d
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 669
    :cond_e
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 670
    :cond_f
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x11

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 671
    :cond_10
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_11

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x12

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 672
    :cond_11
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x13

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 673
    :cond_12
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_13

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x14

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 674
    :cond_13
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_14

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x15

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 675
    :cond_14
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_15

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x16

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 676
    :cond_15
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x17

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 677
    :cond_16
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x18

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 678
    :cond_17
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x19

    iget-object p1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_18
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 644
    check-cast p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;
    .locals 28

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    iget-object v0, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 828
    :goto_0
    iget-object v3, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 829
    :goto_1
    iget-object v4, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 830
    :goto_2
    iget-object v5, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 831
    :goto_3
    iget-object v6, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v6, :cond_4

    sget-object v7, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    .line 832
    :goto_4
    iget-object v7, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v7, :cond_5

    sget-object v8, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v7}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    .line 833
    :goto_5
    iget-object v8, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v8, :cond_6

    sget-object v9, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v8}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    .line 834
    :goto_6
    iget-object v9, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v9, :cond_7

    sget-object v10, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v9}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    .line 835
    :goto_7
    iget-object v10, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v10, :cond_8

    sget-object v11, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    .line 836
    :goto_8
    iget-object v11, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v11, :cond_9

    sget-object v12, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v12, v11}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_9

    :cond_9
    const/4 v11, 0x0

    .line 837
    :goto_9
    iget-object v12, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v12, :cond_a

    sget-object v13, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v12}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_a

    :cond_a
    const/4 v12, 0x0

    .line 838
    :goto_a
    iget-object v13, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v13, :cond_b

    sget-object v14, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v14, v13}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_b

    :cond_b
    const/4 v13, 0x0

    .line 839
    :goto_b
    iget-object v14, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v14, :cond_c

    sget-object v15, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v15, v14}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_c

    :cond_c
    const/4 v14, 0x0

    .line 840
    :goto_c
    iget-object v15, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v15, :cond_d

    sget-object v2, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object v15, v2

    goto :goto_d

    :cond_d
    const/4 v15, 0x0

    .line 841
    :goto_d
    iget-object v2, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v17, v0

    if-eqz v2, :cond_e

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    .line 842
    :goto_e
    iget-object v2, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v18, v0

    if-eqz v2, :cond_f

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    .line 843
    :goto_f
    iget-object v2, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v19, v0

    if-eqz v2, :cond_10

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_10

    :cond_10
    const/4 v0, 0x0

    .line 844
    :goto_10
    iget-object v2, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v20, v0

    if-eqz v2, :cond_11

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_11

    :cond_11
    const/4 v0, 0x0

    .line 845
    :goto_11
    iget-object v2, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v21, v0

    if-eqz v2, :cond_12

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_12

    :cond_12
    const/4 v0, 0x0

    .line 846
    :goto_12
    iget-object v2, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v22, v0

    if-eqz v2, :cond_13

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_13

    :cond_13
    const/4 v0, 0x0

    .line 847
    :goto_13
    iget-object v2, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v23, v0

    if-eqz v2, :cond_14

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_14

    :cond_14
    const/4 v0, 0x0

    .line 848
    :goto_14
    iget-object v2, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v24, v0

    if-eqz v2, :cond_15

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_15

    :cond_15
    const/4 v0, 0x0

    .line 849
    :goto_15
    iget-object v2, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v25, v0

    if-eqz v2, :cond_16

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_16

    :cond_16
    const/4 v0, 0x0

    .line 850
    :goto_16
    iget-object v2, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v26, v0

    if-eqz v2, :cond_17

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_17

    :cond_17
    const/4 v0, 0x0

    .line 851
    :goto_17
    iget-object v2, v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v2, :cond_18

    move-object/from16 v27, v0

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v0, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    goto :goto_18

    :cond_18
    move-object/from16 v2, v25

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v2

    const/4 v2, 0x0

    .line 852
    :goto_18
    sget-object v27, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v2

    move-object v2, v0

    .line 826
    invoke-virtual/range {v1 .. v27}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->copy(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lokio/ByteString;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 644
    check-cast p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion$ADAPTER$1;->redact(Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    move-result-object p1

    return-object p1
.end method
