.class public final Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "UpdateSdiActionRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateSdiActionRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateSdiActionRequest.kt\ncom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2375:1\n463#2,7:2376\n1#3:2383\n*S KotlinDebug\n*F\n+ 1 UpdateSdiActionRequest.kt\ncom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion$ADAPTER$1\n*L\n815#1:2376,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
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
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 755
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/rest/mainland_requests.proto"

    .line 749
    const-string v3, "type.googleapis.com/com.stripe.proto.api.rest.UpdateSdiActionRequest.Input"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;
    .locals 20

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    .line 814
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v2

    check-cast v14, Ljava/util/List;

    .line 2376
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

    .line 2378
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v15

    const/4 v0, -0x1

    if-eq v15, v0, :cond_0

    packed-switch v15, :pswitch_data_0

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    .line 832
    invoke-virtual {v1, v15}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 831
    :pswitch_0
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    goto/16 :goto_1

    .line 830
    :pswitch_1
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    .line 829
    :pswitch_2
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 828
    :pswitch_3
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 827
    :pswitch_4
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 826
    :pswitch_5
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 825
    :pswitch_6
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 824
    :pswitch_7
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v13, v0

    goto :goto_0

    .line 823
    :pswitch_8
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v12, v0

    goto :goto_0

    .line 822
    :pswitch_9
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 818
    :pswitch_a
    :try_start_0
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    .line 820
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

    .line 2382
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v15

    .line 835
    new-instance v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    .line 836
    move-object/from16 v4, v16

    check-cast v4, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    .line 837
    move-object/from16 v5, v18

    check-cast v5, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    .line 840
    move-object/from16 v6, v17

    check-cast v6, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    .line 841
    check-cast v7, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    .line 842
    check-cast v8, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    .line 843
    check-cast v9, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    .line 844
    check-cast v10, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    .line 845
    check-cast v11, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

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

    .line 835
    invoke-direct/range {v3 .. v15}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;-><init>(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;ZZLcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/util/List;Lokio/ByteString;)V

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

    .line 749
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 775
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 776
    :cond_1
    iget-boolean v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 777
    :cond_2
    iget-boolean v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 778
    :cond_3
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 779
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 780
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 781
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 782
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 783
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 784
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 785
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 749
    check-cast p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 790
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 791
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 792
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 793
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 794
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 795
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 796
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 797
    iget-boolean v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 798
    :cond_0
    iget-boolean v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 799
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 800
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 749
    check-cast p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 759
    iget-object v1, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    sget-object v2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 760
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 761
    :cond_1
    iget-boolean v1, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 762
    :cond_2
    iget-boolean v1, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 763
    :cond_3
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 764
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 765
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 766
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 767
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 768
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 769
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0xb

    iget-object p1, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 749
    check-cast p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;
    .locals 15

    move-object/from16 v0, p1

    const-string v1, "value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    iget-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 853
    :goto_0
    iget-object v3, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 854
    :goto_1
    iget-object v3, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    if-eqz v3, :cond_2

    sget-object v4, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    move-object v6, v3

    goto :goto_2

    :cond_2
    move-object v6, v2

    .line 855
    :goto_2
    iget-object v3, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    if-eqz v3, :cond_3

    sget-object v4, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    move-object v7, v3

    goto :goto_3

    :cond_3
    move-object v7, v2

    .line 856
    :goto_3
    iget-object v3, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    if-eqz v3, :cond_4

    sget-object v4, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    move-object v8, v3

    goto :goto_4

    :cond_4
    move-object v8, v2

    .line 857
    :goto_4
    iget-object v3, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    if-eqz v3, :cond_5

    sget-object v4, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    move-object v9, v3

    goto :goto_5

    :cond_5
    move-object v9, v2

    .line 858
    :goto_5
    iget-object v3, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    if-eqz v3, :cond_6

    sget-object v2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    :cond_6
    move-object v10, v2

    .line 859
    iget-object v2, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    sget-object v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v2, v3}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v11

    .line 860
    sget-object v12, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v13, 0xd

    const/4 v14, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 851
    invoke-static/range {v0 .. v14}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->copy$default(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;ZZLcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 749
    check-cast p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    move-result-object p1

    return-object p1
.end method
