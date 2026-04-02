.class public final Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "PostActionResultRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPostActionResultRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PostActionResultRequest.kt\ncom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2637:1\n463#2,7:2638\n1#3:2645\n*S KotlinDebug\n*F\n+ 1 PostActionResultRequest.kt\ncom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion$ADAPTER$1\n*L\n854#1:2638,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/armada/PostActionResultRequest$Input$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
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
        "terminal_release"
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
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 790
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/api/armada/armada_service.proto"

    .line 784
    const-string v3, "type.googleapis.com/com.stripe.proto.api.armada.PostActionResultRequest.Input"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;
    .locals 20

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    .line 853
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v2

    check-cast v15, Ljava/util/List;

    .line 2638
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v16, v0

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move v13, v5

    move v14, v13

    move-object v5, v12

    .line 2640
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v0, :cond_0

    packed-switch v4, :pswitch_data_0

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    .line 872
    invoke-virtual {v1, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 871
    :pswitch_0
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    goto/16 :goto_1

    .line 870
    :pswitch_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v14, v0

    goto :goto_0

    .line 869
    :pswitch_2
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 868
    :pswitch_3
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    .line 867
    :pswitch_4
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 866
    :pswitch_5
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 865
    :pswitch_6
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 864
    :pswitch_7
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 863
    :pswitch_8
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 862
    :pswitch_9
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v13, v0

    goto :goto_0

    .line 861
    :pswitch_a
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_0

    .line 857
    :pswitch_b
    :try_start_0
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v17, v5

    .line 859
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    :goto_1
    move-object/from16 v5, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    goto/16 :goto_0

    :cond_0
    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    .line 2644
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    .line 875
    new-instance v3, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    .line 876
    move-object/from16 v4, v16

    check-cast v4, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    .line 877
    move-object/from16 v5, v17

    check-cast v5, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    .line 879
    move-object/from16 v7, v19

    check-cast v7, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    .line 880
    move-object/from16 v1, v18

    check-cast v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    .line 881
    check-cast v8, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    .line 882
    check-cast v9, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    .line 883
    check-cast v10, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    .line 884
    check-cast v11, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    .line 885
    check-cast v12, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    move-object/from16 v16, v0

    move v6, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v1

    .line 875
    invoke-direct/range {v3 .. v16}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;-><init>(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;ZLcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;ZLjava/util/List;Lokio/ByteString;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 784
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 810
    iget-object v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 811
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 812
    :cond_1
    iget-boolean v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->required:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->required:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 813
    :cond_2
    iget-boolean v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->skipped:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->skipped:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 814
    :cond_3
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->toggles:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 815
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 816
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 817
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 818
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 819
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 820
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 821
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 822
    invoke-virtual {p2}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 784
    check-cast p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    invoke-virtual {p2}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 827
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 828
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 829
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 830
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 831
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 832
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 833
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 834
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->toggles:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 835
    iget-boolean v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->skipped:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->skipped:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 836
    :cond_0
    iget-boolean v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->required:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->required:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 837
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 838
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 784
    check-cast p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    invoke-virtual {p1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 794
    iget-object v1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    sget-object v2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 795
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 796
    :cond_1
    iget-boolean v1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->required:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->required:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 797
    :cond_2
    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 798
    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 799
    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 800
    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 801
    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 802
    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 803
    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 804
    iget-boolean v1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->skipped:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->skipped:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 805
    :cond_3
    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0xc

    iget-object p1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->toggles:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 784
    check-cast p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;
    .locals 17

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    iget-object v0, v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 894
    :goto_0
    iget-object v0, v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    if-eqz v0, :cond_1

    sget-object v4, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 895
    :goto_1
    iget-object v0, v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    if-eqz v0, :cond_2

    sget-object v4, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v2

    .line 896
    :goto_2
    iget-object v0, v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    if-eqz v0, :cond_3

    sget-object v4, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    move-object v7, v0

    goto :goto_3

    :cond_3
    move-object v7, v2

    .line 897
    :goto_3
    iget-object v0, v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    if-eqz v0, :cond_4

    sget-object v4, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    move-object v8, v0

    goto :goto_4

    :cond_4
    move-object v8, v2

    .line 898
    :goto_4
    iget-object v0, v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    if-eqz v0, :cond_5

    sget-object v4, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    move-object v9, v0

    goto :goto_5

    :cond_5
    move-object v9, v2

    .line 899
    :goto_5
    iget-object v0, v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    if-eqz v0, :cond_6

    sget-object v4, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    move-object v10, v0

    goto :goto_6

    :cond_6
    move-object v10, v2

    .line 900
    :goto_6
    iget-object v0, v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    if-eqz v0, :cond_7

    sget-object v2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    :cond_7
    move-object v11, v2

    .line 901
    iget-object v0, v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->toggles:Ljava/util/List;

    sget-object v2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v2}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v13

    .line 902
    sget-object v14, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v15, 0x405

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 892
    invoke-static/range {v1 .. v16}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;->copy$default(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;ZLcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;ZLjava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 784
    check-cast p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    move-result-object p1

    return-object p1
.end method
