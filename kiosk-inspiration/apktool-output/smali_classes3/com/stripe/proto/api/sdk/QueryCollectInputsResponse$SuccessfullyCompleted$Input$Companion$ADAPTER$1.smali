.class public final Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "QueryCollectInputsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQueryCollectInputsResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryCollectInputsResponse.kt\ncom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2214:1\n463#2,7:2215\n1#3:2222\n*S KotlinDebug\n*F\n+ 1 QueryCollectInputsResponse.kt\ncom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Companion$ADAPTER$1\n*L\n797#1:2215,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;",
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
        "internal_release"
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
            "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 737
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/sdk/jack_rabbit_service.proto"

    .line 731
    const-string v3, "type.googleapis.com/com.stripe.proto.api.sdk.QueryCollectInputsResponse.SuccessfullyCompleted.Input"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;
    .locals 20

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;

    .line 796
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v2

    check-cast v14, Ljava/util/List;

    .line 2215
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move v12, v5

    move v13, v12

    move-object v4, v0

    move-object v5, v11

    .line 2217
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v15

    const/4 v0, -0x1

    if-eq v15, v0, :cond_0

    packed-switch v15, :pswitch_data_0

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    .line 814
    invoke-virtual {v1, v15}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 813
    :pswitch_0
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    goto/16 :goto_1

    .line 812
    :pswitch_1
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    .line 811
    :pswitch_2
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 810
    :pswitch_3
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 809
    :pswitch_4
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 808
    :pswitch_5
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 807
    :pswitch_6
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 806
    :pswitch_7
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v13, v0

    goto :goto_0

    .line 805
    :pswitch_8
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v12, v0

    goto :goto_0

    .line 804
    :pswitch_9
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 800
    :pswitch_a
    :try_start_0
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    .line 802
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v15, v4, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    :goto_1
    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    goto/16 :goto_0

    :cond_0
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    .line 2221
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v15

    .line 817
    new-instance v3, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;

    .line 818
    move-object/from16 v4, v16

    check-cast v4, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;

    .line 819
    move-object/from16 v5, v18

    check-cast v5, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;

    .line 822
    move-object/from16 v6, v17

    check-cast v6, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;

    .line 823
    check-cast v7, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;

    .line 824
    check-cast v8, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;

    .line 825
    check-cast v9, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;

    .line 826
    check-cast v10, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;

    .line 827
    check-cast v11, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;

    move-object/from16 v19, v8

    move-object v8, v6

    move v6, v12

    move-object v12, v10

    move-object/from16 v10, v19

    move-object/from16 v19, v9

    move-object v9, v7

    move v7, v13

    move-object v13, v11

    move-object/from16 v11, v19

    .line 817
    invoke-direct/range {v3 .. v15}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;-><init>(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;ZZLcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;Ljava/util/List;Lokio/ByteString;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 731
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->type:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;

    sget-object v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->type:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 757
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->custom_text:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->custom_text:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 758
    :cond_1
    iget-boolean v0, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->required:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->required:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 759
    :cond_2
    iget-boolean v0, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->skipped:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->skipped:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 760
    :cond_3
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->toggles:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 761
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->selection:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 762
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->signature:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 763
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->email:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 764
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->text:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 765
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->numeric:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 766
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->phone:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 767
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 731
    check-cast p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 772
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->phone:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 773
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->numeric:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 774
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->text:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 775
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->email:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 776
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->signature:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 777
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->selection:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 778
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->toggles:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 779
    iget-boolean v0, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->skipped:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->skipped:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 780
    :cond_0
    iget-boolean v0, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->required:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->required:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 781
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->custom_text:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->custom_text:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 782
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->type:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;

    sget-object v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->type:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 731
    check-cast p2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 741
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->type:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;

    sget-object v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->type:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 742
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->custom_text:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->custom_text:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 743
    :cond_1
    iget-boolean v1, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->required:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->required:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 744
    :cond_2
    iget-boolean v1, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->skipped:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->skipped:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 745
    :cond_3
    sget-object v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->selection:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 746
    sget-object v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->signature:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 747
    sget-object v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->email:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 748
    sget-object v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->text:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 749
    sget-object v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->numeric:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 750
    sget-object v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->phone:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 751
    sget-object v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0xb

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->toggles:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 731
    check-cast p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;)Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;
    .locals 15

    move-object/from16 v0, p1

    const-string v1, "value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    iget-object v1, v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->custom_text:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 835
    :goto_0
    iget-object v3, v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->selection:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 836
    :goto_1
    iget-object v3, v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->signature:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;

    if-eqz v3, :cond_2

    sget-object v4, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;

    move-object v6, v3

    goto :goto_2

    :cond_2
    move-object v6, v2

    .line 837
    :goto_2
    iget-object v3, v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->email:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;

    if-eqz v3, :cond_3

    sget-object v4, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;

    move-object v7, v3

    goto :goto_3

    :cond_3
    move-object v7, v2

    .line 838
    :goto_3
    iget-object v3, v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->text:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;

    if-eqz v3, :cond_4

    sget-object v4, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;

    move-object v8, v3

    goto :goto_4

    :cond_4
    move-object v8, v2

    .line 839
    :goto_4
    iget-object v3, v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->numeric:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;

    if-eqz v3, :cond_5

    sget-object v4, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;

    move-object v9, v3

    goto :goto_5

    :cond_5
    move-object v9, v2

    .line 840
    :goto_5
    iget-object v3, v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->phone:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;

    if-eqz v3, :cond_6

    sget-object v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;

    :cond_6
    move-object v10, v2

    .line 841
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->toggles:Ljava/util/List;

    sget-object v3, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v2, v3}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v11

    .line 842
    sget-object v12, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v13, 0xd

    const/4 v14, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 833
    invoke-static/range {v0 .. v14}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->copy$default(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;ZZLcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;Ljava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 731
    check-cast p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;)Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;

    move-result-object p1

    return-object p1
.end method
